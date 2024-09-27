import 'package:flutter/material.dart';
import 'package:instagram/screens/Dashboard.dart';
import 'package:instagram/utils/colors.dart';

class Login extends StatelessWidget{
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: Center(
        //main body container
        child: SizedBox(
          width: 400,
          height: 600,
          child: Column(
            children: [

              //instagram logo container
              Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  child: isDarkMode?Image.asset("assets/images/instagram_logo_white.png"):Image.asset("assets/images/instagram_logo_black.png")
              ),

              //email/username text field container
              Container(
                margin: const EdgeInsets.only(bottom: 12),
                child: TextField(
                  decoration: InputDecoration(

                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
                    ),
                    filled: true,
                    fillColor: const Color(0xFFFAFAFA),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.1),
                      )
                    ),
                    hintText: "Email/Username",
                    hintStyle: TextStyle(color: Colors.black.withOpacity(0.2))
                  ),
                ),
              ),

              //password text field container
              Container(
                margin: const EdgeInsets.only(bottom: 19),
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
                      ),
                    filled: true,
                    fillColor: const Color(0xFFFAFAFA),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.1),
                      )
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.black.withOpacity(0.2))
                  ),
                ),
              ),

              //text button for forgot password
              Container(
                  width: 400,
                  margin: const EdgeInsets.only(bottom: 30),
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {
                      // Your code here
                    },
                    child: const Text('Forgot password?', style: TextStyle(color: my_blue)),
                  )
              ),

              //login button
              Container(
                width: 400,
                height: 44,
                margin: const EdgeInsets.only(bottom: 37),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Dashboard())
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: my_blue,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      // Rectangular shape
                    ),
                  ),
                  child: const Text('Log in', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                  fontSize: 17),
                  ),
                ),
              ),

              //log in with facebook text button
              Container(
                margin: const EdgeInsets.only(bottom: 41.5),
                width: 200,
                child:TextButton(
                    onPressed: (){}, child:
                Center(
                  child: Row(
                    children: [
                      Image.asset("assets/images/Icon.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("Log in with Facebook", style: TextStyle(color: my_blue),)
                    ],
                  ),
                )
                )
              ),

              //divider line
              Container(
                margin: const EdgeInsets.only(bottom: 41.5),
                width: 400,
                height: 1,
                color: Colors.black.withOpacity(0.4),
              ),

              //sign up text button
              SizedBox(
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(onPressed: (){
                        
                      },
                          child: const Text("Sign up.", style: TextStyle(color: my_blue),))
                    ],
                  ),
                ),
              )
            ],
          )
        ),
      )
    );
  }

}