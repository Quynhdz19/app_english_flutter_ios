class AccountRanking{
  int ? id;
  String ? name;
  String? email;
  String ? point;
  String ? created_at;
  String ?updated_at;

  AccountRanking(
      {this.id,
      this.name,
      this.email,
      this.point,
      this.created_at,
      this.updated_at});

  AccountRanking.fromJson(Map<String,dynamic>json){
    id=json['id'];
    name=json['name'];
    email=json['email'];
    point=json['point'];
    created_at=json['created_at'];
    updated_at=json['updated_at'];
  }
}