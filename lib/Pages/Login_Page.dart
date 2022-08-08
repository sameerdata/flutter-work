// ignore_for_file: file_names, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:mynotes/Pages/utils/routes.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

String name = "";
bool changedbtn = false;

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
              height: 500,
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "username"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                    style: const TextStyle(fontSize: 28),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password ",
                      labelText: "Password",
                    ),
                    style: const TextStyle(fontSize: 28),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  InkWell(
                      onTap: () async {
                        setState(() {
                          changedbtn = true;
                        });
                        await Future.delayed((Duration(seconds: 2)));
                        Navigator.pushNamed(context, MyRoutes.Homeroutes);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 2),
                        width: changedbtn ? 50 : 150,
                        alignment: Alignment.center,
                        height: 50,
                        // ignore: sort_child_properties_last
                        child: changedbtn
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                        decoration: BoxDecoration(
                            color:
                                changedbtn ? Colors.white : Colors.deepPurple,
                            borderRadius:
                                BorderRadius.circular(changedbtn ? 50 : 8)),
                        // color: Colors.deepPurple,
                      ))

                  //ElevatedButton(
                  // onPressed: () {
                  //   Navigator.pushNamed(context, MyRoutes.Homeroutes);
                  //   // ignore: avoid_print
                  //   print("hello ji");
                  // },
                  // style: TextButton.styleFrom(
                  //     padding: const EdgeInsets.symmetric(
                  //         vertical: 16, horizontal: 38)),
                  // // ignore: prefer_const_constructors
                  // child: Text(
                  //   "login",
                  //   style: const TextStyle(
                  //     fontSize: 28,
                  //   ),
                  // ),
                  //           )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
