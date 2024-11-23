class Video{
  int ?id;
  String ?name_video;
  String ?url_video;
  String ?created_at;
  String ?updated_at;


  Video(
      {this.id,
        this.name_video,
        this.url_video,
        this.created_at,
        this.updated_at});

  Video.fromJson(Map<String,dynamic> json){
    id=json['id'];
    name_video=json['name_video'];
    url_video=json['url_video'];
    created_at=json['created_at'];
    updated_at=json['updated_at'];
  }
}