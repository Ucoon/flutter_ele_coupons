import 'package:flutter/material.dart';
import 'package:flutter_ele_coupons/app/modules/home/model/item_coupon_resp_entry.dart';
import 'package:mpcore/mpkit/mpkit.dart';
import '../widget/home_tab_bar_widget.dart';
import '../widget/common_coupon_view.dart';
import 'package:get/get.dart';
import '/widget/widget.dart';
import '../index.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonLayoutPage<HomeController>(
      _buildBodyWidget,
      canBack: false,
      title: '饿了就点',
      appBarBackgroundColor: Color(0xFFF7D9A1),
      backgroundColor: Color(0xFFF7F9FA),
    );
  }

  Widget _buildBodyWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        HomeTabBarWidget(
          onTap: controller.handleTabBarTap,
        ),
        Expanded(
          child: MPPageView(
            controller: controller.pageController,
            children: <Widget>[
              CommonCouponPage(controller.homeState.allCouponList),
              CommonCouponPage(controller.homeState.eleCouponList),
              CommonCouponPage(controller.homeState.mtCouponList),
            ],
          ),
        ),
      ],
    );
  }
}
