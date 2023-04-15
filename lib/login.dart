import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'order.dart';
import 'main.dart';
import 'order_details.dart';
import 'account.dart';
import 'cart.dart';

void main() {
  runApp(
    login1(),
  );
}

var Name, Number, Address;
double psr = 50, pmd = 70, pm = 40, pvb = 70, pvm = 80;
int nsr = 0, nmd = 0, nm = 0, nvb = 0, nvm = 0;

int rnsr = 0, rnmd = 0, rnm = 0, rnvb = 0, rnvm = 0;
double rtpsr = (psr * rnsr),
    rtpmd = (rnmd * pmd),
    rtpm = (rnm * pm),
    rtpvb = (rnvb * pvb),
    rtpvm = (rnvm * pvm);
double rtotal = rtpsr + rtpmd + rtpm + rtpvb + rtpvm;

class login1 extends StatelessWidget {
  const login1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController nameis = TextEditingController();
  TextEditingController locationis = TextEditingController();
  TextEditingController number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'images/fos.png',
          height: 150,
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Card(
              elevation: 0,
              child: Image.asset(
                'images/&.png',
                alignment: Alignment.center,
              ),
            ),
            Card(
              elevation: 0,
              margin: EdgeInsets.fromLTRB(18, 0, 18, 18),
              child: Text(
                'One Stop Solution To Order Food In R-Land',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'loginfont',
                ),
              ),
            ),
            Card(
                child: SingleChildScrollView(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Enter Name ',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'logincre',
                        ),
                      ),
                    ),
                    Card(
                      child: TextField(
                        controller: nameis,
                        maxLines: 1,
                        minLines: 1,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Enter Address',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'logincre',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '( Currently we are only available in IIT ROORKEE campus so provide address within it )',
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'logincre',
                        ),
                      ),
                    ),
                    Card(
                      child: TextField(
                        controller: locationis,
                        maxLines: 1,
                        minLines: 1,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Enter Contact Number',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'logincre',
                        ),
                      ),
                    ),
                    Card(
                      child: TextField(
                        controller: number,
                        maxLines: 1,
                        maxLength: 10,
                        minLines: 1,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(20),
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          Name = nameis.text;
                          Number = number.text;
                          Address = locationis.text;
                          if (Name == null || Name == '') Name = '';
                          if (Address == null || Address == '')
                            Address = "Your location";
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ),
                          );
                        });
                      },
                      child: Text(
                        "Submit",
                      ),
                    ),
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
