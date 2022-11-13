import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyProfil extends StatelessWidget {
  const MyProfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1462000282'),
        centerTitle: true,
      ),
      body: Center( 
        child: Container(
          child:Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

                Container(
                  child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[Image.asset('images/profilku.jpeg',
                    height: 170,
                    width: 170,
                    ),]
                     
                  ),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                
                 
                ), 
                Text('Nama : Muhammad Rifki Fikri Firdaus'),
                Text('NBI : 1462000282'),
                Text('Kelas : Reg 2'),

               
            ],
          ),
        ),
      ),
    );
  }
}