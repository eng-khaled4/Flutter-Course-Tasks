import 'package:flutter/material.dart';

void main() {
  runApp(const LittleDropApp());
}

class LittleDropApp extends StatelessWidget {
  const LittleDropApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Little Drop',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF5149B5)),
      ),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static const Color purple = Color(0xFF5149B5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 18,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 8),
                      const HeroIllustration(),
                      const SizedBox(height: 18),
                      const Text(
                        'Hello',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF222222),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Welcome To Little Drop, where\nyou manage your daily tasks',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.3,
                          color: Color(0xFF858585),
                        ),
                      ),
                      const SizedBox(height: 28),
                      SizedBox(
                        width: 230,
                        height: 46,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: purple,
                            foregroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      const SizedBox(height: 14),
                      SizedBox(
                        width: 230,
                        height: 46,
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            foregroundColor: purple,
                            side: const BorderSide(color: purple, width: 1.3),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      const SizedBox(height: 28),
                      const Text(
                        'Sign up using',
                        style: TextStyle(
                          color: Color(0xFF888888),
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocialCircle(label: 'f', color: Color(0xFF315A91)),
                          SizedBox(width: 12),
                          SocialCircle(label: 'G+', color: Color(0xFFD94B42)),
                          SizedBox(width: 12),
                          SocialCircle(label: 'in', color: Color(0xFF1677A8)),
                        ],
                      ),
                      const SizedBox(height: 18),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class SocialCircle extends StatelessWidget {
  final String label;
  final Color color;

  const SocialCircle({super.key, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 15,
      backgroundColor: color,
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

// A simple illustration built with Flutter widgets, so no extra image package is needed.
class HeroIllustration extends StatelessWidget {
  const HeroIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 245,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 12,
            left: 8,
            child: Icon(Icons.add, color: Colors.grey.shade300, size: 18),
          ),
          const Positioned(
            top: 22,
            right: 42,
            child: Icon(Icons.circle_outlined, color: Color(0xFFBDBDBD), size: 18),
          ),
          const Positioned(
            top: 18,
            child: Icon(Icons.circle, color: Color(0xFF5149B5), size: 10),
          ),
          Positioned(
            right: 25,
            top: 90,
            child: Icon(Icons.auto_awesome, color: Colors.deepPurple.shade400, size: 20),
          ),
          Positioned(
            left: 35,
            bottom: 30,
            right: 35,
            child: Container(height: 1.5, color: const Color(0xFFE0E0E0)),
          ),
          Positioned(
            left: 70,
            bottom: 30,
            child: Container(
              width: 88,
              height: 175,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF343443), width: 2),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      width: 28,
                      height: 5,
                      decoration: const BoxDecoration(
                        color: Color(0xFF343443),
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(5),
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    Container(
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade500),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 32, child: Divider(thickness: 1.4)),
                          SizedBox(width: 24, child: Divider(thickness: 1.4)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Icon(Icons.check_circle, color: Color(0xFF5149B5), size: 24),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 58,
            bottom: 30,
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 9,
                  backgroundColor: Color(0xFFF1C7B7),
                  child: Icon(Icons.circle, size: 13, color: Color(0xFF343443)),
                ),
                Container(
                  width: 23,
                  height: 75,
                  decoration: const BoxDecoration(
                    color: Color(0xFF5149B5),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(10),
                      bottom: Radius.circular(4),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(width: 8, height: 35, color: const Color(0xFF343443)),
                    const SizedBox(width: 5),
                    Container(width: 8, height: 35, color: const Color(0xFF343443)),
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
