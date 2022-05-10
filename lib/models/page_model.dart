class PageModel {
  final int id;

  final String title;

  final String description;

  final String image;
  final String page;
  PageModel(this.id, this.description, this.image, this.title, this.page);
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'image': image,
      'page': page,
    };
  }
}
