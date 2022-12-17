import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sign_and_login_screen/my_theme.dart';
import 'package:sign_and_login_screen/sign_up.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _hidePasswordCharaters = true;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Log In',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28),
              ),
            ),
            SizedBox(height: 4),
            TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: Colors.green)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: Colors.grey.shade300)),
                hintText: 'Email',
                fillColor: Mytheme.textFieldBackgroundColor,
                filled: true,
              ),
              style: TextStyle(fontSize: 14, height: 1.0),
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 12),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: Colors.green)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: Colors.grey.shade300)),
                fillColor: Mytheme.textFieldBackgroundColor,
                filled: true,
                hintText: 'Password',
                suffix: InkWell(
                  onTap: () {
                    setState(() {
                      _hidePasswordCharaters = !_hidePasswordCharaters;
                    });
                  },
                  child: Text(
                    _hidePasswordCharaters ? 'Show' : 'Hide',
                    style: TextStyle(color: Mytheme.primaryColor),
                  ),
                ),
              ),
              style: TextStyle(fontSize: 14, height: 1.0),
              obscuringCharacter: '*',
              obscureText: _hidePasswordCharaters,
            ),
            Expanded(child: SizedBox()),
            InkWell(
              onTap: () {},
              child: Container(
                width: double.infinity,
                height: 45,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Mytheme.primaryColor,
                ),
                child: Text('Log In', style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Forgot your password?',
              style: TextStyle(color: Mytheme.primaryColor),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't Have Account Yet ?",
                  style: TextStyle(color: Mytheme.primaryColor),
                ),
                SizedBox(width: 5),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => SignUpScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
