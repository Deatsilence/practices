import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
final class Book {
  const Book({this.name, this.author});

  final String? name;
  final String? author;

  Map<String, dynamic> toJson() => <String, dynamic>{"name": name, "author": author};
  factory Book.fromJson(Map<String, dynamic> json) =>
      Book(name: json["name"] as String?, author: json["author"] as String?);
}
