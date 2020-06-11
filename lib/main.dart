import 'package:flutter/material.dart';

import 'second.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text(
            'KBOYのFlutter大学',
            textAlign: TextAlign.start,
          ),
          actions: <Widget>[
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.search),
                onPressed: () {  },
              ),
            ),
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: () {  },
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRYEC_iT0UeWcn1mo7A7a7nFftaKYUxqbOEufjtfQGwmgaVBfpj&usqp=CAU',
                      width: 100,
                      height: 100,

                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: <Widget>[
                      const Text(
                        'KBOYのFlutter大学',
                        textAlign: TextAlign.start,
                      ),
                      FlatButton(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.add_to_queue,
                              color: Colors.red,
                            ),
                            Text('  登録する'),
                          ],
                        ),
                        onPressed: () {  },
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () async {
                         await Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SecondRoute()),
                         );
                      },
                      contentPadding: EdgeInsets.all(8),
                      leading: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRYEC_iT0UeWcn1mo7A7a7nFftaKYUxqbOEufjtfQGwmgaVBfpj&usqp=CAU'
                      ),
                      title: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'English Writing${items[index + 1].split('m')[1]}',
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '257回再生',
                                style: TextStyle(fontSize: 13),
                              ),
                              Text(
                                '5日前',
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//import 'package:flutter/material.dart';
//
//void main() {
//  runApp(MyApp());
//}
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: MyHomePage(),
//    );
//  }
//}
//
//class MyHomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Youtube'),
//      ),
//      body: Center(),
//    );
//  }
//}


// さらにシンプル

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('Youtube'),
//        ),
//        body: Container(),
//      ),
//    );
//  }
//}
