import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('EcomExpress')),
      backgroundColor: Color(0xFF623CEA),
      body: Page(),
    );
  }
}

class Page extends StatefulWidget {
  const Page({super.key});

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80),
        //Sign Up Now
        const SizedBox(height: 16),
        Text(
          "Sign Up Now",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        //Create Account
        SizedBox(height: 10),
        Text(
          "Create Account",
          style: TextStyle(color: Colors.white60, fontSize: 10),
        ),
        const SizedBox(height: 60),
        //conatiner box
        Expanded(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            decoration: BoxDecoration(
              color: Color(0xFFE9F1F7),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Full Name
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Name",
                        prefixIcon: Icon(Icons.supervised_user_circle_rounded),
                        filled: true,
                        fillColor: Color(0xFFF6F5F4),
                      ),
                    ),
                    //Phone Number
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Number",
                        prefixIcon: Icon(Icons.supervised_user_circle_rounded),
                        filled: true,
                        fillColor: Color(0xFFF6F5F4),
                      ),
                    ),
                    //email
                    TextField(
                      decoration: InputDecoration(
                        hintText: "email",
                        prefixIcon: Icon(Icons.supervised_user_circle_rounded),
                        filled: true,
                        fillColor: Color(0xFFF6F5F4),
                      ),
                    ),
                    //Password
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.supervised_user_circle_rounded),
                        suffixIcon: Icon(Icons.visibility_off_outlined),
                        filled: true,
                        fillColor: Color(0xFFF6F5F4),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(style: ElevatedButton.styleFrom(
                         backgroundColor: Color(0xFF623CEA), //Iris
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                      ),onPressed: (){

                      }, child: child),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
