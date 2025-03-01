import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/register.png"),
          fit: BoxFit.cover
          ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 30),
              child: Text(
                "Create\nAccount",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 33,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height*0.28
                   ),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 35,right: 35),
                        child: Column(
                          children: [
                            TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                      hintText: "email",
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      fillColor: Color.fromARGB(255, 200, 120, 117),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.email, color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black87,
                        ),
                      ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                      hintText: "password",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 200, 120, 117),
                        fontSize: 18,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.lock, color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black87,
                        ),
                      ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                      hintText: "Confirm password",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 200, 120, 117),
                        fontSize: 18,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.lock, color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black87,
                        ),
                      ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 179, 159, 159),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                      ),
                      onPressed: (){
                      }, 
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 36, 75, 94),
                        fontSize: 22,
                      ),
                    ),
                    ),
                          ],
                        ),
                      )
                    ],
                   ),
              ),
            )
          ],
        ),
      ),
    );
  }
}