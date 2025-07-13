import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("ListView"), backgroundColor: Colors.blueGrey),
      body: ListView(
        children: [
          
          ListTile(
            onTap: () {},
            leading: Icon(Icons.account_circle_outlined),

            title: Text("Mansi"),
            subtitle: Text("MCA"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.account_circle_outlined),
            onTap: () {},
            title: Text("Rajat Guleria"),
            subtitle: Text("Mobile App Developer"),
          ),
          
        ],
        
      ),
    );
    
  }
}