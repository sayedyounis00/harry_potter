import 'package:collection/collection.dart';

class Wand {
  String? wood;
  String? core;
  dynamic length;

  Wand({this.wood, this.core, this.length});

  factory Wand.fromJson(Map<String, dynamic> json) => Wand(
        wood: json['wood'] as String?,
        core: json['core'] as String?,
        length: json['length'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'wood': wood,
        'core': core,
        'length': length,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Wand) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => wood.hashCode ^ core.hashCode ^ length.hashCode;
}
