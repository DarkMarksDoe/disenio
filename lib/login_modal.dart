import 'package:flutter/material.dart';

class LoginModal {
  mainBottomSheet(BuildContext context) {
    showModalBottomSheet(
      enableDrag: true,
      elevation: 0,
      clipBehavior: Clip.hardEdge,
      isScrollControlled: false,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.only(right: 30, left: 30),
          height: MediaQuery.of(context).size.height * .6,
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(40.0),
              topRight: const Radius.circular(40.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _info(),
              Divider(),
              _form(),
              Divider(),
              _signUp(),
              //_createTile(context, 'Message', Icons.message, _action1),
              //_createTile(context, 'Take Photo', Icons.camera_alt, _action2),
              //_createTile(context, 'My Images', Icons.photo_library, _action3),
            ],
          ),
        );
      },
    );
  }

  _input(String s, String t, IconData icono, bool lock) {
    return TextField(
      decoration: InputDecoration(
        labelText: s,
        hintText: s,
        icon: Icon(icono),
        focusColor: Color(0xffFF7F56),
      ),
      obscureText: lock,
    );
  }

  Widget _info() {
    return Container();
  }

  Widget _signUp() {
    return Container();
  }

  Column _form() {
    return Column(
      children: <Widget>[
        _input('Email', 'example@example.com', Icons.email, false),
        Divider(),
        _input('Username', 'Your username', Icons.person, false),
        Divider(),
        _input('Password', '******', Icons.vpn_key, true)
      ],
    );
  }
}
