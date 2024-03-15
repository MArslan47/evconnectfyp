
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Dashboard/dashboard.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  bool obscurePassword = true;


  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passcontrol = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/register.png'),fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 35,top: 135),
              child: const Text('Welcome \nBack', style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.45,
                  right: 35,
                  left: 35,
                ),
                child: Column(
                  children: [
                    TextField(
                      controller: emailcontroller,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        labelText: 'Email',
                        labelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        prefixIcon: const Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),

                    const SizedBox(height: 30,
                    ),
                    TextField(
                      controller: passcontrol,
                      obscureText: obscurePassword,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        labelText: 'Password',
                        labelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        prefixIcon: const Icon(Icons.fingerprint),
                        suffixIcon: IconButton(
                          icon: Icon(
                            obscurePassword ? Icons.visibility : Icons.visibility_off,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              obscurePassword = !obscurePassword;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),


                    const SizedBox(height: 20,
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Sign In', style: TextStyle(
                            color: Color(0xff4c505b),
                            fontSize: 27,fontWeight: FontWeight.w700),
                        ),
                        CircleAvatar(
                          radius: 20,
                            backgroundColor: const Color(0xff4c505b),
                          child: IconButton(

                              color: Colors.white,
                             onPressed: () async {
                                // Extracting username and password from user input fields (e.g., text fields
                                String email = emailcontroller.text; // Assuming you have a TextEditingController named usernameController for the username field
                                String password = passcontrol.text; // Assuming you have a TextEditingController named passwordController for the password field
                                try {
                                  // Sign in user with email and password
                                  await FirebaseAuth.instance.signInWithEmailAndPassword(
                                    email: emailcontroller.text,
                                    password: passcontrol.text,
                                  );

                                  Navigator.push(
                                    context as BuildContext,
                                    MaterialPageRoute(builder: (context) => MyDashboard()),
                                  );

                                } catch (e) {
                                  // If sign in fails, display a message to the user
                                  showDialog(context: context, builder: (BuildContext context) {
                                      return AlertDialog(
                                        title:const Text('Login Failed'),
                                        content: Text(
                                            'Invalid email or password. Please try again or sign up.'),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pop(); // Close the dialog
                                            },
                                            child: Text('OK'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                              },
                              icon: const Icon(Icons.arrow_forward))
                        )
                      ],
                    ),
                    const SizedBox(height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){Navigator.pushNamed(context, 'register');},
                          child: const Text('Sign Up',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                            color:Color(0xff4c505b),
                          ),
                          )),
                        TextButton(onPressed: (){ Navigator.pushNamed(context,'register');},
                            child: const Text('Forget Passward',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                color:Color(0xff4c505b),
                              ),
                            ))
                      ],
                    ),
                    const SizedBox(height: 20,
                    ),
                    const Text('Dont forget to charge your EV')
                ]
                  ,),
              ),
            )

          ],
        ),
      ),
    );
  }
}
