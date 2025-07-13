import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  //  print("Email Id: ${widget.email.toString()}");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Medical Store",style: TextStyle( fontWeight: FontWeight.bold,fontSize: 25,fontStyle: FontStyle.italic),),
        ),
        
       body: Center(
         child: GridView.count(crossAxisCount: 2,
         crossAxisSpacing: 10,
         mainAxisSpacing: 10,
         
         children: [
          
            Card(
              

              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text("Total Medicin",style: TextStyle( fontWeight: FontWeight.bold,fontSize: 20,fontStyle: FontStyle.italic),),
                    
                  ]
                ),
            
            ),
          ),
         
            Card(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Sales",style: TextStyle( fontWeight: FontWeight.bold,fontSize: 20,fontStyle: FontStyle.italic),),
                ]
              ),
            ),
          ),
          
            Card(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Total bills",style: TextStyle( fontWeight: FontWeight.bold,fontSize: 20,fontStyle: FontStyle.italic),),
                ]
              ),
            ),
          ),
         
            Card(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Suppliers\n List",style: TextStyle( fontWeight: FontWeight.bold,fontSize: 20,fontStyle: FontStyle.italic),),
                ]
              ),
            ),
          ),
         ],),
       ),
            );
  }
}