import 'package:brick/appbar.dart';
import 'package:brick/timeline.dart';
import 'package:flutter/material.dart';

class BuyPage extends StatefulWidget {
  const BuyPage({super.key, required this.title});

  final String title;

  @override
  State<BuyPage> createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const CustomAppbar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Stack(
                  children: const [
                    Text(
                      'INVESTI NEL\nMATTONE',
                      style: TextStyle(
                        fontSize: 100,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
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
      ),
    );
  }
}
