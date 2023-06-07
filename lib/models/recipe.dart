import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Recipe {
  final String id;
  final String title;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  final int duration;
  final List<String> ingredients;
  final List<String> steps;
  @JsonKey(name: 'is_gluten_free')
  final bool isGlutenFree;
  @JsonKey(name: 'is_vegan')
  final bool isVegan;
  @JsonKey(name: 'is_vegetarian')
  final bool isVegetarian;
  @JsonKey(name: 'is_lactose_free')
  final bool isLactoseFree;

  Recipe({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.ingredients,
    required this.steps,
    required this.isGlutenFree,
    required this.isVegan,
    required this.isVegetarian,
    required this.isLactoseFree,
  });

  // factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);

  // Map<String, dynamic> toJson() => _$RecipeToJson(this);

  // factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
  //       id: json['id'],
  //       title: json['title'],
  //       imageUrl: json['image_url'],
  //       duration: json['duration'],
  //       ingredients: json['ingredients'],
  //       steps: json['steps'],
  //       isGlutenFree: json['is_gluten_free'],
  //       isVegan: json['is_vegan'],
  //       isVegetarian: json['is_vegetarian'],
  //       isLactoseFree: json['is_lactose_free'],
  //     );

  // Map<String, dynamic> toJson() => {
  //       'id': id,
  //       'title': title,
  //       'image_url': imageUrl,
  //     };
}
