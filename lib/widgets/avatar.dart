import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../screens/screens.dart';
import 'link.dart';

class Avatar extends StatelessWidget {
  final String login;
  final String url;
  final double size;

  Avatar({
    @required this.login,
    @required this.url,
    this.size = 18,
  });

  @override
  Widget build(BuildContext context) {
    return Link(
      onTap: () {
        Navigator.of(context)
            .push(CupertinoPageRoute(builder: (_) => UserScreen(login)));
      },
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: NetworkImage(url),
        radius: size,
      ),
    );
  }
}