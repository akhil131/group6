// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'resetPassword.dart';



void main() => runApp(const MyApp(

));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'CMS';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(fontFamily: 'SpaceMono'),
      home: Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar( backgroundColor: Colors.black26,),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(

                alignment: Alignment.topLeft,
                padding: const EdgeInsets.fromLTRB(10, 50, 0, 2),
                child: const Text(
                  'Lets Sign you in.',
                  style: TextStyle(
                    color: Colors.white30,
                    fontWeight: FontWeight.w500,
                    fontSize: 40,
                  ),
                )),
            Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 150),
                child: const Text(
                  'Welcome back. ',
                  style: TextStyle(fontSize: 40,
                      color: Colors.blueGrey),

                )),
            Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                child: const Text(
                  'Enter your credentials to Sign in ',
                  style: TextStyle(fontSize: 15,
                      color: Colors.grey),


                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(color: Colors.white60),
                controller: nameController,
                decoration:  InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    labelText: 'Email or Phone number',
                    labelStyle:TextStyle(color: Colors.white38),
                    filled: true,
                    fillColor: Colors.grey[900]
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                obscureText: true,
                controller: passwordController,
                decoration:  InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  labelText: 'Password',
                  labelStyle:TextStyle(color: Colors.white38),
                  filled: true,
                  fillColor: Colors.grey[900],
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                debugPrint(nameController.text);
                debugPrint(passwordController.text);
                Navigator.push(context,
                    PageRouteBuilder(transitionDuration: Duration(milliseconds: 200),

                        transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondAnimation, Widget child){

                          animation = CurvedAnimation(
                              parent: animation,
                              curve: Curves.easeInToLinear,
                              reverseCurve: Curves.fastLinearToSlowEaseIn


                          );

                          return ScaleTransition(
                            alignment: Alignment.center,
                            scale: animation,
                            child: child,
                          );
                        },


                        pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondAnimation) {
                          return resetPassword();
                        }


                    )
                );
              },
              child: const Text('Forgot Password',),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                  debugPrint(nameController.text);
                  debugPrint(passwordController.text);
                  Navigator.push(context,
                    PageRouteBuilder(transitionDuration: Duration(milliseconds: 200),

    transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondAnimation, Widget child){

   animation = CurvedAnimation(
      parent: animation,
      curve: Curves.easeInToLinear,
      reverseCurve: Curves.fastLinearToSlowEaseIn


    );

    return ScaleTransition(
    alignment: Alignment.center,
    scale: animation,
    child: child,
    );
    },


    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondAnimation) {
      return home_page();
    }

                      
                  )
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Does not have account?',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                        color: Colors.lightBlue

                    ),
                  ),
                  onPressed: () {
                    //signup screen
                  },

                )
              ],
            ),
          ],
        ));
  }
}
