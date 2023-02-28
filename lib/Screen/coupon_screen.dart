import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CouponScreen extends StatelessWidget {
  const CouponScreen({Key? key}) : super(key: key);

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

class Top extends StatefulWidget {
  const Top({Key? key}) : super(key: key);

  @override
  State<Top> createState() => _TopState();
}

class _TopState extends State<Top> {
  int _current = 0;

  List<int> item = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CarouselSlider(
        options: CarouselOptions(
          scrollDirection: Axis.vertical,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 5),
          autoPlayAnimationDuration: Duration(milliseconds: 700),
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          },
          height: 60.0,
          viewportFraction: 1, // 페이지 당 1개의 슬라이더
        ),
        items: item.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.fastfood_rounded,
                          size: 30.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text('3시간 전',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Flexible(
                        child: RichText(
                          maxLines: 2,
                          text: TextSpan(
                              text: '한승재님이 아이스 카페 아메리카노 T에 당첨되었습니다.',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          Icons.celebration,
                          size: 30.0,
                        ),
                      ),
                    ],
                  ));
            },
          );
        }).toList(),
      ),
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
