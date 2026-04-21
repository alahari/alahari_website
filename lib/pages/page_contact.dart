import 'package:flutter/material.dart' hide MenuBar;
import 'package:minimal/components/components.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          MenuBar(),
          SizedBox(height: 28),
          GlassPanel(
            child: SectionHeading(
              eyebrow: 'Contact',
              title: 'Meet the people building the next layer of Alahari.',
              description:
                  'The team combines leadership, technical depth, and operational clarity. Reach out for partnerships, charger deployment discussions, or future-focused collaboration.',
            ),
          ),
          SizedBox(height: 28),
          _LeadershipGrid(),
          SizedBox(height: 28),
          ProfileHighlight(
            imagePath: 'assets/images/mahesh_babu.jpeg',
            name: 'Nemalikanti Mahesh Babu',
            role: 'Chief Technology Officer (CTO)',
            bio:
                'Mr. Mahesh Babu brings robust technical leadership with 12 years of experience in the electrical field. For the past 3 years, he has specialized specifically in Electric Vehicle chargers, gaining deep insights into the evolving technology. His expertise covers the complete spectrum of end-to-end charging station installation and management, ensuring technical reliability in all our deployments.',
          ),
          SizedBox(height: 28),
          _ContactDetailsSection(),
          SizedBox(height: 28),
          Footer(),
        ],
      ),
    );
  }
}

class _LeadershipGrid extends StatelessWidget {
  const _LeadershipGrid();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 860) {
          return const Column(
            children: [
              PersonCard(
                imagePath: 'assets/images/venki.jpeg',
                name: 'Venkateswarlu Alahari',
                role: 'Director',
                bio:
                    'Guides the company with a practical leadership style focused on dependable execution, long-term relationships, and grounded growth.',
              ),
              SizedBox(height: 18),
              PersonCard(
                imagePath: 'assets/images/leela.jpeg',
                name: 'Leelavathi Alahari',
                role: 'Director',
                bio:
                    'Brings steady organizational leadership and helps shape a company culture rooted in trust, care, and disciplined delivery.',
              ),
            ],
          );
        }

        return const Row(
          children: [
            Expanded(
              child: PersonCard(
                imagePath: 'assets/images/venki.jpeg',
                name: 'Venkateswarlu Alahari',
                role: 'Director',
                bio:
                    'Guides the company with a practical leadership style focused on dependable execution, long-term relationships, and grounded growth.',
              ),
            ),
            SizedBox(width: 18),
            Expanded(
              child: PersonCard(
                imagePath: 'assets/images/leela.jpeg',
                name: 'Leelavathi Alahari',
                role: 'Director',
                bio:
                    'Brings steady organizational leadership and helps shape a company culture rooted in trust, care, and disciplined delivery.',
              ),
            ),
          ],
        );
      },
    );
  }
}

class _ContactDetailsSection extends StatelessWidget {
  const _ContactDetailsSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SectionHeading(
          eyebrow: 'Reach us',
          title: 'Based in Jupudi, ready to talk.',
          description:
              'Use this page as the relationship layer of the brand: a place that feels welcoming, credible, and easy to approach.',
        ),
        SizedBox(height: 22),
        ContactInfoCard(
          title: 'Office',
          value: 'Alahari Enterprises',
          icon: Icons.apartment_rounded,
        ),
        SizedBox(height: 16),
        ContactInfoCard(
          title: 'Address',
          value:
              'Zen Charge - Jupudi, Hyderabad, NH65 Highway, Vijayawada, Jupudi, Andhra Pradesh 521456',
          icon: Icons.location_on_rounded,
        ),
        SizedBox(height: 16),
        ContactInfoCard(
          title: 'Phone',
          value: '+91 74166 70137 / +91 74161 70137',
          icon: Icons.phone_rounded,
        ),
      ],
    );
  }
}
