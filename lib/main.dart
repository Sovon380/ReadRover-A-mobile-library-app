import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ReadRover',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReadRover'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Thumbnail Image
            Image.asset(
              'assets/images/thumbnail.png', // Replace with your image path
              height: 150, // Set the height of the image
            ),
            const SizedBox(height: 20), // Space between image and text
            const Text(
              'Welcome to ReadRover!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40), // Space between text and input fields

            // Email/Phone Input
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email or Phone Number',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16), // Space between input fields

            // Password Input
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24), // Space between password and buttons

            // Login Button
            ElevatedButton(
              onPressed: () {
                // TODO: Implement login functionality
                print('Login pressed: ${_emailController.text}, ${_passwordController.text}');
              },
              child: const Text('Login'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50), // Full width
              ),
            ),
            const SizedBox(height: 16), // Space between buttons

            // Sign Up Button
            TextButton(
              onPressed: () {
                // TODO: Implement sign-up functionality
                print('Sign Up pressed');
              },
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
