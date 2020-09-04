import 'package:flutter/material.dart';

// Author: Suhas Shelar
// GitHub: https://github.com/shelarsuhas

class ListItem {
  final String name;
  final IconData icon;
  final List<SubListItem> subItems;

  ListItem({
    @required this.name,
    @required this.icon,
    @required this.subItems,
  });
}

class SubListItem {
  final String name;
  final Widget page;
  final IconData icon;
  final String path;

  SubListItem({
    @required this.name,
    @required this.page,
    @required this.icon,
    @required this.path,
  });
}

enum OpenMode { CODE, PREVIEW }
