class BetDetails {
  String? betName;
  String? betType;
  int? cuIndex;
  int? entityIndex;
  int? attributeIndex;

  BetDetails({this.cuIndex, this.betName, this.entityIndex, this.attributeIndex, this.betType});

  Map<String, dynamic> toJson() {
    return {
      'betName': betName,
      'betType': betType,
      'cuIndex': cuIndex,
      'entityIndex': entityIndex,
      'attributeIndex': attributeIndex,
    };
  }
}
