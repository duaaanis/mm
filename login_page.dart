import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPgae extends StatefulWidget {
  @override
  State<LoginPgae> createState() => _LoginPgaeState();
}

class _LoginPgaeState extends State<LoginPgae> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()){
    setState(() {
      changeButton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changeButton = false;
    });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Form(
          key: _formKey,
          child: Column(
          children: [
            Image.asset(
              "assets/images/a.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter username",
                       labelText: "Username",
                       ),
                       validator: (value) {
                         if(value!.isEmpty){
                           return "Username cannot be empty";
                         }

                        return null; 

                       },
                       onChanged: (value){
                         name = value;
                         setState(() {});
                       },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter pasword",
                       labelText: "Pasword",
                       ),
                        validator: (value) {
                         if(value!.isEmpty){
                           return "Pasword cannot be empty";
                         }
                          else if(value.length < 6){
                           return "Pasword length should be atleast 6";
                         }

                        return null; 

                       },
                ),
                SizedBox(
                  height: 40.0,
                ),

              InkWell(
                onTap: () => moveToHome(context),
               child: AnimatedContainer(
                 duration: Duration(seconds: 1),
                 width: changeButton ? 50 : 150,
                 height: 50,
                 alignment: Alignment.center,
                 child: changeButton
                    ?Icon(
                      Icons.done,
                      color: Colors.white,
                      ) 
                    :Text(
                   "login",
                   style: TextStyle(
                     color: Colors.white,
                     fontWeight: FontWeight.bold,
                     fontSize: 18),
                   ),
                   decoration: BoxDecoration(
                     color: Colors.deepPurple,
                     borderRadius: 
                     BorderRadius.circular(changeButton ? 50 : 8),
                   ),
                ),
                ),
                //ElevatedButton(
                // child: Text("login"),
                // style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                // onPressed: () {
                // Navigator.pushNamed(context, MyRoutes.homeRoute);
               // },
               // ),
              ],
            
            ),
          ],
        ),
        ),
        
        );
  }
}