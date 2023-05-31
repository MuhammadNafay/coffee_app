import 'package:flutter/material.dart';
import 'package:beanbuzz/Themes/colors.dart';
import 'package:beanbuzz/widgets/bottomNavigationBar.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Container(
            child: Column(
              children: [
                const Image(
                  image: AssetImage('assets/images/capacino.png'),
                  height: 100,
                ),
                const Text(
                  "Bean Buzz",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 25, fontFamily: 'Pacifico'),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 12.0),
                  child: Text(
                    "Hello let's login to your account",
                    style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width >= 1000
                        ? 800
                        : MediaQuery.of(context).size.width / 0.5,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.MyThemePrimaryColor)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.MyThemePrimaryColor,
                                    width: 2)),
                            labelText: 'Enter your email address',
                            labelStyle:
                                TextStyle(color: AppColors.MyThemePrimaryColor),
                            prefixIcon: Icon(
                              Icons.email_rounded,
                              color: AppColors.MyThemePrimaryColor,
                            )),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width >= 1000
                        ? 800
                        : MediaQuery.of(context).size.width / 0.5,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.MyThemePrimaryColor)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.MyThemePrimaryColor,
                                    width: 2)),
                            labelText: 'Enter your Password',
                            labelStyle:
                                TextStyle(color: AppColors.MyThemePrimaryColor),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: AppColors.MyThemePrimaryColor,
                            )),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: const LinearGradient(colors: [
                            AppColors.MyThemePrimaryColor,
                            AppColors.MyThemePrimaryColorLight
                          ])),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              alignment: Alignment.center,
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.only(
                                      right: 70,
                                      left: 70,
                                      top: 18,
                                      bottom: 20)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.transparent),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                              )),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => bottomNavBar()));
                          },
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                                color: Color(0xffffffff), fontSize: 16),
                          ))),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text('Dont have an account? Dont Worry:'),
                  TextButton(
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontFamily: 'Pacifico'),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                  ),
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
