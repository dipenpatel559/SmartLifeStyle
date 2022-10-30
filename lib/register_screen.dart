import 'package:flutter/material.dart';
import 'package:sls/login_screen.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final formKey = GlobalKey<FormState>(); //key for form
  String name="";
  @override
  Widget build(BuildContext context) {
    final double height= MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
        // appBar:
        // AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        // ),

        backgroundColor: Color(0xFFffffff),
        body: Center(
        child: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(left: 40, right: 40),
          // width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          child: Form(
            key: formKey, //key for form
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height:height*0.06),
                Text("Register Now", style: TextStyle(fontSize: 40, color:Color(0xFF363f93)),),
                SizedBox(height:height*0.01),
                Text("How are you today?", style: TextStyle(fontSize: 20, color:Color(0xFF363f93)),),
                SizedBox(height: height*0.10,),
                TextFormField(
                  decoration: new InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    prefixIcon: Icon(Icons.email_outlined),
                      labelText: "Enter your email id",
                  ),
                  validator: (value){
                    if(value!.isEmpty || RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!)){
                      return "Enter a valid email address!";
                    }else{
                      return null;
                    }
                  },
                ),
                SizedBox(height: height*0.03,),
                TextFormField(
                  decoration: new InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon: Icon(Icons.password),
                      labelText: "Enter your password"

                  ),
                  validator: (value){
                    if(value!.isEmpty || RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!)){
                      return "Wrong Password";
                    }else{
                      return null;
                    }
                  },
                ),

                SizedBox(height: height*0.03,),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon: Icon(Icons.password_sharp),
                      labelText: "Confirm password"

                  ),
                  validator: (value){
                    if(value!.isEmpty || RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!)){
                      return "Wrong Password";
                    }else{
                      return null;
                    }
                  },
                ),

                SizedBox(height: height*0.03,),
              Align(
          alignment: Alignment.bottomRight,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: <Color>[
                                  Color(0xFF363f60),
                                  Color(0xFF363f90),
                                  Color(0xFF363f99),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.all(16.0),
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
                          },
                          child: const Text('Register'),
                        ),
                      ],
                    ),
                  ),
              ),

                SizedBox(height: height*0.03,),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.deepPurple,
                            padding: const EdgeInsets.all(16.0),
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
                    },
                          child: const Text('Already a user? Login here'),
                        ),
                ),],
                    ),
                  ),
                ),
            )
    )
    );

  }
}
