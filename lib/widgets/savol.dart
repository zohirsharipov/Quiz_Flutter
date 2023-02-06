import "package:flutter/material.dart";

class Question extends StatelessWidget {
  final String questions;
  final List<Map<String, dynamic>> answers;
  final Function answerbutton;

  Question(this.questions, this.answers, this.answerbutton);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          questions,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(
            onPressed: () => answerbutton(answers[0]["correct"]),
            child: Text(
              answers[0]["text"],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
        ElevatedButton(
            onPressed: () => answerbutton(
                  answers[1]["correct"],
                ),
            child: Text(
              answers[1]["text"],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
        ElevatedButton(
            onPressed: () => answerbutton(answers[2]["correct"]),
            child: Text(
              answers[2]["text"],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
        ElevatedButton(
          onPressed: () => answerbutton(answers[3]["correct"]),
          child: Text(
            answers[3]["text"],
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
