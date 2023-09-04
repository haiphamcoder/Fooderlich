import 'models.dart';

class ExploreData {
  final List<ExploreRecipe> todayRecipes;
  final List<Post> friendPosts;

  const ExploreData({
    required this.todayRecipes,
    required this.friendPosts,
  });
}
