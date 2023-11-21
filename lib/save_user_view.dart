import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nov20/services.dart';

class SaveUserView extends StatelessWidget {
  SaveUserView({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Save User"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(hintText: "Name"),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: phoneController,
                  decoration: InputDecoration(hintText: "Phone"),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () async {
                    // saveUser(
                    //     name: nameController.text, phone: phoneController.text);

                    final users = await getUsers();
                    print(users);
                    print(users[0].name);
                  },
                  child: Text("Save User"))
            ],
          ),
        ));
  }
}
