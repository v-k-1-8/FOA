import 'package:flutter/material.dart';
import 'order.dart';
import 'cart.dart';
import 'login.dart';
import 'main.dart';
import 'account.dart';

class odetalis extends StatelessWidget {
  const odetalis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Front()),
              );
            },
          ),
          backgroundColor: Colors.black,
          title: Text('Recent Order Details'),
        ),
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            ListTile(
              //leading: Text('Hotel '),
              title: Text('${rrhs}'),
              //trailing: Text('${tpvm}'),
            ),
            Divider(
              height: 1,
              thickness: 1,
            ),
            ListTile(
              leading: Text('Items'),
              // title: Text('Quantity'),
              trailing: Text('Prices'),
            ),
            Divider(
              height: 1,
              thickness: 1,
            ),
            ListTile(
              leading: Text('Veg Maggie'),
              title: Text(' x ${rnvm}'),
              trailing: Text('${rtpvm = (rnvm * pvm)}'),
            ),
            ListTile(
              leading: Text('Veg Burger'),
              title: Text(' x ${rnvb}'),
              trailing: Text('${rtpvb = rnvb * pvb}'),
            ),
            ListTile(
              leading: Text('Momos'),
              title: Text(' x ${rnm}'),
              trailing: Text('${rtpm = rnm * pm}'),
            ),
            ListTile(
              leading: Text('Masala Dosa'),
              title: Text(' x ${rnmd}'),
              trailing: Text('${rtpmd = rnmd * pmd}'),
            ),
            ListTile(
              leading: Text('Spring Roll'),
              title: Text(' x ${rnsr}'),
              trailing: Text('${rtpsr = rnsr * psr}'),
            ),
            Divider(
              height: 1,
              thickness: 1,
            ),
            ListTile(
              title: Text('Total'),
              trailing:
                  Text('${rtotal = rtpvm + rtpvb + rtpm + rtpmd + rtpsr}'),
            ),
          ],
        ),
      ),
    );
  }
}
