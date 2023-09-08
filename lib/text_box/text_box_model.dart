class TextBoxModel {
  final int? id;
  final String name;

  TextBoxModel({
    this.id,
    required this.name,
  });

  TextBoxModel.fromMap(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'];

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }
}
