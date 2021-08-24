class UserBlogs {
  List<Posts>? _posts;
  int? _totalNumber;
  int? _currentPage;
  int? _lastPage;

  List<Posts>? get posts => _posts;
  int? get totalNumber => _totalNumber;
  int? get currentPage => _currentPage;
  int? get lastPage => _lastPage;

  UserBlogs({
      List<Posts>? posts, 
      int? totalNumber, 
      int? currentPage, 
      int? lastPage}){
    _posts = posts;
    _totalNumber = totalNumber;
    _currentPage = currentPage;
    _lastPage = lastPage;
}

  UserBlogs.fromJson(dynamic json) {
    if (json['posts'] != null) {
      _posts = [];
      json['posts'].forEach((v) {
        _posts?.add(Posts.fromJson(v));
      });
    }
    _totalNumber = json['total_number'];
    _currentPage = json['current_page'];
    _lastPage = json['last_page'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_posts != null) {
      map['posts'] = _posts?.map((v) => v.toJson()).toList();
    }
    map['total_number'] = _totalNumber;
    map['current_page'] = _currentPage;
    map['last_page'] = _lastPage;
    return map;
  }

}

class Posts {
  String? _postId;
  String? _title;
  String? _metaTitle;
  dynamic? _metaKeywords;
  String? _metaDescription;
  String? _identifier;
  String? _ogTitle;
  String? _ogDescription;
  dynamic? _ogImg;
  String? _ogType;
  dynamic? _contentHeading;
  String? _content;
  String? _creationTime;
  String? _updateTime;
  String? _publishTime;
  String? _isActive;
  String? _includeInRecent;
  String? _position;
  dynamic? _featuredImg;
  dynamic? _featuredImgAlt;
  String? _authorId;
  dynamic? _pageLayout;
  dynamic? _layoutUpdateXml;
  dynamic? _customTheme;
  dynamic? _customLayout;
  dynamic? _customLayoutUpdateXml;
  dynamic? _customThemeFrom;
  dynamic? _customThemeTo;
  dynamic? _mediaGallery;
  dynamic? _secret;
  String? _viewsCount;
  dynamic? _isRecentPostsSkip;
  String? _shortContent;
  dynamic? _commentsCount;
  List<String>? _firstStoreId;
  List<String>? _storeIds;
  String? _storeId;
  List<String>? _categories;
  bool? _ogImage;
  String? _shortFilteredContent;
  String? _filteredContent;
  bool? _firstImage;
  bool? _featuredImage;
  String? _postUrl;

  String? get postId => _postId;
  String? get title => _title;
  String? get metaTitle => _metaTitle;
  dynamic? get metaKeywords => _metaKeywords;
  String? get metaDescription => _metaDescription;
  String? get identifier => _identifier;
  String? get ogTitle => _ogTitle;
  String? get ogDescription => _ogDescription;
  dynamic? get ogImg => _ogImg;
  String? get ogType => _ogType;
  dynamic? get contentHeading => _contentHeading;
  String? get content => _content;
  String? get creationTime => _creationTime;
  String? get updateTime => _updateTime;
  String? get publishTime => _publishTime;
  String? get isActive => _isActive;
  String? get includeInRecent => _includeInRecent;
  String? get position => _position;
  dynamic? get featuredImg => _featuredImg;
  dynamic? get featuredImgAlt => _featuredImgAlt;
  String? get authorId => _authorId;
  dynamic? get pageLayout => _pageLayout;
  dynamic? get layoutUpdateXml => _layoutUpdateXml;
  dynamic? get customTheme => _customTheme;
  dynamic? get customLayout => _customLayout;
  dynamic? get customLayoutUpdateXml => _customLayoutUpdateXml;
  dynamic? get customThemeFrom => _customThemeFrom;
  dynamic? get customThemeTo => _customThemeTo;
  dynamic? get mediaGallery => _mediaGallery;
  dynamic? get secret => _secret;
  String? get viewsCount => _viewsCount;
  dynamic? get isRecentPostsSkip => _isRecentPostsSkip;
  String? get shortContent => _shortContent;
  dynamic? get commentsCount => _commentsCount;
  List<String>? get firstStoreId => _firstStoreId;
  List<String>? get storeIds => _storeIds;
  String? get storeId => _storeId;
  List<String>? get categories => _categories;
  bool? get ogImage => _ogImage;
  String? get shortFilteredContent => _shortFilteredContent;
  String? get filteredContent => _filteredContent;
  bool? get firstImage => _firstImage;
  bool? get featuredImage => _featuredImage;
  String? get postUrl => _postUrl;

  Posts({
      String? postId, 
      String? title, 
      String? metaTitle, 
      dynamic? metaKeywords, 
      String? metaDescription, 
      String? identifier, 
      String? ogTitle, 
      String? ogDescription, 
      dynamic? ogImg, 
      String? ogType, 
      dynamic? contentHeading, 
      String? content, 
      String? creationTime, 
      String? updateTime, 
      String? publishTime, 
      String? isActive, 
      String? includeInRecent, 
      String? position, 
      dynamic? featuredImg, 
      dynamic? featuredImgAlt, 
      String? authorId, 
      dynamic? pageLayout, 
      dynamic? layoutUpdateXml, 
      dynamic? customTheme, 
      dynamic? customLayout, 
      dynamic? customLayoutUpdateXml, 
      dynamic? customThemeFrom, 
      dynamic? customThemeTo, 
      dynamic? mediaGallery, 
      dynamic? secret, 
      String? viewsCount, 
      dynamic? isRecentPostsSkip, 
      String? shortContent, 
      dynamic? commentsCount, 
      List<String>? firstStoreId, 
      List<String>? storeIds, 
      String? storeId, 
      List<String>? categories, 
      bool? ogImage, 
      String? shortFilteredContent, 
      String? filteredContent, 
      bool? firstImage, 
      bool? featuredImage, 
      String? postUrl}){
    _postId = postId;
    _title = title;
    _metaTitle = metaTitle;
    _metaKeywords = metaKeywords;
    _metaDescription = metaDescription;
    _identifier = identifier;
    _ogTitle = ogTitle;
    _ogDescription = ogDescription;
    _ogImg = ogImg;
    _ogType = ogType;
    _contentHeading = contentHeading;
    _content = content;
    _creationTime = creationTime;
    _updateTime = updateTime;
    _publishTime = publishTime;
    _isActive = isActive;
    _includeInRecent = includeInRecent;
    _position = position;
    _featuredImg = featuredImg;
    _featuredImgAlt = featuredImgAlt;
    _authorId = authorId;
    _pageLayout = pageLayout;
    _layoutUpdateXml = layoutUpdateXml;
    _customTheme = customTheme;
    _customLayout = customLayout;
    _customLayoutUpdateXml = customLayoutUpdateXml;
    _customThemeFrom = customThemeFrom;
    _customThemeTo = customThemeTo;
    _mediaGallery = mediaGallery;
    _secret = secret;
    _viewsCount = viewsCount;
    _isRecentPostsSkip = isRecentPostsSkip;
    _shortContent = shortContent;
    _commentsCount = commentsCount;
    _firstStoreId = firstStoreId;
    _storeIds = storeIds;
    _storeId = storeId;
    _categories = categories;
    _ogImage = ogImage;
    _shortFilteredContent = shortFilteredContent;
    _filteredContent = filteredContent;
    _firstImage = firstImage;
    _featuredImage = featuredImage;
    _postUrl = postUrl;
}

  Posts.fromJson(dynamic json) {
    _postId = json['post_id'];
    _title = json['title'];
    _metaTitle = json['meta_title'];
    _metaKeywords = json['meta_keywords'];
    _metaDescription = json['meta_description'];
    _identifier = json['identifier'];
    _ogTitle = json['og_title'];
    _ogDescription = json['og_description'];
    _ogImg = json['og_img'];
    _ogType = json['og_type'];
    _contentHeading = json['content_heading'];
    _content = json['content'];
    _creationTime = json['creation_time'];
    _updateTime = json['update_time'];
    _publishTime = json['publish_time'];
    _isActive = json['is_active'];
    _includeInRecent = json['include_in_recent'];
    _position = json['position'];
    _featuredImg = json['featured_img'];
    _featuredImgAlt = json['featured_img_alt'];
    _authorId = json['author_id'];
    _pageLayout = json['page_layout'];
    _layoutUpdateXml = json['layout_update_xml'];
    _customTheme = json['custom_theme'];
    _customLayout = json['custom_layout'];
    _customLayoutUpdateXml = json['custom_layout_update_xml'];
    _customThemeFrom = json['custom_theme_from'];
    _customThemeTo = json['custom_theme_to'];
    _mediaGallery = json['media_gallery'];
    _secret = json['secret'];
    _viewsCount = json['views_count'];
    _isRecentPostsSkip = json['is_recent_posts_skip'];
    _shortContent = json['short_content'];
    _commentsCount = json['comments_count'];
    _firstStoreId = json['_first_store_id'] != null ? json['_first_store_id'].cast<String>() : [];
    _storeIds = json['store_ids'] != null ? json['store_ids'].cast<String>() : [];
    _storeId = json['store_id'];
    _categories = json['categories'] != null ? json['categories'].cast<String>() : [];
    _ogImage = json['og_image'];
    _shortFilteredContent = json['short_filtered_content'];
    _filteredContent = json['filtered_content'];
    _firstImage = json['first_image'];
    _featuredImage = json['featured_image'];
    _postUrl = json['post_url'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['post_id'] = _postId;
    map['title'] = _title;
    map['meta_title'] = _metaTitle;
    map['meta_keywords'] = _metaKeywords;
    map['meta_description'] = _metaDescription;
    map['identifier'] = _identifier;
    map['og_title'] = _ogTitle;
    map['og_description'] = _ogDescription;
    map['og_img'] = _ogImg;
    map['og_type'] = _ogType;
    map['content_heading'] = _contentHeading;
    map['content'] = _content;
    map['creation_time'] = _creationTime;
    map['update_time'] = _updateTime;
    map['publish_time'] = _publishTime;
    map['is_active'] = _isActive;
    map['include_in_recent'] = _includeInRecent;
    map['position'] = _position;
    map['featured_img'] = _featuredImg;
    map['featured_img_alt'] = _featuredImgAlt;
    map['author_id'] = _authorId;
    map['page_layout'] = _pageLayout;
    map['layout_update_xml'] = _layoutUpdateXml;
    map['custom_theme'] = _customTheme;
    map['custom_layout'] = _customLayout;
    map['custom_layout_update_xml'] = _customLayoutUpdateXml;
    map['custom_theme_from'] = _customThemeFrom;
    map['custom_theme_to'] = _customThemeTo;
    map['media_gallery'] = _mediaGallery;
    map['secret'] = _secret;
    map['views_count'] = _viewsCount;
    map['is_recent_posts_skip'] = _isRecentPostsSkip;
    map['short_content'] = _shortContent;
    map['comments_count'] = _commentsCount;
    map['_first_store_id'] = _firstStoreId;
    map['store_ids'] = _storeIds;
    map['store_id'] = _storeId;
    map['categories'] = _categories;
    map['og_image'] = _ogImage;
    map['short_filtered_content'] = _shortFilteredContent;
    map['filtered_content'] = _filteredContent;
    map['first_image'] = _firstImage;
    map['featured_image'] = _featuredImage;
    map['post_url'] = _postUrl;
    return map;
  }

}