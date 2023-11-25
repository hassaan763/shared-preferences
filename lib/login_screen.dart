import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_prefrences_practice/home_screen.dart';
import 'package:shared_prefrences_practice/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  final emailController =TextEditingController();
  final passwordController = TextEditingController();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Email',

              ),
            ),

            SizedBox(height: 20,),

            TextFormField(
              controller: passwordController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(

                hintText: 'Password',
              ),
            ),
            SizedBox(height: 40,),
            InkWell(
              onTap: () async{
                SharedPreferences sp =await SharedPreferences.getInstance();
                sp.setString('Email', emailController.toString());
                sp.setString('password', passwordController.toString());
                sp.setBool('login', true);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=>HomeScreen()
                    )
                );

              },
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.green,
                child: Center(
                  child: Text('click'),
                ),
              ),
            ),
            Row(
              children: [
                Text('dont have an account?'),
                TextButton(onPressed: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => SignUp()));
                }, child: Text('signup'))
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> add() async {
    await Future.delayed(Duration(seconds: 20));
  }
}
