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
  late List<Quiz> shuffledQuestions;
  int currentQuestionIndex = 0;
  int totalScore = 0;

  @override
  void initState() {
    super.initState();
    shuffledQuestions = List.from(questions)..shuffle();
  }

  void nextQuestion(int score) {
    totalScore += score;

    if (currentQuestionIndex < shuffledQuestions.length - 1) {
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

  void previousQuestion() {
    if (currentQuestionIndex > 0) {
      setState(() {
        currentQuestionIndex--;
      });
    } else {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quiz',
          style: TextStyle(fontFamily: 'parkinsans', fontSize: 18),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: previousQuestion,
        ),
      ),
      body: QuestionCard(
        questionData: shuffledQuestions[currentQuestionIndex],
        onAnswerSelected: nextQuestion,
      ),
    );
  }
}
