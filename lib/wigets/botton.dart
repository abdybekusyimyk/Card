import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  final String? text;
  final IconData icon;

  NewWidget({
    this.text,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: const Color(0xffF8FCFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(
                  icon,
                  size: 35,
                  color: const Color(0xff122745),
                ),
              ),
            ),
          ),
          Text(
            text!,
            style: const TextStyle(color: Color(0xff172847), fontSize: 20),
          )
        ],
      ),
    );
  }
}
