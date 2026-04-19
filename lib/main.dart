import 'package:flutter/material.dart';
import 'package:minimal/components/color.dart';
import 'package:minimal/components/typography.dart';
import 'package:minimal/pages/pages.dart';
import 'package:minimal/routes.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zen Charge | EV Charging Infrastructure',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: appBackground,
        colorScheme: ColorScheme.fromSeed(
          seedColor: accent,
          primary: accent,
          secondary: accentBright,
          background: appBackground,
          surface: panelBackground,
        ),
        textTheme: TextTheme(
          displayLarge: heroTextStyle,
          headlineMedium: headlineTextStyle,
          headlineSmall: headlineSecondaryTextStyle,
          bodyLarge: bodyTextStyle,
          bodyMedium: subtitleTextStyle,
          labelLarge: buttonTextStyle,
        ),
      ),
      builder: (context, child) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, child!),
          maxWidth: 1280,
          minWidth: 390,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(390, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(760, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1024, name: TABLET),
            const ResponsiveBreakpoint.resize(1280, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: appBackground)),
      initialRoute: Routes.home,
      onGenerateRoute: (RouteSettings settings) {
        return Routes.fadeThrough(settings, (context) {
          switch (settings.name) {
            case Routes.home:
              return const ListPage();
            case Routes.post:
              return const PostPage();
            case Routes.style:
              return const TypographyPage();
            case Routes.contact:
              return const ContactPage();
            default:
              return const SizedBox.shrink();
          }
        });
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
