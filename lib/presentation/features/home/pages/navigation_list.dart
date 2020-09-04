import 'package:flutter/material.dart';

import '../../../../data/common_models/list_item.dart';
import '../../../../routes/router.dart';
import '../../../common_widgets/rounded_border_container.dart';

// Author: Suhas Shelar
// GitHub: https://github.com/shelarsuhas

class NavigationList extends StatefulWidget {
  @override
  _NavigationListState createState() => _NavigationListState();
}

class _NavigationListState extends State<NavigationList> {
  Map<String, bool> _expandedData;

  @override
  void initState() {
    super.initState();
    _expandedData = {};
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        ...routes.map((listItem) => _buildExpandableMenu(
              context: context,
              listItem: listItem,
            ))
      ],
    );
  }

  Widget _buildExpandableMenu({
    @required BuildContext context,
    @required ListItem listItem,
  }) {
    return RoundedContainer(
      margin: EdgeInsets.symmetric(
          horizontal: _expandedData[listItem.name] != null &&
                  _expandedData[listItem.name]
              ? 0
              : 8.0,
          vertical: 4.0),
      padding: const EdgeInsets.all(0),
      elevation: 0,
      child: ExpansionTile(
        onExpansionChanged: (val) {
          setState(() {
            _expandedData[listItem.name] = val;
          });
        },
        leading: Icon(listItem.icon),
        title: Text(
          "${listItem.name} (${listItem.subItems.length} layouts)",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        children: _buildSubMenus(listItem.subItems, context),
      ),
    );
  }

  List<Widget> _buildSubMenus(List<SubListItem> items, BuildContext context) {
    final List<Widget> subMenus = [];
    items.forEach((item) => subMenus.add(_buildSubMenu(item, context)));
    return subMenus;
  }

  Widget _buildSubMenu(SubListItem item, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0),
      child: ListTile(
        leading: Icon(Icons.arrow_right, color: Colors.deepOrange),
        contentPadding: EdgeInsets.all(0),
        dense: false,
        isThreeLine: false,
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.code),
              onPressed: () => _openPage(context, item, OpenMode.CODE),
            ),
          ],
        ),
        title: Text(
          item.name,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              .copyWith(color: Colors.black87),
        ),
        onTap: () => _openPage(context, item, OpenMode.PREVIEW),
      ),
    );
  }

  void _openPage(BuildContext context, SubListItem item, OpenMode mode) {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => item.page
            // mode == OpenMode.CODE
            //     ? DesignPreviewsPage(
            //         page: item.page, title: item.title, path: item.path)
            //     : item.page,
            ));
  }
}
