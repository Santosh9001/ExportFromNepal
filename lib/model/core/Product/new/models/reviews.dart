import 'item.dart';

class Reviews {
  List<Item>? items;
  String? avgRatingPercent;
  int? total;
  int? currentPage;
  int? pageSize;
  int? lastPage;

  Reviews({
    this.items,
    this.avgRatingPercent,
    this.total,
    this.currentPage,
    this.pageSize,
    this.lastPage,
  });

  factory Reviews.fromJson(Map<String, dynamic> json) => Reviews(
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
            .toList(),
        avgRatingPercent: json['avg_rating_percent'] as String?,
        total: json['total'] as int?,
        currentPage: json['currentPage'] as int?,
        pageSize: json['pageSize'] as int?,
        lastPage: json['lastPage'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'items': items?.map((e) => e.toJson()).toList(),
        'avg_rating_percent': avgRatingPercent,
        'total': total,
        'currentPage': currentPage,
        'pageSize': pageSize,
        'lastPage': lastPage,
      };
}
