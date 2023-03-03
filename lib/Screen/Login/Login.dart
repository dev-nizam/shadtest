import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/Screen/home/Home.dart';
import 'package:testapp/bloc/Login/login_bloc.dart';
import 'package:testapp/model/LoginModel.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {
  late List<LoginModel> loginModel;

  @override
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Widget build(BuildContext context) {

    final Mheight=MediaQuery.of(context).size.height;
    final Mwidth=MediaQuery.of(context).size.width;
    return Scaffold(resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state is LoginLoading) {}
            if (state is LoginLoaded) {
              loginModel = BlocProvider.of<LoginBloc>(context).loginModel;
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Home(loginModel: loginModel,
                      )),
                      (route) => false);
            }
            if (state is LoginError) {}
            // TODO: implement listener
          },
  child: Container(
          height:Mheight*9,
          width: Mwidth*9,
          child: Column(
            children: [
              SizedBox(
                height:Mheight * .5 ,
              ),
              Container(
                  margin: EdgeInsets.only(top: Mheight * .005),
                  width: Mwidth * .65,
                  child: TextFormField(

                    controller: _emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Can\'t be empty';
                      }
                      if (value.length < 100) {
                        return 'Too short';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.email_outlined),
                      labelText: 'UserName',
                    ),
                  )
              ),
              Container(
                margin: EdgeInsets.only(top: Mheight * .005),
                width: Mwidth * .65,
                child:  TextFormField(
                  keyboardType: TextInputType.number,
                  // key: _formFieldKeyOne,
                  //
                  // onChanged: (name) {
                  //   _formFieldKeyOne.currentState!
                  //       .validate();
                  // },
                  obscureText: false,
                  controller: _passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Can\'t be empty';
                    }
                    if (value.length < 6) {
                      return 'Too short';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                  ),
                ),
              ),
              SizedBox(
                height: Mheight * .01,
              ),
              Container(
                margin: EdgeInsets.only(top: Mheight * .005),
                width: Mwidth * .65,
                child: ElevatedButton(onPressed: (){
    BlocProvider.of<LoginBloc>(context).add(FetchLogin(
    Username: _emailController.text,
    Password:_passwordController.text ,
    ));
    
                }, child: Text("Login")),
              ),


            ],
          ),
        ),
),
      ),
    );
  }

}