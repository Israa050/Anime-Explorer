
class Character {

  final int id;
  String? _imagePath;
  String? _characterName;
  String? _animeName;

  Character(this.id,this._imagePath,this._characterName,this._animeName);

  String? get imagePath => _imagePath;
  set imagePath(String? image) => _imagePath = image;

  String? get characterName => _characterName;
  set characterName(String? name) => _characterName = name;

 String? get animeName => _animeName;
  set animeName(String? anime) => _animeName = anime;
  
}