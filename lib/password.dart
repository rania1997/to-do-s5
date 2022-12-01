import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  static const String routeName = "/Password";
  const Password({Key? key}) : super(key: key);

  @override
  State<Password> createState() => _Password();
}

class _Password extends State<Password> {
  //var
  GlobalKey<FormState> formKey = GlobalKey();

  late String username;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Réinitiliser le mot de passe"),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Image.asset("Assets/minecraft.jpg",
                    width: 460, height: 215)),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 50, 10, 10),
              child: TextFormField(
                onSaved: (newValue) {
                  username = newValue!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "username cannot be empty";
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Username"),
              ),
            ),

            Container(
              margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: ElevatedButton(
                child: const Text("Réinitiliser le mot de passe"),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Information"),
                          content: Text(
                              " Username = $username  "),
                        );
                      },
                    );
                  }
                },
              ),
            ),


          ],
        ),
      ),
    );
  }
}

