import 'package:json_annotation/json_annotation.dart';

part 'repo.g.dart';

@JsonSerializable()
class Repo {
  Repo();

  late num id;
  late String name;
  late String full_name;
  late Map<String,dynamic> owner;
  late bool private;
  late String description;
  late bool fork;
  late String language;
  late num forks_count;
  late num stargazers_count;
  late num size;
  late String default_branch;
  late num open_issues_count;
  late String pushed_at;
  late String created_at;
  late String updated_at;
  late num subscribers_count;
  
  factory Repo.fromJson(Map<String,dynamic> json) => _$RepoFromJson(json);
  Map<String, dynamic> toJson() => _$RepoToJson(this);
}
