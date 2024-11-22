import 'package:flutter/material.dart';
import 'package:flutter_v1/view/login/signup.dart';
import 'package:http/http.dart' as http;


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _showpass=false;
  final name = TextEditingController();
  final pass = TextEditingController();
  var url = 'http://localhost/api/login';
  void login(BuildContext context, username, password) async {
    print('username' + username);
    print('pass'+ password);
    try {
      // Send POST request to the API
      var response = await http.post(
        Uri.parse(url),
        body: {
          "username": username,
          "password": password,
        },
      );

      // if (response.statusCode == 200) {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => Home()),
      //   );
      // }
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
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white70,Colors.lightBlueAccent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                  )
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 50),
                    Container(
                        margin: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                             'assets/iconapp.jpg',
                            fit: BoxFit.cover
                          ),
                        )
                    ),

                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 20,0, 2),
                      child: Center(
                        child: Text(
                          'English App',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                      child: TextFormField(
                        controller: name,
                        style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                        decoration: const InputDecoration(

                            hintText: 'USERNAME',
                            hintStyle: TextStyle(color: Colors.black,fontSize: 15)

                        ),

                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: TextFormField(
                        controller: pass,
                        style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                        obscureText: !_showpass,
                        decoration: InputDecoration(
                            hintText: 'PASSWORD',
                            hintStyle: const TextStyle(color: Colors.black,fontSize: 15),
                            suffixIcon: IconButton(
                                onPressed: showornot,
                                icon: Icon(
                                    _showpass? Icons.visibility:Icons.visibility_off
                                )
                            )
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                      child: Builder(
                          builder: (context) {
                            return TextButton(
                                onPressed: (){
                                    login(context, name.text, pass.text);
                                   // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.pink,
                                  foregroundColor: Colors.white,
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Login',style: TextStyle(fontSize: 25),),
                                  ],
                                )
                            );
                          }
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 40, 30, 0),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Builder(
                              builder: (context) {
                                return GestureDetector(
                                    child: const Text(
                                      'Sign up?',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    onTap: (){
                                       Navigator.push(context, MaterialPageRoute(builder: (context) => const Signup() ));
                                    }
                                );
                              }
                          ),
                          Builder(
                              builder: (context) {
                                return GestureDetector(
                                  child: const Text(
                                    'Forget Password?',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  onTap: (){
                                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Forget()));
                                  },
                                );
                              }
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }

  void showornot(){
    setState(() {
      _showpass=!_showpass;
    });
  }
}