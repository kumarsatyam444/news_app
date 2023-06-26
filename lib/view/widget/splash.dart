import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(height: 300,),


          FadeInImage(

            placeholder : AssetImage("assets/img/news-logo-vector-27684751.jpg"),
            image: AssetImage("assets/img/news-logo-vector-27684751.jpg") ,

            height: 230 , width: 230,),

          Spacer(),
          Text("Developed By\nKUMAR SATYAM" ,textAlign: TextAlign.center ,style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
        ],
      )),
    );
  }
}