import 'package:flutter/material.dart';
import 'package:nov20/services.dart';

class GetUsersView extends StatelessWidget {
  const GetUsersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getUsers(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: (){
                    // navigate to get users activity
                  },
                  title: Text(snapshot.data![index].name),
                  subtitle: Text(snapshot.data![index].phone),
                  trailing: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: (){
                      // navigate to add user activity view
                    },
                  ),
                );
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
