class User{
  int ?id;
  String ?name;
  String ?email;
  String ?created_at;
  String ?updated_at;

  User({this.id, this.name, this.email, this.created_at, this.updated_at});

  User.fromJson(Map<String,dynamic>json){
    id=json['id'];
    name=json['name'];
    email=json['email'];
    created_at=json['created_at'];
    updated_at=json['updated_at'];
  }
}