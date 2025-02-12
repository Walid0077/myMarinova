import 'package:first_project/signup/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'signup/signup_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // Background gradient
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Background.jpeg"),
                  fit: BoxFit.cover,
                ),

            ),
          ),
          // Content
          SingleChildScrollView(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                const Text(
                  "MARINOVA!",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: screenHeight * 0.1),
                // Email input field
                buildInputField(
                  context: context,
                  icon: Icons.email,
                  label: "Email",
                  obscureText: false,
                ),
                const SizedBox(height: 20),
                // Password input field
                buildInputField(
                  context: context,
                  icon: Icons.lock,
                  label: "Password",
                  obscureText: true,
                ),
                const SizedBox(height: 15),
                // Remember me & Forgot password
                buildRememberMeRow(context),
                SizedBox(height: screenHeight * 0.05),
                // Login button
                buildLoginButton(context, text: "LOGIN"),
                SizedBox(height: screenHeight * 0.1),
                // Sign up link
                buildSignUpLink(context),
              ],
            ),
          ),
        ],
      ),
    );
  }






}
