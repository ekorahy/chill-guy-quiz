import 'package:flutter/material.dart';
import '../models/quiz.dart';

class QuestionCard extends StatelessWidget {
  final Quiz questionData;
  final Function(int) onAnswerSelected;

  const QuestionCard(
      {super.key, required this.questionData, required this.onAnswerSelected});

  @override
  Widget build(BuildContext context) {
    final shuffledAnswers = List.from(questionData.answers)..shuffle();

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
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'parkinsans'),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          ...shuffledAnswers.map((answer) {
            return Container(
                margin: const EdgeInsets.only(bottom: 6.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 14),
                  ),
                  onPressed: () => onAnswerSelected(answer.score),
                  child: Text(answer.text,
                      style: const TextStyle(
                          fontFamily: 'parkinsans',
                          fontSize: 16,
                          color: Color(0xFF9A3412)),
                      textAlign: TextAlign.center),
                ));
          }),
        ],
      ),
    );
  }
}
