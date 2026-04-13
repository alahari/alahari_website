import 'package:flutter/material.dart' hide MenuBar;
import 'package:minimal/components/components.dart';

class PostPage extends StatelessWidget {
  const PostPage({Key? key}) : super(key: key);

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
                Text('Inside the build', style: eyebrowTextStyle),
                const SizedBox(height: 16),
                Text(
                  'How Alahari approaches EV charging projects from first sketch to field-ready system.',
                  style: heroTextStyle.copyWith(fontSize: 46),
                ),
                const SizedBox(height: 18),
                Text(
                  'Our delivery philosophy blends technical confidence with calm execution. That means fewer surprises, faster decisions, and charging stations that hold up once real users arrive.',
                  style: subtitleTextStyle.copyWith(fontSize: 17),
                ),
                const SizedBox(height: 24),
                const ImageWrapper(
                  image: 'assets/images/mugs_side_bw_w1080.jpg',
                ),
              ],
            ),
          ),
          const SizedBox(height: 28),
          GlassPanel(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SectionHeading(
                  eyebrow: 'Playbook',
                  title: 'Execution first, aesthetics close behind.',
                  description:
                      'We want charging infrastructure to be technically solid and visually trustworthy. The engineering matters, but so does the confidence people feel when they arrive on site.',
                ),
                SizedBox(height: 22),
                TextBody(
                  text:
                      'The early phase is about clarity. We study power availability, site behavior, expected dwell time, charger mix, and operational constraints before hardware decisions turn into expensive assumptions.',
                ),
                TextBody(
                  text:
                      'From there, project delivery becomes a sequencing challenge: electrical scope, civil readiness, vendor coordination, protection systems, commissioning, and the handoff into daily operations. Good projects feel smooth because the complexity has already been absorbed by the planning.',
                ),
                TextHeadlineSecondary(
                  text: 'Where reliability actually comes from',
                ),
                TextBody(
                  text:
                      'Reliability is rarely one heroic moment. It comes from dozens of deliberate small decisions: sensible layouts, accessible service paths, clean cable routing, safe protection design, and documentation that future teams can actually use.',
                ),
                TextBlockquote(
                  text:
                      'Premium infrastructure is not only about installing chargers. It is about shaping an experience that is technically dependable, operationally calm, and easy to trust at a glance.',
                ),
                TextBody(
                  text:
                      'That is the standard we want the brand and the website to reflect. The digital presence should communicate the same discipline customers can expect in the field.',
                ),
              ],
            ),
          ),
          const SizedBox(height: 28),
          GlassPanel(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Focus areas', style: buttonTextStyle),
                const SizedBox(height: 18),
                const TagWrapper(
                  tags: [
                    Tag(tag: 'Charging strategy'),
                    Tag(tag: 'Electrical design'),
                    Tag(tag: 'Site execution'),
                    Tag(tag: 'Operations'),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 28),
          ...authorSection(
            imageUrl: 'assets/images/avatar_default.png',
            name: 'Alahari project desk',
            bio:
                'This section can evolve into a case-study or insight template for future projects, tenders, launches, and technical articles.',
          ),
          const SizedBox(height: 28),
          const PostNavigation(),
          const SizedBox(height: 28),
          const Footer(),
        ],
      ),
    );
  }
}
