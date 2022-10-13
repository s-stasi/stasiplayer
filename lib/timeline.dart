import 'package:flutter/material.dart';

class TimeLine extends StatelessWidget {
  final List<String> dates;
  final List<String> texts;
  const TimeLine({super.key, required this.dates, required this.texts});

  @override
  Widget build(BuildContext context) {
    int rows = (MediaQuery.of(context).size.width / 400).floor();
    rows = rows == 0 ? 1 : rows;

    List<Widget> list() {
      List<Widget> list = [];
      for (int i = 0; i < rows; i++) {
        list.add(SizedBox(
          height: 580 * (dates.length / rows).ceil().toDouble(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (int j = i; j < dates.length; j += rows)
                CardTimeline(date: dates[j], text: texts[j], j),
            ],
          ),
        ));
      }
      return list;
    }

    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: FittedBox(
              child: Text(
                'Goals',
                style: TextStyle(
                    fontSize: 150,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [...list()]),
      ],
    );
  }
}

class CardTimeline extends StatelessWidget {
  const CardTimeline(
    int index, {
    super.key,
    required this.date,
    required this.text,
  });

  final String date;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.topCenter, children: [
      ConstrainedBox(
        constraints: const BoxConstraints(minWidth: 400, maxWidth: 400),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Container(
            height: 500,
            decoration: BoxDecoration(
              color: const Color(0xFF171717),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
      ConstrainedBox(
        constraints: const BoxConstraints(minWidth: 350, maxWidth: 350),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                date,
                style: const TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFAAAAAA)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                text,
                textAlign: TextAlign.justify,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
