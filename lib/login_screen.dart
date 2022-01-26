import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nav_menu/app_bar.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF131313),
              Color(0xFF24211E),
            ],
          ),
        ),
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintStyle: TextStyle(fontSize: 15.0),
                      prefixIcon: Icon(Icons.email_rounded),
                      hintText: "Enter Your Email Here"),
                  keyboardType: TextInputType.emailAddress,
                  maxLines: 1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintStyle: TextStyle(fontSize: 15.0),
                      prefixIcon: Icon(Icons.password_rounded),
                      hintText: "Enter Your Password Here"),
                  keyboardType: TextInputType.visiblePassword,
                  maxLines: 1,
                ),
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Get.to(const Task());
                },
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFD3BF95),
                        Color(0xFF976D3C),
                      ],
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: const Center(
                      child: Text(
                    "Log In",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
