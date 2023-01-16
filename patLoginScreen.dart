import 'package:flutter/material.dart';
import 'package:mediator/patBottomNavBar.dart';

class PatLoginWidget extends StatelessWidget {
  PatLoginWidget({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  final TextStyle _buttonTextStyle = TextStyle(
    fontSize: 35,
  );
  final TextStyle _titleTextStyle = TextStyle(
    fontSize: 50,
  );
  final EdgeInsets _padding = EdgeInsets.all(16.0);
  final EdgeInsets _titlePadding = EdgeInsets.all(20.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text('Το σπίτι σου στην οθόνη σου',
            style: TextStyle(color: Colors.white)),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
                child: Text("MyHomee", style: _titleTextStyle),
                padding: _titlePadding),
            Padding(
              padding: _padding,
              /*child: CircleAvatar(
                radius: 100.0,
                backgroundImage: NetworkImage(
                    'https://www.pngitem.com/middle/miiJii_professional-clipart-female-avatar-circle-hd-png-download/'),
                backgroundColor: Colors.green,
              ), */
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment
                        .topCenter, //aligns CircleAvatar to Top Center.
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/MEDiator.png'),
                        ),
                      ),
                    ),
                  ),
                  //),
                ],
              ),
            ),
            Padding(
              padding: _padding,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'email',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  //οταν πατιεται το εμαιλ γινεται μωβ το περιγραμμα
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 3, color: Colors.deepPurpleAccent),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'Το πεδίο email είναι υποχρεωτικό';
                  return null;
                },
              ),
            ),
            Padding(
              padding: _padding,
              child: TextFormField(
                //h forma gia ton kwdiko
                decoration: InputDecoration(
                  hintText: 'Κωδικός',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 3, color: Colors.deepPurpleAccent),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'Το πεδίο κωδικός είναι υποχρεωτικό';
                  return null;
                },
              ),
            ),
            // twra to koumpaki sundesh
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Align(
                alignment:
                    Alignment.bottomCenter, //aligns CircleAvatar to Top Center.
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurpleAccent, // Background color
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => PatBottomNavBar()),
                      );
                    }
                  },
                  child: const Text('Σύνδεση',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
