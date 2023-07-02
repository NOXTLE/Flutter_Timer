import 'package:flutter/material.dart';
import 'dart:async';

void main(){
  runApp(const Alarm());
}

class Alarm extends StatefulWidget{
  const Alarm({super.key});
  @override 
  State <Alarm> createState(){
    return _Alarmz();
  }
}
class _Alarmz extends State<Alarm>{



  int value=60;
 
  Future<void>timer()async{
    setState( () async {
      for(int i=value;i>0;i--){
    await Future.delayed(const Duration(seconds: 1),(){
      setState(() {
        value=value-1;
      });
     
  
    });
    }
  });
}

  @override
  Widget build(context){
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.blueAccent,
        body:Center(
          child:Container(
              
            height: 400,
            width: 400,
            decoration:  BoxDecoration(
              borderRadius:BorderRadius.circular(250),
              gradient: const RadialGradient(
                colors:[Color.fromARGB(255, 12, 145, 145),Color.fromARGB(255, 26, 217, 217)]
              ),
              ),
            child: Column(
              children: [
                const SizedBox(height: 40),
                const Text('Timer',style: TextStyle(
                  color: Colors.white,
                  fontSize:26,
                  fontFamily: AutofillHints.addressCity,
                  fontStyle: FontStyle.italic,
                 
                  
                ),
              ),
               const SizedBox(height: 100,),
               Text('$value',style:const TextStyle(
                fontSize:50,
                color:Colors.white,
               )
               ),
               const SizedBox(height: 40)
               ,
               ElevatedButton.icon(
                onPressed: timer, icon: const Icon(Icons.timer),
                 label: const Text('Start'),
                 style: const ButtonStyle(
                  backgroundColor:MaterialStatePropertyAll(
                    Colors.purple
                    )
                  ),
              
               
            )],
            ),
          ),
        ),
      ),
    );
  }
 
}