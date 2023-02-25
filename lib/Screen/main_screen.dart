import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: const [
          Top(),
          Middle(),
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
    return Placeholder(
      child: Image.asset(
        'asset/img/image.png',
        height:500.0,
        fit: BoxFit.fill,
      ),
    );
  }
}
