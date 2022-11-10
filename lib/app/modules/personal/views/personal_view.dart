import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/widget/widget.dart';
import '../widget/personal_my_more_widget.dart';
import '../index.dart';

class PersonalPage extends GetView<PersonalController> {
  const PersonalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonLayoutPage<PersonalController>(
      _buildBodyWidget,
      canBack: false,
      title: '个人中心',
      appBarBackgroundColor: Color(0xFFF7D9A1),
      backgroundColor: Color(0xFFF7F9FA),
    );
  }

  Widget _buildBodyWidget(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildUserInfoWidget(),
        SizedBox(height: 8),
        _buildOtherMiniProgramWidget(context),
        const SizedBox(height: 15),
        PersonalMyMoreWidget(),
      ],
    );
  }

  Widget _buildUserInfoWidget() {
    return EmptyCardWidget(
      padding: EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          getIconPng('icon_default_avatar_icon'),
          SizedBox(width: 10),
          Text(
            '微信用户',
            style: TextStyle(
              color: Color(0xFF2F3B46),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOtherMiniProgramWidget(BuildContext context) {
    return EmptyCardWidget(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      width: MediaQuery.of(context).size.width,
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '有趣小程序',
            style: TextStyle(
              color: Color(0xFF2F3B46),
              fontSize: 12,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 5),
          Flexible(
            child: _buildMiniProgramListWidget(),
          ),
        ],
      ),
    );
  }

  Widget _buildMiniProgramListWidget() {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 1,
      scrollDirection: Axis.horizontal,
      itemBuilder: ((context, index) {
        return LabelWidget(
          '闷声赚大钱',
          'icon_red_package',
          direction: Axis.vertical,
          iconSize: 48,
          fontSize: 12,
          space: 5,
          textColor: Color(0xFF2F3B46),
        );
      }),
      separatorBuilder: ((context, index) {
        return SizedBox(width: 10);
      }),
    );
  }
}
