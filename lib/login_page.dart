import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

// POST: https://fintraq.vercel.app/api/v1/auth/signup
/**
 * 
 * {
 *  "email": "sadf",
 *  "firstName": "asdf",
 *  "lastName": "dsf",
 *  "password": "asdfasdf"
 * }
 * 
 * 201
 * 
 * cookies Response = session_token
 */

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController(); 
    final TextEditingController _passwordController = TextEditingController(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Builder(builder: (context) {
          return Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 150),
                const Text(
                  'Create Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Enter Your Information below to create account',
                  style:
                      TextStyle(fontSize: 17, color: Colors.blueGrey.shade200),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'First Name',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextField(
                            controller: _firstNameController,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.transparent,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                              hintText: 'doe',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            cursorColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10), // Spacing between the fields
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Last Name',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextField(
                            controller: _lastNameController,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.transparent,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                              hintText: 'Doe',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            cursorColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Container(
                  alignment: Alignment.centerLeft, 
                  child: const Text(
                    'Email',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: _emailController, 
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.transparent,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    hintText: 'johndoe@gmail.com',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  cursorColor: Colors.white,
                ),
                const SizedBox(height: 15),
                Container(
                  alignment: Alignment.centerLeft, 
                  child: const Text(
                    'Password',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: _passwordController, 
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.transparent,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  cursorColor: Colors.white,
                ),

              ],
            ),
          );
        }),
      ),
    );
  }
}
