import 'package:flutter/material.dart';

// StatelessWidget은 변화지 않는 화면을 작업할 때 사용.
// 변화는 화면을 작업 하고싶을 경우에는 StatefulWidget을 사용.
class Home extends StatelessWidget {

  // MaterialApp = 앱으로서 기능을 할 수 있도록 도와주는 뼈대
  @override
  Widget build(BuildContext context) {

    // return MaterialApp() -> Material 디자인 테마를 사용
    return MaterialApp(
      title: "MyApp", // 앱 이름
      debugShowCheckedModeBanner: false, // 타이틀 바 우측 띠 제거

      // 앱의 기본적인 테마를 지정
      theme: ThemeData(
        primaryColor: Colors.grey // priamrySwatch 기본적인 앱의 색상을 지정
      ),

      home: MyWidget(), // 앱이 실행될 때 표시할 화면의 함수를 호출
    );
  }
}

// 앱이 실행 될때 표시할 화면의 함수
class MyWidget extends StatelessWidget {

  // scaffold = 구성된 앱에서 디자인적인 부분을 도와주는 뼈대

  // 화면 구성
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appBar에 AppBar 위젯을 가져온다.
        appBar: AppBar(
          title: Text(
              "Now", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87)),

          backgroundColor: Colors.white,
          // 타이틀 이름 지정
          centerTitle: false,
          // 타이틀 이름을 가운데 정렬
          elevation: 0.0,
          //elevation 속성을 통해 그림자 효과 제어

          // appBar 높이
          toolbarHeight: 70,

          // 좌측 아이콘 버튼
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search), color: Colors.black87,)
          ],
        ),

        // 앱의 body 부분
        body: Builder(
            builder: (context) =>
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // 텍스트 왼쪽 정렬
                    children: [
                      InkWell( // 클릭 이벤트
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 50),
                          child: Image.network(
                            'https://images.freeimages.com/images/large-previews/76e/abstract-1-1174741.jpg',
                            height: 280,
                          ),
                        ),
                        onTap: () {},
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 40, left: 20, bottom: 20),
                          child: Text('내 취향 전시',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87
                              )
                          )
                      ),
                      Container(
                        // 수평적으로 대칭(symmetric)의 마진을 추가 -> 화면 위, 아래에 20픽세의 마진 삽입
                        //margin: EdgeInsets.symmetric(vertical: 20.0),
                        // 컨테이너의 높이를 200으로 설정
                        height: 200.0,
                        // 리스트뷰 추가
                        child: ListView(
                          // 스크롤 방향 설정. 수평적으로 스크롤되도록 설정
                          scrollDirection: Axis.horizontal,
                          // 컨테이너들을 ListView의 자식들로 추가
                          children: <Widget>[
                            InkWell( // 클릭 이벤트
                              child: Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Image.network(
                                  'https://images.freeimages.com/images/large-previews/76e/abstract-1-1174741.jpg',
                                  height: 260,
                                ),
                              ),
                              onTap: () {},
                            ),
                            InkWell( // 클릭 이벤트
                              child: Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Image.network(
                                  'https://images.freeimages.com/images/large-previews/76e/abstract-1-1174741.jpg',
                                  height: 260,
                                ),
                              ),
                              onTap: () {},
                            ),
                            InkWell( // 클릭 이벤트
                              child: Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Image.network(
                                  'https://images.freeimages.com/images/large-previews/76e/abstract-1-1174741.jpg',
                                  height: 260,
                                ),
                              ),
                              onTap: () {},
                            ),
                            InkWell( // 클릭 이벤트
                              child: Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Image.network(
                                  'https://images.freeimages.com/images/large-previews/76e/abstract-1-1174741.jpg',
                                  height: 260,
                                ),
                              ),
                              onTap: () {},
                            ),
                            InkWell( // 클릭 이벤트
                              child: Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Image.network(
                                  'https://images.freeimages.com/images/large-previews/76e/abstract-1-1174741.jpg',
                                  height: 260,
                                ),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 40, left: 20, bottom: 20),
                          child: Text('지금 인기있는 전시',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87
                              )
                          )
                      ),
                      Container(
                        // 수평적으로 대칭(symmetric)의 마진을 추가 -> 화면 위, 아래에 20픽세의 마진 삽입
                        //margin: EdgeInsets.symmetric(vertical: 20.0),
                        // 컨테이너의 높이를 200으로 설정
                        height: 200.0,
                        // 리스트뷰 추가
                        child: ListView(
                          // 스크롤 방향 설정. 수평적으로 스크롤되도록 설정
                          scrollDirection: Axis.horizontal,
                          // 컨테이너들을 ListView의 자식들로 추가
                          children: <Widget>[
                            InkWell( // 클릭 이벤트
                              child: Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Image.network(
                                  'https://images.freeimages.com/images/large-previews/76e/abstract-1-1174741.jpg',
                                  height: 260,
                                ),
                              ),
                              onTap: () {},
                            ),
                            InkWell( // 클릭 이벤트
                              child: Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Image.network(
                                  'https://images.freeimages.com/images/large-previews/76e/abstract-1-1174741.jpg',
                                  height: 260,
                                ),
                              ),
                              onTap: () {},
                            ),
                            InkWell( // 클릭 이벤트
                              child: Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Image.network(
                                  'https://images.freeimages.com/images/large-previews/76e/abstract-1-1174741.jpg',
                                  height: 260,
                                ),
                              ),
                              onTap: () {},
                            ),
                            InkWell( // 클릭 이벤트
                              child: Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Image.network(
                                  'https://images.freeimages.com/images/large-previews/76e/abstract-1-1174741.jpg',
                                  height: 260,
                                ),
                              ),
                              onTap: () {},
                            ),
                            InkWell( // 클릭 이벤트
                              child: Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Image.network(
                                  'https://images.freeimages.com/images/large-previews/76e/abstract-1-1174741.jpg',
                                  height: 260,
                                ),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
        )
    );
  }
}

// 버튼을 눌렀을 때 숫자를 카운트 하기위해서는 화면을 변하게끔 작업해야한다.
// 즉, StatefulWidget 선언해야 한다.
class cntState extends StatefulWidget {
  @override
  _cntState createState() => _cntState(); // StatefulWidget은 상태를 생성하는 createState() 메서드로 구현한다.
}

int _cnt = 0;

class _cntState extends State<cntState> {
  @override
  Widget build(BuildContext context) {
    return Center(
      // Elevated Button 위젯
      child: ElevatedButton(
        // 버튼에 Text를 입힌다.
        child: Text('현재 숫자 : $_cnt'),

        // 클릭 이벤트
        onPressed: () {

          // setState() 메서드를 수행시 다시 build() 메서드가 실행되며 동적 화면이 구현된다.
          setState(() {
            _cnt++;
            print("$_cnt");
          });
        },
      ),
    );
  }
}