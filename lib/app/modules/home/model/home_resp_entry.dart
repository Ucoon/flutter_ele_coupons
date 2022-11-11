import 'dart:convert';

import 'item_coupon_resp_entry.dart';

HomeRespEntry homeRespEntryFromJson(String str) =>
    HomeRespEntry.fromJson(json.decode(str));

String homeRespEntryToJson(HomeRespEntry data) => json.encode(data.toJson());

class HomeRespEntry {
  HomeRespEntry({
    this.tabs = const <HomeTab>[],
    this.coupons = const <ItemCouponRespEntry>[],
  });

  final List<HomeTab> tabs;
  final List<ItemCouponRespEntry> coupons;

  factory HomeRespEntry.fromJson(Map<String, dynamic> json) => HomeRespEntry(
        tabs: List<HomeTab>.from(json["tabs"].map((x) => HomeTab.fromJson(x))),
        coupons: List<ItemCouponRespEntry>.from(
            json["coupons"].map((x) => ItemCouponRespEntry.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "tabs": List<dynamic>.from(tabs.map((x) => x.toJson())),
        "coupons": List<dynamic>.from(coupons.map((x) => x.toJson())),
      };
}

class HomeTab {
  HomeTab({
    this.id = '',
    this.icon = '',
    this.tabId = -1,
    this.text = '',
  });

  final String id;
  final String icon;
  final int tabId;
  final String text;

  factory HomeTab.fromJson(Map<String, dynamic> json) => HomeTab(
        id: json["_id"],
        icon: json["icon"],
        tabId: json["tabId"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "icon": icon,
        "tabId": tabId,
        "text": text,
      };
}
