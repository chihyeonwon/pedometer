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

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  TabBar get _tabBar => TabBar(
        indicatorColor: Colors.black,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey[400],
        labelPadding: EdgeInsets.only(top:10.0, bottom:10.0),
        controller: tabController,
        tabs: [
          const Tab(
            icon: Icon(Icons.home, size: 30.0),
          ),
          const Tab(
            icon: Icon(Icons.shopping_bag, size: 30.0),
          ),
          const Tab(
            icon: Icon(Icons.credit_card_outlined, size:30.0),
          ),
          const Tab(
            icon: Icon(
              Icons.settings, size:30.0,
            ),
          ),
        ],
      );

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        bottom: PreferredSize(
          preferredSize: _tabBar.preferredSize,
          child: Material(
            color: Colors.white,
            child: _tabBar,
          ),
        ),
        elevation: 0.0,
        // 양각 제거 (그림자)
        toolbarHeight: 70.0,
        // 앱 바 높이 설정
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
              padding: EdgeInsets.only(
                left: 10.0,
              ),
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
