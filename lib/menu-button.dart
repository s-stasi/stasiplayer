import 'package:flutter/material.dart';

class MenuButton extends StatefulWidget {
  final String text;
  const MenuButton({super.key, required this.text});

  @override
  State<MenuButton> createState() => MenuButtonState();
}

class MenuButtonState extends State<MenuButton> {
  Color overlayColor = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      hoverColor: const Color(0x33567BA0),
      focusColor: const Color(0x33567BA0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: const BorderSide(color: Colors.transparent, width: 1.5),
      ),
      child: SizedBox(
        height: 50,
        child: Center(
            child: Text(
          widget.text,
          style: const TextStyle(
            color: Color(0xFF89A9D9),
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}

class MenuDropdown extends StatelessWidget {
  final VoidCallback callback;
  final String text;
  const MenuDropdown({super.key, required this.callback, required this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: SizedBox(
        height: 35,
        width: 115,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF353547),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 115 - 25,
                    child: Center(
                      child: Text(
                        text.toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 35,
              width: 35,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              child: const Icon(
                Icons.language,
                color: Color(0xFFF0BA02),
              ),
            )
          ],
        ),
      ),
    );
  }
}
