class Course{
  int ?id;
  String ?user_id;
  String ?name_course;
  String ?created_at;
  String ?updated_at;


  Course(
      {this.id,
      this.user_id,
      this.name_course,
      this.created_at,
      this.updated_at});

  Course.fromJson(Map<String,dynamic> json){
    id=json['id'];
    user_id=json['user_id'];
    name_course=json['name_course'];
    created_at=json['created_at'];
    updated_at=json['updated_at'];
  }
}
