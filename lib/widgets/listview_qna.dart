

import 'package:flutter/material.dart';



class listview_qna extends StatelessWidget {
  final String question, answer;
  bool isTitle = false;

  listview_qna({super.key, 
    required this.question, 
    required this.answer,
    this.isTitle = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: isTitle? const EdgeInsets.only(top: 10, bottom: 5,) : EdgeInsets.zero,
        child: Row(
          children: [
            Expanded(
              child: Text(question,
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: isTitle? FontWeight.bold: FontWeight.normal,
                ),
              ),
            ),
            Expanded(
              child: Text(answer, 
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: isTitle? FontWeight.bold: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


