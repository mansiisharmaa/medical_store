import 'package:flutter/material.dart';
import 'package:medical_store/bottam.dart';
import 'package:medical_store/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailController = TextEditingController();
   var passwordController = TextEditingController();
   var email = "email@gmail.com";
   var emailFocus = FocusNode();
   var passFocus = FocusNode();

  @override void initState() {
    // TODO: implement initState
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

       appBar: AppBar(
        title: Center(child: Text(" ", style: TextStyle(fontSize: 11),),),),
      body:Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Login" )],
          ),
          SizedBox(height: 10),
          TextField(
             keyboardType: TextInputType.emailAddress,
             textInputAction: TextInputAction.next,
             controller: emailController,
             focusNode: emailFocus,
            decoration: InputDecoration(
              hintText: "E-mail",
              labelText: "Enter your name",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
        
            TextField(
               controller: passwordController,
               textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
              focusNode: passFocus,
            decoration: InputDecoration(
              hintText: "Password",
              labelText: "Enter your Password",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
            ],
          ),
          ElevatedButton(onPressed: () {
          if(emailController.text.toString() == "Admin" && passwordController.text.toString() =="123456"){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Thankyou Admin")));

             Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Bottam(),),
                  );

          }else{
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Wrong user Name and Password")));
          }
                
          }, child: Text("Login")),
        ]),
      ),
      
    );
  }
}

 