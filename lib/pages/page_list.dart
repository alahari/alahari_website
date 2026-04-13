import 'package:flutter/material.dart' hide MenuBar;
import 'package:minimal/components/components.dart';
import 'package:minimal/routes.dart';

const String listItemTitleText = 'Charging networks with real-world discipline.';
const String listItemPreviewText =
    'We design EV charging deployments that feel premium on the surface and dependable underneath, from electrical planning to rollout operations and long-term uptime.';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          MenuBar(),
          SizedBox(height: 28),
          ListItem(
            imageUrl: 'assets/images/ev_solar_green.jpeg',
            title: listItemTitleText,
            description: listItemPreviewText,
            eyebrow: 'Built for modern mobility',
            highlights: [
              'EV charging strategy',
              'Installation management',
              'Operations and uptime',
            ],
          ),
          SizedBox(height: 28),
          _HomeMetrics(),
          SizedBox(height: 28),
          _CapabilitiesSection(),
          SizedBox(height: 28),
          _ShowcaseSection(),
          SizedBox(height: 28),
          Footer(),
        ],
      ),
    );
  }
}

class _HomeMetrics extends StatelessWidget {
  const _HomeMetrics();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final cards = const [
          MetricCard(
            value: '12+',
            label: 'Years of experience shaping dependable electrical systems.',
          ),
          MetricCard(
            value: '3 yrs',
            label: 'Dedicated focus on EV charger technology and field execution.',
          ),
          MetricCard(
            value: 'E2E',
            label: 'Planning, installation, commissioning, and ongoing management.',
          ),
        ];

        if (constraints.maxWidth < 860) {
          return Column(
            children: [
              for (int i = 0; i < cards.length; i++) ...[
                cards[i],
                if (i != cards.length - 1) const SizedBox(height: 18),
              ],
            ],
          );
        }

        return Row(
          children: const [
            Expanded(child: MetricCard(value: '12+', label: 'Years of experience shaping dependable electrical systems.')),
            SizedBox(width: 18),
            Expanded(child: MetricCard(value: '3 yrs', label: 'Dedicated focus on EV charger technology and field execution.')),
            SizedBox(width: 18),
            Expanded(child: MetricCard(value: 'E2E', label: 'Planning, installation, commissioning, and ongoing management.')),
          ],
        );
      },
    );
  }
}

class _CapabilitiesSection extends StatelessWidget {
  const _CapabilitiesSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeading(
          eyebrow: 'Capabilities',
          title: 'A sharper, calmer way to build charging infrastructure.',
          description:
              'We combine on-ground electrical expertise with EV-specific execution so projects feel coordinated from permit conversations to live charging sessions.',
        ),
        const SizedBox(height: 22),
        LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 960) {
              return const Column(
                children: [
                  FeatureCard(
                    icon: Icons.electric_car_rounded,
                    title: 'EV Site Planning',
                    description:
                        'Load analysis, charger mix decisions, and layout planning tailored to actual commercial usage patterns.',
                  ),
                  SizedBox(height: 18),
                  FeatureCard(
                    icon: Icons.settings_input_component_rounded,
                    title: 'Deployment Control',
                    description:
                        'A disciplined install process that aligns vendors, civil work, and electrical integration without losing momentum.',
                  ),
                  SizedBox(height: 18),
                  FeatureCard(
                    icon: Icons.monitor_heart_rounded,
                    title: 'Operational Reliability',
                    description:
                        'Post-launch maintenance thinking focused on uptime, serviceability, and confidence for every daily user.',
                  ),
                ],
              );
            }

            return const Row(
              children: [
                Expanded(
                  child: FeatureCard(
                    icon: Icons.electric_car_rounded,
                    title: 'EV Site Planning',
                    description:
                        'Load analysis, charger mix decisions, and layout planning tailored to actual commercial usage patterns.',
                  ),
                ),
                SizedBox(width: 18),
                Expanded(
                  child: FeatureCard(
                    icon: Icons.settings_input_component_rounded,
                    title: 'Deployment Control',
                    description:
                        'A disciplined install process that aligns vendors, civil work, and electrical integration without losing momentum.',
                  ),
                ),
                SizedBox(width: 18),
                Expanded(
                  child: FeatureCard(
                    icon: Icons.monitor_heart_rounded,
                    title: 'Operational Reliability',
                    description:
                        'Post-launch maintenance thinking focused on uptime, serviceability, and confidence for every daily user.',
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

class _ShowcaseSection extends StatelessWidget {
  const _ShowcaseSection();

  @override
  Widget build(BuildContext context) {
    return GlassPanel(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeading(
            eyebrow: 'Why us',
            title: 'Grounded engineering, not just glossy energy messaging.',
            description:
                'The ambition is future-facing, but the delivery is practical: clear electrical decisions, solid execution, and visual polish that makes the brand feel ready for a larger stage.',
          ),
          const SizedBox(height: 24),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 880) {
                return Column(
                  children: [
                    const ImageWrapper(
                      image: 'assets/images/coffee_paperclips_pencil_angled_bw_w1080.jpg',
                    ),
                    const SizedBox(height: 22),
                    _ShowcaseCopy(),
                  ],
                );
              }

              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Expanded(
                    flex: 6,
                    child: ImageWrapper(
                      image: 'assets/images/coffee_paperclips_pencil_angled_bw_w1080.jpg',
                    ),
                  ),
                  SizedBox(width: 22),
                  Expanded(
                    flex: 5,
                    child: _ShowcaseCopy(),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class _ShowcaseCopy extends StatelessWidget {
  const _ShowcaseCopy();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Every page now supports a stronger brand story: strategic, confident, and far less template-like.',
          style: headlineSecondaryTextStyle,
        ),
        const SizedBox(height: 14),
        Text(
          'Use this home page as the front door for partnerships, customer trust, and hiring conversations. It should feel like the company already belongs in the next phase of growth.',
          style: bodyTextStyle,
        ),
        const SizedBox(height: 20),
        ReadMoreButton(
          onPressed: () => Navigator.pushNamed(context, Routes.contact),
          label: 'Talk to the team',
        ),
      ],
    );
  }
}
