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
      child: Stack(
        children: [
          Image.asset(
            'asset/img/image.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Positioned(
            right: 5.0,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.medication_rounded),
                      iconSize: 30.0,
                      color: Colors.white),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.photo_camera_back),
                      iconSize: 30.0,
                      color: Colors.white),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.camera_alt),
                      iconSize: 30.0,
                      color: Colors.white),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 140.0,
              backgroundColor: Colors.black12.withOpacity(0.2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('하루만보걷기',
                      style: TextStyle(fontSize: 18.0, color: Colors.white,)),
                  Text('94',
                      style: TextStyle(fontSize:70.0, color: Colors.white,)),
                  Text('걸음',
                      style: TextStyle(fontSize: 18.0, color: Colors.white,)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
