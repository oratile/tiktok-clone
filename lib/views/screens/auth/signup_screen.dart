import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../contstants.dart';
import '../../../widgets/text_input_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          'assets/tiktok-horizontal.svg',
          height: 35,
        ),
        backgroundColor: backgroundColor,
        centerTitle: false,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.center,
          child: Column(
            children: [
              Spacer(),

              const SizedBox(
                height: 25,
              ),
              Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1735583100223-40a01e52ef0a?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw0fHx8ZW58MHx8fHx8'),
                    radius: 58,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: const Icon(CupertinoIcons.add, size: 18,),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                child: TextInputField(
                  controller: _usernameController,
                  labelText: 'Enter username',
                  icon: CupertinoIcons.profile_circled,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                child: TextInputField(
                  controller: _bioController,
                  labelText: 'Enter bio',
                  icon: CupertinoIcons.doc,
                ),
              ),const SizedBox(
                height: 25,
              ),
              Container(
                child: TextInputField(
                  controller: _emailController,
                  labelText: 'Enter email',
                  icon: CupertinoIcons.mail,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                child: TextInputField(
                  controller: _passwordController,
                  labelText: 'Enter Password',
                  icon: CupertinoIcons.lock,
                  isPass: true,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    print('Login user');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              Spacer(
                flex: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                    onPressed: () {},
                    child: Text('Login'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
