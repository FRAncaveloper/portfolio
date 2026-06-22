import 'package:flutter/material.dart';
import 'skills_screen.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.greenAccent),
        title: const Text(
          'PROJETOS',
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
              title: 'APLICAÇÕES FLUTTER',
              subtitle: 'Estudos e Práticas',
              period: '2025 - Atual',
              topics: [
                'Desenvolvimento mobile com Flutter e Dart.',
                'Interfaces responsivas seguindo UI/UX.',
                'Gerenciamento de estado (StatefulWidget/setState).',
                'Navegação, componentes reutilizáveis e Git/GitHub.',
              ],
            ),
            const SizedBox(height: 24),
            _buildRetroBox(
              title: 'CITRUS SHOCK',
              subtitle: 'Landing Page Conceitual',
              period: '2026',
              topics: [
                'Criação de identidade visual e branding.',
                'Prototipação no Figma e manipulação no Photoshop.',
                'Design responsivo e foco em experiência do usuário.',
              ],
            ),
            const SizedBox(height: 24),
            _buildRetroBox(
              title: 'POKÉDEX MOBILE',
              subtitle: 'App Flutter',
              period: '2026',
              topics: [
                'Consumo de API REST para dados dos Pokémon.',
                'Navegação entre telas com informações detalhadas.',
                'Requisições assíncronas e widgets personalizados.',
              ],
            ),
            const SizedBox(height: 48),
            Center(
                // Botão para navegar para a tela de habilidades
              child: ElevatedButton(
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SkillsScreen(),
                    ),
                  );
                },
                child: const Text(
                  'FINAL STAGE',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRetroBox({
    required String title,
    required String subtitle,
    required String period,
    required List<String> topics,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.greenAccent, width: 3.0),
        color: Colors.black,
        boxShadow: const [
          BoxShadow(color: Colors.greenAccent, offset: Offset(4, 4)),
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
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
          ),
          Text(
            period,
            style: const TextStyle(fontSize: 20, color: Colors.grey),
          ),
          const SizedBox(height: 16),
          ...topics.map(
            (topic) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '* ',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Text(topic, style: const TextStyle(fontSize: 22)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
