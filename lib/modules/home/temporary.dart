import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(home: WelcomeScreen(), debugShowCheckedModeBanner: false),
  );
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF623CEA), // Background color
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo or Icon
              Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                  color: Color(0xFFE9F1F7),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    'assets/cart_icon.png', // Replace with your asset
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "EcomExpress",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Your favorite products,\ndelivered fast!",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),

              const SizedBox(height: 40),

              ElevatedButton(
                onPressed: () {
                  // Navigate to next screen
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFE9F1F7),
                  foregroundColor: Color(0xFF623CEA),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  "Get Started",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.white70),
                  ),
                  SizedBox(width: 4),
                  Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
