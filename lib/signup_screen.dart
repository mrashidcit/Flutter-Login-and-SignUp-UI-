import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sign_and_login_screen/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _hidePassword = true;
  bool _newsLetterCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, viewportConstraints) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(height: 35),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(Icons.close)),
                        Expanded(
                          child: Text(
                            'Sign Up',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w500),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ),
                                (route) => false);
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(93, 176, 117, 1),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 6),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Name',
                          border: OutlineInputBorder(),
                          fillColor: Color.fromRGBO(246, 246, 246, 1),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(232, 232, 232, 1)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(93, 176, 117, 1),
                              width: 2,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0, horizontal: 12)),
                    ),
                    SizedBox(height: 14),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Email',
                          border: OutlineInputBorder(),
                          fillColor: Color.fromRGBO(246, 246, 246, 1),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(232, 232, 232, 1)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(93, 176, 117, 1),
                              width: 2,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0, horizontal: 12)),
                    ),
                    SizedBox(height: 14),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(),
                          fillColor: Color.fromRGBO(246, 246, 246, 1),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(232, 232, 232, 1)),
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
                                _hidePassword =
                                    !_hidePassword; // invert the value
                              });
                            },
                            child: Text(
                              _hidePassword ? 'Show' : 'Hide',
                              style: TextStyle(
                                  color: Color.fromRGBO(93, 176, 117, 1)),
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0, horizontal: 12)),
                      obscureText: _hidePassword,
                      obscuringCharacter: '*',
                    ),
                    SizedBox(height: 14),
                    Row(
                      children: [
                        Checkbox(
                            value: _newsLetterCheck,
                            onChanged: (newValue) {
                              setState(() {
                                _newsLetterCheck = newValue!;
                              });
                            }),
                        Flexible(
                          child: Text(
                            "I would like to receive your newsletter and other promotional information.",
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 14),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(93, 176, 117, 1),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.black)),
                      alignment: Alignment.center,
                      child: Text(
                        'Sign Up',
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
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
