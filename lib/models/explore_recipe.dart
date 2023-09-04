part 'ingredient.dart';
part 'instruction.dart';

class RecipeCardType {
  static const card1 = 'card1';
  static const card2 = 'card2';
  static const card3 = 'card3';
}

class ExploreRecipe {
  final String id;
  final String cardType;
  final String title;
  final String subtitle;
  final String backgroundImage;
  final String backgroundImageSource;
  final String message;
  final String authorName;
  final String role;
  final String profileImage;
  final int durationInMinutes;
  final String dietType;
  final int calories;
  final List<String> tags;
  final String description;
  final String source;
  final List<Ingredients> ingredients;
  final List<Instruction> instructions;

  ExploreRecipe({
    required this.id,
    required this.cardType,
    required this.title,
    this.subtitle = '',
    this.backgroundImage = '',
    this.backgroundImageSource = '',
    this.message = '',
    this.authorName = '',
    this.role = '',
    this.profileImage = '',
    this.durationInMinutes = 0,
    this.dietType = '',
    this.calories = 0,
    this.tags = const [],
    this.description = '',
    this.source = '',
    this.ingredients = const [],
    this.instructions = const [],
  });

  factory ExploreRecipe.fromJson(Map<String, dynamic> json) {
    final ingredients = <Ingredients>[];
    final instructions = <Instruction>[];

    if (json['ingredients'] != null) {
      json['ingredients']
          .forEach((v) => ingredients.add(Ingredients.fromJson(v)));
    }

    if (json['instructions'] != null) {
      json['instructions']
          .forEach((v) => instructions.add(Instruction.fromJson(v)));
    }

    return ExploreRecipe(
      id: json['id'] ?? '',
      cardType: json['cardType'] ?? '',
      title: json['title'] ?? '',
      subtitle: json['subtitle'] ?? '',
      backgroundImage: json['backgroundImage'] ?? '',
      backgroundImageSource: json['backgroundImageSource'] ?? '',
      message: json['message'] ?? '',
      authorName: json['authorName'] ?? '',
      role: json['role'] ?? '',
      profileImage: json['profileImage'] ?? '',
      durationInMinutes: json['durationInMinutes'] ?? 0,
      dietType: json['dietType'] ?? '',
      calories: json['calories'] ?? 0,
      tags: json['tags'].cast<String>() ?? [],
      description: json['description'] ?? '',
      source: json['source'] ?? '',
      ingredients: ingredients,
      instructions: instructions,
    );
  }
}
