// ignore_for_file: use_key_in_widget_constructors, no_logic_in_create_state, curly_braces_in_flow_control_structures, dead_code, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:publi_life/services/auth_service.dart';
import 'package:publi_life/view/home_page.dart';
import 'package:publi_life/view/login_page.dart';

class AuthCheck extends StatefulWidget {
  
  @override
  _AuthCheckState createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> {
  @override
  Widget build(BuildContext context) {
    AuthService auth = Provider.of<AuthService>(context);

    if(auth.isLoading){ 
      return loading();
    }else if(auth.usuario == null){ 
      return LoginPage();
    }else{ 
      return HomePage();
    }
  
  }

  loading(){
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}