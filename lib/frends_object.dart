class FrendsObject {
  final int id;
  final String name;
  final String point;
  final String win;
  final String lose;
  final String image;
  FrendsObject(
      {required this.id,
      required this.name,
      required this.point,
      required this.win,
      required this.lose,
      required this.image});
  FrendsObject.fromJson(Map<String, dynamic> res)
      : id = res['id'],
        name = res['name'],
        point = res['point'],
        win = res['win'],
        lose = res['lose'],
        image = res['image'];

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'name': name,
      'point': point,
      'win': win,
      'lose': lose,
      'image': image,
    };
  }
}
