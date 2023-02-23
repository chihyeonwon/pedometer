WalkingHealth
```
개발 툴 : Flutter
개발 언어 : Dart
개발 일시 : 2023-02-23 ~
개발자 : Won Chi Hyeon
```

## 앱 개요
```
기능 : Sensor_plus 패키지를 활용한 만보기(스텝 트래커) 기능

자주 사용되는 UI를 학습하기 위한 프로젝트
```

## 클론코딩할 앱 '캐시워크'
```
1월부터 지금까지 학습한 플러터 지식으로 앱을 따라만들면서 내가 부족한 점이 무엇인지를 아는 데 
중점을 두고 프로젝트를 진행하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/220822339-35d5c360-e6a9-4030-91b9-628c55fd80c5.png)

## 앱 바 클론코딩
```
앱 바의 색상과 텍스트, 아이콘을 넣는 작업을 하였습니다.
아이콘을 넣을 때 왼쪽으로 넣으려면 leading, 오른쪽으로 넣으려면 action 프로퍼티에 넣어야 한다는 것을 배웠습니다.
또한 앱 바의 다양한 속성값 elevation(양각), toolbarHeight 등을 사용해서 최대한 클론코딩하고자 하는 앱과 비슷하게 설정하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/220824417-5de1a641-c1a8-44a9-b271-7c5553a4713e.png)

## 탭 바 클론코딩
```
AppBar 안에 TabBar를 사용해서 앱 바 바로 밑에 탭 바를 생성하였습니다.
앱 바와 탭 바의 색상을 구분하기 위해 PreferredSize와 Material을 이용하였습니다.
랜덤 주사위 앱 프로젝트에서 진행한 BottomNavigationBar의 구현법과 크게 다르지 않아 컨트롤러를 등록하고 삭제하는 부분을
복습할 수 있었고 탭 바 역시 Color 프로퍼티의 조작을 통해서 다양한 기능을 구현하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/220828492-1825be07-33ba-4f7d-b761-6211a1a35fb5.png)      
![image](https://user-images.githubusercontent.com/58906858/220828517-5459b44d-eacd-48d6-a6eb-5dd849a3c093.png)   
![image](https://user-images.githubusercontent.com/58906858/220829946-e3505e6b-dd5a-427b-bb4e-8f92ae9483ff.png)

## TabBarView로 화면 분리하기
```
탭이 4개니까 controller의 length 프로퍼티의 값을 4로 수정한 후에 body에 TabBarView로
Widget 4개를 생성하였습니다. 각 탭은 메인, 쇼핑, 쿠폰, 설정 화면으로 이루어져 있으며
탭바 앱의 텍스트가 화면마다 달라지도록 수정하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/220835086-0b209e47-db1c-48db-8b50-2245630d5752.png)   
![image](https://user-images.githubusercontent.com/58906858/220835103-d496ca63-3b31-473a-907d-bdba54c9a117.png)
![image](https://user-images.githubusercontent.com/58906858/220835267-04735b4c-1025-48c8-9bc5-cc262c653e19.png)   
![image](https://user-images.githubusercontent.com/58906858/220835138-ea99ab3c-322d-4082-94a8-78421d39d661.png)
![image](https://user-images.githubusercontent.com/58906858/220835149-11d53786-9380-4b60-ba86-18e8caa83ba4.png)

## MainScreen Top 위젯 구현
```
MainScreen을 Top, Middle, Bottom 위젯으로 크게 나누고 Top에 둥근 이미지, 텍스트, 아이콘들을 넣어주었습니다.
둥근이미지는 CircleAvatar로 구현하였습니다. ListTile로 구현할 수도 있었지만 Container 안에 위젯들을 넣어서 UI만 구현했습니다.
```
![image](https://user-images.githubusercontent.com/58906858/220976619-2ea94782-5bb7-4837-b8eb-f887b25a5585.png)
