import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  bool valuefirst = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 18, top: 50, bottom: 10),
              child: Text(
                "Login Now",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 18, bottom: 250),
              child: Text(
                "Please login to continue",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 18, bottom: 20),
              child: Text(
                "Login instantly:",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ),
            ButtonSocial(),
            InputEmail(),
            InputPassword(),
            Center(
              child: Row(
                children: [
                  Checkbox(
                    value: valuefirst,
                    onChanged: (bool value) {
                      setState(() {
                        this.valuefirst = value;
                      });
                    },
                  ),
                  Text("Remember me"),
                  SizedBox(
                    width: 120,
                  ),
                  Text(
                    "Forgot password?",
                    style: TextStyle(color: Colors.blue[900]),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 7,
            ),
            ButtonLogin(),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                myLayoutWidget1(),
                SizedBox(width: 10),
                myLayoutWidget()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 360,
      decoration: BoxDecoration(
          color: Colors.blue[900], borderRadius: BorderRadius.circular(10)),
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Login to my account',
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}

class ButtonSocial extends StatelessWidget {
  const ButtonSocial({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 45,
          width: 150,
          margin: EdgeInsets.only(left: 30, bottom: 10),
          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'f',
              style: TextStyle(color: Colors.blue[900], fontSize: 20),
            ),
          ),
        ),
        Container(
          height: 45,
          width: 150,
          margin: EdgeInsets.only(left: 30, bottom: 10),

          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
          // ignore: deprecated_member_use
          child: TextButton(
            onPressed: () {},
            child: Text(
              'G',
              style: TextStyle(color: Colors.red[600], fontSize: 20),
            ),
          ),
        )
      ],
    );
  }
}

class InputPassword extends StatelessWidget {
  const InputPassword({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
      //padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Password',
        ),
      ),
    );
  }
}

class InputEmail extends StatelessWidget {
  const InputEmail({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Email',
            hintText: 'E-mail ID or Mobile Number'),
      ),
    );
  }
}

Widget myLayoutWidget() {
  return Container(
    padding: EdgeInsets.only(bottom: 13),
    child: Align(
      alignment: Alignment(1.0, -0.1),
      child: Text(
        "Register now",
        style: TextStyle(color: Colors.blue[900]),
      ),
    ),
  );
}

Widget myLayoutWidget1() {
  return Container(
    padding: EdgeInsets.only(bottom: 13),
    child: Align(
      alignment: Alignment(-0.50, 0.9),
      child: Text(
        "Don't have an account?",
      ),
    ),
  );
}
