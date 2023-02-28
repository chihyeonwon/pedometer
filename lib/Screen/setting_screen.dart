import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

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
    return Material(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.yellow[600],
                border: Border.all(
                  width: 4.0,
                  color: Colors.black,
                ),
              ),
              width: 60.0,
              height: 60.0,
              child: Icon(Icons.shopping_cart_sharp, size: 50.0),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Text('현재 버전',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1.23.38',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
              Row(
                children: [
                  Text('최신 버전',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1.23.38',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55.0),
            child: Text('최신 버전 사용 중',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                )),
          ),
        ],
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

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
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
                    child: Text('내정보',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
              InkWell(
                onTap: () {}, // 프로필설정 페이지로 이동
                child: Ink(
                    height: 65.0,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                            ))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text('프로필설정',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 25.0,
                          ),
                        ),
                      ],
                    )),
              ),
              InkWell(
                onTap: () {}, // 캐시적립내역 페이지로 이동
                child: Ink(
                    height: 65.0,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                            ))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text('캐시적립내역',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 25.0,
                          ),
                        ),
                      ],
                    )),
              ),
              InkWell(
                onTap: () {}, // 캐시웨어 페이지로 이동
                child: Ink(
                    height: 65.0,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                            ))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text('캐시웨어',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 25.0,
                          ),
                        ),
                      ],
                    )),
              ),
              InkWell(
                  onTap: () {}, // 이중인증 페이지로 이동
                  child: Ink(
                    height: 65.0,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                            ))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                    Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text('이중인증',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Switch(
                        value:_isChecked,
                          onChanged: (value) {
                            setState(() {
                              _isChecked = value;
                            });
                  }
                  )
              ),
            ],
          )),
    ),]
    ,
    )
    ,
    )
    ,
    );
  }
}
