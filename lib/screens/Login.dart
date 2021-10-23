import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/screens/feedbackcomment.dart';
import 'package:flutter_travel_ui/screens/home_screen.dart';
import 'SignUp.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

   String _name, _email, _password;

  // checkAuthentification() async {
  //   _auth.authStateChanges().listen((user) {
  //     if (user != null) {
  //       print(user);

  //       Navigator.pushReplacementNamed(context, "/");
  //     }
  //   });
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   this.checkAuthentification();
  // }

  // login() async {
  //   if (_formKey.currentState.validate()) {
  //     _formKey.currentState.save();

  //     try {
  //       await _auth.signInWithEmailAndPassword(
  //            email: _email, password: _password);
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

  navigateToSignUp() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
             height: MediaQuery.of(context).size.height* 0.4,
              width: MediaQuery.of(context).size.width,
   
              decoration: BoxDecoration(
                           
                image: DecorationImage(image: AssetImage("assets/images/design.png"),
                fit: BoxFit.cover
                )
              ),
            
            ),
             Container(
              height:MediaQuery.of(context).size.height*0.07,
              width: MediaQuery.of(context).size.width*0.7,

child: Center(child:Text("Create an Account",
style: TextStyle(color: Colors.white, 
fontSize:20,
fontWeight: FontWeight.w400),
))
              ),
              
            Padding(padding:EdgeInsets.only(top:MediaQuery.of(context).size.height*0.01,
            left:MediaQuery.of(context).size.width* 0.06,
            right:MediaQuery.of(context).size.width* 0.06,
             ),child:
            Column(children: [
             Container(
   height:MediaQuery.of(context).size.height* 0.04,
      width: MediaQuery.of(context).size.width,
 
child: Text(" Name",
style: TextStyle(color: Colors.white, fontSize:18,

fontWeight: FontWeight.w400),

)

             ),
              
              Container(
                height:MediaQuery.of(context).size.height* 0.066,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Color(0xffB1B7EC)
                ),
              child: Form(
                //key: _formKey,
                child: Column(
                  children: <Widget>[
                    
                     Container(
                      child: TextFormField(
                          // ignore: missing_return
                          validator: (input) {
                            if (input.isEmpty) return 'Enter Name';
                          },
                          decoration: InputDecoration(
                           
                            ),
                          onSaved: (input) => _name = input),
                    ),
                    // Container(
                    //   child: TextFormField(
                    //       // ignore: missing_return
                    //       validator: (input) {
                    //         if (input.isEmpty) return 'Enter Email';
                    //       },
                    //       decoration: InputDecoration(
                    //         fillColor: Colors.blue,
                    //           labelText: 'Email',
                    //           prefixIcon: Icon(Icons.email)),
                    //       onSaved: (input) => _email = input),
                    // ),
                    // Container(
                    //   child: TextFormField(
                    //       // ignore: missing_return
                    //       validator: (input) {
                    //         if (input.length < 6)
                    //           return 'Provide Minimum 6 Character';
                    //       },
                    //       decoration: InputDecoration(
                    //         labelText: 'Password',
                    //         prefixIcon: Icon(Icons.lock),
                    //       ),
                    //       obscureText: true,
                    //       onSaved: (input) => _password = input),
                    // ),
                  
                  ],
                ),
              ),
            ),
             SizedBox(height:5),
            Container(
   height:MediaQuery.of(context).size.height* 0.04,
      width: MediaQuery.of(context).size.width,

child: Text(" Email",
style: TextStyle(color: Colors.white, fontSize:18,

fontWeight: FontWeight.w400),

)

             ),
              
              Container(
                height:MediaQuery.of(context).size.height* 0.066,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Color(0xffB1B7EC)
                ),
              child: Form(
                //key: _formKey,
                child: Column(
                  children: <Widget>[
                    
                   
                    Container(
                      child: TextFormField(
                          // ignore: missing_return
                         
                          decoration: InputDecoration(
                            fillColor: Colors.blue,
                              
                             ),
                          onSaved: (input) => _email = input),
                    ),
                    // Container(
                    //   child: TextFormField(
                    //       // ignore: missing_return
                    //       validator: (input) {
                    //         if (input.length < 6)
                    //           return 'Provide Minimum 6 Character';
                    //       },
                    //       decoration: InputDecoration(
                    //         labelText: 'Password',
                    //         prefixIcon: Icon(Icons.lock),
                    //       ),
                    //       obscureText: true,
                    //       onSaved: (input) => _password = input),
                    // ),
                  
                  ],
                ),
              ),
            ),
            SizedBox(height:5),
            Container(
   height:MediaQuery.of(context).size.height* 0.04,
      width: MediaQuery.of(context).size.width,
 
child: Text(" Password",
style: TextStyle(color: Colors.white, fontSize:18,

fontWeight: FontWeight.w400),

)

             ),
              
              Container(
                height:MediaQuery.of(context).size.height* 0.066,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Color(0xffB1B7EC)
                ),
              child: Form(
                //key: _formKey,
                child: Column(
                  children: <Widget>[
                    
                   
                    
                    Container(
                      child: TextFormField(
                          // ignore: missing_return
                          validator: (input) {
                            if (input.length < 6)
                              return 'Provide Minimum 6 Character';
                          },
                          decoration: InputDecoration(
                           
                          ),
                          obscureText: true,
                          onSaved: (input) => _password = input),
                    ),
                  
                  ],
                ),
              ),
            ),

            ])),
            SizedBox(height:30),
             InkWell(
                   onTap:() => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => HomeScreen()
                                          ),
                                        ),
                                      
                   child: Container(
                    height: MediaQuery.of(context).size.height* 0.05,
                    width: MediaQuery.of(context).size.height* 0.16,
                    
                  decoration: BoxDecoration(
                    color:Color(0xffB1B7EC),
                    borderRadius: BorderRadius.circular(20),
                    
                    boxShadow: [
      BoxShadow(
        color: Colors.black,
        spreadRadius: 1,
        blurRadius: 0,
        offset: Offset(0, 1), // changes position of shadow
      ),
    ],


                  ),
                  child: Center(child: Text('Login',
                  style: TextStyle(
                    fontSize:16
                  )
                  ),),

                  ))
          ],
        ),
      ),
    ));
  }
}
