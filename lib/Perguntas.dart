import 'package:flutter/material.dart';
class Perguntas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 420,
          height: 860,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Color(0xFF373EEA), Color(0xFF000467)],
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: -43,
                top: 116,
                child: Container(
                  width: 390,
                  height: 173,
                  decoration: ShapeDecoration(
                    color: Color(0xFF00CE00),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -28,
                top: 116,
                child: Container(
                  width: 375,
                  height: 173,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFCE00),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 124,
                top: 12,
                child: Container(
                  width: 112,
                  height: 81,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("Ohomilho.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 345,
                child: Container(
                  width: 330,
                  height: 64,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 7,
                        child: Container(
                          width: 330,
                          height: 48,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFFCE00),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 0,
                        child: Container(
                          width: 64,
                          height: 64,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF1F1F1),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 27,
                        top: 3,
                        child: Text(
                          '1',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 48,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 17,
                top: 429,
                child: Container(
                  width: 330,
                  height: 64,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 8,
                        child: Container(
                          width: 330,
                          height: 48,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFFCE00),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 5,
                        top: 0,
                        child: Container(
                          width: 64,
                          height: 64,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF1F1F1),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 3,
                        child: Text(
                          '2',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 48,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 513,
                child: Container(
                  width: 330,
                  height: 64,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 8,
                        child: Container(
                          width: 330,
                          height: 48,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFFCE00),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 0,
                        child: Container(
                          width: 64,
                          height: 64,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF1F1F1),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 23,
                        top: 3,
                        child: Text(
                          '3',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 48,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 597,
                child: Container(
                  width: 330,
                  height: 64,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 8,
                        child: Container(
                          width: 330,
                          height: 48,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFFCE00),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 0,
                        child: Container(
                          width: 64,
                          height: 64,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF1F1F1),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 23,
                        top: 3,
                        child: Text(
                          '4',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 48,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 22,
                top: 143,
                child: Text(
                  'Qual é o Valor de \n10+10= ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w900,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 22,
                top: 143,
                child: Text(
                  'Qual é o Valor de \n10+10= ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w900,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 175,
                top: 352,
                child: Text(
                  '10',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w900,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 175,
                top: 437,
                child: Text(
                  '10',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w900,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 175,
                top: 521,
                child: Text(
                  '10',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w900,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 170,
                top: 605,
                child: Text(
                  '20',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w900,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}