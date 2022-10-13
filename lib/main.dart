import 'package:brick/appbar.dart';
import 'package:brick/buy.dart';
import 'package:brick/carousel.dart';
import 'package:brick/timeline.dart';
import 'package:brick/trade.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      debugShowCheckedModeBanner: false,
      title: 'Brick',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          background: const Color(0xFF000000),
        ),
        primaryColor: const Color(0xCC27262C),
      ),
      home: const MyHomePage(title: 'Brick: home'),
      routes: {
        'trade': (context) => const TradePage(title: 'Brick: trade'),
        'buy': (context) => const BuyPage(title: 'Brick: How to buy')
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const CustomAppbar(),
      body: SingleChildScrollView(
        child: Stack(children: [
          Positioned(
            left: -800,
            top: -900,
            child: Image.asset(
              'assets/images/3.png',
              scale: 0.1,
            ),
          ),
          Positioned(
            left: -250,
            top: 700,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/1.png',
                  scale: 0.15,
                ),
              ],
            ),
          ),
          Positioned(
            left: 1100,
            top: -100,
            child: RotatedBox(
              quarterTurns: 1,
              child: Image.asset(
                'assets/images/6.png',
                scale: 0.2,
              ),
            ),
          ),
          Positioned(
            left: 200,
            bottom: -150,
            child: RotatedBox(
              quarterTurns: 2,
              child: Image.asset(
                'assets/images/6.png',
                scale: 0.2,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: Stack(
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 25),
                              child: Text(
                                'WELCOME TO BRICK',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF878787),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 100),
                              child: FittedBox(
                                child: Text(
                                  'Invest in\nbrick',
                                  style: TextStyle(
                                      fontSize: 130,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
              const Carousel(),
              const TimeLine(
                dates: ['2020', '2021', '2022', '2023', '2024'],
                texts: [
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut tellus tincidunt, viverra metus sed, ornare lacus. Curabitur sit amet justo eu diam gravida aliquet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed nec viverra tellus. Duis gravida, turpis et commodo hendrerit, diam ex vehicula arcu, nec tempus libero nibh quis turpis. Donec dictum suscipit enim et vulputate. Phasellus non lectus tincidunt, hendrerit turpis id, iaculis ipsum. Nullam vitae orci a nisi gravida convallis. Curabitur orci erat, maximus sed dictum vitae, suscipit ut ex. Praesent vel dictum sem, ac iaculis enim. Nullam ut fringilla sapien. Cras imperdiet mi purus, eget mattis arcu lacinia at. Duis pretium mauris ut egestas finibus.',
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut tellus tincidunt, viverra metus sed, ornare lacus. Curabitur sit amet justo eu diam gravida aliquet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed nec viverra tellus. Duis gravida, turpis et commodo hendrerit, diam ex vehicula arcu, nec tempus libero nibh quis turpis. Donec dictum suscipit enim et vulputate. Phasellus non lectus tincidunt, hendrerit turpis id, iaculis ipsum. Nullam vitae orci a nisi gravida convallis. Curabitur orci erat, maximus sed dictum vitae, suscipit ut ex. Praesent vel dictum sem, ac iaculis enim. Nullam ut fringilla sapien. Cras imperdiet mi purus, eget mattis arcu lacinia at. Duis pretium mauris ut egestas finibus.',
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut tellus tincidunt, viverra metus sed, ornare lacus. Curabitur sit amet justo eu diam gravida aliquet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed nec viverra tellus. Duis gravida, turpis et commodo hendrerit, diam ex vehicula arcu, nec tempus libero nibh quis turpis. Donec dictum suscipit enim et vulputate. Phasellus non lectus tincidunt, hendrerit turpis id, iaculis ipsum. Nullam vitae orci a nisi gravida convallis. Curabitur orci erat, maximus sed dictum vitae, suscipit ut ex. Praesent vel dictum sem, ac iaculis enim. Nullam ut fringilla sapien. Cras imperdiet mi purus, eget mattis arcu lacinia at. Duis pretium mauris ut egestas finibus.',
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut tellus tincidunt, viverra metus sed, ornare lacus. Curabitur sit amet justo eu diam gravida aliquet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed nec viverra tellus. Duis gravida, turpis et commodo hendrerit, diam ex vehicula arcu, nec tempus libero nibh quis turpis. Donec dictum suscipit enim et vulputate. Phasellus non lectus tincidunt, hendrerit turpis id, iaculis ipsum. Nullam vitae orci a nisi gravida convallis. Curabitur orci erat, maximus sed dictum vitae, suscipit ut ex. Praesent vel dictum sem, ac iaculis enim. Nullam ut fringilla sapien. Cras imperdiet mi purus, eget mattis arcu lacinia at. Duis pretium mauris ut egestas finibus.',
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut tellus tincidunt, viverra metus sed, ornare lacus. Curabitur sit amet justo eu diam gravida aliquet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed nec viverra tellus. Duis gravida, turpis et commodo hendrerit, diam ex vehicula arcu, nec tempus libero nibh quis turpis. Donec dictum suscipit enim et vulputate. Phasellus non lectus tincidunt, hendrerit turpis id, iaculis ipsum. Nullam vitae orci a nisi gravida convallis. Curabitur orci erat, maximus sed dictum vitae, suscipit ut ex. Praesent vel dictum sem, ac iaculis enim. Nullam ut fringilla sapien. Cras imperdiet mi purus, eget mattis arcu lacinia at. Duis pretium mauris ut egestas finibus.'
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
