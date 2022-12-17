import 'package:flutter/material.dart';
import 'package:sign_and_login_screen/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _hidePassword = true;
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            SizedBox(height: 35),
            Text(
              'Login',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 6),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                  fillColor: Color.fromRGBO(246, 246, 246, 1),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide:
                        BorderSide(color: Color.fromRGBO(232, 232, 232, 1)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(93, 176, 117, 1),
                      width: 2,
                    ),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 12)),
            ),
            SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                  fillColor: Color.fromRGBO(246, 246, 246, 1),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide:
                        BorderSide(color: Color.fromRGBO(232, 232, 232, 1)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(93, 176, 117, 1),
                      width: 2,
                    ),
                  ),
                  suffix: InkWell(
                    onTap: () {
                      setState(() {
                        _hidePassword = !_hidePassword; // invert the value
                      });
                    },
                    child: Text(
                      _hidePassword ? 'Show' : 'Hide',
                      style: TextStyle(color: Color.fromRGBO(93, 176, 117, 1)),
                    ),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 12)),
              obscureText: _hidePassword,
              obscuringCharacter: '*',
            ),
            Expanded(child: SizedBox(height: 8)),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(93, 176, 117, 1),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(color: Colors.black)),
              alignment: Alignment.center,
              child: Text(
                'Log In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            // SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                'Forgot your password?',
                style: TextStyle(
                  color: Color.fromRGBO(93, 176, 117, 1),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => SignUpScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  'Create Account',
                  style: TextStyle(
                    color: Color.fromRGBO(93, 176, 117, 1),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
