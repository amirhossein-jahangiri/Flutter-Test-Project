import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const OnboardScreen(),
    );
  }
}

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  List<Widget> onboardItems = const <Widget>[
    FirstScreen(),
    SecondScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          ClipPath(
            clipper: CustomBackgroundShape(),
            child: Container(
              height: 550,
              width: double.infinity,
              color: const Color(0xFF4c9b6e),
            ),
          ),
          ClipPath(
            clipper: CustomBackgroundShape(),
            child: Container(
              height: 480,
              width: double.infinity,
              color: const Color(0xFF318d56),
            ),
          ),
          PageView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: onboardItems.length,
            itemBuilder: (context, index) => onboardItems[index],
          ),
        ],
      ),
    );
  }
}

class CustomBackgroundShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 150);
    path.quadraticBezierTo(
        size.width * .5, size.height, size.width, size.height - 150);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Lottie.network(
            'https://assets5.lottiefiles.com/packages/lf20_lxqurkjc.json',
            height: 350,
          ),
          const SizedBox(height: 10),
          const Text(
            'Flutter Developer',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: Colors.white,
              fontFamily: 'Palatino',
            ),
          ),
          Column(
            children: <Widget>[
              buildSocialMediaItems(
                'amirhossein-jahangiri',
                'assets/linkedin.png',
              ),
              buildSocialMediaItems(
                'amirhossein-jahangiri',
                'assets/github.png',
              ),
              buildSocialMediaItems(
                'amirhosseinjahangiri78@gmail.com',
                'assets/gmail.png',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row buildSocialMediaItems(String? name, String? icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(icon!, height: 40),
        const SizedBox(width: 10),
        Text(
          name!,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Colors.white,
              letterSpacing: 0.5),
        ),
      ],
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Lottie.network(
            'https://assets3.lottiefiles.com/private_files/lf30_WdTEui.json',
            height: 350,
          ),
          const SizedBox(height: 100),
          const Text(
            'Lorem Ipsum',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: Colors.white,
              fontFamily: 'Palatino',
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.white,
                fontFamily: 'Palatino',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
