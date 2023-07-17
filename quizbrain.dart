import 'questions.dart';
class Quizbrain {
  List<Question> questionbank = [
    Question('This is where the question text will go.', true),
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('You are the cutest one I have ever seen', false),
    Question('powerful personality is non other than our mom', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
    Question('questions over please restart program in your pc', true)];
  int questionnumber = 0;

  void nextquestion() {
    if (questionnumber < questionbank.length-1) {
      questionnumber++;
      print(questionnumber);
    }
  }

  String getquestiontext() {
    return questionbank[questionnumber].text;
  }

  bool getquestionanswer() {
    return questionbank[questionnumber].answer;
  }
}
