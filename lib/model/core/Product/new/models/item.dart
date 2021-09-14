class Item {
  String? reviewId;
  String? createdAt;
  String? title;
  String? detail;
  String? nickname;
  dynamic? rating;
  dynamic? ratingPercent;

  Item({
    this.reviewId,
    this.createdAt,
    this.title,
    this.detail,
    this.nickname,
    this.rating,
    this.ratingPercent,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        reviewId: json['review_id'] as String?,
        createdAt: json['created_at'] as String?,
        title: json['title'] as String?,
        detail: json['detail'] as String?,
        nickname: json['nickname'] as String?,
        rating: json['rating'] as dynamic?,
        ratingPercent: json['rating_percent'] as dynamic?,
      );

  Map<String, dynamic> toJson() => {
        'review_id': reviewId,
        'created_at': createdAt,
        'title': title,
        'detail': detail,
        'nickname': nickname,
        'rating': rating,
        // 'rating_percent': ratingPercent,
      };
}
