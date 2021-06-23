import 'package:alpha/pages/dashboard.dart';
import 'package:alpha/pages/register.dart';
import 'package:alpha/resources/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;


class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  User user = User('', '');

  Future save() async {
    var url = Uri.parse("http://10.0.2.2:5000/auth/login");
    var res = await http.post( url, headers: <String, String> {
        'Context-Type': 'application.json;charSet=UTF-8'
      },
      body: <String, String> {
        'email': user.email,
        'password' : user.password,
      } );
      print(res.body);

      Navigator.push(context, new MaterialPageRoute(
        builder: (context)=> Dashboard() ) );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: SvgPicture.asset('images/topNav.svg', width: 400, height:150,)
          ),
          Container(
            alignment: Alignment.center,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox( height:150 ),
                  Text("Login", style: GoogleFonts.pacifico(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.blueGrey, ) 
                  ),
                  SizedBox( height:30 ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: TextFormField(
                      controller: TextEditingController(text: user.email),
                      onChanged: (value) { user.email = value; },
                      validator: (value) { 
                        if (value!.isEmpty) {
                          return "Empty";
                        } else if (RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
                          return null;
                        } else {
                          return 'Enter valid email';
                        }
                      },
                      decoration:  InputDecoration(
                        hintText: "Email",
                        enabledBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.blue) ),
                        focusedBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.blue) ),
                        errorBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.red) ),
                        focusedErrorBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.red) ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: TextFormField(
                      controller: TextEditingController(text: user.password),
                      onChanged: (value) { user.password = value; },
                      validator: (value) { 
                        if (value!.isEmpty) {
                          return "Empty";
                        } 
                        return null;
                      },
                      decoration:  InputDecoration(
                        hintText: "Password",
                        enabledBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.blue) ),
                        focusedBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.blue) ),
                        errorBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.red) ),
                        focusedErrorBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.red) ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 50,
                      width: 400,
                      // ignore: deprecated_member_use
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(16.0)
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          if ( _formKey.currentState!.validate() ) {
                            save();
                          } else {
                            print('not okay');
                          }
                        }, 
                        child: Text('Submit', style: TextStyle( color: Colors.white) ),
                      )
                    ),
                  ),
                  Padding( 
                    padding: const EdgeInsets.fromLTRB(65, 20, 0, 0),
                    child: Row(
                      children: [
                        Text("Not Have an Account?", 
                          style: TextStyle( 
                            color: Colors.black,
                            fontWeight: FontWeight.bold )
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, 
                              new MaterialPageRoute(
                                builder: (context)=> Register() ) );
                          },
                          child: Text("Register", 
                            style: TextStyle( 
                              color: Colors.blue,
                              fontWeight: FontWeight.bold )
                          ),
                        ),
                      ],
                    ), 
                  )
                ],
              ),
            )
          )
        ],
      )
    );
  }
}