import 'package:flutter/material.dart';

import '../utils/global.dart';

class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  GlobalKey<FormState> Formkey = GlobalKey();
// TextEditingController textEmail = TextEditingController();
  TextEditingController textPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f3f8),
      body: Form(
        key: Formkey,
        child: Center(
          child: Container(
            height: 350,
            width: 900,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [BoxShadow(color: Colors.black38)],
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 30),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        child: Image.asset("assets/img/1.png"),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 0, left: 20),
                      child: Text(
                        'Sign in',
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                      EdgeInsets.only(right: 230, left: 10, bottom: 70),
                      child: Text(
                        'Use your Google Account',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(),
                            child: SizedBox(
                              height: 50,
                              width: 450,
                              child: TextFormField(
                                controller: textPassword,
                                keyboardType: TextInputType.number,
                                obscureText: true,
                                obscuringCharacter: '.',
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                 // hintText: 'nirav@13',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.black)
                                  ),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    password = value;
                                  });
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'field must be required!';
                                  }

                                },
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 330, bottom: 10),
                                child: Text(
                                  'Forgot password?',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 410, top: 0),
                  child: Row(
                    children: [
                      Text(
                        'Not Your computer? Use Guest mode to sign in privately.',
                        style: TextStyle(color: Colors.black87, fontSize: 13),
                      ),
                      Text(
                        'Learn more',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 600, top: 30),
                  child: Row(
                    children: [
                      Text(
                        'Creat account',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: OutlinedButton(
                          onPressed: () {
                            bool res = Formkey.currentState!.validate();
                            if (res) {
                              var textEmail;
                              var email = textEmail.text;

                              //Navigator.of(context).pushNamed('/home');
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: Container(
                              // height: 35,
                              // width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25)),
                              child: Center(
                                  child: GestureDetector(onTap: (){
                                    Navigator.of(context).pushNamed('/home');
                                  },
                                    child: Text(
                                      'Next',
                                      style: TextStyle(
                                        color: Colors.blueAccent,
                                      ),
                                    ),
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}





