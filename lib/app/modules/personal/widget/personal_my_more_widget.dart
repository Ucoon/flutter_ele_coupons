import 'package:flutter/material.dart';
import '/common/values/values.dart';
import '/widget/widget.dart';

class PersonalMenuItemModel {
  String title;
  String icon;
  VoidCallback? onTap;
  PersonalMenuItemModel({
    required this.title,
    required this.icon,
    this.onTap,
  });
}

class PersonMenuItemWidget extends StatelessWidget {
  final PersonalMenuItemModel item;
  const PersonMenuItemWidget({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return GestureDetector(
        onTap: item.onTap,
        child: Container(
          padding: EdgeInsets.all(15),
          child: Row(
            children: <Widget>[
              getIconPng(item.icon, iconSize: 20),
              SizedBox(width: 13),
              Text(
                item.title,
                style: TextStyle(
                  color: const Color(0xFF1A1A1A),
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              getIconPng('icon_arrow_right', iconSize: 13),
            ],
          ),
        ),
      );
    });
  }
}

class PersonalMyMoreWidget extends StatelessWidget {
  PersonalMyMoreWidget({Key? key}) : super(key: key);

  final List<PersonalMenuItemModel> _personalMenuList = <PersonalMenuItemModel>[
    PersonalMenuItemModel(
      title: '订阅提醒',
      icon: 'icon_subscribe',
      onTap: () {},
    ),
    PersonalMenuItemModel(
      title: '分享好友',
      icon: 'icon_share',
      onTap: () {},
    ),
    PersonalMenuItemModel(
      title: '联系作者',
      icon: 'icon_contact',
      onTap: () {},
    ),
    PersonalMenuItemModel(
      title: '在线客服',
      icon: 'icon_custom',
      onTap: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: borderRadius10,
      ),
      child: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: _personalMenuList.length,
          itemBuilder: (context, index) {
            return PersonMenuItemWidget(item: _personalMenuList[index]);
          },
          separatorBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15.5),
              child: Container(
                height: 0.5,
                color: const Color(0xFFEFEFEF),
              ),
            );
          },
        ),
      ),
    );
  }
}
