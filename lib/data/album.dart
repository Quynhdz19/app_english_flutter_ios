class Album{
  int ?id;
  String ?user_id;
  String ?name_course;
  String ?created_at;
  String ?updated_at;


  Album(
      {this.id,
      this.user_id,
      this.name_course,
      this.created_at,
      this.updated_at});

  Album.fromJson(Map<String,dynamic> json){
    id=json['id'];
    user_id=json['user_id'];
    name_course=json['name_course'];
    created_at=json['created_at'];
    updated_at=json['updated_at'];
  }
}
// {
// "id": 1,
// "user_id": "1",
// "name_course": "Lập trình 1",
// "created_at": "2024-09-14T09:21:27.000000Z",
// "updated_at": "2024-09-14T09:21:27.000000Z"
// },