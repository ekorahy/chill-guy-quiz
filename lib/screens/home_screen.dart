import 'package:flutter/material.dart';
import 'quiz_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background/home-bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.6),
          ),
          SafeArea(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 100.0, bottom: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Column(
                    children: [
                      Text(
                        'Chill quy quiz',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'caveat',
                          color: Color(0xFF9A3412),
                        ),
                      ),
                      Text(
                        'Seberapa chill guy-nya kamu?',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'parkinsans',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 14),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const QuizScreen()),
                      );
                    },
                    child: const Text(
                      'Start',
                      style: TextStyle(
                          fontFamily: 'parkinsans',
                          fontSize: 16.0,
                          color: Color(0xFF9A3412)),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
