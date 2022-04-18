import 'package:flutter/material.dart';

class TextWithInkWellButton extends StatelessWidget {
  final String buttonText;
  final String pageText;
  final String routeOffButton;
  const TextWithInkWellButton({
    Key? key,
    required this.buttonText,
    required this.pageText,
    required this.routeOffButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      color: Colors.white,
      child: Row(
        children: [
          const SizedBox(
            width: 100,
          ),
          Text(
            pageText,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(routeOffButton);
            },
            child: Text(
              buttonText,
              style: const TextStyle(
                  color: Color.fromARGB(255, 238, 15, 55),
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
