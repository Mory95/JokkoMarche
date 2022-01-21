class User {
  int? id;
  String? first_name;
  String? last_name;
  String? sexe;
  String? adress;
  String? phone_number;
  String? email;

  User({
    this.id,
    this.first_name,
    this.last_name,
    this.sexe,
    this.adress,
    this.phone_number,
    this.email,
  });

  factory User.fromJson(Map<String, dynamic> json){
    return User(
      id:json['user']['id'],
      first_name:json['user']['id'],
      last_name:json['user']['id'],
      sexe:json['user']['id'],
      adress:json['user']['id'],
      email:json['user']['id'],
    );
  }
}
