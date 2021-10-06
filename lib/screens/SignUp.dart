import 'package:flutter/material.dart';

import 'Login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // FirebaseAuth _auth = FirebaseAuth.instance;
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _name, _email, _password;

  // checkAuthentication() async {
  //   _auth.authStateChanges().listen((user) async {
  //     if (user != null) {
  //       Navigator.pushReplacementNamed(context, "/");
  //     }
  //   });
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   this.checkAuthentication();
  // }

  // signUp() async {
  //   if (_formKey.currentState.validate()) {
  //     _formKey.currentState.save();

  //     try {
  //       UserCredential user = await _auth.createUserWithEmailAndPassword(
  //           email: _email, password: _password);
  //       if (user != null) {
  //         // UserUpdateInfo updateuser = UserUpdateInfo();
  //         // updateuser.displayName = _name;
  //         //  user.updateProfile(updateuser);
  //         await _auth.currentUser.updateProfile(displayName: _name);
  //         // await Navigator.pushReplacementNamed(context,"/") ;

  //       }
  //     } catch (e) {
  //       showError(e.message);
  //       print(e);
  //     }
  //   }
  // }

  // showError(String errormessage) {
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: Text('ERROR'),
  //           content: Text(errormessage),
  //           actions: <Widget>[
  //             FlatButton(
  //                 onPressed: () {
  //                   Navigator.of(context).pop();
  //                 },
  //                 child: Text('OK'))
  //           ],
  //         );
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 400,
              child: Image(
                image: AssetImage("assets/images/design.png"),
                fit: BoxFit.contain,
              ),
            ),
            Container(
              child: Form(
               // key: _formKey,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: TextFormField(
                          // ignore: missing_return
                          validator: (input) {
                            if (input.isEmpty) return 'Enter Name';
                          },
                          decoration: InputDecoration(
                            labelText: 'Name',
                            prefixIcon: Icon(Icons.person),
                          ),
                          onSaved: (input) => _name = input),
                    ),
                    Container(
                      child: TextFormField(
                          // ignore: missing_return
                          validator: (input) {
                            if (input.isEmpty) return 'Enter Email';
                          },
                          decoration: InputDecoration(
                              labelText: 'Email',
                              prefixIcon: Icon(Icons.email)),
                          onSaved: (input) => _email = input),
                    ),
                    Container(
                      child: TextFormField(
                          // ignore: missing_return
                          validator: (input) {
                            if (input.length < 6)
                              return 'Provide Minimum 6 Character';
                          },
                          decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.lock),
                          ),
                          obscureText: true,
                          onSaved: (input) => _password = input),
                    ),
                    SizedBox(height: 20),
                    RaisedButton(
                      padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                      onPressed: (){
                        Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                      },
                      child: Text('SignUp',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
