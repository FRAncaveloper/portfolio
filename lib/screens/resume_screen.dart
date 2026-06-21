import 'package:flutter/material.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.greenAccent),
        title: const Text(
          'RESUMO',
          style: TextStyle(
            color: Colors.greenAccent,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildRetroBox(
              title: 'SOBRE MIM',
              content:
                  'Estudante de Tecnologia da Informação pela UFRN com interesse em desenvolvimento mobile utilizando Flutter e Dart. Possuo experiência acadêmica e prática na criação de aplicações, desenvolvimento de interfaces responsivas, versionamento com Git e construção de projetos utilizando conceitos de programação orientada a objetos.\n\nAlém do desenvolvimento, possuo conhecimentos em UI/UX Design, prototipação no Figma e design de interfaces, o que me permite criar aplicações com foco tanto na qualidade técnica quanto na experiência do usuário.',
            ),
            const SizedBox(height: 24),
            _buildRetroBox(
              title: 'EDUCAÇÃO',
              content:
                  'Tecnologia da Informação\nUniversidade Federal do Rio Grande do Norte (UFRN)\nGraduação em andamento: 2024 - 2027',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRetroBox({required String title, required String content}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.greenAccent, width: 3.0),
        color: Colors.black,
        boxShadow: const [
          BoxShadow(
            color: Colors.greenAccent,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationColor: Colors.greenAccent,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            content,
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
