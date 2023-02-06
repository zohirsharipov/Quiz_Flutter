import 'package:flutter/material.dart';
import 'package:myownapp/widgets/result.dart';
import 'package:myownapp/widgets/savol.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppstate();
  }
}

class MyAppstate extends State<MyApp> {
  List<Map<String, dynamic>> savoljavob = [
    {
      "question": "1. In Britain you _______ drive a car when you're 17.",
      "answer": [
        {"text": " will", "correct": false},
        {"text": "can", "correct": true},
        {"text": "must", "correct": false},
        {"text": "have to", "correct": false},
      ]
    },
    {
      "question": "2. Have you lived in London _______ a long time?",
      "answer": [
        {"text": "since", "correct": true},
        {"text": "for", "correct": false},
        {"text": "in", "correct": false},
        {"text": "from", "correct": false},
      ]
    },
    {
      "question": "3. _______ green tea?" "Yes, every morning!",
      "answer": [
        {"text": "Drink you", "correct": true},
        {"text": "Are you drinking", "correct": false},
        {"text": "Do you drink", "correct": false},
        {"text": "Are you drink", "correct": false},
      ]
    },
    {
      "question": "4. I am very pleased _______ that you passed your exams.",
      "answer": [
        {"text": "to hea", "correct": true},
        {"text": "hear", "correct": false},
        {"text": "hearing", "correct": false},
        {"text": "to hearing", "correct": false},
      ]
    },
    {
      "question":
          "5. Oh no! The phone's not working and I have to call my mother it's her birthday todayIs it? Don't worry. _______ you use my mobile.",
      "answer": [
        {"text": "I am letting", "correct": true},
        {"text": " I'll let", "correct": false},
        {"text": "I'll be letting", "correct": false},
        {"text": " I'm going to let", "correct": false},
      ]
    },
    {
      "question": "7. Printing _______ in ancient China.",
      "answer": [
        {"text": "has been invented", "correct": true},
        {"text": "was invented", "correct": false},
        {"text": "was been invented", "correct": false},
        {"text": "invented", "correct": false},
      ]
    },
    {
      "question":
          "8. I _______ stop at the traffic lights because they were red.",
      "answer": [
        {"text": "must ", "correct": true},
        {"text": "had to", "correct": false},
        {"text": "should", "correct": false},
        {"text": "had", "correct": false},
      ]
    },
    {
      "question": "9. That's the man _______ wife is a doctor.",
      "answer": [
        {"text": "who", "correct": true},
        {"text": "who's", "correct": false},
        {"text": "whose", "correct": false},
        {"text": "whom", "correct": false},
      ]
    },
    {
      "question":
          "10. Who does this hat belong to? I don\'t know. But it looks quite fashionable so it _______ belong to Jane.",
      "answer": [
        {"text": "maybe ", "correct": true},
        {"text": "can", "correct": false},
        {"text": "might", "correct": false},
        {"text": "may to", "correct": false},
      ]
    },
    {
      "question": "11. Both _______ faces were red with embarrassment.",
      "answer": [
        {"text": "boys", "correct": true},
        {"text": "boy's", "correct": false},
        {"text": "boys's", "correct": false},
        {"text": "boys'", "correct": false},
      ]
    },
    {
      "question": "12. You look very tired! What _______ ?",
      "answer": [
        {"text": "did you do", "correct": true},
        {"text": "have you done", "correct": false},
        {"text": "had you done", "correct": false},
        {"text": "have you been doing", "correct": false},
      ]
    },
    {
      "question": "13. I was really _______ after I watched that film.",
      "answer": [
        {"text": "depressed", "correct": true},
        {"text": "depressing ", "correct": false},
        {"text": "depress", "correct": false},
        {"text": "depression", "correct": false},
      ]
    },
    {
      "question":
          "14. She won the race _______ all the others being professional athletes.",
      "answer": [
        {"text": "despite", "correct": true},
        {"text": "in spite", "correct": false},
        {"text": "although", "correct": false},
        {"text": "however", "correct": false},
      ]
    },
    {
      "question": "15. We arrived at the cinema late. The film _______.",
      "answer": [
        {"text": "is already started", "correct": true},
        {"text": "was already started", "correct": false},
        {"text": "had already started", "correct": false},
        {"text": "had already been started", "correct": false},
      ]
    },
    {
      "question": "16. It's Sunday and so _______ go to work.",
      "answer": [
        {"text": "I don't have to", "correct": true},
        {"text": "I mustn't ", "correct": false},
        {"text": "mustn't to ", "correct": false},
        {"text": "shouldn't to", "correct": false},
      ]
    },
    {
      "question": "17. If I _______ , I would have told you.",
      "answer": [
        {"text": "have known ", "correct": true},
        {"text": "know", "correct": false},
        {"text": "had known", "correct": false},
        {"text": "was knowing", "correct": false},
      ]
    },
    {
      "question":
          "18. Tom and Sue _______ last May. Now she's getting married to Andrew.",
      "answer": [
        {"text": "broke up", "correct": true},
        {"text": "broke off", "correct": false},
        {"text": "broke in", "correct": false},
        {"text": "broke away", "correct": false},
      ]
    },
    {
      "question":
          "19. I asked two people the way to the metro but _______ of them knew.",
      "answer": [
        {"text": "none", "correct": true},
        {"text": "no", "correct": false},
        {"text": "neither", "correct": false},
        {"text": "not any", "correct": false},
      ]
    },
    {
      "question": "20. Next year, I hope _______ speak French fluently.",
      "answer": [
        {"text": " I'm possible to", "correct": true},
        {"text": " I'll be able to", "correct": false},
        {"text": "I'll manage", "correct": false},
        {"text": " I could", "correct": false},
      ]
    },
  ];
  int questionnumber = 0;
  int result = 0;
  String messages = " ";
//Button action
  void answerquestion(bool correct) {
    setState(() {
      questionnumber++;
      if (correct) {
        result++;
      }
      if (result == 0) {
        messages = "Qaytadan urinib ko'ring!";
      }
      if (result <= 10 && result > 0) {
        messages = "Qoniqarsiz natija!";
      }
      if (result < 20 && result > 15) {
        messages = "Yaxshi natija!";
      }
      if (result == 20) {
        messages = "Ajoyib natija!";
      }
    });
  }

//Restart Test
  void restarts() {
    setState(() {
      result = 0;
      questionnumber = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: questionnumber < savoljavob.length //if condition starts
              ? Question(savoljavob[questionnumber]["question"],
                  savoljavob[questionnumber]["answer"], answerquestion)
              //if condition continues
              : Result(result, savoljavob.length, restarts, messages),
        ),
      ),
    );
  }
}
