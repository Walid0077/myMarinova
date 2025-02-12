import 'package:flutter/material.dart';
import '../main.dart'; // Assurez-vous que le chemin est correct

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    // Déclaration des variables pour la hauteur et la largeur de l'écran
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // Fond d'écran avec dégradé
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Background.jpeg"),
                fit: BoxFit.cover,
              ),

            ),
          ),
          // Contenu de la page
          SingleChildScrollView(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Logo en haut de l'interface
                Container(
                  margin: EdgeInsets.only(top: screenHeight * 0.1), // 10% de la hauteur de l'écran
                  child: Image.asset(
                    "assets/logo/logo1.png",
                    width: screenWidth * 0.3,
                    height: screenWidth * 0.3,
                  ),
                ),
                const SizedBox(height: 3), // Espacement après le logo
                // Texte "CREATE YOUR ACCOUNT"
                const Text(
                  "CREATE YOUR ACCOUNT",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 40), // Espacement après le texte
                // Champ de saisie pour le nom
                Container(
                  width: screenWidth * 0.8, // 80% de la largeur de l'écran
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
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: "Full Name",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.person, color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Champ de saisie pour l'email
                Container(
                  width: screenWidth * 0.8, // 80% de la largeur de l'écran
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
                  ), ///TODO : rodha widget
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: "Email Address",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.email, color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Champ de saisie pour le mot de passe
                Container(
                  width: screenWidth * 0.8, // 80% de la largeur de l'écran
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
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.lock, color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Champ de saisie pour la confirmation du mot de passe
                Container(
                  width: screenWidth * 0.8, // 80% de la largeur de l'écran
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
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.lock, color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                // Bouton "SIGN UP"
                SizedBox(
                  width: screenWidth * 0.6, // 60% de la largeur de l'écran
                  child: ElevatedButton(
                    onPressed: () {
                      // Action pour s'inscrire
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 5,
                      shadowColor: Colors.black.withOpacity(0.2),
                    ),
                    child: const Text(
                      "SIGN UP",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 1, 66, 112),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Texte "Already have an account? Sign In"
                Center(
                  child: TextButton(
                    onPressed: () {
                      // Navigation vers la page Login
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyHomePage(title: "Flutter Demo Home Page")),
                      );
                    },
                    child: const Text(
                      "Already have an account? Sign In",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}