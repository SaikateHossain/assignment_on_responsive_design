import 'package:assignment_on_responsive_design/presentation/widget/nav_menu.dart';
import 'package:assignment_on_responsive_design/presentation/widget/responsive_builder.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      mobile: buildMobileLayout(),
      tablet: buildTabletLayout(),
      desktop: buildDesktopLayout(),
    );
  }

  Widget buildMobileLayout() {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Responsive',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink,
      ),
      drawer: NavMenu(),
      drawerScrimColor: Colors.pink,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'FLUTTER WEB.',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
          ),
          const Text(
            'THE BASICS',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: const Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(300, 60),
              backgroundColor: Colors.pink,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              print('Button Pressed');
            },
            child: Text(
              'Join Course',
              style: TextStyle(fontSize: 28),
            ),
          )
        ],
      ),
    );
  }

  Widget buildTabletLayout() {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Responsive',
          style: TextStyle(color: Colors.white, fontSize: 32),
        ),
        backgroundColor: Colors.pink,
      ),
      drawer: NavMenu(),
      drawerScrimColor: Colors.pink,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'FLUTTER WEB.',
            style: TextStyle(fontSize: 60, fontWeight: FontWeight.w900),
          ),
          const Text(
            'THE BASICS',
            style: TextStyle(fontSize: 60, fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: const Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(400, 80),
              backgroundColor: Colors.pink,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              print('Button Pressed');
            },
            child: Text(
              'Join Course',
              style: TextStyle(fontSize: 32),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDesktopLayout() {
    return Scaffold(
      drawerScrimColor: Colors.pink,
      body: Row(
        children: [
          const NavMenu(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'FLUTTER WEB.',
                  style: TextStyle(fontSize: 80, fontWeight: FontWeight.w900),
                ),
                const Text(
                  'THE BASICS',
                  style: TextStyle(fontSize: 80, fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 50),
                const Padding(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(500, 80),
                    backgroundColor: Colors.pink,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    print('Button Pressed');
                  },
                  child: const Text(
                    'Join Course',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
