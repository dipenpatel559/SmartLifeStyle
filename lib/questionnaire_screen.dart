import 'package:conditional_questions/conditional_questions.dart';
// import 'package:flutter/material.dart';
import 'package:sls/Categories.dart';


void main() {
  runApp(QuestionnaireScreen());
}

class QuestionnaireScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Lifestyle',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Questionnaire'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _key = GlobalKey<QuestionFormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: ConditionalQuestions(
        key: _key,
        children: questions(),
        trailing: [
          MaterialButton(
            color: Colors.purple,
            splashColor: Colors.purpleAccent,
            onPressed: () async {
              if (_key.currentState!.validate()) {
                print("validated!");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Categories()),
                );
              }
            },
            child: Text("Submit",style: TextStyle(color: Colors.white)),
          )
        ],
        leading: [Text("Getting to know you better!")],
      ),
    );
  }
}
List<Question> questions() {
  return [
    PolarQuestion(
        question: "Are you a working professional?",
        answers: ["Yes", "No"],
        isMandatory: true),
    PolarQuestion(
        question: "Are you a student?",
        answers: ["Yes", "No"]),
    PolarQuestion(
        question: "Do you wear formals for meetings?",
        answers: ["Yes", "No"]),
    PolarQuestion(
        question: "Are you a party animal?",
        answers: ["Yes", "No"]),
    PolarQuestion(
        question: "Are you a colorful person? You like mixing things up?",
        answers: ["Yes", "No"]),
    PolarQuestion(
        question: "Do you consider yourself to be a cross-dresser?",
        answers: ["Yes", "No"]),
    PolarQuestion(
        question: "Do you like to go heavy on the accessories?",
        answers: ["Yes", "No","occasionally"]),
    PolarQuestion(
        question: "Do you consider yourself to be picky with your clothes?",
        answers: ["Yes", "No"]),
    PolarQuestion(
        question: "Do you care about fashion over comfort?",
        answers: ["Yes", "No"]),
    PolarQuestion(
        question: "Do you care about comfort over fashion?",
        answers: ["Yes", "No"]),
    PolarQuestion(
        question: "Do you consider yourself to be a trend-setter or you are a follower?",
        answers: ["Trend-setter", "Follower"]),
    Question(
      question: "Who is your fashion icon?",
      //isMandatory: true,
      validate: (field) {
        if (field.isEmpty) return "Field cannot be empty";
        return null;
      },
    ),
    PolarQuestion(
        question: "Do you wake up early in the morning?",
        answers: ["Yes", "No"]),
    Question(
      question: "At what time do you wake up in the morning?",
      //isMandatory: true,
      validate: (field) {
        if (field.isEmpty) return "Field cannot be empty";
        return null;
      },
    ),
    PolarQuestion(
        question: "Would you like suggestions for religious events (must allow permission for calendar)?",
        answers: ["Yes", "No"]),
    Question(
      question: "Which religion do you follow?",
      //isMandatory: true,
      validate: (field) {
        if (field.isEmpty) return "Field cannot be empty";
        return null;
      },
    ),
    PolarQuestion(
        question: "Is your calendar organized?",
        answers: ["Yes", "No"]),
    // NestedQuestion(
    //   question: "Are you a party animal?",
    //   answers: ["Yes", "No"],
    //   children: {
    //     'Yes': [
    //       PolarQuestion(
    //           question: "Have you ever taken medication for H1n1?",
    //           answers: ["Yes", "No"]),
    //       PolarQuestion(
    //           question: "Have you ever taken medication for Rabies?",
    //           answers: ["Yes", "No"]),
    //       Question(
    //         question: "Comments",
    //       ),
    //     ],
    //     'No': [
    //       NestedQuestion(
    //           question: "Have you sustained any injuries?",
    //           answers: [
    //             "Yes",
    //             "No"
    //           ],
    //           children: {
    //             'Yes': [
    //               PolarQuestion(
    //                   question: "Did it result in a disability?",
    //                   answers: ["Yes", "No", "I prefer not to say"]),
    //             ],
    //             'No': [
    //               PolarQuestion(
    //                   question: "Have you ever been infected with chicken pox?",
    //                   answers: ["Yes", "No"]),
    //             ]
    //           }),
    //     ],
    //   },
    // )
  ];
}