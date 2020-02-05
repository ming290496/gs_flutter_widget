class ExampleModel {
  String title;
  String subtitle;
  String image;
  String desc;
  String category;
  String authorName;
  String authorImage;
  String created;
  String type;
  String rate;
  String reviewer;

  ExampleModel(
      {this.title,
      this.subtitle,
      this.image,
      this.desc,
      this.category,
      this.authorName,
      this.authorImage,
      this.created,
      this.type,
      this.rate,
      this.reviewer});

//  ExampleModel.fromJson(Map<String, dynamic> json) {
//    title = json['title'];
//    subtitle = json['subtitle'];
//    image = json['image'];
//    desc = json['desc'];
//    category = json['category'];
//    authorName = json['authorName'];
//    category = json['category'];
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['title'] = this.title;
//    data['subtitle'] = this.subtitle;
//    data['image'] = this.image;
//    data['desc'] = this.desc;
//    data['category'] = this.category;
//    return data;
//  }
}
