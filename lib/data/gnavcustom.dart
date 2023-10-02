import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Gnavcustom extends StatefulWidget {
  final Function(int) callback;
  const Gnavcustom({super.key, required this.callback});

  @override
  State<Gnavcustom> createState() => _GnavcustomState();
}

class _GnavcustomState extends State<Gnavcustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.black45),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 0.0),
        child: Row(
          children: [
            const Expanded(
                flex: 1,
                child: SizedBox(
                  width: 10.0,
                )),
            Expanded(
              flex: 4,
              child: GNav(
                  tabBackgroundColor: const Color.fromARGB(113, 48, 48, 48),
                  padding: const EdgeInsets.all(14.0),
                  tabMargin: const EdgeInsets.symmetric(vertical: 8.0),
                  onTabChange: (value) {
                    widget.callback(value);
                  },
                  gap: 8.0,
                  tabs: const [
                    GButton(
                        icon: Icons.home,
                        text: 'Home',
                        textStyle: TextStyle(
                            fontSize: 14.0,
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.w400)),
                    GButton(
                      icon: Icons.sports_gymnastics,
                      text: 'Workout',
                      textStyle: TextStyle(
                          fontSize: 14.0,
                          letterSpacing: 1.2,
                          fontWeight: FontWeight.w400),
                    ),
                    GButton(
                        icon: Icons.explore,
                        text: 'Exercice',
                        textStyle: TextStyle(
                            fontSize: 14.0,
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.w400)),
                  ]),
            ),
            const Expanded(flex: 1, child: SizedBox(width: 10.0)),
          ],
        ),
      ),
    );
  }
}
