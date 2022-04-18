import 'package:flutter/material.dart';

class ImageUsingStack extends StatelessWidget {
  const ImageUsingStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 55,
          color: Colors.white,
          child: Row(
            children: [
              const SizedBox(width: 180),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 45,
                  width: 20,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 238, 15, 55),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 45,
                  width: 20,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 238, 15, 55),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
            width: 300,
            height: 350,
            color: Colors.white,
            child: Stack(
              children: [
                Align(
                  alignment: const Alignment(0.5, 0.0),
                  child: Container(
                    width: 150,
                    height: 250,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                      color: Color.fromARGB(255, 238, 15, 55),
                      image: DecorationImage(
                        image: AssetImage('assets/fundorosa2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const Alignment(-0.5, -0.9),
                  child: Container(
                    width: 150,
                    height: 250,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                      color: Colors.black,
                      image: DecorationImage(
                          image: AssetImage('assets/notbock.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 70,
                    height: 60,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 238, 15, 55),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(80),
                        bottomLeft: Radius.circular(80),
                        bottomRight: Radius.zero,
                        topRight: Radius.circular(80),
                      ),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.language,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const Alignment(0.3, 0.17),
                  child: Container(
                    width: 85,
                    height: 80,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Align(
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment(-0.85, -1.0),
                            child: Icon(
                              Icons.monitor_heart,
                              color: Colors.red,
                              size: 20,
                            ),
                          ),
                          Row(
                            children: const [
                              Icon(Icons.attach_money),
                              Text(
                                '500',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                          const Align(
                            alignment: Alignment(-0.2, -1.0),
                            child: Text(
                              'THIS MONTH',
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 0.5),
                                  fontSize: 10),
                            ),
                          ),
                        ],
                      ),
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
