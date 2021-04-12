import 'package:flutter/material.dart';
import 'Search.dart';
import 'NoteItem.dart';

class NoteList extends StatefulWidget {
  NoteList({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  ScrollController _controller = new ScrollController();

  List notes = [
    {'title': 'node守护进程', 'subtitle': '继承实现', 'updatetime': 1616544000000},
    {'title': '我是一行代码', 'subtitle': '今天我是一个格子衫大叔', 'updatetime': 1617235200000},
    {'title': '开理发店 黑马K', 'subtitle': '开服装店', 'updatetime': 1585699200000},
    {'title': 'node守护进程', 'subtitle': '继承实现', 'updatetime': 1616544000000},
    {'title': '我是一行代码', 'subtitle': '今天我是一个格子衫大叔', 'updatetime': 1617235200000},
    {'title': '开理发店 黑马K', 'subtitle': '开服装店', 'updatetime': 1585699200000},
    {'title': 'node守护进程', 'subtitle': '继承实现', 'updatetime': 1616544000000},
    {'title': '我是一行代码', 'subtitle': '今天我是一个格子衫大叔', 'updatetime': 1617235200000},
    {'title': '开理发店 黑马K', 'subtitle': '开服装店', 'updatetime': 1585699200000},
    {'title': 'node守护进程', 'subtitle': '继承实现', 'updatetime': 1616544000000},
    {'title': '我是一行代码', 'subtitle': '今天我是一个格子衫大叔', 'updatetime': 1617235200000},
    {'title': '开理发店 黑马K', 'subtitle': '开服装店', 'updatetime': 1585699200000},
    {'title': 'node守护进程', 'subtitle': '继承实现', 'updatetime': 1616544000000},
    {'title': '我是一行代码', 'subtitle': '今天我是一个格子衫大叔', 'updatetime': 1617235200000},
    {'title': '开理发店 黑马K', 'subtitle': '开服装店', 'updatetime': 1585699200000}
  ];

  @override
  void initState() {
    super.initState();
    //监听滚动事件，打印滚动位置
    _controller.addListener(() {
      // print(_controller.offset);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 0,
        ),
        body: Stack(
          children: [
            Column(children: [
              Container(
                margin: EdgeInsets.fromLTRB(28, 10, 28, 10),
                height: 35,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    fillColor: Color(0xFFF3F3F3),
                    filled: true,
                    hintText: "搜索便签",
                    hintStyle:
                        TextStyle(color: Color(0xFFC4C4C4), fontSize: 14),
                    prefixIcon: Icon(Icons.search, color: Color(0xFFC4C4C4)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(28, 10, 28, 10),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Color(0xFFF3F3F3), width: 1),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      '便签',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 28),
                    ),
                    Spacer(),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                        child: Text(
                          '选择',
                          style: TextStyle(
                              color: Color(0xFFF8D539),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        )),
                    Icon(
                      Icons.add,
                      color: Color(0xFFF8D539),
                      size: 30,
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  controller: _controller,
                  children: notes
                      .map((noteItem) => NoteItem(noteItem: noteItem))
                      .toList(),
                ),
              )
            ]),
            Visibility(visible: false, child: Search())
          ],
        ));
  }
}
