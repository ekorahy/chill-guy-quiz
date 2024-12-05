import 'package:flutter/material.dart';
import '../models/quiz.dart';

class QuestionCard extends StatelessWidget {
  final Quiz questionData;
  final Function(int) onAnswerSelected;

  const QuestionCard({super.key, required this.questionData, required this.onAnswerSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            questionData.image,
            height: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          Text(
            questionData.question,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          ...questionData.answers.map((answer) {
            return ElevatedButton(
              onPressed: () => onAnswerSelected(answer.score),
              child: Text(answer.text),
            );
          }),
        ],
      ),
    );
  }
}
