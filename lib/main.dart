import 'package:flutter/material.dart';

import 'core/operation.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget{
  
  @override
  _MyAppState createState() => new _MyAppState();

}



class _MyAppState extends State<MyApp>{

  String result = "0" ;
  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Dart Calculator",
      home:Scaffold(
        appBar: AppBar(title: Text("Dart Calculator")),
      body: Column(
        children: <Widget>[
          Container(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(result,style: TextStyle(fontSize: 50.0),)
                ],
               )
              ),
          Expanded(
           child: Column(
             children: <Widget>[
               Row(
                 children: <Widget>[
                   new RaisedButton(
                     child: const Text("+"),
                     onPressed:(){
                        setState((){
                           result = (Operation.plus(1, 5).toString());
                       });
                     }
                   )
                 ],
               )
             ],
           ),
         )
          

       ]
     )
    ), 
   );
  }


}

