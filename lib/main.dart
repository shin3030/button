import 'package:flutter/material.dart';

void main() {

  var appBar=AppBar(
    title: Text("button test"),
  );
  var appBody=Center(

      child:

      Column(
        mainAxisAlignment: MainAxisAlignment.center,


        children:<Widget>[

          ButtonTheme(
            height: 20,
            child:TextButton(

              child: Text("Disabled",style: TextStyle(color: Colors.grey[400],fontSize:25,),),
              onPressed:null,),),
          TextButton(
              child: Text("Enabled",style: TextStyle(
                color: Colors.blue[300],
                fontSize: 25,),
              ),
              onPressed:(){}),
          ClipRect(
            child: Stack(
              children:<Widget> [
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.blue.shade500,Colors.blue.shade300,Colors.blue.shade100]
                        )
                    ),
                  ),
                ),
                TextButton(
                  child: Text("Gradient",style: TextStyle(color: Colors.white,fontSize: 25,),),
                  onPressed: (){},),

              ],
            ),
          ),
          ClipRect(
            child: Stack(
              children:<Widget> [
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.blue.shade500,Colors.blue.shade400,Colors.blue.shade300]
                        )
                    ),
                  ),
                ),
                TextButton(
                  child: Text("Gradient",style: TextStyle(color: Colors.white,fontSize: 25,),),
                  onPressed: (){},),


              ],
            ),
          ),
        ],
      )
  );


  var app = MaterialApp(
    home:Scaffold(
      appBar:appBar,
      body:appBody,
      backgroundColor: Colors.grey[800],
    ),
  );
  runApp(app);
}