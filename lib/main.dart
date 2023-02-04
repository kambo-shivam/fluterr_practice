
import 'package:flutter/material.dart';
import 'package:flutterr/extras/Text.dart';
import 'package:flutterr/ui/tabs_view.dart';
import 'package:flutterr/world_time/choose_location.dart';
import 'package:flutterr/world_time/loading.dart';

import 'extras/ColumnFile.dart';
import 'extras/ExpandedView.dart';
import 'extras/ListFile.dart';
import 'extras/NinjaIdIncrement.dart';
import 'extras/NinjaIdCard.dart';
import 'extras/PaddingMarginFile.dart';
import 'extras/QuoteAuthorList.dart';
import 'extras/QuoteDeleteFile.dart';
import 'extras/RowWidget.dart';
import 'extras/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/tabs',
    routes: {
      "/loading": (context) => Loading(),
      "/location": (context) => ChooseLocation(),
      "/home": (context) => Home(),
      "/tabs": (context) => TabsView()
    },
    theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        primaryColor: Colors.transparent),
  ));
}
