import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'walkinghelath',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0, // 양각 제거 (그림자)
        toolbarHeight:50.0, // 앱 바 높이 설정
        backgroundColor: Colors.yellow[600], // 앱 바 색상
        title: const Text(
          '홈',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Padding(
              padding: EdgeInsets.only(left:10.0,),
              child: Icon(
                Icons.notifications,
                color: Colors.black,
                size: 30.0,
              ),
            ),
            onPressed: () {}, // 잠금 화면으로 이동
          ),
          IconButton(
            icon: const Icon(
                Icons.screen_lock_portrait,
                color: Colors.black,
              size: 30.0,
            ),
            onPressed: () {}, // 잠금 화면으로 이동
          ),
        ],
      ),
    );
  }
}
