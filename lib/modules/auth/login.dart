import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('EcomExpress')),
      body: Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});
  // final color = Color.fromARGB(255, 251, 157, 168);
  // final color2 = Color.fromARGB(255, 99, 44, 70);
  // final color3 = Color.fromARGB(255, 251, 169, 157);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Text(
              'Login',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                labelText: 'username',
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
              ),
            ),
            SizedBox(height: 30),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'password',
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              CheckboxListTile(title: Text('Rember me'), value: remeberMe),
            ),

            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,

                  color: const Color.fromARGB(255, 12, 25, 214),
                ),
              ),
            ),

            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {},
              child: Center(child: Text('Login')),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: Center(child: Text("Don't have an Account? Sign up ")),
            ),
          ],
        ),
      ),
    );
  }
}
