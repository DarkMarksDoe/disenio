import 'package:flutter/material.dart';

class Modal {
  mainBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _info(),
              Divider(),
              _form(),
              Divider(),
              _signUp(),
              _createTile(context, 'Message', Icons.message, _action1),
              _createTile(context, 'Take Photo', Icons.camera_alt, _action2),
              _createTile(context, 'My Images', Icons.photo_library, _action3),
            ],
          );
        });
  }

  ListTile _createTile(
      BuildContext context, String name, IconData icon, Function action) {
    return ListTile(
      leading: Icon(icon),
      title: Text(name),
      onTap: () {
        Navigator.pop(context);
        action();
      },
    );
  }

  _action1() {
    print('action 1');
  }

  _action2() {
    print('action 2');
  }

  _action3() {
    print('action 3');
  }

  Row _info() {
    return Row(
      children: <Widget>[
        _input('Email', 'example@example.com', Icons.email, false),
        _input('Username', 'Your username', Icons.person, false),
        _input('Password', '******', Icons.vpn_key, false)
      ],
    );
  }

  Column _form() {}

  Widget _signUp() {}

  _input(String s, String t, IconData icono, bool lock) {
    return TextField(
      decoration: InputDecoration(
        labelText: s,
        hintText: t,
        icon: Icon(icono),
      ),
      obscureText: lock,
    );
  }
}
