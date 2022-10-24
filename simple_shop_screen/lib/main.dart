import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShopScreen(),
    );
  }
}

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( // scaffold gradient
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: <Color>[
              Colors.white,
              Colors.blue,
            ],
          ),
        ),
        alignment: Alignment.bottomCenter,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [

            // text
            const Positioned(
              top: 60,
              child: Text(
                'logitech',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Palatino',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            // black shape container with gradient
            ClipPath(
              clipper: CustomShape(),
              child: Container(
                height: 450,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: RadialGradient(
                    colors: <Color>[
                      Colors.white,
                      Colors.black,
                    ],
                    center: Alignment.topCenter,
                  ),
                ),
              ),
            ),

            // mouse image
            Center(
              child: Image.asset('assets/mouse.png'),
            ),

            // blue button in bottom right
            Positioned(
              bottom: -5,
              right: -10,
              child: Container(
                height: 70,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                  ),
                ),
                alignment: Alignment.center,
                child: const Icon(
                  Icons.arrow_forward_rounded,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),

            // mouse model name text
            const Positioned(
              bottom: 180,
              child: Text(
                'G502 HERO',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Palatino',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            // high performance text
            const Positioned(
              bottom: 140,
              child: Text(
                'HIGH PERFORMANCE',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Palatino',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            // gaming mouse text
            const Positioned(
              bottom: 115,
              child: Text(
                'GAMING MOUSE',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Palatino',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}

// Custom Black Shape
class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height * .30);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
