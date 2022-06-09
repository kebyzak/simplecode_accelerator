import 'package:flutter/material.dart';
import 'package:simplecode_accelerator/generated/l10n.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  String? login;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).auth),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        S.of(context).inputLoginAndPassword,
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text('Логин'),
                        ),
                        maxLength: 8,
                        validator: (value) {
                          if (value == null) {
                            return S.of(context).inputErrorCheckLogin;
                          }
                          if (value.length < 3) {
                            return S.of(context).inputErrorLoginIsShort;
                          }
                          return null;
                        },
                        onSaved: (value) {
                          login = value;
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text('Пароль'),
                        ),
                        obscureText: true,
                        maxLength: 16,
                        validator: (value) {
                          if (value == null) {
                            return S.of(context).inputErrorCheckPassword;
                          }
                          if (value.length < 8) {
                            return S.of(context).inputErrorPasswordIsShort;
                          }
                          return null;
                        },
                        onSaved: (value) {
                          password = value;
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: ElevatedButton(
                    child: Text(S.of(context).signIn),
                    onPressed: () {
                      final isValidated =
                          formKey.currentState?.validate() ?? false;
                      if (isValidated) {
                        FocusScope.of(context).unfocus();
                        formKey.currentState?.save();
                        if (login == 'qwerty' && password == '123456ab') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        } else {
                          Container();
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text(S.of(context).tryAgain),
                              actions: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(S.of(context).close),
                                )
                              ],
                            ),
                          );
                        }
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
