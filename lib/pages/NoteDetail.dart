import 'package:flutter/material.dart';

class NoteDetail extends StatefulWidget {
  NoteDetail({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _NoteDetailState createState() => _NoteDetailState();
}

class _NoteDetailState extends State<NoteDetail> {
  @override
  Widget build(BuildContext context) {
    print(widget.title);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
          toolbarHeight: 0,
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Color(0xFFF3F3F3), width: 3.5),
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                      height: 20,
                      child: IconButton(
                        padding: EdgeInsets.all(0),
                        highlightColor: Colors.white,
                        onPressed: () => {Navigator.of(context).pop()},
                        icon: Icon(Icons.arrow_back, color: Color(0xFFF8D539)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Text(
                        '|',
                        style: TextStyle(color: Color(0xFFCCCCCC)),
                      ),
                    ),
                    Text('便签详情', style: TextStyle(fontSize: 18)),
                    Spacer(),
                    Text(
                      '完成',
                      style: TextStyle(color: Color(0xFFF8D539)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text(
                  '2021/1/21 11:23',
                  style: TextStyle(color: Color(0xFFCCCCCC)),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: TextField(
                    minLines: 1,
                    cursorColor: Color(0xFFF8D539),
                    style: TextStyle(fontSize: 14),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintStyle:
                          TextStyle(color: Color(0xFFC4C4C4), fontSize: 14),
                    ),
                  ),
                ),
              ),
              Container(
                child: Text('111'),
                height: 50,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Color(0xFFF3F3F3), width: 1),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          // 底部导航
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.share), label: '发送'),
            BottomNavigationBarItem(
                icon: Icon(Icons.delete_outlined), label: '删除'),
          ],
          fixedColor: Color(0xFF777777),
          backgroundColor: Colors.white,
        ));
  }
}
