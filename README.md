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

## MainScreen Middle 이미지 위젯 구현
```
Middle에는 사진과 걸음 수, 갤러리, 사진 촬영 기능 아이콘과 측정 시간, 거리, 칼로리 소모량 텍스트가 있습니다.
이중 UI는 구현하되 기능은 추후에 추가하였습니다.

위젯을 봤을 때 Stack을 사용해서 위젯들을 이미지 위젯 위로 쌓아야 할 필요성이 있었습니다.
따라서 Stack을 사용해서 스택 : (선입후출 FILO) 제일 아래에 이미지 위젯을 넣어주었습니다.
```
![image](https://user-images.githubusercontent.com/58906858/221351224-8e2be125-6151-492e-b31c-5cf001b20fec.png)   
![image](https://user-images.githubusercontent.com/58906858/221351158-602be2a8-b3ff-4587-a266-e1fb13ea4b67.png)

## MainScreen Middle 아이콘 위젯 구현
```
상단 오른쪽에 3개의 아이콘 버튼 위젯이 위치하도록 하였습니다. 사진 촬영, 갤러리 등 기능은 추후에 구현하기로 하고
UI를 구현하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/221351556-ee7b3786-7c14-4db1-9163-6a8b6f5ab9c1.png)   
![image](https://user-images.githubusercontent.com/58906858/221351542-2a990ba8-a79a-45d0-9eaf-4b25322577f7.png)

## MainScreen Middle의 가운데 위젯 구현
```
가운데에는 Opacity가 적용된 둥근 Container안에 만보기 횟수 카운트 텍스트를 배치하였습니다.
Position와 Align 위젯으로 위젯들의 위치를 적절하게 위치시키는 데 노력을 기울였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/221352141-803a5338-f412-4720-ae31-a56489e546d7.png)   
![image](https://user-images.githubusercontent.com/58906858/221352149-f0011aba-a1b2-47d1-8dc9-012440ca8e91.png)

## MainScreen Middle의 아래 위젯 구현
```
맨 아래에는 가운데 구현한 Opacity Container와 텍스트를 복사해서 3개를 가로로 배치하고 
padding값을 주어 간격을 두고 배치하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/221352410-595ba5d0-e43d-4e3b-9599-cca31aadc2d5.png)

## MainScreen Bottom 위젯 구현
```
Bottom은 리스트 형태로 탭을 하면 다른 페이지로 이동하는 형태로 InkWell을 사용하여 Tap했을 때 애니메이션을 주고
라우팅 기능은 나중에 구현, Container안에 텍스트와 아이콘을 적절하게 배치하여 완성하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/221356206-42918ebf-5e7a-457b-af8c-ff2bdd8ff182.png)   
![image](https://user-images.githubusercontent.com/58906858/221356171-9ee58815-c8bf-47b6-9f62-21bb8586175d.png)

## ShoppingScreen 화면 분리
```
쇼핑 스크린 화면 역시 프로필Top, 중간에 Slider와 베스트상, 하단에 리스트형태의 컨테이너를 각각 클래스로 분리하여
구현하겠습니다.
```

### 클론 코딩할 쇼핑 스크린
![image](https://user-images.githubusercontent.com/58906858/221391147-45791059-797e-48de-b4b1-0b31b7bc840c.png)
![image](https://user-images.githubusercontent.com/58906858/221487352-2a6298fb-1454-402b-9b3c-c800a4c514f9.png)


## ShoppingScreen Top 위젯 구현
```
Top은 프로필 사진, 화면, 캐시등을 보여주는 UI로 MainScreen의 Top 클래스를 복사하여 붙여넣었습니다.(코드의 재활용)
```
![image](https://user-images.githubusercontent.com/58906858/221391351-00361314-62dc-4379-bc53-73224a06bbb6.png)

## ShoppingScreen Middle Carousel Slider위젯 구현
```
Middle은 이미지가 3개 들어가 있는 Carousel Slider와 베스트 상품을 나열하는 Container로 이루어져있습니다.
그 중에 Carousel Slider를 자동으로 넘어가도록 구현하고 페이지의 index를 보여주는 indicator를 추가하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/221393428-2abda5b7-77be-4a0b-890e-6e7ce2637207.png)

## ShoppingScreen Middle 베스트 상품 위젯 구현
```
베스트 상품 위젯은 Container안에 여러 위젯들이 Stack으로 이루어져있고
InkWell로 탭을 했을 때 상품 구매 페이지, 더보기 페이지로 이동하도록 이벤트를 넣어주었습니다.
```
![image](https://user-images.githubusercontent.com/58906858/221482941-43cc9328-fa3b-4ca5-9b23-c7b893f933ae.png)

## ShoppingScreen Bottom 위젯 구현
```
Bottom 위젯에는 Container가 리스트식으로 배열되어 있습니다.
MainScreen의 InkWell을 재활용하여 height만 변경하고 사용하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/221487029-df783738-566f-43db-a4a4-9440c61e2629.png)

## CouponScreen Top 위젯 구현
```
CouponScreen의 Top 부분은 ShoppingScreen Coursel Slider의 scrollDirection을 Axis.vertical 수직으로 이동하도록 수정한 후에
재활용하고 안에 당첨된 상품과 당첨된 사람의 이름을 받아와서 출력합니다.
```
![image](https://user-images.githubusercontent.com/58906858/221755714-40cb90a9-8ea3-491b-ac30-e1c9a6324fd6.png)   
![image](https://user-images.githubusercontent.com/58906858/221755641-7e2c1910-d174-48c1-84fe-8f41b4d5bf8c.png)

