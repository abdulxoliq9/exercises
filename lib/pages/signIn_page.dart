import 'package:exercises/pages/signUp_page.dart';
import 'package:flutter/material.dart';
class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);
  static final String id = 'signIn_page';
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                  Text('Amazon',style: TextStyle(
                    fontFamily: 'Billabong',
                    fontSize: 45,
                  ),),
              Container(
                margin: EdgeInsets.only(left: 30,right: 30,top: 10),
                height: 45,
                decoration: BoxDecoration(borderRadius:
                    BorderRadius.circular(5),color: Colors.grey[200],
                ),
                child: TextField(
                  style: TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(borderSide:
                    BorderSide(color: Colors.teal)),
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),

              ),
              Container(
                margin: EdgeInsets.only(left: 30,right: 30,top: 10),
                height: 45,
                decoration: BoxDecoration(borderRadius:
                BorderRadius.circular(5),color: Colors.grey[200],
                ),
                child: TextField(
                  style: TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(borderSide:
                    BorderSide(color: Colors.teal)),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),),
              Container(
                height: 45,
                width: double.infinity,
                margin: EdgeInsets.only(left: 30,right: 30,top: 15),
                child: FlatButton(
                  color: Colors.red,
                  onPressed: (){},
                  child: Text('Log In',style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30,right: 30,top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Don`t have an account?',style:
                      TextStyle(fontSize: 15,
                      color: Colors.grey[500]),),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacementNamed(context, SignUpPage.id);
                      },
                      child: Text('Sign up',style: TextStyle(
                          fontSize: 15,fontWeight: FontWeight.bold,
                          color: Colors.black54
                      ),),
                    ),
                  ],
                ),
              ),
                ],
              ),
        ),
      ),
    );
  }
}
