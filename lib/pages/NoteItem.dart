import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key key, this.noteItem}) : super(key: key);
  final noteItem;

  String getUpdateTime() {
    var noteTime = DateTime.fromMillisecondsSinceEpoch(noteItem['updatetime']);

    return formatDate(
        noteTime,
        noteTime.year == DateTime.now().year
            ? [mm, "-", dd]
            : [yyyy, "-", mm, "-", dd]);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/note_detail', arguments: noteItem);
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(28, 20, 28, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              noteItem['title'],
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto',
                fontSize: 16,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 3, 10, 3),
              child: Text(
                noteItem['subtitle'],
                style: TextStyle(
                  color: Color(0xFF777777),
                  fontFamily: 'Roboto',
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 3, 10, 3),
              child: Row(children: [
                Text(
                  getUpdateTime() + ' ',
                  style: TextStyle(
                    color: Color(0xFFBBBBBB),
                    fontFamily: 'Roboto',
                    fontSize: 12,
                  ),
                ),
                Icon(Icons.cached, color: Color(0xFFBBBBBB), size: 15)
              ]),
            )
          ],
        ),
      ),
    );
  }
}
