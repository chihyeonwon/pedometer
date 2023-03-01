import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CouponScreen extends StatelessWidget {
  const CouponScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          clipBehavior: Clip.hardEdge ,
      child: Column(
        children: const [
          Top(),
          Middle(),
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

class Middle extends StatefulWidget {
  const Middle({Key? key}) : super(key: key);

  @override
  State<Middle> createState() => _MiddleState();
}

class _MiddleState extends State<Middle> {

  final List<String> productName = <String>['롯데)꼬깔콘고소한맛1500','롯데)꼬깔콘군옥수수1500','c','d'];
  final List<String> productLimit = <String>['2023-03-29까지', '2023-03-29까지', 'c', 'd'];

  final List<String> usedproductName = <String>['롯데)꼬깔콘고소한맛1500','롯데)꼬깔콘군옥수수1500','c','d'];
  final List<String> usedproductLimit = <String>['2023-01-19까지', '2023-01-29까지', 'c', 'd'];


  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 30.0,
                    color: Colors.grey[300],
                  ),
                  Positioned(
                    left: 20.0,
                    top: 4.0,
                    child: Text('미사용 쿠폰',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
              Expanded(
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {}, // 쿠폰 사용 페이지로 이동
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Icon(
                                Icons.fastfood,
                                size: 40.0,
                              ),
                            ),
                            Positioned(
                              top: 20.0,
                              left: 100.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('GS25',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15.0,
                                      )),
                                  Text('${productName[index]}',
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold)),
                                  Text('${productLimit[index]}',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 18.0,
                                      )),
                                ],
                              ),
                            ),
                            Positioned(
                              top:40.0,
                              right:10.0,
                              child: Text('사용하기',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),

                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.grey[300],
                    thickness: 3,
                  ),
                  itemCount: 2,
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 30.0,
                    color: Colors.grey[300],
                  ),
                  Positioned(
                    left: 20.0,
                    top: 4.0,
                    child: Text('사용완료 및 유효기간 만료 쿠폰',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
              Expanded(
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {}, // 쿠폰 사용 페이지로 이동
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Icon(
                                color:Colors.grey,
                                Icons.fastfood,
                                size: 40.0,
                              ),
                            ),
                            Positioned(
                              top: 20.0,
                              left: 100.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('GS25',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15.0,
                                      )),
                                  Text('${usedproductName[index]}',
                                      style: TextStyle(
                                        color:Colors.grey,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold)),
                                  Text('${usedproductLimit[index]}',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 18.0,
                                      )),
                                ],
                              ),
                            ),
                            Positioned(
                              top:40.0,
                              right:10.0,
                              child: Text('기간만료',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),

                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.grey[300],
                    thickness: 3,
                  ),
                  itemCount: 2,
                ),
              ),
            ],
          )),
    );
  }
}