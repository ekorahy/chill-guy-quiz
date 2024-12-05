import 'package:flutter/material.dart';
import '../models/quiz.dart';
import '../widgets/question_card.dart';
import 'result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int totalScore = 0;

  void nextQuestion(int score) {
    totalScore += score;

    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(score: totalScore),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Quiz Screen')),
      body: QuestionCard(
        questionData: questions[currentQuestionIndex],
        onAnswerSelected: nextQuestion,
      ),
    );
  }
}
