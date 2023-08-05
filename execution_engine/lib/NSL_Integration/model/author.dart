part 'author.g.dart';

class Author {
  String? name;
  String? id;
  List<String>? email;

  Author({
    this.name,
    this.id,
    this.email,
  });

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorToJson(this);
}
