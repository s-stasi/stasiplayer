import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late PageController controller;
  int activePage = 1;

  @override
  void initState() {
    controller = PageController(initialPage: 1);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: ConstrainedBox(
        constraints: BoxConstraints(
            maxWidth: 900,
            maxHeight: MediaQuery.of(context).size.width < 740
                ? (MediaQuery.of(context).size.width - 80) / 4
                : 900 / 4),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            PageView(
              pageSnapping: true,
              onPageChanged: (page) {
                debugPrint('changing page');
                setState(() {
                  activePage = page;
                });
              },
              children: [
                Container(
                  height: MediaQuery.of(context).size.width < 740
                      ? (MediaQuery.of(context).size.width - 80) / 4
                      : 900 / 4,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.width < 740
                      ? (MediaQuery.of(context).size.width - 80) / 4
                      : 900 / 4,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.width < 740
                      ? (MediaQuery.of(context).size.width - 80) / 4
                      : 900 / 4,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 3; i++)
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Icon(
                        i == activePage ? Icons.circle : Icons.circle_outlined,
                        size: 17,
                      ),
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
