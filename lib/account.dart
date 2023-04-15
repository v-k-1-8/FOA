import 'package:flutter/material.dart';
import 'order.dart';
import 'main.dart';
import 'login.dart';
import 'cart.dart';
import 'order_details.dart';
class account extends StatefulWidget {
  const account({Key? key}) : super(key: key);

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Account Details'),
          leading: ListTile(
            title: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Front()),
              );
            },
          ),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[

              ListTile(
                leading: Text('Name: '),
                 title: Text('${Name}'),
               ),


              ListTile(
                leading: Text('Address: '),
                title: Text('${Address}'),
              ),
              ListTile(
                leading: Text('Contact Number: '),
                title: Text('${Number}'),
              ),

            ],   ),
        ),
      ),
    );
  }
}
