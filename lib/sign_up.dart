import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sign_and_login_screen/log_in.dart';
import 'package:sign_and_login_screen/my_theme.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpScreen> {
  var _hidePasswordCharaters = true;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        // width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.close)),
                Expanded(child: SizedBox()),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28),
                  ),
                ),
                Expanded(child: SizedBox()),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_) => LoginScreen() , () => true);
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (_) => LoginScreen()),
                        (route) => false);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 16,
                          color: Mytheme.primaryColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
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
                hintText: 'Name',
                fillColor: Mytheme.textFieldBackgroundColor,
                filled: true,
              ),
              style: TextStyle(fontSize: 14, height: 1.0),
              controller: _nameController,
            ),
            SizedBox(height: 12),
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
            ),
            SizedBox(height: 12),
            TextField(
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
              controller: _passwordController,
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
                child: Text('Sign Up', style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Forgot your password?',
              style: TextStyle(color: Mytheme.primaryColor),
            ),
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
