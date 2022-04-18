import 'package:flutter/material.dart';

class LoginPageImageStack extends StatelessWidget {
  const LoginPageImageStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.white,
            child: Stack(
              children: [
                Align(
                  alignment: const Alignment(-0.3, -0.9),
                  child: Container(
                    width: 120,
                    height: 210,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage('assets/fundorosa2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const Alignment(0.4, 0.4),
                  child: Container(
                    width: 120,
                    height: 210,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                      color: Color.fromARGB(255, 238, 15, 55),
                      image: DecorationImage(
                        image: AssetImage('assets/rostopretoebranco.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const Alignment(-0.7, -0.6),
                  child: Container(
                    width: 50,
                    height: 80,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Color.fromRGBO(238, 15, 55, 0.8),
                    ),
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'now',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
