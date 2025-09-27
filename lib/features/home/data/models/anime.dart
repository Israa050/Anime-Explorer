
class Anime {

  final int id;
  String? _imagePath;
  String? _title;
  String? _genere;

  Anime(this.id, this._imagePath,this._title,this._genere);


  String? get imagePath => _imagePath;
  String? get title => _title;
  String? get genere => _genere;

  set imagePath(String? image) => _imagePath = image;
  set title(String? title) => _title = title;
  set genere(String? genere) => _genere = genere;



}
