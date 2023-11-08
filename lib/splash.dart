import 'package:flutter/material.dart';

import 'main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white,
                  Colors.blueGrey
                  ,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 200,
                     width: 200,
                    child: Image.asset("assets/images/quote_logo.png", )
                ),
                // const Text("Quotes of the Day",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold,), ),
                const SizedBox(height: 15,),
                SizedBox(
                    width: MediaQuery.of(context).size.width*.40,
                    child: const CircularProgressIndicator(
                      color: Colors.blueGrey,
                    ))
              ],
            )
        )
    );

  }
startTimer() async
{
  await Future.delayed(const Duration(seconds: 5),(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  const MyHomePage(title: 'Your Quote')));
  });
}

}
