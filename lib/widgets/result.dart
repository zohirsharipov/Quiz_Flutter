import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final int questionlength;
  final Function() restart;
  final String message;
  Result(this.result, this.questionlength, this.restart, this.message);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Natija: $result/${questionlength}",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        ElevatedButton.icon(
            onPressed: restart,
            icon: Icon(Icons.restart_alt),
            label: Text("Restart")),
        Text(
          message,
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ]),
    );
  }
}
