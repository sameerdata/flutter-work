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
final _formkey = GlobalKey<FormState>();
String user = "user name not correct";

int len = 0;

hometohome(BuildContext) {}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/logins.png",
                fit: BoxFit.cover,
                height: 500,
                alignment: Alignment.center,
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
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Username", labelText: "username"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "username cannot be empty ";
                        } else
                          return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      style: const TextStyle(fontSize: 30),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password ",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "password cannot empty";
                        } else if (value.length < 6)
                          return "password should be aleast 6";
                        else
                          return null;
                      },
                      style: const TextStyle(fontSize: 30),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Material(
                        borderRadius:
                            BorderRadius.circular(changedbtn ? 50 : 8),
                        color: Colors.deepPurple,
                        child: InkWell(
                          onTap: () async {
                            if (_formkey.currentState!.validate()) {
                              setState(() {
                                changedbtn = true;
                              });
                              await Future.delayed((Duration(seconds: 2)));
                              // ignore: use_build_context_synchronously
                              await Navigator.pushNamed(
                                  context, MyRoutes.Homeroutes);
                              setState(() {
                                changedbtn = false;
                              });
                            }
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
                          ),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
