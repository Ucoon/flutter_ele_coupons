import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../widget/widget.dart';
import '../index.dart';

class WhatToEatPage extends GetView<WhatToEatController> {
  const WhatToEatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonLayoutPage<WhatToEatController>(
      _buildBodyWidget,
      canBack: false,
      title: '今天吃什么',
      appBarBackgroundColor: Color(0xFFF7D9A1),
      backgroundColor: Color(0xFFF7F9FA),
    );
  }

  Widget _buildBodyWidget(BuildContext context) {
    return getIconPngWithSize(
      'icon_eat_what_bg',
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      fit: BoxFit.cover,
    );
  }
}
