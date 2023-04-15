import 'package:flutter/material.dart';
import 'order_details.dart';
import 'main.dart';
import 'login.dart';
import 'account.dart';
import 'cart.dart';

class Order extends StatelessWidget {
  const Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Food Ordering Site'),
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Front()),
              );
            },
          ),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Text(
                'Thanks for ordering ${Name},\nYour food will be delivered to ${Address}\nLink will be sent to your number to track the order ',
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => odetalis(),
                  ),
                );
              },
              child: Text('Order Details'),
            ),
          ],
        ),
      ),
    );
  }
}
