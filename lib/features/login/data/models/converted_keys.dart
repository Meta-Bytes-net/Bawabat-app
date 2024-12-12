class ConvertedKeys {
  String? encryprionkey;
  String? iv;
  ConvertedKeys({this.encryprionkey, this.iv});
  // json serialization
  Map<String, dynamic> toJson() => {
        'encryprionkey': encryprionkey,
        'iv': iv,
      };

  factory ConvertedKeys.fromJson(Map<String, dynamic> json) => ConvertedKeys(
        encryprionkey: json['encryprionkey'],
        iv: json['iv'],
      );
}
