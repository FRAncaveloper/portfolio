import 'package:flutter/material.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Configurações do AppBar para a tela de habilidades
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.greenAccent),
        title: const Text(
          'STATUS FINAL',
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
          // Configurações do corpo da tela de habilidades
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildRetroBox(
              title: 'PORTFÓLIO E LINKS',
              topics: [
                'Adobe Portfolio: pedrog3a.myportfolio.com',
                'GitHub: github.com/FRAncaveloper',
                'LinkedIn: (Incluso no cabeçalho original)'
              ],
            ),
            const SizedBox(height: 24),
            _buildRetroBox(
              title: 'INVENTÁRIO (SKILLS)',
              topics: [
                'Linguagens: Dart, Python, Java, HTML, CSS',
                'Frameworks: Flutter',
                'Mobile: Android, Widgets, Navegação',
                'Ferramentas: Git, VS Code, Figma, Photoshop',
                'Design: UI/UX, Wireframes, Design Responsivo',
                'Banco de Dados: SQL, Relacional',
                'Idiomas: Inglês Intermediário',
              ],
            ),
            const SizedBox(height: 24),
            _buildRetroBox(
              title: 'ATRIBUTOS BASE',
              topics: [
                'Comunicação e Trabalho em Equipe',
                'Organização e Resolução de Problemas',
                'Proatividade e Aprendizado Contínuo',
              ],
            ),
            const SizedBox(height: 48),
            Center( 
                // Botão para reiniciar o currículo, voltando para a tela inicial
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
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: const Text(
                  'GAME CLEAR (RESTART)',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
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
    required List<String> topics,
  }) {
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
          ...topics.map((topic) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '+ ',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        topic,
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}