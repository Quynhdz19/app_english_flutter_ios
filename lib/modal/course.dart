class Course{
  int ?id;
  String ?name_course;
  String ?url_background;
  String ?created_at;
  String ?updated_at;


  Course(
      {this.id,
      this.name_course,
      this.created_at,
      this.updated_at,
      this.url_background});

  Course.fromJson(Map<String,dynamic> json){
    id=json['id'];
    name_course=json['name_course'];
    url_background=json['url_background'];
    created_at=json['created_at'];
    updated_at=json['updated_at'];
  }
}
