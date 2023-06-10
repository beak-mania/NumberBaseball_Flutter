
import 'package:flutter/material.dart';
import 'package:number_baseball/widgets/listview_qna.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final List<listview_qna> entries = <listview_qna>[
    listview_qna(question: "질문", answer: "결과", isTitle: true,),
    listview_qna(question: "0000", answer: "1S 1B",),
    listview_qna(question: "0000", answer: "3S 1B",),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              Icon(Icons.exit_to_app_rounded, size: 30,),
              Expanded(child:
                Center(
                  child: Text("00:00:00", 
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              ),
              Icon(Icons.question_mark_rounded, size: 30,),
            ],
          ),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(0),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return entries[index];
          }
        ),
      ),
    );
  }
}


