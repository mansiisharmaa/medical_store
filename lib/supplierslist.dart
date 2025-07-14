import 'package:flutter/material.dart';

class Supplierslist extends StatefulWidget {
  const Supplierslist({super.key});

  @override
  State<Supplierslist> createState() => _SupplierslistState();
}

class _SupplierslistState extends State<Supplierslist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of all Suppliers"),backgroundColor: Colors.blueGrey),
        body:  ListView(
        children: [
          
          ListTile(
            onTap: () {},
            leading: Icon(Icons.mediation),

            title: Text("Analgesics"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.medication),
            onTap: () {},
            title: Text("Antibiotics"),
          ),
          
        ],
        
      ),
    );
  }
}