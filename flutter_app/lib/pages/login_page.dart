import 'package:flutter/material.dart';
import 'package:flutter_app/components/my_button.dart';
import 'package:flutter_app/components/my_textfield.dart';
import 'package:flutter_app/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

// text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),

              //logo
              Icon(Icons.lock, size: 100),

              SizedBox(height: 50),

              // welkom back, you've been missed!
              Text(
                'Welkom back youve been missed',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),

              SizedBox(height: 25),

              // username textfield
              MyTextfield(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              SizedBox(height: 10),

              // password textfield
              MyTextfield(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              SizedBox(height: 10),
              // forgot password
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25),

              // sign in buttom
              MyButton(
                onTap: signUserIn,
              ),

              SizedBox(height: 25),

              // or continue with
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Or continue with',
                          style: TextStyle(color: Colors.grey[700])),
                    ),

                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),

                    const SizedBox(height: 50),

                    // google or apple sign in button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        //google
                        SquareTile(imagePath: 'lib/images/google.png'),

                        SizedBox(width: 25),

                        //apple
                        SquareTile(imagePath: 'lib/images/apple.png'),
                      ],
                    ),

                    const SizedBox(height: 50),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Not a member?',
                            style: TextStyle(color: Colors.grey[700])),
                        const SizedBox(width: 4),
                        const Text(
                          'Register now',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )

                    // not a member register now
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ); //colum
  } // scaffold
}
