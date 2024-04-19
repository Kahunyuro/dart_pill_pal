

class drugs {
  final String Name;
  final String Price;
  final String Image;
  final String rating;
  final int quantity;
  const drugs({
    required this.quantity,
    required this.Name,
    required this.Price,
    required this.Image,
    required this.rating,
  });

  String get _name => Name;
  String get _price => Price;
  String get _image => Image;
  String get _prefix => rating;


}
