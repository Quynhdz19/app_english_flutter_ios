import 'package:flutter/material.dart';
import 'login.dart'; // Kiểm tra nếu login.dart đã được import chính xác.
import 'package:http/http.dart' as http;

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _showpass = false;

  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPass = TextEditingController();

  var url = 'http://localhost/api/register';
  void signup(String name, String password, String email, String confirmPass) async {
    const String url = 'http://localhost/api/register'; // Add 'http://' to the URL

    print('Start signup process');

    // Check if the password matches the confirmation password
    // if (password == confirmPass) {
      try {
        // Send POST request to the API
        var response = await http.post(
          Uri.parse(url),
          body: {
            "name": name,
            "email": email,
            "password": password,
          },
        );

        if (response.statusCode == 200) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Login() ));
        }
      } catch (e) {
        // Handle any errors that occur during the POST request
        print('Error occurred during signup: $e');
      }

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(
            children: [
              Image.asset(
                'assets/nen.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 100), // Khoảng cách phía trên
                    const ListTile(
                      leading: Icon(
                        Icons.account_circle,
                        size: 60,
                      ),
                      title: Text(
                        'Register',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 40),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: TextFormField(
                        controller: username,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            hintText: 'USERNAME',
                            hintStyle: const TextStyle(
                              color: Colors.black54,
                            ),
                            //filled: true,
                            //fillColor: Colors.cyanAccent,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            )
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: TextFormField(
                        controller: email,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: const TextStyle(
                              color: Colors.black54,
                            ),
                            //filled: true,
                            //fillColor: Colors.cyanAccent,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            )
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          TextFormField(
                            controller: password,
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            obscureText: !_showpass,
                            decoration: InputDecoration(
                                hintText: 'PASSWORD',
                                hintStyle: const TextStyle(
                                    color: Colors.black54, fontSize: 15),
                                // filled: true,
                                // fillColor: Colors.cyanAccent,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                          Positioned(
                            right: 20,
                            child: GestureDetector(
                                onTap: showornot,
                                child: Icon(_showpass
                                    ? Icons.visibility
                                    : Icons.visibility_off)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          TextFormField(
                            controller: confirmPass,
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            obscureText: !_showpass,
                            decoration: InputDecoration(
                                hintText: 'CONFIRM PASSWORD',
                                hintStyle: const TextStyle(
                                    color: Colors.black54, fontSize: 15),
                                // filled: true,
                                // fillColor: Colors.cyanAccent,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                          Positioned(
                            right: 20,
                            child: GestureDetector(
                                onTap: showornot,
                                child: Icon(_showpass
                                    ? Icons.visibility
                                    : Icons.visibility_off)),
                          )
                        ],
                      ),
                    ),
                    Builder(builder: (context) {
                      return Container(
                        margin: EdgeInsets.only(top: 30),
                        width: 200,
                        child: TextButton(
                            onPressed: () {
                              signup(username.text, password.text, email.text, confirmPass.text );

                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.grey,
                            ),
                            child: const Text(
                              'Sign up',
                              style: TextStyle(color: Colors.black, fontSize: 30),
                            )),
                      );
                    })
                  ],
                ),
              ),
            ],
          )),
    );
  }

  void showornot() {
    setState(() {
      _showpass = !_showpass;
    });
  }
}
