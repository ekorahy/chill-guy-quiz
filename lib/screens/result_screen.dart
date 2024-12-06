import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int score;

  const ResultScreen({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    final String message = score < 80
        ? "Chill bro, kamu terlalu khawatir. 😌"
        : "Wah, kamu chill guy sejati!! 🥶";

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/character.png',
                width: 300,
                height: 300,
              ),
              const SizedBox(height: 20),
              Text(
                message,
                style: const TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'parkinsans'),
              ),
              Text(
                'Score kamu: $score',
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'parkinsans'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back to Home',
                    style: TextStyle(
                        fontFamily: 'parkinsans',
                        fontSize: 16.0,
                        color: Color(0xFF9A3412))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
