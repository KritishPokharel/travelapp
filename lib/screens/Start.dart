
import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/screens/SignUp.dart';


import 'Login.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  // // final FirebaseAuth _auth = FirebaseAuth.instance;

  // Future<UserCredential> googleSignIn() async {
  //   GoogleSignIn googleSignIn = GoogleSignIn();
  //   GoogleSignInAccount googleUser = await googleSignIn.signIn();
  //   if (googleUser != null) {
  //     GoogleSignInAuthentication googleAuth = await googleUser.authentication;

  //     if (googleAuth.idToken != null && googleAuth.accessToken != null) {
  //       final AuthCredential credential = GoogleAuthProvider.credential(
  //           accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

  //       final UserCredential user =
  //           await _auth.signInWithCredential(credential);

  //       await Navigator.pushReplacementNamed(context, "/");

  //       return user;
  //     } else {
  //       throw StateError('Missing Google Auth Token');
  //     }
  //   } else
  //     throw StateError('Sign in Aborted');
  // }

  navigateToLogin() async {
    Navigator.pushReplacementNamed(context, "Login");
  }

  navigateToRegister() async {
    Navigator.pushReplacementNamed(context, "SignUp");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
            child:
            Container(
              height: MediaQuery.of(context).size.height*0.55,
             
          
              width: MediaQuery.of(context).size.width,
            
              child: Image(
                image: AssetImage("assets/images/sathii.png"),
                fit: BoxFit.fill,
              ),
            )), 
            //SizedBox(height: 20),

           Padding(padding: EdgeInsets.only(
             top:MediaQuery.of(context).size.height* 0.05,
             left: MediaQuery.of(context).size.width* 0.17,
             ),
              child:Container(

               
                height: MediaQuery.of(context).size.height* 0.15,
                child:Row(
                  children:[ 
                    InkWell(
                      onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) =>Login()
                                          ),
                                        ),
                                      
  
 
                      child:
                  Container(
                    height: MediaQuery.of(context).size.height* 0.07,
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
                  child: Center(
                  
                  child: Text('Login',
                  style: TextStyle(
                    fontSize:16
                  )
                  ),),

                  )) ,
                  SizedBox(width: 30.0),
                 InkWell(
                   onTap:() => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => SignUp()
                                          ),
                                        ),
                                      
                   child: Container(
                    height: MediaQuery.of(context).size.height* 0.07,
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
                  child: Center(child: Text('Sign Up',
                  style: TextStyle(
                    fontSize:16
                  )
                  ),),

                  )) ,  
                  

                  ]
                ),
                

             
             
            ),

             ),
            
             InkWell(
                   onTap:() => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => SignUp()
                                          ),
                                        ),
                                      
                   child: Container(
                    height: MediaQuery.of(context).size.height* 0.08,
                    width: MediaQuery.of(context).size.width* 0.6,
                    
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
                  child:
                  Row(children: [
                    SizedBox(width:15),
                    Icon(Icons.account_circle_outlined),
                    SizedBox(width:15),

                   Center(child: Text('Sign Up with Google',
                  style: TextStyle(
                    fontSize:16
                  )
                  ),)],),

                  ))
            // SignInButton(Buttons.Google,
            //     text: "Sign up with Google", onPressed: (){})
          ],
        ),
      ),
    );
  }
}
