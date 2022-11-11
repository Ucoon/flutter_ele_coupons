import 'package:flutter/material.dart';
import '/common/utils/utils.dart';
import '/common/values/values.dart';
import '/widget/image/image.dart';

class TabBarItemModel {
  String title;
  String icon;
  TabBarItemModel({
    required this.title,
    required this.icon,
  });
}

class HomeTabBarWidget extends StatefulWidget {
  final int initIndex;
  final Function(int)? onTap;
  const HomeTabBarWidget({
    Key? key,
    this.initIndex = 0,
    this.onTap,
  }) : super(key: key);

  @override
  _HomeTabBarWidgetState createState() => _HomeTabBarWidgetState();
}

class _HomeTabBarWidgetState extends State<HomeTabBarWidget> {
  late int _currentIndex;

  final List<TabBarItemModel> _tabBarList = <TabBarItemModel>[
    TabBarItemModel(title: '全部', icon: 'icon_all_logo'),
    TabBarItemModel(title: '饿了么', icon: 'icon_ele_logo'),
    TabBarItemModel(title: '美团', icon: 'icon_meituan_logo'),
  ];

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: map<Widget, TabBarItemModel>(
          _tabBarList,
          (index, item) {
            return Container(
              margin: EdgeInsets.only(right: 40),
              child: _buildItemTabBarWidget(item, index),
            );
          },
        ),
      ),
    );
  }

  Widget _buildItemTabBarWidget(TabBarItemModel tabBar, int index) {
    bool active = index == _currentIndex;
    return GestureDetector(
      onTap: () {
        if (active) return;
        setState(() {
          _currentIndex = index;
        });
        widget.onTap?.call(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          getIconPng(tabBar.icon, iconSize: 48),
          SizedBox(height: 5),
          Text(
            tabBar.title,
            style: TextStyle(
              fontSize: 16,
              color: active ? Color(0xFF66BBF8) : Color(0xFF2F3B46),
            ),
          ),
          SizedBox(height: 8),
          Container(
            height: 5,
            width: 48,
            decoration: BoxDecoration(
              color: active ? Color(0xFF66BBF8) : Colors.transparent,
              borderRadius: borderRadius6,
            ),
          )
        ],
      ),
    );
  }
}
