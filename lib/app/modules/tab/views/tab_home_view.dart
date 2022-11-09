import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mpcore/mpkit/mpkit.dart';
import '/widget/widget.dart';
import '/app/modules/global/index.dart';
import '/app/modules/home/index.dart';
import '/app/modules/personal/index.dart';
import '../index.dart';

class TabHomePage extends StatefulWidget {
  const TabHomePage({Key? key}) : super(key: key);
  @override
  State<TabHomePage> createState() => TabHomePageState();
}

class TabHomePageState extends State<TabHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  TabHomeController get controller => Get.find<TabHomeController>();

  @override
  Widget build(BuildContext context) {
    return MPMainTabView(
      tabs: _createMPMainTabItems(),
      controller: controller.pageController,
      keepAlive: true,
    );
  }

  List<MPMainTabItem> _createMPMainTabItems() {
    return <MPMainTabItem>[
      MPMainTabItem(
        activeTabWidget: _buildTabWidget(
          icon: getAssetImageUrl('icon_tab_home_active'),
          title: '外卖券',
          active: true,
        ),
        inactiveTabWidget: _buildTabWidget(
          icon: getAssetImageUrl('icon_tab_home'),
          title: '外卖券',
          active: false,
        ),
        builder: (context) => HomePage(),
      ),
      MPMainTabItem(
        activeTabWidget: _buildTabWidget(
          icon: getAssetImageUrl('icon_tab_whatwedo_active'),
          title: '吃什么',
          active: true,
        ),
        inactiveTabWidget: _buildTabWidget(
          icon: getAssetImageUrl('icon_tab_whatwedo'),
          title: '吃什么',
          active: false,
        ),
        builder: (context) => GlobalPurchasingPage(),
      ),
      MPMainTabItem(
        activeTabWidget: _buildTabWidget(
          icon: getAssetImageUrl('icon_tab_person_active'),
          title: '个人中心',
          active: true,
        ),
        inactiveTabWidget: _buildTabWidget(
          icon: getAssetImageUrl('icon_tab_person'),
          title: '个人中心',
          active: false,
        ),
        builder: (context) => PersonalPage(),
      ),
    ];
  }

  Widget _buildTabWidget({
    required String icon,
    required String title,
    bool active = false,
  }) {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      height: 44,
      child: Column(
        children: <Widget>[
          Image.asset(
            icon,
            color: active ? Colors.blue : Colors.grey,
            width: 28,
            height: 28,
          ),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              color: active ? Colors.blue : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
