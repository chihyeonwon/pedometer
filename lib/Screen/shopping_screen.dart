import 'package:flutter/material.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: const [
          Top(),
          Middle(),
          Bottom(),
        ],
      ),
    ));
  }
}

class Top extends StatelessWidget {
  const Top({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.all(11.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('asset/img/image.png'),
            radius: 30,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('원치현',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600)),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 150.0,
          ),
          child: Row(
            children: const [
              Icon(
                Icons.attach_money,
                size: 30.0,
              ),
              Text('4,230캐시',
                  style: TextStyle(
                    fontSize: 16.0,
                  ))
            ],
          ),
        ),
      ],
    );
  }
}

class Middle extends StatelessWidget {
  const Middle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Bottom extends StatelessWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

