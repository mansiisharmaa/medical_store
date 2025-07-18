import 'package:flutter/material.dart';
import 'package:medical_store/CreateSupplierBill.dart';

class Supplierbillscreen extends StatefulWidget {
  const Supplierbillscreen({super.key});

  @override
  State<Supplierbillscreen> createState() => _SupplierbillscreenState();
}

class _SupplierbillscreenState extends State<Supplierbillscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bill Screen"),),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Createsupplierbill()));
      },
      
    child: Icon(Icons.add),),
    );
  }
}