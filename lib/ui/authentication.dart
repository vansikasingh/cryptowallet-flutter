import 'package:cryptowallet/net/flutterfire.dart';
import 'package:cryptowallet/ui/home_view.dart';
import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  TextEditingController _emailField= TextEditingController();
  TextEditingController _passwordField= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width:MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color:Colors.teal,
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width:MediaQuery.of(context).size.width / 1.3,
            child: TextFormField(
              style: TextStyle(
                color: Colors.white,
              ),
              controller: _emailField,
              decoration:InputDecoration(
                hintText:"something@email.com",
                hintStyle: TextStyle(
                  color:Colors.white,
                ),
                labelText: "Email",
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height:MediaQuery.of(context).size.height / 35),
          Container(
            width:MediaQuery.of(context).size.width / 1.3,
              child: TextFormField(
                style: TextStyle(
                  color: Colors.white,
                ),
                controller: _passwordField,
                obscureText: true,
                decoration:InputDecoration(
                  hintText:"password",
                  hintStyle: TextStyle(
                    color:Colors.white,
                  ),
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
          ),
          SizedBox(height:MediaQuery.of(context).size.height / 35),
          Container(
            width:MediaQuery.of(context).size.width / 1.4,
            height:45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color:Colors.white,
            ),
            child: MaterialButton(
              onPressed: () async{
                bool shouldNavigate =
                await register(_emailField.text, _passwordField.text);
                if (shouldNavigate){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>HomeView(),
                    ),
                  );
                }
              },
              child:Text("Register")
            ),
          ),
          SizedBox(height:MediaQuery.of(context).size.height / 35),
          Container(
            width:MediaQuery.of(context).size.width / 1.4,
            height:45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color:Colors.white,
            ),
            child: MaterialButton(
                onPressed: () async {
                  bool shouldNavigate =
                      await signIn(_emailField.text, _passwordField.text);
                  if (shouldNavigate){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context)=>HomeView(),
                        ),
                    );
                  }
                },
                child:Text("Login")
            ),
          ),
        ],
        ),
      ),
    );
  }
}
