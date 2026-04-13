import 'package:flutter/material.dart' hide MenuBar;
import 'package:minimal/components/components.dart';
import 'package:minimal/routes.dart';

class TypographyPage extends StatelessWidget {
  const TypographyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MenuBar(),
          const SizedBox(height: 28),
          GlassPanel(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Careers', style: eyebrowTextStyle),
                const SizedBox(height: 16),
                Text(
                  'Join a team building practical energy infrastructure with ambition.',
                  style: heroTextStyle.copyWith(fontSize: 46),
                ),
                const SizedBox(height: 16),
                Text(
                  'We care about execution, curiosity, and people who can turn technical complexity into dependable outcomes. The work spans field reality, customer confidence, and the future of electric mobility.',
                  style: subtitleTextStyle.copyWith(fontSize: 17),
                ),
              ],
            ),
          ),
          const SizedBox(height: 28),
          const SectionHeading(
            eyebrow: 'What it feels like',
            title: 'Small-team energy with a systems mindset.',
            description:
                'The environment should feel hands-on and collaborative: enough ownership to make visible impact, enough structure to keep quality high, and enough ambition to make the work worth caring about.',
          ),
          const SizedBox(height: 22),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 960) {
                return const Column(
                  children: [
                    FeatureCard(
                      icon: Icons.construction_rounded,
                      title: 'Field-aware thinking',
                      description:
                          'We value people who understand that design decisions have consequences on-site, not just in diagrams.',
                    ),
                    SizedBox(height: 18),
                    FeatureCard(
                      icon: Icons.groups_rounded,
                      title: 'Cross-team collaboration',
                      description:
                          'Projects move better when engineering, operations, and communication stay aligned from the start.',
                    ),
                    SizedBox(height: 18),
                    FeatureCard(
                      icon: Icons.trending_up_rounded,
                      title: 'Growth through responsibility',
                      description:
                          'We want teammates who are excited by ownership, iteration, and building stronger systems over time.',
                    ),
                  ],
                );
              }

              return const Row(
                children: [
                  Expanded(
                    child: FeatureCard(
                      icon: Icons.construction_rounded,
                      title: 'Field-aware thinking',
                      description:
                          'We value people who understand that design decisions have consequences on-site, not just in diagrams.',
                    ),
                  ),
                  SizedBox(width: 18),
                  Expanded(
                    child: FeatureCard(
                      icon: Icons.groups_rounded,
                      title: 'Cross-team collaboration',
                      description:
                          'Projects move better when engineering, operations, and communication stay aligned from the start.',
                    ),
                  ),
                  SizedBox(width: 18),
                  Expanded(
                    child: FeatureCard(
                      icon: Icons.trending_up_rounded,
                      title: 'Growth through responsibility',
                      description:
                          'We want teammates who are excited by ownership, iteration, and building stronger systems over time.',
                    ),
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 28),
          GlassPanel(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final bool stacked = constraints.maxWidth < 880;

                final copy = Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Open posture', style: headlineSecondaryTextStyle),
                    const SizedBox(height: 14),
                    Text(
                      'Even if your exact role is not listed yet, reach out if you care deeply about EV charging, electrical systems, deployment quality, or building a sharper customer-facing brand around technical work.',
                      style: bodyTextStyle,
                    ),
                    const SizedBox(height: 20),
                    ReadMoreButton(
                      onPressed: () => Navigator.pushNamed(context, Routes.contact),
                      label: 'Start the conversation',
                    ),
                  ],
                );

                if (stacked) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ImageWrapper(
                        image: 'assets/images/typewriter_overhead_bw_w1080.jpg',
                      ),
                      const SizedBox(height: 22),
                      copy,
                    ],
                  );
                }

                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(
                      flex: 6,
                      child: ImageWrapper(
                        image: 'assets/images/typewriter_overhead_bw_w1080.jpg',
                      ),
                    ),
                    const SizedBox(width: 22),
                    Expanded(flex: 5, child: copy),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 28),
          const Footer(),
        ],
      ),
    );
  }
}
