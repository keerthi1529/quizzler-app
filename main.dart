import 'package:flutter/material.dart';
import 'quizbrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
Quizbrain brain =Quizbrain();
void main() => runApp(Quizzler());
class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}
class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}
class _QuizPageState extends State<QuizPage> {
  List<Icon> scorekeeper =[];
  // List<String> questions =
  // ['This is where the question text will go.',
  //   'You can lead a cow down stairs but not up stairs.',
  //   'Approximately one quarter of human bones are in the feet.',
  //   'A slug\'s blood is green.',
  //   'You are the cutest one I have ever seen',
  //   'powerful personality is non other than our mom',
  //   'questions over please restart program in your pc'];
  // List<bool> answers =[true,false,true,true,false,true];
  // Question q1 =Question(q:'This is where the question text will go.',a:true);
  //   List<Question> questionbank=[
  //   Question('This is where the question text will go.', true),
  //   Question('You can lead a cow down stairs but not up stairs.', false),
  //   Question('Approximately one quarter of human bones are in the feet.', true),
  //   Question('You are the cutest one I have ever seen', false),
  //   Question('powerful personality is non other than our mom', true),
  //   Question('questions over please restart program in your pc', true)];
 int questionnumber=0;
  void check(bool userpick){
    bool correctanswer = brain.getquestionanswer();
    //The user picked true.
    setState(() {
      if (correctanswer==userpick){
        scorekeeper.add(Icon(Icons.check,color:Colors.green),);
        print('correct answer');
      }
      else {
        scorekeeper.add(Icon(Icons.close,color:Colors.red),);
        print('wrong answer');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                brain.getquestiontext(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green), // Set the background color
              ),
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                brain.nextquestion();
                check(true);
                },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red), // Set the background color
              ),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                brain.nextquestion();
                check(false);
              },
            ),
          ),
        ),
        Row(
          children : scorekeeper,
        )
      ],
    );
  }
}