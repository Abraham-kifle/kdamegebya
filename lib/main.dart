// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';


void main() async  {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false
    );
  }
}

class KdameGebeya extends StatefulWidget {
  const KdameGebeya({super.key});

  static String varify = "";

  @override
  State<KdameGebeya> createState() => _KdameGebeyaState();
}

class _KdameGebeyaState extends State<KdameGebeya> {
  TextEditingController countryCode = TextEditingController();
  late var phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IntlPhoneField(
                keyboardType: TextInputType.phone,
                initialCountryCode: "ET",
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                  suffixIcon: IconButton(onPressed: (){
                    Navigator.pushNamed(context, '/otp');
                  }, 
                  icon: Icon(Icons.arrow_forward))
                ),
                onChanged: (phones) {
                  phone = phones;
                  print(phone);
                },
                
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      );
  }
}

