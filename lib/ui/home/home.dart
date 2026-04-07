import 'package:flutter/material.dart';
import 'package:gamestore/l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5F67EA),
      // Widget for vertically scrolling into the view
      body: SingleChildScrollView(
        // Widget used to stack over by over different children views
        child: Stack(
          children: [
            liquidBackground(20, 150 , 50),
            // Allow to define a specific position for the child into a stack
            Positioned(
                right: 0,
                top: 200,
                child: liquidBackground(20, 180, 100),
            ),
            Container(),
          ],
        ),
      ),
      bottomNavigationBar: navigationBar(context),
    );
  }
}

Widget liquidBackground(double angle, double dx, double dy){
  return Transform(
    transform: Matrix4.identity()..rotateZ(angle),
    origin: Offset(dx, dy),
    child: Image.asset('assets/images/bg_liquid.png',
      width: 200,
    ),
  );
}

Widget navigationBar(BuildContext context) {
  return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            label: AppLocalizations.of(context)?.home_bottom_nav_bar_label,
            icon: BorderRadiusIcon(
                icon: Icons.home_rounded,
                size: 40,
                margin: 5,
                padding: 5,
                alpha: .2,
                radius: 10
            ),
        ),
        BottomNavigationBarItem(
            label: AppLocalizations.of(context)?.application_bottom_nav_bar_label,
            icon: BorderRadiusIcon(
                icon: Icons.more_horiz_outlined,
                size: 40,
                margin: 5,
                padding: 5,
                alpha: .2,
                radius: 10
            )
        ),
        BottomNavigationBarItem(
            label: AppLocalizations.of(context)?.movie_bottom_nav_bar_label,
            icon: BorderRadiusIcon(
                icon: Icons.play_arrow_rounded,
                size: 40,
                margin: 5,
                padding: 5,
                alpha: .2,
                radius: 10
            )
        ),
        BottomNavigationBarItem(
            label: AppLocalizations.of(context)?.book_bottom_nav_bar_label,
            icon: BorderRadiusIcon(
                icon: Icons.auto_stories_rounded,
                size: 40,
                margin: 5,
                padding: 5,
                alpha: .2,
                radius: 10
            )
        ),
      ]
  );
}

class BorderRadiusIcon extends StatelessWidget {

  const BorderRadiusIcon(
        {
          super.key,
          required this.icon,
          required this.size,
          required this.margin,
          required this.padding,
          required this.alpha,
          required this.radius,
        }
      );

  final IconData icon;
  final double size;
  final double margin;
  final double padding;
  final double alpha;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(margin),
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: Colors.grey.withValues(alpha: alpha),
          borderRadius:BorderRadius.circular(radius)
      ),
      child: Icon(icon, size: size),
    );
  }
}

