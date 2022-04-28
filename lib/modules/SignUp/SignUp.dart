

import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';

class SignUp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    TextEditingController username = new TextEditingController();
    TextEditingController password = new TextEditingController();
    TextEditingController firstname = new TextEditingController();
    TextEditingController lastname = new TextEditingController();
    final _formKey = GlobalKey<FormState>();
    var rememberValue = false;

    return BlocProvider(
      create: (BuildContext context) => WeSignUpCubit(),
      child: BlocConsumer<WeSignUpCubit, WeSignUpStates>(
        listener: (context, state) {},
        builder: (context, state) {
          WeSignUpCubit cubit = WeSignUpCubit.get(context);
          return  Scaffold(
            body: Container(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 50,),
                    const Text(
                      'Sign up',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  // validator: (value) => EmailValidator.validate(value!)
                                  //     ? null
                                  //     : "Please enter a valid email",
                                  maxLines: 1,
                                  controller: firstname,
                                  decoration: InputDecoration(
                                    hintText: 'First name',
                                    prefixIcon: const Icon(Icons.person),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: TextFormField(
                                  // validator: (value) => EmailValidator.validate(value!)
                                  //     ? null
                                  //     : "Please enter a valid email",
                                  maxLines: 1,
                                  controller: lastname,
                                  decoration: InputDecoration(
                                    hintText: 'Last name',
                                    prefixIcon: const Icon(Icons.person),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            // validator: (value) => EmailValidator.validate(value!)
                            //     ? null
                            //     : "Please enter a valid email",
                            maxLines: 1,
                            controller: username,
                            decoration: InputDecoration(
                              hintText: 'Enter your email',
                              prefixIcon: const Icon(Icons.email),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            // validator: (value) {
                            //   if (value == null || value.isEmpty) {
                            //     return 'Please enter your password';
                            //   }
                            //   return null;
                            // },
                            maxLines: 1,
                            controller: password,
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.lock),
                              hintText: 'Enter your password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                cubit.SingUp(
                                    username: username.text,
                                    password: password.text);
                                print("Goood");
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                            ),
                            child: const Text(
                              'Sign up',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Already registered?'),
                              TextButton(
                                onPressed: () {
                                  // Navigator.pushReplacement(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) =>
                                  //     const LoginPage(title: 'Login UI'),
                                  //   ),
                                  // );
                                },
                                child: const Text('Sign in'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
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
