// To parse this JSON data, do
//
//     final itemCouponRespEntry = itemCouponRespEntryFromJson(jsonString);

import 'dart:convert';

ItemCouponRespEntry itemCouponRespEntryFromJson(String str) =>
    ItemCouponRespEntry.fromJson(json.decode(str));

String itemCouponRespEntryToJson(ItemCouponRespEntry data) =>
    json.encode(data.toJson());

class ItemCouponRespEntry {
  ItemCouponRespEntry({
    this.id = '',
    this.bannerPic = '',
    this.desc = '',
    this.icon = '',
    this.minapp,
    this.name = '',
    this.sort = -1,
    this.tabId = -1,
    this.type = '',
    this.url = '',
  });

  final String id;
  final String bannerPic;
  final String desc;
  final String icon;
  final MinApp? minapp;
  final String name;
  final int sort;
  final int tabId;
  final String type;
  final String url;

  factory ItemCouponRespEntry.fromJson(Map<String, dynamic> json) =>
      ItemCouponRespEntry(
        id: json["_id"],
        bannerPic: json["bannerPic"],
        desc: json["desc"],
        icon: json["icon"],
        minapp: json["minapp"] == null ? null : MinApp.fromJson(json["minapp"]),
        name: json["name"],
        sort: json["sort"],
        tabId: json["tabId"],
        type: json["type"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "bannerPic": bannerPic,
        "desc": desc,
        "icon": icon,
        "minapp": minapp?.toJson(),
        "name": name,
        "sort": sort,
        "tabId": tabId,
        "type": type,
        "url": url,
      };
}

class MinApp {
  MinApp({
    this.appid = '',
    this.path = '',
  });

  final String appid;
  final String path;

  factory MinApp.fromJson(Map<String, dynamic> json) => MinApp(
        appid: json["appid"],
        path: json["path"],
      );

  Map<String, dynamic> toJson() => {
        "appid": appid,
        "path": path,
      };
}
