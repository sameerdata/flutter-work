import 'package:flutter/material.dart';
import 'package:mynotes/Pages/utils/routes.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

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
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Welcome",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "username"),
                    style: TextStyle(fontSize: 28),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password ",
                      labelText: "Password",
                    ),
                    style: TextStyle(fontSize: 28),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.Homeroutes);
                      print("hello ji");
                    },
                    child: Text(
                      "login",
                      style: TextStyle(
                        fontSize: 28,
                      ),
                    ),
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 38)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
