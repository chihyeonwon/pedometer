import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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

class Middle extends StatefulWidget {
  const Middle({Key? key}) : super(key: key);

  @override
  State<Middle> createState() => _MiddleState();
}

class _MiddleState extends State<Middle> {
  int _current = 0;

  List item = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
                height: 200.0,
                viewportFraction: 1, // 페이지 당 1개의 슬라이더
              ),
              items: item.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      decoration: BoxDecoration(color: Colors.amber),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {}, // 화면 이동
                            child: Image.asset(
                              'asset/img/image${i}.png',
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                          Positioned(
                            bottom:10.0,
                            left: 16.0,
                            child: Row(
                              children: [
                                for (int i = 0; i < item.length; i++)
                                  Container(
                                    height: 13,
                                    width: 13,
                                    margin: EdgeInsets.all(7),
                                    decoration: BoxDecoration(
                                      color: _current == i
                                          ? Colors.black
                                          : Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ],
    ));
  }
}

class Bottom extends StatelessWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
