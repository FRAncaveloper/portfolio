import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});
 // Tela de experiência profissional
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.greenAccent),
        title: const Text(
          'EXPERIÊNCIA',
          style: TextStyle(
            color: Colors.greenAccent,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      // Corpo da tela de experiência profissional
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildRetroBox(
              title: 'CASA CLARIBELA',
              subtitle: 'Estagiário em Gestão de Eventos',
              period: 'mai/2024 - jul/2025',
              topics: [
                'Apoio na criação e organização de conteúdos digitais e materiais visuais.',
                'Desenvolvimento de habilidades de comunicação, organização e trabalho em equipe.',
                'Participação em planejamento de campanhas e acompanhamento de processos.',
                'Contato direto com clientes e resolução de demandas operacionais.'
              ],
            ),
            const SizedBox(height: 24),
            _buildRetroBox(
              title: 'TELEPERFORMANCE',
              subtitle: 'Expert em Interação (SAC)',
              period: 'ago/2023 - nov/2024',
              topics: [
                'Atendimento ao cliente em ambiente de alta demanda.',
                'Desenvolvimento de habilidades de resolução de problemas e comunicação.',
                'Experiência com processos, organização de informações e suporte ao usuário.',
                'Forte foco em experiência do cliente e entendimento de necessidades dos usuários.'
              ],
            ),
          ],
        ),
      ),
    );
  }
 // Widget para criar uma caixa com estilo retrô
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
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 24,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            period,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16),
          ...topics.map((topic) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '> ',
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