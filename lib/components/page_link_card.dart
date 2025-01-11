import 'package:flutter/material.dart';

class PageLinkCard extends StatelessWidget {
  const PageLinkCard(
      {super.key,
      required this.backgroundColor,
      required this.namePage,
      required this.iconPage,
      required this.page});

  final Color backgroundColor;
  final String namePage;
  final IconData iconPage;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        gradient: RadialGradient(
            colors: [backgroundColor, backgroundColor],
            radius: 2,
            center: Alignment.centerLeft),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              iconPage,
              color: Colors.white,
            ),
            Text(
              namePage,
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
