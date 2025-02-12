import 'package:first_project/signup/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildInputField({
  required BuildContext context,
  required IconData icon,
  required String label,
  required bool obscureText,
}) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.8,
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.8),
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 10,
          offset: const Offset(0, 5),
        ),
      ],
    ),
    child: TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        border: InputBorder.none,
        prefixIcon: Icon(icon, color: Colors.grey),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      ),
    ),
  );
}

Widget buildRememberMeRow(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.8,
    child: Row(
      children: [
        Checkbox(
          value: false,
          onChanged: (value) {},
          fillColor: MaterialStateProperty.all(Colors.white),
        ),
        const Text("Remember me", style: TextStyle(color: Colors.white)),
        const Spacer(),
        TextButton(
          onPressed: () {
            // TODO: Implement ForgotPasswordScreen navigation
          },
          child: const Text("Forgot password?", style: TextStyle(color: Colors.white)),
        ),
      ],
    ),
  );
}


Widget buildLoginButton(BuildContext context, {required String text,
}) {

  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.5,
    child: ElevatedButton(
      onPressed: () {
        // TODO: Implement Home screen navigation
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 5,
        shadowColor: Colors.black.withOpacity(0.2),
      ),
      child:  Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          color: Color(0xFF014270),
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget buildSignUpLink(BuildContext context) {
  return Center(
    child: TextButton(
      onPressed: () {
        // Navigation vers la page SignUp
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SignUp()),
        );
      },
      child: const Text(
        "Don't have an account? Sign Up",
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}