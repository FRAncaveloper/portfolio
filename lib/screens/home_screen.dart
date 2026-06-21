import 'package:flutter/material.dart';
import 'resume_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
 //primeira tela que o usuário
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'PEDRO HENRIQUE',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              'DESENVOLVEDOR FLUTTER JÚNIOR',
              style: TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 64),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent,
                foregroundColor: Colors.black,
                shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
              ),
              //botão para iniciar o currículo, agora navegando para a próxima tela
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ResumeScreen(),
                  ),
                );
              },
              child: const Text(
                'PRESS START',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
