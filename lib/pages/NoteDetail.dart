import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class NoteDetail extends StatefulWidget {
  NoteDetail({Key key, this.noteItem}) : super(key: key);
  final Map noteItem;

  @override
  _NoteDetailState createState() => _NoteDetailState();
}

class _NoteDetailState extends State<NoteDetail> {
  String getUpdateTime() {
    var noteTime = DateTime.now();

    // 编辑时获取上次编辑的时间
    if (widget.noteItem != null && widget.noteItem['updatetime'] != null) {
      noteTime =
          DateTime.fromMillisecondsSinceEpoch(widget.noteItem['updatetime']);
    }

    return formatDate(noteTime, [yyyy, "-", mm, "-", dd, " ", HH, ":", nn]);
  }

  @override
  Widget build(BuildContext context) {
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
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Text(
                        getUpdateTime(),
                        style: TextStyle(color: Color(0xFFCCCCCC)),
                      ),
                    ),
                    Container(
                      child: TextField(
                        minLines: 15,
                        maxLines: null,
                        cursorColor: Color(0xFFF8D539),
                        cursorHeight: 20,
                        style: TextStyle(fontSize: 14),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          hintStyle:
                              TextStyle(color: Color(0xFFC4C4C4), fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.share,
                          color: Color(0xFF777777),
                        ),
                        Text(
                          '发送',
                          style: TextStyle(color: Color(0xFF777777)),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.delete_outlined,
                          color: Color(0xFF777777),
                        ),
                        Text(
                          '删除',
                          style: TextStyle(color: Color(0xFF777777)),
                        )
                      ],
                    ),
                  )
                ],
              ),
              height: 55,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Color(0xFFF3F3F3), width: 1),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
