class BannerModel {
  final int? id;
  final String name;
  final String price;
  final String package;
  final String dates;
  final String month;
  final String no;

  BannerModel(
      {this.id,
      required this.name,
      required this.dates,
      required this.month,
      required this.no,
      required this.package,
      required this.price});

  BannerModel.fromMap(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        dates = json['dates'],
        month = json['month'],
        no = json['no'],
        package = json['package'],
        price = json['price'];

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'name': name,
      'dates': dates,
      'month': month,
      'no': no,
      'package': package,
      'price': price,
    };
  }
}
