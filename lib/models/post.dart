class Post {
  final String id;
  final String profileImageUrl;
  final String comment;
  final String foodPicturUrl;
  final String timestamp;

  const Post({
    required this.id,
    required this.profileImageUrl,
    required this.comment,
    required this.foodPicturUrl,
    required this.timestamp,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'] ?? '',
      profileImageUrl: json['profileImageUrl'] ?? '',
      comment: json['comment'] ?? '',
      foodPicturUrl: json['foodPicturUrl'] ?? '',
      timestamp: json['timestamp'] ?? '',
    );
  }
}
