import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
var emailcontroller=TextEditingController();
var passwordcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Login',style:TextStyle(fontSize:40.0,fontWeight: FontWeight.bold )),
                SizedBox(height: 40.0,),
                TextFormField(
                  controller: emailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value)
                  {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20.0,),
                TextFormField(
                  controller: passwordcontroller,
                  keyboardType: TextInputType.visiblePassword,
                  onChanged: (value)
                  {
                    print(value);
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20.0,),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(onPressed: ()
                  {
                    print(emailcontroller.text);
                    print(passwordcontroller.text);
                  },
                    child: Text('LOGIN',style: TextStyle(color: Colors.white),),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
