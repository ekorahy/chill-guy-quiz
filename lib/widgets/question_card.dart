import 'package:flutter/material.dart';
import '../models/quiz.dart';

class QuestionCard extends StatelessWidget {
  final Quiz questionData;
  final Function(int) onAnswerSelected;

  const QuestionCard({
    super.key,
    required this.questionData,
    required this.onAnswerSelected,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final imageHeight = screenWidth * 0.6;
    final isMediumWidthScreen = screenWidth > 800;
    final isLargaWidthScreen = screenWidth > 1200;

    final shuffledAnswers = List.from(questionData.answers)..shuffle();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: isMediumWidthScreen
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    questionData.image,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: isLargaWidthScreen ? 100 : 20),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        questionData.question,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'parkinsans',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      ...shuffledAnswers.map((answer) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 6.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 14,
                              ),
                            ),
                            onPressed: () => onAnswerSelected(answer.score),
                            child: Text(
                              answer.text,
                              style: const TextStyle(
                                fontFamily: 'parkinsans',
                                fontSize: 16,
                                color: Color(0xFF9A3412),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  questionData.image,
                  height: imageHeight,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20),
                Text(
                  questionData.question,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'parkinsans',
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                ...shuffledAnswers.map((answer) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 6.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 14,
                        ),
                      ),
                      onPressed: () => onAnswerSelected(answer.score),
                      child: Text(
                        answer.text,
                        style: const TextStyle(
                          fontFamily: 'parkinsans',
                          fontSize: 16,
                          color: Color(0xFF9A3412),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                }),
              ],
            ),
    );
  }
}
