import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 String value = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField Widget"),
        centerTitle: true,
      ),
      body: SafeArea(child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                maxLength: 100,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black
                    ),
                    
                  ),
                  prefixIcon: Icon(Icons.person),
                  
                  labelText: "User Name",
                  hintText: "Enter user name"
                ),
                onChanged: (text){
                  value = text;
                  print("$text");
                },

              ),
              SizedBox(height: 30,),
              TextField(
                maxLength: 30,
                cursorColor: Colors.black,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black
                    ),
                    
                  ),
                  prefixIcon: Icon(Icons.lock),
                  labelText: "Password",
                  hintText: "Enter Password"
                  
                ),
                
              )
            ],
          ),
        ),
      )),
    );
  }
}