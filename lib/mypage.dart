import 'package:flutter/material.dart';

// StatelessWidget은 변화지 않는 화면을 작업할 때 사용.
// 변화는 화면을 작업 하고싶을 경우에는 StatefulWidget을 사용.
class Mypage extends StatelessWidget {

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
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.alarm),
              color: Colors.black87,),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
              color: Colors.black87,),
          ],
        ),

        // 앱의 body 부분
        body: Builder(
            builder: (context) =>
                SingleChildScrollView(
                  child: Column(
                    children: [
                      InkWell( // 클릭 이벤트
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 50, left: 130, right: 130),
                          child: Image.network(
                            'https://images.freeimages.com/images/large-previews/76e/abstract-1-1174741.jpg',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        onTap: () {},
                      ),
                      Padding(
                          padding: EdgeInsets.all(20),
                          child: Text('닉네임',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87
                              )
                          )
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 30),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide( // POINT
                              color: Colors.black12,
                              width: 10.0,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 125,
                              child: Column(
                                children: [
                                  IconButton(onPressed: () {},
                                    icon: const Icon(Icons.check_circle),
                                    color: Colors.black54,),
                                  Text('다녀온 전시')
                                ],
                              ),
                            ),
                            Container(
                              width: 125,
                              child: Column(
                                  children: [

                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.bookmark),
                                      color: Colors.black54,),
                                    Text('좋아요 한 전시')
                                  ]
                              ),
                            ),
                            Container(
                              width: 125,
                              child: Column(
                                  children: [

                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.library_books),
                                      color: Colors.black54,),
                                    Text('좋아요 한 글')
                                  ]
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: 40, bottom: 20),
                          child: Text('나의 취향 분석',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87
                              )
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              bottom: 20),
                          child: Text('키워드1',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black87
                              )
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              bottom: 20),
                          child: Text('키워드2',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black87
                              )
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              bottom: 20),
                          child: Text('키워드3',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black87
                              )
                          )
                      ),

                    ],
                  ),
                )
        )
    );
  }
}