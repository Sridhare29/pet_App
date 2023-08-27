class PostModel {
  String? id;
  String? title;
  String? body;
  String? groupId;
  String? userId;
  String? image;
  Null? video;
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
  class Group {
  String? id;
  String? name;
  String? description;
  String? logo;
  bool? isClan;
  String? slogan;
  String? lat;
  String? lng;
  String? ownerUserId;
  String? created;
  String? modified;

  Group(
      {this.id,
      this.name,
      this.description,
      this.logo,
      this.isClan,
      this.slogan,
      this.lat,
      this.lng,
      this.ownerUserId,
      this.created,
      this.modified});

  Group.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    logo = json['logo'];
    isClan = json['is_clan'];
    slogan = json['slogan'];
    lat = json['lat'];
    lng = json['lng'];
    ownerUserId = json['owner_user_id'];
    created = json['created'];
    modified = json['modified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['logo'] = this.logo;
    data['is_clan'] = this.isClan;
    data['slogan'] = this.slogan;
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    data['owner_user_id'] = this.ownerUserId;
    data['created'] = this.created;
    data['modified'] = this.modified;
    return data;
  }

}
