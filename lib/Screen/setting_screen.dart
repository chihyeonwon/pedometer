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
  bool _isCert = false; // 이중인증
  bool _isLock = false; // 잠금화면 사용하기
  bool _isSound = false; // 효과음
  bool _isVib = false; // 진동
  bool _isNews = false; // 뉴스 컨텐츠 보기

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
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
              onTap: () {
                setState(() {
                  _isCert = !_isCert;
                });
              },
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
                          activeColor: Colors.black,
                          activeTrackColor: Colors.grey[400],
                          inactiveThumbColor: Colors.grey[300],
                          value: _isCert,
                          onChanged: (value) {
                            setState(() {
                              _isCert = value;
                            });
                          },
                        ),
                      ),
                    ],
                  )),
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
                  child: Text('잠금화면관리',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ],
            ),
            InkWell(
              onTap: () {}, // 배경사진 바꾸기 페이지로 이동
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
                        child: Text('배경사진 바꾸기',
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
              onTap: () {
                setState(() {
                  _isLock = !_isLock;
                });
              },
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
                        child: Text('잠금화면 사용하기',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Switch(
                          activeColor: Colors.black,
                          activeTrackColor: Colors.grey[400],
                          inactiveThumbColor: Colors.grey[300],
                          value: _isLock,
                          onChanged: (value) {
                            setState(() {
                              _isLock = value;
                            });
                          },
                        ),
                      ),
                    ],
                  )),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _isSound = !_isSound;
                });
              },
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
                        child: Text('효과음',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Switch(
                          activeColor: Colors.black,
                          activeTrackColor: Colors.grey[400],
                          inactiveThumbColor: Colors.grey[300],
                          value: _isSound,
                          onChanged: (value) {
                            setState(() {
                              _isSound = value;
                            });
                          },
                        ),
                      ),
                    ],
                  )),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _isVib = !_isVib;
                });
              },
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
                        child: Text('진동',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Switch(
                          activeColor: Colors.black,
                          activeTrackColor: Colors.grey[400],
                          inactiveThumbColor: Colors.grey[300],
                          value: _isVib,
                          onChanged: (value) {
                            setState(() {
                              _isVib = value;
                            });
                          },
                        ),
                      ),
                    ],
                  )),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _isNews = !_isNews;
                });
              },
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
                        child: Text('뉴스 컨텐츠 보기',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Switch(
                          activeColor: Colors.black,
                          activeTrackColor: Colors.grey[400],
                          inactiveThumbColor: Colors.grey[300],
                          value: _isNews,
                          onChanged: (value) {
                            setState(() {
                              _isNews = value;
                            });
                          },
                        ),
                      ),
                    ],
                  )),
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
                  child: Text('알림',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ],
            ),
            InkWell(
              onTap: () {}, // 푸시 알림설정 페이지로 이동
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
                        child: Text('푸시 알림설정',
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
            Stack(
              children: [
                Container(
                  height: 30.0,
                  color: Colors.grey[300],
                ),
                Positioned(
                  left: 20.0,
                  top: 4.0,
                  child: Text('앱정보',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ],
            ),
            InkWell(
              onTap: () {}, // 자주하는 질문 페이지로 이동
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
                        child: Text('자주하는질문',
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
              onTap: () {}, // 불편사항 신고하기 페이지로 이동
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
                        child: Text('불편사항 신고하기',
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
              onTap: () {}, // 이용약관동의 페이지로 이동
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
                        child: Text('이용약관동의',
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
              onTap: () {}, // 개인정보처리방침 페이지로 이동
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
                        child: Text('개인정보처리방침',
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
              onTap: () {}, // 위치기반 서비스 이용약관 페이지로 이동
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
                        child: Text('위치기반 서비스 이용약관',
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
          ],
        ),
      ),
    );
  }
}
