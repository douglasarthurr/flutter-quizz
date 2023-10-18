import 'package:flutter/material.dart';
import 'package:quizzzzzzzzzzz/perguntas.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: AndroidLarge6(),
      ),
    );
  }
}

class AndroidLarge6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 420,
        height: 900,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF373EEA), Color(0xFF000467)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 298,
              height: 215,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("Ohomilho.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Perguntas(),
                  ),
                );
              },
              child: Container(
                width: 243,
                height: 53,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                    colors: [Color.fromARGB(255, 255, 225, 105), Color.fromARGB(255, 255, 225, 105)],
                  ),
                ),
                child: Center(
                  child: Text(
                    'Jogar',
                    style: TextStyle(
                      color: Color(0xFF1D22AC),
                      fontSize: 42,
                      fontFamily: 'Jua',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProximaTela(),
                  ),
                );
              },
              child: Container(
                width: 243,
                height: 53,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                    colors: [Color.fromARGB(255, 255, 225, 105), Color.fromARGB(255, 255, 225, 105)],
                  ),
                ),
                child: Center(
                  child: Text(
                    'Créditos',
                    style: TextStyle(
                      color: Color(0xFF1D22AC),
                      fontSize: 42,
                      fontFamily: 'Jua',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProximaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Próxima Tela'),
      ),
      body: Center(
        child: Text('Esta em andamento.'),
      ),
    );
  }
}
