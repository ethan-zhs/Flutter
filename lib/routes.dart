import 'package:flutter/material.dart';

import 'pages/NoteList.dart';
import 'pages/NoteDetail.dart';

final routes = {
  '/note_list': (context) => NoteList(),
  '/note_detail': (context, {arguments}) => NoteDetail(),
};

//固定写法
onGenerateRoute(RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
}
