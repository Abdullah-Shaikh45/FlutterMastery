import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();

// -------------- Functions() ----------------//
  trysubmit() {
    final isvalid = _formKey.currentState!.validate();
    if (isvalid) {
      _formKey.currentState!.save();
      submitform();
    } else {
      print('Error');
    }
  }

  submitform() {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form in Flutter"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: ' Enter your first name '),
                  key: const ValueKey('firstname'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return "First Name should not be Empty";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    firstname = value.toString();
                  },
                ),
                TextFormField(
                  decoration:
                      const InputDecoration(hintText: ' Enter your Last name '),
                  key: const ValueKey('lastname'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return "Last Name should not be Empty";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    lastname = value.toString();
                  },
                ),
                TextFormField(
                  decoration:
                      const InputDecoration(hintText: ' Enter your email '),
                  key: const ValueKey('email'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return "Email should not be Empty";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    email = value.toString();
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration:
                      const InputDecoration(hintText: ' Enter your password '),
                  key: const ValueKey('password'),
                  validator: (value) {
                    if (value.toString().length <= 5) {
                      return "Minimum Length of password should be 6";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    password = value.toString();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  style: ButtonStyle(
                    padding: const WidgetStatePropertyAll(
                      EdgeInsets.all(10),
                    ),
                    backgroundColor:
                        WidgetStateProperty.all(Theme.of(context).primaryColor),
                    overlayColor: WidgetStateProperty.all(Colors.black),
                  ),
                  onPressed: () {
                    trysubmit();
                  },
                  child: const Text(
                    'submit',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
