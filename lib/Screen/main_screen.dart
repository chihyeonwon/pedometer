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
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      )),
                  Text('94',
                      style: TextStyle(
                        fontSize: 70.0,
                        color: Colors.white,
                      )),
                  Text('걸음',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.black12.withOpacity(0.2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('3',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              )),
                          Text('kcal',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.black12.withOpacity(0.2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('1',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                            )),
                        Text('분',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.black12.withOpacity(0.2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('69',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              )),
                          Text('m',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Bottom extends StatelessWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[300],
      child: Column(
        children: [
          // 첫 번째 줄
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top:10.0,
                  bottom: 10.0,
                  right: 10.0,
                  left: 10.0,
                ),
                child: InkWell(
                  onTap: () {}, // 페이지 이동
                  child: Ink(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top:13.0,
                            left: 13.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('돈버는퀴즈',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                              Text('퀴즈도 풀고',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                              Text('1만캐시 받자',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Icon(Icons.shopping_basket,
                              size: 60.0, color: Colors.yellow[800]),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width / 2 - 15,
                    height: 100,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top:10.0,
                  bottom: 10.0,
                  right: 10.0,
                ),
                child: InkWell(
                  onTap: () {}, // 페이지 이동
                  child: Ink(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top:13.0,
                            left: 13.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('캐시딜',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                              Text('함께 구매하면',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                              Text('최저가 득템',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Icon(Icons.shopping_basket,
                              size: 60.0, color: Colors.yellow[800]),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width / 2 - 15,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
          // 2번째 줄
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top:2.5,
                  bottom: 10.0,
                  right: 10.0,
                  left: 10.0,
                ),
                child: InkWell(
                  onTap: () {}, // 페이지 이동
                  child: Ink(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top:13.0,
                            left: 13.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('러닝크루',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                              Text('건강을 위해',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                              Text('함께 달려볼까요?',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Icon(Icons.run_circle_outlined,
                              size: 60.0, color: Colors.yellow[800]),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width / 2 - 15,
                    height: 100,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top:2.5,
                  bottom: 10.0,
                  right: 10.0,
                ),
                child: InkWell(
                  onTap: () {}, // 페이지 이동
                  child: Ink(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top:13.0,
                            left: 13.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('팀워크',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                              Text('걷기 챌린지로',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                              Text('쉽게 돈벌기',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Icon(Icons.abc,
                              size: 60.0, color: Colors.yellow[800]),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width / 2 - 15,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
          // 3번째 줄
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top:2.5,
                  bottom: 10.0,
                  right: 10.0,
                  left: 10.0,
                ),
                child: InkWell(
                  onTap: () {}, // 페이지 이동
                  child: Ink(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top:13.0,
                            left: 13.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('마인드키',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                              Text('나를 위한',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                              Text('마음관리',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Icon(Icons.heart_broken_sharp,
                              size: 60.0, color: Colors.yellow[800]),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width / 2 - 15,
                    height: 100,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top:2.5,
                  bottom: 10.0,
                  right: 10.0,
                ),
                child: InkWell(
                  onTap: () {}, // 페이지 이동
                  child: Ink(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top:13.0,
                            left: 13.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('지니어트',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                              Text('다이어트 하며',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                              Text('돈 버는 앱',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Icon(Icons.cloud_circle_rounded,
                              size: 60.0, color: Colors.blue[800]),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width / 2 - 15,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
          // 4번째 줄
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top:2.5,
                  bottom: 10.0,
                  right: 10.0,
                  left: 10.0,
                ),
                child: InkWell(
                  onTap: () {}, // 페이지 이동
                  child: Ink(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top:13.0,
                            left: 13.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('행운캐시룰렛',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                              Text('최대 1만캐시!',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                              Text('행운이 팡팡',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Icon(Icons.rule_folder,
                              size: 60.0, color: Colors.yellow[800]),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width / 2 - 15,
                    height: 100,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top:2.5,
                  bottom: 10.0,
                  right: 10.0,
                ),
                child: InkWell(
                  onTap: () {}, // 페이지 이동
                  child: Ink(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top:13.0,
                            left: 13.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('캐시닥',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                              Text('첫만캐시 찬스',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                              Text('쉽게 돈벌기',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Icon(Icons.local_hospital,
                              size: 60.0, color: Colors.yellow[800]),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width / 2 - 15,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
          // 5번째 줄
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top:2.5,
                  bottom: 10.0,
                  right: 10.0,
                  left: 10.0,
                ),
                child: InkWell(
                  onTap: () {}, // 페이지 이동
                  child: Ink(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top:13.0,
                            left: 13.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('뽑기',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                              Text('오늘의 내 운은?',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                              Text('피자치킨 득템!',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Icon(Icons.card_giftcard,
                              size: 60.0, color: Colors.yellow[800]),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width / 2 - 15,
                    height: 100,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top:2.5,
                  bottom: 10.0,
                  right: 10.0,
                ),
                child: InkWell(
                  onTap: () {}, // 페이지 이동
                  child: Ink(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top:13.0,
                            left: 13.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('친구랭킹',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                              Text('친구에게 응원',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                              Text('메시지를 보내자!',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Icon(Icons.device_hub,
                              size: 60.0, color: Colors.yellow[800]),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width / 2 - 15,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
          //6번째 줄
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top:2.5,
                  bottom: 10.0,
                  right: 10.0,
                  left: 10.0,
                ),
                child: InkWell(
                  onTap: () {}, // 페이지 이동
                  child: Ink(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top:13.0,
                            left: 13.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('5분 게임',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                              Text('심심할 틈이 없는',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                              Text('캐시 이벤트 게임',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Icon(Icons.videogame_asset_outlined,
                              size: 60.0, color: Colors.yellow[800]),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width / 2 - 15,
                    height: 100,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top:2.5,
                  bottom: 10.0,
                  right: 10.0,
                ),
                child: InkWell(
                  onTap: () {}, // 페이지 이동
                  child: Ink(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top:13.0,
                            left: 13.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('캐시웨어',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                              Text('매일매일',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                              Text('추가캐시 적립!',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Icon(Icons.watch,
                              size: 60.0, color: Colors.yellow[800]),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width / 2 - 15,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
          //7번째 줄
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top:2.5,
                  bottom: 10.0,
                  right: 10.0,
                  left: 10.0,
                ),
                child: InkWell(
                  onTap: () {}, // 페이지 이동
                  child: Ink(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top:13.0,
                            left: 13.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('통계',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                              Text('일, 주, 월별',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                              Text('걸음 통계',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Icon(Icons.auto_graph,
                              size: 60.0, color: Colors.yellow[800]),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width / 2 - 15,
                    height: 100,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top:2.5,
                  bottom: 10.0,
                  right: 10.0,
                ),
                child: InkWell(
                  onTap: () {}, // 페이지 이동
                  child: Ink(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top:13.0,
                            left: 13.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('이야기',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                              Text('다양한 사람들과',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                              Text('즐거운 소통!',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Icon(Icons.message,
                              size: 60.0, color: Colors.yellow[800]),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width / 2 - 15,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top:2.5,
                  bottom: 10.0,
                  right: 10.0,
                  left: 10.0,
                ),
                child: InkWell(
                  onTap: () {}, // 페이지 이동
                  child: Ink(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top:13.0,
                            left: 13.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('소속',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                              Text('우리의 모임이',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                              Text('시작되는 곳!',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Icon(Icons.hub_sharp,
                              size: 60.0, color: Colors.yellow[800]),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width / 2 - 15,
                    height: 100,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top:2.5,
                  bottom: 10.0,
                  right: 10.0,
                ),
                child: InkWell(
                  onTap: () {}, // 페이지 이동
                  child: Ink(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width / 2 - 15,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
