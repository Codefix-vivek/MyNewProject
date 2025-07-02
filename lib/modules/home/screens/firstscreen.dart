import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFFF6F5F4), body: Firstscreen());
  }
}

class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  final List<Map<String, String>> onboardingData = [
    {
      'animation': 'assets/animations/onboardScreen2.json',
      'title': 'Everyday Cart',
      'subtitle': 'Discover Daily Essential \nDelivered right to your door',
    },
    {
      'animation': 'assets/animations/onboardScreen3.json',
      'title': 'Fast Delivery',
      'subtitle':
          'Get your orders delivered lightning \nfast with live tracking',
    },
    {
      'animation': 'assets/animations/animate.json',
      'title': 'Secure Payments',
      'subtitle': 'Multiple payment options\n with complete safety',
    },
  ];
  void nextPage() {
    if (currentIndex < onboardingData.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      //Navigate to Home Login Page
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'Skip',
              style: TextStyle(fontSize: 18, color: Colors.black87),
            ),
          ),
        ),
        // Lottie animation
        Expanded(
          child: PageView.builder(
            controller: _controller,
            itemCount: onboardingData.length,
            onPageChanged: (index) {
              setState(() => currentIndex = index);
            },
            itemBuilder: (context, index) {
              final data = onboardingData[index];
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset(data['animation']!, width: 550, height: 400),
                  const SizedBox(height: 5),
                  Text(
                    data['title']!,
                    style: GoogleFonts.robotoSlab(
                      // or roboto, montserrat, etc.
                      textStyle: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF623CEA),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text(
                      data['subtitle']!,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.workSans(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 40.0,
          ), // distance from screen edge
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // ─── Dots ────────────────────────────────────────────────
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  onboardingData.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: 16,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      // ‑‑ no background colour change ‑‑
                      color: currentIndex == index
                          ? const Color(0xFF623CEA) // active = filled
                          : Colors.transparent, // inactive = hollow
                      border: Border.all(
                        color: const Color(0xFF623CEA), // outline for all dots
                        width: 1.5,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // ─── Next button centred ────────────────────────────────
              SizedBox(
                width: 300, // fixed button width
                child: ElevatedButton(
                  onPressed: () {
                    if (currentIndex < onboardingData.length - 1) {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      // TODO: Navigate to login/home screen
                      // Navigator.pushReplacement(...);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF623CEA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 18),
                  ),
                  child: Text(
                    currentIndex == onboardingData.length - 1
                        ? 'Get Started'
                        : 'Next',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ],
    );
  }
}
