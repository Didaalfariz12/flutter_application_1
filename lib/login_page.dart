import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_button.dart';
import 'package:flutter_application_1/my_textfield.dart';
import 'package:flutter_application_1/square_title.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  //text editing controller
  final usarnameController = TextEditingController();
  final passwordController = TextEditingController();
  
  void signUserIn () {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              // Logo (you can replace this with your app's logo)
              const SizedBox(height:70),
              Icon(
                Icons.key,
                size: 150,
                
                color: Colors.black,
                 // Example color
              ),
              
             

              Text('welcome to login page apps',
              style: TextStyle(color: Colors.grey[700]),),

               const SizedBox(height:30),
              


              // Username text field
             MyTextField(
              controller: usarnameController,
              hintText: 'username',
              isPassword: false,
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
             ),
              const SizedBox(height: 15),

             

              // Password text field
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                isPassword: true,
                icon: Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
                
              ),
              const SizedBox(height: 5,),
              // forgott password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'forgot your password ?',
              style: TextStyle(color: Colors.grey[800]),

                    )
                  ],
                ),
              ),
             const SizedBox(height: 15,),
              //sign in login 
              Mybutton(
                onTap: signUserIn,
              ),
              const SizedBox(width: 30,),
              //or continue with 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
              
                      ), 
                    ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10.0),
                     child: Text('Or continue with',
                     style: TextStyle(color: Colors.grey[700]),),
                   ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      )
                    )
                  ],
                ),
              ),
          
              const SizedBox(height: 20,),
              
              // google+facebook sign button 
              
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    SquareTile(ImagePath: 'images/Google.png',),

                const SizedBox(width:25,),
               
                
                // facebook button 
                 SquareTile(ImagePath: 'images/facebook.png',),

                  ],
                
                
                //google button 
              
                ),
                const SizedBox(height: 5,),

                 //not a member register
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('not a member ?',
                    style: TextStyle(
                      color: Colors.black
                    ),),

                    const SizedBox(width: 2,),
                    

                    Text('register now',
                    style: TextStyle(
                      color: Colors.purple,fontWeight: FontWeight.bold
                    ),)
                  ],
                 )
              
            ],
          ),
        ),
      ),
    );
  }
}


              

              // Password text field
             

              // Login button


              

              // Password text field
             

              // Login button
    