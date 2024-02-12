class QuestionModel {
  final String questionText;
  final List<String> answerList;
  final int correctAnswerIndex;
  final int score;

  const QuestionModel({
    required this.questionText,
    required this.answerList,
    required this.correctAnswerIndex,
    required this.score,
  });
}

const quizBank = [
  QuestionModel(
    questionText: "Question 01",
    answerList: ['Answer 01a', 'Answer 02a', 'Answer 03a', 'Answer 04a'],
    correctAnswerIndex: 0,
    score: 3,
  ),
  QuestionModel(
    questionText: "Question 02",
    answerList: ['Answer 01b', 'Answer 02b', 'Answer 03b', 'Answer 04b'],
    correctAnswerIndex: 1,
    score: 6,
  ),
  QuestionModel(
    questionText: "Question 03",
    answerList: ['Answer 01c', 'Answer 02c', 'Answer 03c', 'Answer 04c'],
    correctAnswerIndex: 2,
    score: 9,
  ),
  QuestionModel(
    questionText: "Question 04",
    answerList: ['Answer 01d', 'Answer 02d', 'Answer 03d', 'Answer 04d'],
    correctAnswerIndex: 3,
    score: 12,
  ),
  QuestionModel(
    questionText: "Question 05",
    answerList: ['Answer 01e', 'Answer 02e', 'Answer 03e', 'Answer 04e'],
    correctAnswerIndex: 3,
    score: 15,
  ),
];
