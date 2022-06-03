import 'package:flutter/material.dart';

// StatelessWidget은 변화지 않는 화면을 작업할 때 사용.
// 변화는 화면을 작업 하고싶을 경우에는 StatefulWidget을 사용.
class ExList extends StatelessWidget {

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
            "작품정보",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87)),

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
          IconButton(onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.black87,)
        ],
      ),

      // 앱의 body 부분
      body: Builder(
        builder: (context) =>
            SingleChildScrollView(
              child: Row(
                children : [ Column(
                    children: [
                      InkWell( // 클릭 이벤트
                        child: Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 15),
                          child: Image.network(
                            'https://images.freeimages.com/images/large-previews/76e/abstract-1-1174741.jpg',
                            width: 165,
                          ),
                        ),
                        onTap: () {},
                      ),
                      InkWell( // 클릭 이벤트
                        child: Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 15),
                          child: Image.network(
                            'https://images.freeimages.com/images/large-previews/76e/abstract-1-1174741.jpg',
                            width: 165,
                          ),
                        ),
                        onTap: () {},
                      ),
                      InkWell( // 클릭 이벤트
                        child: Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 15),
                          child: Image.network(
                            'https://images.freeimages.com/images/large-previews/76e/abstract-1-1174741.jpg',
                            width: 165,
                          ),
                        ),
                        onTap: () {},
                      ),
                      InkWell( // 클릭 이벤트
                        child: Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 15),
                          child: Image.network(
                            'https://images.freeimages.com/images/large-previews/76e/abstract-1-1174741.jpg',
                            width: 165,
                          ),
                        ),
                        onTap: () {},
                      ),
                      InkWell( // 클릭 이벤트
                        child: Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 15),
                          child: Image.network(
                            'https://images.freeimages.com/images/large-previews/76e/abstract-1-1174741.jpg',
                            width: 165,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ]
                ),

                  Column(
                      children: [
                        InkWell( // 클릭 이벤트
                          child: Padding(
                            padding: EdgeInsets.only(left: 15, bottom: 15),
                            child: Image.network(
                              'https://images.freeimages.com/images/large-previews/76e/abstract-1-1174741.jpg',
                              width: 165,
                            ),
                          ),
                          onTap: () {},
                        ),
                        InkWell( // 클릭 이벤트
                          child: Padding(
                            padding: EdgeInsets.only(left: 15, bottom: 15),
                            child: Image.network(
                              'https://images.freeimages.com/images/large-previews/76e/abstract-1-1174741.jpg',
                              width: 165,
                            ),
                          ),
                          onTap: () {},
                        ),
                        InkWell( // 클릭 이벤트
                          child: Padding(
                            padding: EdgeInsets.only(left: 15, bottom: 15),
                            child: Image.network(
                              'https://images.freeimages.com/images/large-previews/76e/abstract-1-1174741.jpg',
                              width: 165,
                            ),
                          ),
                          onTap: () {},
                        ),
                        InkWell( // 클릭 이벤트
                          child: Padding(
                            padding: EdgeInsets.only(left: 15, bottom: 15),
                            child: Image.network(
                              'https://images.freeimages.com/images/large-previews/76e/abstract-1-1174741.jpg',
                              width: 165,
                            ),
                          ),
                          onTap: () {},
                        ),
                        InkWell( // 클릭 이벤트
                          child: Padding(
                            padding: EdgeInsets.only(left: 15, bottom: 15),
                            child: Image.network(
                              'https://images.freeimages.com/images/large-previews/76e/abstract-1-1174741.jpg',
                              width: 165,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ]
                  )
                ]
              )
            )
      )
    );
  }
}