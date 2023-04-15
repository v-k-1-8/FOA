import 'package:flutter/material.dart';
import 'account.dart';
import 'cart.dart';
import 'order.dart';
import 'order_details.dart';
import 'login.dart';

var rhs = 'Hotel Prakash', rrhs = 'Hotel Prakash';
void main() {
  runApp(Front());
}

class Front extends StatelessWidget {
  const Front({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'images/fos.png',
          height: 150,
          //fit: BoxFit.fitHeight,
        ),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              setState(
                () {
                  nsr = 0;
                  nmd = 0;
                  nm = 0;
                  nvb = 0;
                  nvm = 0;
                  rnsr = 0;
                  rnmd = 0;
                  rnm = 0;
                  rnvb = 0;
                  rnvm = 0;
                  rhs = 'Hotel Prakash';

                  rrhs = 'Hotel Prakash';
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => login1(),
                    ),
                  );
                },
              );
            },
            icon: Icon(Icons.login),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              color: Colors.tealAccent,
              elevation: 0,
              child: Text(
                'Hey ${Name},\nWelcome to FOS.  ',
                style: TextStyle(
                  fontFamily: 'welcome',
                  fontSize: 45,
                  //height: ,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Card(
              elevation: 0,
              color: Colors.tealAccent,
              child: Image.asset(
                'images/fdm.png',
                alignment: Alignment.center,
              ),
            ),
            Theme(
              data: Theme.of(context).copyWith(
                canvasColor: Colors.tealAccent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //   crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Card(
                      color: Colors.tealAccent,
                      elevation: 0,
                      child: Text(
                        'Please select place to order from: ',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'logincre',
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      )),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    // padding: EdgeInsets.all(0),
                    margin: EdgeInsets.all(20),
                    child: FittedBox(
                      alignment: Alignment.center,
                      child: DropdownButton<String>(
                        value: rhs,
                        elevation: 0,

                        style: TextStyle(
                          backgroundColor: Colors.tealAccent,
                          color: Colors.black,
                        ),
                        alignment: Alignment.center,
                        // Step 4.
                        items: <String>[
                          'Hotel Prakash',
                          'White Rabbit',
                          'Olive',
                          'Punjabi Dhaba',
                          'Burger Singh',
                          'Motel Divine',
                          'Pizza Hut',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            enabled: true,
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'logincre',
                              ),
                            ),
                          );
                        }).toList(),
                        // Step 5.
                        onChanged: (String? newValue) {
                          setState(() {
                            rhs = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        // color: Colors.black,
        width: 70,
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(20),
        ),
        child: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Cart(),
              ),
            );
          },
          child: Text(
            'Proceed to Cart',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.tealAccent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text(
                'v_k_18',
                style: TextStyle(
                    color: Colors.tealAccent,
                    fontFamily: 'logincre',
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: const Text('Account'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => account()),
                );
              },
            ),
            ListTile(
              title: const Text('Cart'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cart()),
                );
              },
            ),
            ListTile(
              title: const Text('Recent Order'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => odetalis()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
