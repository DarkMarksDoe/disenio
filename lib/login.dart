import 'package:flutter/material.dart';

import 'login_modal.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  LoginModal modal = new LoginModal();
  double width;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage('https://i.imgur.com/izZetrV.jpg'),
          ),
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[_info(width), _botones(width)],
          ),
        ),
      ),
    );
  }

  Widget _info(double width) {
    return Container(
      margin: EdgeInsets.only(top: 80),
      width: width - (width * .1),
      padding: EdgeInsets.only(left: 50.0, right: 70),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              child: Image.network(
                  'https://media.istockphoto.com/vectors/modern-vector-glitch-letter-illustration-x-vector-id1164133832',
                  height: 80,
                  width: 80)),
          SizedBox(height: 30.0),
          Container(
            child: Text(
              'Enjoy the trip with me',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 40),
            ),
          ),
        ],
      ),
    );
  }

  Widget _signUp() {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.ac_unit),
        )
      ],
    );
  }

  Widget _signIn() {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.ac_unit),
        )
      ],
    );
  }

  Widget _botones(double width) {
    return Container(
      padding: EdgeInsets.only(left: 50.0, right: 50),
      margin: EdgeInsets.only(bottom: 60),
      width: width,
      child: Column(
        children: <Widget>[
          ButtonTheme(
            height: 75,
            minWidth: 350,
            child: RaisedButton(
              onPressed: () => modal.mainBottomSheet(context),
              color: Color(0xffFF7F56),
              splashColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(90.0),
              ),
              child: Text(
                'Sign up',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 30.0),
          ButtonTheme(
            height: 75,
            minWidth: 350,
            child: RaisedButton(
              onPressed: () => modal.mainBottomSheet(context),
              color: Colors.white,
              splashColor: Color(0xffFF7F56),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(90.0),
              ),
              child: Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xffFF7F56),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
