import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(const SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar Demo'),
        ),
        body: const SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
        mainAxisSize: MainAxisSize.min,
        children:<Widget>[
          ElevatedButton(
            style: raisedButtonStyle,
            onPressed: () {
              final snackBar = SnackBar(
                content: const Text('You pressed RaisedButton'),
                action: SnackBarAction(
                  label: 'Cancel',
                  onPressed: () {
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text('RaisedButton',style: TextStyle(color: Colors.red),),
          ),
          const SizedBox(height: 20,),

          TextButton(
              style: flatButtonStyle,
              child: Text("FlatButton",style: TextStyle(color: Colors.white),),
              onPressed: (){
                final snackBar = SnackBar(
                  content: const Text('You pressed FlatButton'),
                  action: SnackBarAction(
                    label: 'Cancel',
                    onPressed: () {
                    },
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);}),
          const SizedBox(height: 20,),

          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.pink.shade200)
              ),

              child: Text("OutlineButton",style: TextStyle(color: Colors.black),),
              onPressed: (){
                final snackBar = SnackBar(
                  content: const Text('You pressed OutlineButton'),
                  action: SnackBarAction(
                    label: 'Cancel',
                    onPressed: () {
                    },
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);}),

          const SizedBox(height: 20,),

          IconButton(
              iconSize: 40,
              onPressed: (){final snackBar = SnackBar(
                content: const Text('You pressed IconButton'),
                action: SnackBarAction(
                  label: 'Cancel',
                  onPressed: () {
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);},
              icon:const Icon(Icons.touch_app)
          ),

          const SizedBox(height: 20,),

          FloatingActionButton.small(
            onPressed: () {
              final snackBar = SnackBar(
                content: const Text('You pressed FloatingActionButton'),
                action: SnackBarAction(
                  label: 'Cancel',
                  onPressed: () {
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Icon(Icons.phone_android),
          ),

          const SizedBox(height: 20,),

          ElevatedButton.icon(
            style: raisedButtonStyleicon,
            icon: Icon(Icons.phone_android_sharp,color: Colors.red,),
            label: Text("RaisedButton.icon",style: TextStyle(color: Colors.red),),

            onPressed: (){
              final snackBar = SnackBar(
                content: const Text('You pressed RaisedButton.icon'),
                action: SnackBarAction(
                  label: 'Cancel',
                  onPressed: () {
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);},
          )







        ],
      ),
    );
  }
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.black87,
  primary: Colors.grey[300],
  backgroundColor: Colors.yellow,
  minimumSize: Size(88, 36),
  elevation: 10,
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),

  ),
);

final ButtonStyle raisedButtonStyleicon = ElevatedButton.styleFrom(
  onPrimary: Colors.black87,
  primary: Colors.grey[300],
  backgroundColor: Colors.grey.shade300,
  minimumSize: Size(88, 36),
  elevation: 10,
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),

  ),
);

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  backgroundColor: Colors.blue,
  primary: Colors.black87,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);

