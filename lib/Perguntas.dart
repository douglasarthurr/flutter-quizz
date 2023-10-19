import 'package:flutter/material.dart';
import 'package:quiz/main.dart';

void main() {
  runApp(MaterialApp(
    home: perguntas(),
  ));
}

class perguntas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShowDoMilhaoScreen(),
    );
  }
}

class ShowDoMilhaoScreen extends StatefulWidget {
  @override
  _ShowDoMilhaoScreenState createState() => _ShowDoMilhaoScreenState();
}

class _ShowDoMilhaoScreenState extends State<ShowDoMilhaoScreen> {
  List<Map<String, dynamic>> questions = [
    {
      'question': 'Qual é a capital do Brasil?',
      'options': ['São Paulo', 'Rio de Janeiro', 'Brasília', 'Salvador'],
      'correctOption': 'Brasília'
    },
    {
      'question': 'Quantos lados tem um triângulo?',
      'options': ['Três', 'Quatro', 'Cinco', 'Seis'],
      'correctOption': 'Três'
    },
    {
      'question': 'Quem escreveu Dom Casmurro?',
      'options': [
        'Machado de Assis',
        'Carlos Drummond de Andrade',
        'José de Alencar',
        'Eça de Queirós'
      ],
      'correctOption': 'Machado de Assis'
    },
    {
      'question': 'Em que ano o Brasil foi descoberto?',
      'options': ['1492', '1500', '1532', '1620'],
      'correctOption': '1500'
    },
    {
      'question': 'Qual é o maior mamífero terrestre?',
      'options': [
        'Elefante Africano',
        'Baleia Azul',
        'Rinoceronte Branco',
        'Girafa'
      ],
      'correctOption': 'Elefante Africano'
    }
  ];

  int currentQuestionIndex = 0;
  bool answerSelected = false;
  int pontos = 0; // Variável para rastrear a pontuação

  void showNextQuestion() {
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
        answerSelected = false;
      });
    } else {
      Navigator.of(context).push(_createRoute(TelaFinal(pontos: pontos))); // Passa a pontuação para a TelaFinal
    }
  }

  void selectAnswer(String selectedOption) {
    if (!answerSelected) {
      setState(() {
        if (selectedOption == questions[currentQuestionIndex]['correctOption']) {
          pontos++; // Incrementa a pontuação se a resposta estiver correta
        }
        answerSelected = true;
      });
    }
  }

  PageRouteBuilder _createRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;
        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);
        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF1D22AC), // Adicionando a cor de fundo azul
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 80),
              Text(
                questions[currentQuestionIndex]['question'],
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Column(
                children: List.generate(4, (index) {
                  return Container(
                    width: double.infinity,
                    child: Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {
                          if (!answerSelected) {
                            selectAnswer(
                                questions[currentQuestionIndex]['options'][index]);
                          }
                        },
                        child:
                        Text(questions[currentQuestionIndex]['options'][index]),
                        style: ElevatedButton.styleFrom(
                          primary: answerSelected
                          ? questions[currentQuestionIndex]['correctOption'] ==
                          questions[currentQuestionIndex]['options'][index]
                          ? Colors.green
                          : Colors.red
                          : null,
                        ),
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: showNextQuestion,
                child: Text('Próxima Pergunta'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TelaFinal extends StatelessWidget {
  final int pontos; // Recebe a pontuação como argumento

  TelaFinal({required this.pontos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 420,
            height: 800,
            padding: const EdgeInsets.only(top: 127, bottom: 295),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.00, -1.00),
                end: Alignment(0, 1),
                colors: [Color(0xFF373EEA), Color(0xFF000467)],
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 360,
                  height: 259,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Ohomilho.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(height: 31),
                Text(
                  'Parabéns \nvocê tem $pontos ponto(s)', // Exibe a pontuação
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 1.2,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Inicio(),
                ),
              );
            },
            child: Text('Voltar'),
          ),
        ],
      ),
    );
  }
}


