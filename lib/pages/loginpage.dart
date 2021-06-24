import 'package:client/resources/colorPalette.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginKey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> globalFormKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: loginKey,
        backgroundColor: AppTheme.white,
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  margin: EdgeInsets.symmetric(vertical: 85, horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppTheme.darkBlue,
                      boxShadow: [
                        BoxShadow(
                            color: AppTheme.grey.withOpacity(0.2),
                            offset: Offset(0, 10),
                            blurRadius: 20)
                      ]),
                  child: Form(
                    key: globalFormKey,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 25),
                        Text("Login", style: TextStyle(color: AppTheme.white)),
                        SizedBox(height: 25),
                        new TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            //onSaved:
                            validator: (input) => input!.contains("@")
                                ? "Please input valid email address"
                                : null,
                            decoration: new InputDecoration(
                                hintText: "Email",
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide( color: AppTheme.skyBlue.withOpacity(0.2) )),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide( color: AppTheme.skyBlue )),
                                prefixIcon: Icon(Icons.email, color: AppTheme.white)
                        ))
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        )));
  }
}
