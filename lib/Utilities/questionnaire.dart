import 'question.dart';
class QuizBrain{
  int _questionNumber=0;
  List<Question> _questionCollection=[
    Question('Are you a working professional?', ['Yes','No']),
    Question('Are you a student?', ['Yes','No']),
    Question('Do you wear formals for meetings?',['Yes','No']),
    Question('Are you a party animal?', ['Yes','No']),
    Question('Are you a colorful person? You like mixing things up?',['Yes','No']),
    Question('Do you consider yourself to be a cross-dresser?', ['Yes','No']),
    Question('Do you like to go heavy on the accessories?', ['Yes','No','Occassionally']),
    Question('Do you consider yourself to be picky with your clothes?', ['Yes','No']),
    Question('Do you care about fashion over comfort?',['Yes','No']),
    Question('Do you care about comfort over fashion?',['Yes','No']),
    Question('Do you consider yourself to be a trend-setter or you are a follower?',['Trend-setter','Follower']),
    Question('Who is your fashion icon?',[]),
    Question('Do you wake up early in the morning?', ['Yes', 'No']),
    Question('At what time do you wake up in the morning?', []),
    Question('Would you like suggestions for religious events (must allow permission for calendar)?', ['Yes','No']),
    Question('Which religion do you follow?', []),
    Question('Is your calendar organized?', ['Yes','No']),


  ];

  void nextQuestion(){
    if(_questionNumber<_questionCollection.length-1){
      _questionNumber++;
    }
  }

  bool isFinished(){
    if(_questionNumber==_questionCollection.length-1){
      _resetQuestionNumber();
      return true;
    }else{
      return false;
    }
  }
  void _resetQuestionNumber(){
    _questionNumber=0;
  }
  String getQuestionText(){
    return _questionCollection[_questionNumber].questionText;
  }
  // bool getQuestionAnswer(){
  //   return _questionCollection[_questionNumber].answer;
  // }
}