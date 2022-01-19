class Food {
    int? id;
    String? title;
    int? kcal ;
    String? description ;


   Food(
      {this.id,
      this.title,
      this.kcal,
      this.description,
      }) ;

  factory Food.fromJson(dynamic json) {
   
    return Food(id: json['id'] , 
    title: json['title'] as String , 
    kcal: json['kcal']  , 
    description: json['description'] as String);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['kcal'] = this.kcal;
    data['description'] = this.description;
    return data;
  }
}
