import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            height: 40,
            width: screenWidth,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    cursorColor: Color(0xFFF8D539),
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "搜索便签",
                      isDense: true,
                      hintStyle:
                          TextStyle(color: Color(0xFFC4C4C4), fontSize: 18),
                    ),
                  ),
                ),
                Visibility(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
                    child: Icon(
                      Icons.cancel,
                      color: Color(0xFFCCCCCC),
                    ),
                  ),
                ),
                Text('|', style: TextStyle(color: Color(0xFFE8E8E8))),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 15, 0),
                  child: Text(
                    '取消',
                    style: TextStyle(color: Color(0xFFF8D539)),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: screenWidth,
              color: Color.fromRGBO(0, 0, 0, 0.5),
              child: Visibility(
                visible: false,
                child: Text('111'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
