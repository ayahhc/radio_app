import 'dart:convert';

import 'package:collection/collection.dart';

class MyRadioList {
  final List<MyRadio> radios;
  MyRadioList({
    required this.radios,
  });

  MyRadioList copyWith({
    List<MyRadio>? radios,
  }) {
    return MyRadioList(
      radios: radios ?? this.radios,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'radios': radios.map((x) => x.toMap()).toList(),
    };
  }

  factory MyRadioList.fromMap(Map<String, dynamic> map) {
    return MyRadioList(
      radios: List<MyRadio>.from(map['radios']?.map((x) => MyRadio.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory MyRadioList.fromJson(String source) =>
      MyRadioList.fromMap(json.decode(source));

  @override
  String toString() => 'MyRadioList(radios: $radios)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is MyRadioList && listEquals(other.radios, radios);
  }

  @override
  int get hashCode => radios.hashCode;
}

class MyRadio {
  final int id;
  final String name;
  final String color;
  final String desc;
  final String url;
  final String tagline;
  final String image;
  final String lang;
  final String category;
  final String disliked;
  final int order;
  MyRadio({
    required this.tagline,
    required this.id,
    required this.name,
    required this.color,
    required this.desc,
    required this.url,
    required this.image,
    required this.lang,
    required this.category,
    required this.disliked,
    required this.order,
  });

  MyRadio copyWith({
    int? id,
    String? name,
    String? color,
    String? tagline,
    String? desc,
    String? url,
    String? image,
    String? lang,
    String? category,
    String? disliked,
    int? order,
  }) {
    return MyRadio(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
      tagline: tagline ?? this.tagline,
      desc: desc ?? this.desc,
      url: url ?? this.url,
      image: image ?? this.image,
      lang: lang ?? this.lang,
      category: category ?? this.category,
      disliked: disliked ?? this.disliked,
      order: order ?? this.order,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'color': color,
      'desc': desc,
      'url': url,
      'tagline': tagline,
      'image': image,
      'lang': lang,
      'category': category,
      'disliked': disliked,
      'order': order,
    };
  }

  factory MyRadio.fromMap(Map<String, dynamic> map) {
    return MyRadio(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      color: map['color'] ?? '',
      desc: map['desc'] ?? '',
      tagline: map['tagline'] ?? '',
      url: map['url'] ?? '',
      image: map['image'] ?? '',
      lang: map['lang'] ?? '',
      category: map['category'] ?? '',
      disliked: map['disliked'] ?? '',
      order: map['order']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory MyRadio.fromJson(String source) =>
      MyRadio.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MyRadio(id: $id, name: $name, color: $color, tagline: $tagline, desc: $desc, url: $url, image: $image, lang: $lang, category: $category, disliked: $disliked, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MyRadio &&
        other.id == id &&
        other.name == name &&
        other.color == color &&
        other.desc == desc &&
        other.url == url &&
        other.image == image &&
        other.lang == lang &&
        other.category == category &&
        other.disliked == disliked &&
        other.order == order;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        color.hashCode ^
        desc.hashCode ^
        url.hashCode ^
        image.hashCode ^
        lang.hashCode ^
        category.hashCode ^
        disliked.hashCode ^
        order.hashCode;
  }
}
