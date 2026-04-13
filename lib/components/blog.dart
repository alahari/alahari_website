import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimal/components/color.dart';
import 'package:minimal/components/spacing.dart';
import 'package:minimal/components/text.dart';
import 'package:minimal/components/typography.dart';
import 'package:minimal/routes.dart';

class PageScaffold extends StatelessWidget {
  final Widget child;

  const PageScaffold({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackground,
      body: Stack(
        children: [
          const Positioned(
            top: -120,
            left: -80,
            child: AmbientOrb(
              size: 280,
              color: accentSoft,
            ),
          ),
          Positioned(
            top: 220,
            right: -110,
            child: AmbientOrb(
              size: 320,
              color: accentBright.withOpacity(0.18),
            ),
          ),
          Positioned(
            bottom: -140,
            left: MediaQuery.of(context).size.width * 0.45,
            child: AmbientOrb(
              size: 260,
              color: accent.withOpacity(0.12),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Center(
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 1220),
                  padding: pagePadding,
                  child: child,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AmbientOrb extends StatelessWidget {
  final double size;
  final Color color;

  const AmbientOrb({
    Key? key,
    required this.size,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            colors: [
              color,
              color.withOpacity(0),
            ],
          ),
        ),
      ),
    );
  }
}

class GlassPanel extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;

  const GlassPanel({
    Key? key,
    required this.child,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? sectionPadding,
      decoration: BoxDecoration(
        color: panelBackground.withOpacity(0.88),
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: borderColor),
        boxShadow: const [
          BoxShadow(
            color: shadowColor,
            blurRadius: 26,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: child,
    );
  }
}

class SectionHeading extends StatelessWidget {
  final String eyebrow;
  final String title;
  final String description;

  const SectionHeading({
    Key? key,
    required this.eyebrow,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(eyebrow.toUpperCase(), style: eyebrowTextStyle),
        const SizedBox(height: 12),
        Text(title, style: headlineTextStyle),
        const SizedBox(height: 12),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 720),
          child: Text(description, style: subtitleTextStyle),
        ),
      ],
    );
  }
}

class MetricCard extends StatelessWidget {
  final String value;
  final String label;

  const MetricCard({
    Key? key,
    required this.value,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassPanel(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            value,
            style: GoogleFonts.spaceGrotesk(
              textStyle: const TextStyle(
                fontSize: 32,
                color: textPrimary,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(label, style: captionTextStyle),
        ],
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const FeatureCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassPanel(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: accentSoft,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(icon, color: accent),
          ),
          const SizedBox(height: 20),
          Text(title, style: headlineSecondaryTextStyle),
          const SizedBox(height: 12),
          Text(description, style: bodyTextStyle),
        ],
      ),
    );
  }
}

class ContactInfoCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const ContactInfoCard({
    Key? key,
    required this.title,
    required this.value,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassPanel(
      padding: const EdgeInsets.all(22),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: accentSoft,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(icon, color: accent),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: buttonTextStyle.copyWith(color: accent)),
                const SizedBox(height: 6),
                Text(value, style: bodyTextStyle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PersonCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String role;
  final String bio;

  const PersonCard({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.role,
    required this.bio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassPanel(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: AspectRatio(
              aspectRatio: 4 / 4.6,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(name, style: headlineSecondaryTextStyle),
          const SizedBox(height: 8),
          Text(role, style: buttonTextStyle.copyWith(color: accent)),
          const SizedBox(height: 14),
          Text(bio, style: bodyTextStyle),
        ],
      ),
    );
  }
}

class ProfileHighlight extends StatelessWidget {
  final String imagePath;
  final String name;
  final String role;
  final String bio;

  const ProfileHighlight({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.role,
    required this.bio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassPanel(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final bool stacked = constraints.maxWidth < 760;
          final Widget image = ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(
              imagePath,
              width: stacked ? double.infinity : 240,
              height: stacked ? 320 : 300,
              fit: BoxFit.cover,
            ),
          );

          final Widget content = Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: headlineTextStyle),
                const SizedBox(height: 12),
                Text(role, style: buttonTextStyle.copyWith(color: accent)),
                const SizedBox(height: 18),
                Text(bio, style: bodyTextStyle),
              ],
            ),
          );

          if (stacked) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                image,
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: headlineTextStyle),
                    const SizedBox(height: 12),
                    Text(role, style: buttonTextStyle.copyWith(color: accent)),
                    const SizedBox(height: 18),
                    Text(bio, style: bodyTextStyle),
                  ],
                ),
              ],
            );
          }

          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              image,
              const SizedBox(width: 28),
              content,
            ],
          );
        },
      ),
    );
  }
}

class ImageWrapper extends StatelessWidget {
  final String image;

  const ImageWrapper({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(28),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class TagWrapper extends StatelessWidget {
  final List<Tag> tags;

  const TagWrapper({Key? key, this.tags = const []}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: tags,
    );
  }
}

class Tag extends StatelessWidget {
  final String tag;

  const Tag({Key? key, required this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: accentSoft,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        tag,
        style: buttonTextStyle.copyWith(color: accent),
      ),
    );
  }
}

class ReadMoreButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const ReadMoreButton({
    Key? key,
    required this.onPressed,
    this.label = 'Explore more',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: accent,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      child: Text(
        label,
        style: buttonTextStyle.copyWith(color: Colors.white),
      ),
    );
  }
}

const Widget divider = Divider(color: borderColor, thickness: 1);

Widget dividerSmall = Container(
  width: 54,
  height: 4,
  decoration: BoxDecoration(
    color: accentBright,
    borderRadius: BorderRadius.circular(999),
  ),
);

List<Widget> authorSection({String? imageUrl, String? name, String? bio}) {
  return [
    const SizedBox(height: 16),
    GlassPanel(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final bool stacked = constraints.maxWidth < 720;

          final avatar = imageUrl == null
              ? const SizedBox.shrink()
              : Container(
                  margin: EdgeInsets.only(right: stacked ? 0 : 22, bottom: stacked ? 18 : 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: Image.asset(
                      imageUrl,
                      width: 110,
                      height: 110,
                      fit: BoxFit.cover,
                    ),
                  ),
                );

          final text = Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (name != null) Text(name, style: headlineSecondaryTextStyle),
                if (name != null) const SizedBox(height: 10),
                if (bio != null) Text(bio, style: bodyTextStyle),
              ],
            ),
          );

          if (stacked) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (imageUrl != null) avatar,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (name != null) Text(name, style: headlineSecondaryTextStyle),
                    if (name != null) const SizedBox(height: 10),
                    if (bio != null) Text(bio, style: bodyTextStyle),
                  ],
                ),
              ],
            );
          }

          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (imageUrl != null) avatar,
              text,
            ],
          );
        },
      ),
    ),
  ];
}

class PostNavigation extends StatelessWidget {
  const PostNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      runSpacing: 14,
      spacing: 14,
      children: const [
        _NavigationPill(
          icon: Icons.arrow_back_rounded,
          label: 'Previous insight',
        ),
        _NavigationPill(
          icon: Icons.arrow_forward_rounded,
          label: 'Next insight',
          reverse: true,
        ),
      ],
    );
  }
}

class ListNavigation extends StatelessWidget {
  const ListNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      runSpacing: 14,
      spacing: 14,
      children: const [
        _NavigationPill(
          icon: Icons.arrow_back_rounded,
          label: 'Newer updates',
        ),
        _NavigationPill(
          icon: Icons.arrow_forward_rounded,
          label: 'Older updates',
          reverse: true,
        ),
      ],
    );
  }
}

class _NavigationPill extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool reverse;

  const _NavigationPill({
    Key? key,
    required this.icon,
    required this.label,
    this.reverse = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final children = [
      Icon(icon, size: 18, color: accent),
      const SizedBox(width: 10),
      Text(label, style: buttonTextStyle),
    ];

    return GlassPanel(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: reverse ? children.reversed.toList() : children,
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassPanel(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final bool stacked = constraints.maxWidth < 760;
          final Widget brand = Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Alahari Enterprises', style: headlineSecondaryTextStyle),
              const SizedBox(height: 10),
              Text(
                'Designing EV charging infrastructure with clean execution, dependable engineering, and an eye on the next decade.',
                style: bodyTextStyle,
              ),
            ],
          );

          final Widget meta = Column(
            crossAxisAlignment:
                stacked ? CrossAxisAlignment.start : CrossAxisAlignment.end,
            children: [
              Text('Hyderabad, India', style: buttonTextStyle.copyWith(color: accent)),
              const SizedBox(height: 8),
              Text(
                'Built for the web, ready for the field.',
                style: captionTextStyle,
                textAlign: stacked ? TextAlign.left : TextAlign.right,
              ),
            ],
          );

          if (stacked) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                brand,
                const SizedBox(height: 20),
                meta,
              ],
            );
          }

          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: brand),
              const SizedBox(width: 24),
              meta,
            ],
          );
        },
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final String? imageUrl;
  final String? description;
  final String eyebrow;
  final List<String> highlights;

  const ListItem({
    Key? key,
    required this.title,
    this.imageUrl,
    this.description,
    this.eyebrow = 'Featured',
    this.highlights = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassPanel(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final bool stacked = constraints.maxWidth < 860;
          final Widget image = ifImage();

          if (stacked) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (imageUrl != null) image,
                if (imageUrl != null) const SizedBox(height: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _buildTextChildren(context),
                ),
              ],
            );
          }

          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 6, child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _buildTextChildren(context),
              )),
              const SizedBox(width: 26),
              if (imageUrl != null) Expanded(flex: 5, child: image),
            ],
          );
        },
      ),
    );
  }

  List<Widget> _buildTextChildren(BuildContext context) {
    return [
      Text(eyebrow.toUpperCase(), style: eyebrowTextStyle),
      const SizedBox(height: 18),
      Text(title, style: heroTextStyle.copyWith(fontSize: 48)),
      const SizedBox(height: 18),
      if (description != null)
        Text(description!, style: subtitleTextStyle.copyWith(fontSize: 17)),
      if (highlights.isNotEmpty) ...[
        const SizedBox(height: 26),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: highlights
              .map(
                (item) => Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: panelMuted,
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Text(item, style: captionTextStyle),
                ),
              )
              .toList(),
        ),
      ],
      const SizedBox(height: 28),
      Wrap(
        spacing: 12,
        runSpacing: 12,
        children: [
          ReadMoreButton(
            onPressed: () => Navigator.pushNamed(context, Routes.contact),
            label: 'Book a conversation',
          ),
          OutlinedButton(
            onPressed: () => Navigator.pushNamed(context, Routes.post),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 18,
              ),
              side: const BorderSide(color: borderColor),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            child: Text('See our approach', style: buttonTextStyle),
          ),
        ],
      ),
    ];
  }

  Widget ifImage() {
    if (imageUrl == null) {
      return const SizedBox.shrink();
    }

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Transform.rotate(
          angle: -math.pi / 40,
          child: Container(
            height: 460,
            decoration: BoxDecoration(
              color: accentSoft,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              imageUrl!,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navItems = [
      _MenuItem(
        label: 'Home',
        onTap: () => Navigator.popUntil(
          context,
          ModalRoute.withName(Navigator.defaultRouteName),
        ),
      ),
      _MenuItem(
        label: 'Solutions',
        onTap: () => Navigator.pushNamed(context, Routes.post),
      ),
      _MenuItem(
        label: 'Careers',
        onTap: () => Navigator.pushNamed(context, Routes.style),
      ),
      _MenuItem(
        label: 'Contact',
        onTap: () => Navigator.pushNamed(context, Routes.contact),
        highlighted: true,
      ),
    ];

    return GlassPanel(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final bool stacked = constraints.maxWidth < 760;

          final brand = InkWell(
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () => Navigator.popUntil(
              context,
              ModalRoute.withName(Navigator.defaultRouteName),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: const Image(
                    image: AssetImage('assets/images/ae.jpg'),
                    width: 64,
                    height: 64,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Alahari', style: headlineSecondaryTextStyle),
                    Text(
                      'EV infrastructure studio',
                      style: captionTextStyle,
                    ),
                  ],
                ),
              ],
            ),
          );

          final nav = Wrap(
            alignment: WrapAlignment.end,
            spacing: 8,
            runSpacing: 8,
            children: navItems,
          );

          if (stacked) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                brand,
                const SizedBox(height: 18),
                nav,
              ],
            );
          }

          return Row(
            children: [
              Expanded(child: brand),
              const SizedBox(width: 18),
              nav,
            ],
          );
        },
      ),
    );
  }
}

class _MenuItem extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final bool highlighted;

  const _MenuItem({
    Key? key,
    required this.label,
    required this.onTap,
    this.highlighted = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        backgroundColor: highlighted ? accent : Colors.transparent,
        foregroundColor: highlighted ? Colors.white : textPrimary,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Text(
        label.toUpperCase(),
        style: buttonTextStyle.copyWith(
          color: highlighted ? Colors.white : textPrimary,
        ),
      ),
    );
  }
}
