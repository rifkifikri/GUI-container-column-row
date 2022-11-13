import 'package:flutter/material.dart';
import 'package:kegiatan_1/Screen/Profil.dart';
import 'package:kegiatan_1/Screen/icons.dart';
import 'package:kegiatan_1/Screen/imageNetwork.dart';
import 'package:kegiatan_1/Screen/image_asset.dart';
import 'package:kegiatan_1/Screen/pageReplacement.dart';
import 'package:kegiatan_1/Screen/pop.dart';
import 'package:kegiatan_1/Screen/push.dart';
import 'package:kegiatan_1/Screen/text.dart';

import 'Screen/container_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyAppsku(),
    );
  }
}

class MyAppsku extends StatefulWidget {
  const MyAppsku({Key? key}) : super(key: key);

  @override
  State<MyAppsku> createState() => _MyAppskuState();
}

class _MyAppskuState extends State<MyAppsku> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Muh Rifki F. F 1462000282'),
        centerTitle:true,
      ),
      body:Container(
      
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(flex: 1,child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>MyContainer()),
                    );
                  }, child: Text('Container')),
                )),
                Expanded(flex: 1, child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=>MyText()),
                    );
                  }, child: Text('Text')),
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(flex: 1, child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>MyImageNetwork())
                    );
                  }, child: Text('Image')),
                )),
                Expanded(flex: 1, child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyImage())
                  );
                }, child: Text('Image asset'))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(flex:1, child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=>MyIcons())
                    );
                  }, child: Text('Icon')),
                )),
                Expanded(flex:1, child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyPush())
                    );
                  }, child: Text('push')),
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(flex: 1, child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyPopPage()));
                  }, child: Text('pop')),
                )),
                Expanded(flex: 1, child: Padding( //expanded berguna untuk memenuhi ruang yang tersisa
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyReplacepentPage())
                    );
                  }, child: Text('Replacement')),
                )),
              ],
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>)
              );
            }, child: Text('Profil saya')),
          ],
        ),
      ),
    );
  }
}