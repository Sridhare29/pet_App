class PostModel {
  String? id;
  String? title;
  String? body;
  String? groupId;
  String? userId;
  String? image;
  Null video;
  String? lat;
  String? lng;
  String? postTypeId;
  String? created;
  String? modified;

  PostModel(
      {this.id,
      this.title,
      this.body,
      this.groupId,
      this.userId,
      this.image,
      this.video,
      this.lat,
      this.lng,
      this.postTypeId,
      this.created,
      this.modified});

  PostModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    body = json['body'];
    groupId = json['group_id'];
    userId = json['user_id'];
    image = json['image'];
    video = json['video'];
    lat = json['lat'];
    lng = json['lng'];
    postTypeId = json['post_type_id'];
    created = json['created'];
    modified = json['modified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.body;
    data['group_id'] = this.groupId;
    data['user_id'] = this.userId;
    data['image'] = this.image;
    data['video'] = this.video;
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    data['post_type_id'] = this.postTypeId;
    data['created'] = this.created;
    data['modified'] = this.modified;
    return data;
  }
}
