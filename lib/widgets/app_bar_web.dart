import 'package:flutter/material.dart';

class WebAppBar extends StatefulWidget {
  const WebAppBar({super.key});

  @override
  State<WebAppBar> createState() => _WebAppBarState();
}

class _WebAppBarState extends State<WebAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey,
      title: Row(
        children: [
          Image.asset(
            'images/logo.png',
            fit: BoxFit.contain,
          ),
          Expanded(
            child: Container(),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_sharp),
          ),
          SizedBox(width: 10,),
          OutlinedButton(
            onPressed: () {},
            child: Text(
              'Cadastrar',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.2,
              ),
            ),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
            ),
          ),
          SizedBox(width: 10,),
          OutlinedButton(
            onPressed: () {},
            child: Text(
              'Entrar',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.2,
              ),
            ),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.orangeAccent,
            ),
          ),
        ],
      ),
    );
  }
}
