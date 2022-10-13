import 'package:brick/menu-button.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  State<StatefulWidget> createState() => CustomAppbarState();

  @override
  Size get preferredSize => const Size(double.infinity, 60);
}

class CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(Icons.logo_dev),
                    Text(
                      'BrickSafe',
                      style: TextStyle(
                          fontFamily: 'Kanit',
                          color: Colors.white,
                          fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: TextButton(
                        style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white)),
                        onPressed: () {
                          Navigator.pushNamed(context, '/');
                        },
                        child: const Text('Home'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: TextButton(
                        style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white)),
                        onPressed: () {
                          Navigator.pushNamed(context, 'trade');
                        },
                        child: const Text('Trade'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: TextButton(
                        style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white)),
                        onPressed: () {
                          Navigator.pushNamed(context, 'buy');
                        },
                        child: const Text('How to buy'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    MenuDropdown(
                      callback: () {
                        return;
                      },
                      text: 'Italiano',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
