import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_prefrences_practice/home_screen.dart';
import 'package:shared_prefrences_practice/login_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loaddata();
  }
  loaddata()async{
    SharedPreferences sp = await SharedPreferences.getInstance();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            automaticallyImplyLeading: false,
            title: Text('homeScreen'),
          ),
          body:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                  onTap: () async{
                    SharedPreferences sp =await SharedPreferences.getInstance();
                    //sp.remove('email');
                    //sp.remove('password');
                    //or use clear
                    sp.clear();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context)=>LoginScreen()
                        )
                    );

                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.green,
                    child: Center(
                      child: Text('logout'),
                    ),
                  ),
                ),
              )
            ],

          ),
        ),
      ),
    );
  }
}
