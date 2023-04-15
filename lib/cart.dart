import 'package:flutter/material.dart';
import 'order.dart';
import 'main.dart';
import 'login.dart';
import 'account.dart';
import 'order_details.dart';

double tpsr = (psr * nsr),
    tpmd = (nmd * pmd),
    tpm = (nm * pm),
    tpvb = (nvb * pvb),
    tpvm = (nvm * pvm);
double total = tpsr + tpmd + tpm + tpvb + tpvm;

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Cart'),
          leading: ListTile(
            title: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Front()),
              );
            },
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            Card(
              elevation: 3,
              child: Text(
                '${rhs}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              'Cart Items : ',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
            ),
            Card(
              elevation: 3,
              child: ListTile(
                leading: Image.asset(
                  'images/maggie1.png',
                  fit: BoxFit.fitWidth,
                ),
                title: Text(
                    'Veg Maggie X ${nvm}\nPrice-${pvm}\nTotal-${tpvm = (nvm * pvm)}'),
                trailing: Wrap(
                  spacing: 5,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        setState(() {
                          nvm++;
                        });
                      },
                      icon: CircleAvatar(
                        child: Icon(Icons.add),
                        backgroundColor: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (nvm > 0) nvm--;
                        });
                      },
                      icon: CircleAvatar(
                        child: Icon(Icons.remove),
                        backgroundColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 3,
              child: ListTile(
                leading: Image.asset(
                  'images/burger.png',
                  fit: BoxFit.fitWidth,
                ),
                title: Text(
                    'Veg Burger X ${nvb}\nPrice-${pvb}\nTotal-${tpvb = (nvb * pvb)}'),
                trailing: Wrap(
                  spacing: 5,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        setState(() {
                          nvb++;
                        });
                      },
                      icon: CircleAvatar(
                        child: Icon(Icons.add),
                        backgroundColor: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (nvb > 0) nvb--;
                        });
                      },
                      icon: CircleAvatar(
                        child: Icon(Icons.remove),
                        backgroundColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 3,
              child: ListTile(
                leading: Image.asset(
                  'images/momos.png',
                  fit: BoxFit.fitWidth,
                ),
                title:
                    Text('Momos X ${nm}\nPrice-${pm}\nTotal-${tpm = nm * pm}'),
                trailing: Wrap(
                  spacing: 5,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        setState(() {
                          nm++;
                        });
                      },
                      icon: CircleAvatar(
                        child: Icon(Icons.add),
                        backgroundColor: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (nm > 0) nm--;
                        });
                      },
                      icon: CircleAvatar(
                        child: Icon(Icons.remove),
                        backgroundColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 3,
              child: ListTile(
                leading: Image.asset('images/dosa.png', fit: BoxFit.fitWidth),
                title: Text(
                    'Masala Dosa X ${nmd}\nPrice-${pmd}\nTotal-${tpmd = nmd * pmd}'),
                trailing: Wrap(
                  spacing: 5,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        setState(() {
                          nmd++;
                        });
                      },
                      icon: CircleAvatar(
                        child: Icon(Icons.add),
                        backgroundColor: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (nmd > 0) nmd--;
                        });
                      },
                      icon: CircleAvatar(
                        child: Icon(Icons.remove),
                        backgroundColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 3,
              child: ListTile(
                leading: Image.asset(
                  'images/roll.png',
                  fit: BoxFit.fitWidth,
                ),
                title: Text(
                    'Spring Roll X ${nsr}\nPrice-${psr}\nTotal-${tpsr = nsr * psr}'),
                trailing: Wrap(
                  spacing: 5,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        setState(() {
                          nsr++;
                        });
                      },
                      icon: CircleAvatar(
                        child: Icon(Icons.add),
                        backgroundColor: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (nsr > 0) nsr--;
                        });
                      },
                      icon: CircleAvatar(
                        child: Icon(Icons.remove),
                        backgroundColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 3,
              child: ListTile(
                title: Text(
                  'Total Price: ${total = tpsr + tpmd + tpm + tpvb + tpvm}',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Text(
              '(Only payment method available is COD) ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(
              () {
                rnsr = nsr;
                rnmd = nmd;
                rnm = nm;
                rnvb = nvb;
                rnvm = nvm;
                rtotal = total;
                nsr = 0;
                nmd = 0;
                nm = 0;
                nvb = 0;
                nvm = 0;
                rrhs = rhs;
                rhs = 'Hotel Prakash';

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Order(),
                  ),
                );
              },
            );
          },
          child: Text('ORDER'),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
