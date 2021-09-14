class MediaGalleryEntry {
  String? id;
  String? mediaType;
  dynamic label;
  String? position;
  String? file;

  MediaGalleryEntry({
    this.id,
    this.mediaType,
    this.label,
    this.position,
    this.file,
  });

  factory MediaGalleryEntry.fromJson(Map<String, dynamic> json) =>
      MediaGalleryEntry(
        id: json['id'] as String?,
        mediaType: json['media_type'] as String?,
        label: json['label'],
        position: json['position'] as String?,
        file: json['file'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'media_type': mediaType,
        'label': label,
        'position': position,
        'file': file,
      };
}
