class Setting{
  final String userName;
  final int whitWhomLive;
  final int howToGetSchool;
  final int typeOfDisability;
  final int siblingCount;
  final int familyIncomeMoney;
  final bool rentOfHouse;
  final bool working;
  final bool outsideFromFamily;
  final bool haveOwnRoom;
  final bool cameFromAbroad;
  final bool scholarship;
  final bool scheck;
  final bool applied;

  Setting({
    required this.userName,
    required this.whitWhomLive,
    required this.howToGetSchool,
    required this.typeOfDisability,
    required this.siblingCount,
    required this.familyIncomeMoney,
    required this.rentOfHouse,
    required this.working,
    required this.outsideFromFamily,
    required this.haveOwnRoom,
    required this.cameFromAbroad,
    required this.scholarship,
    required this.scheck,
    required this.applied,
});

  factory Setting.fromJson(Map<String,dynamic>json){
    return Setting(
        userName: json["UserName"],
        whitWhomLive: json["WhitWhomLive"],
        howToGetSchool: json["HowToGetSchool"],
        typeOfDisability: json["TypeOfDisability"],
        siblingCount: json["SiblingCount"],
        familyIncomeMoney: json["FamilyIncomeMoney"],
        rentOfHouse: json["RentOfHouse"],
        working: json["Working"],
        outsideFromFamily: json["OutsideFromFamily"],
        haveOwnRoom: json["HaveOwnRoom"],
        cameFromAbroad: json["CameFromAbroad"],
        scholarship: json["Scholarship"],
        scheck: json["Scheck"],
        applied: json["Applied"]
    );
  }

  toJson(){
    return {
      "UserName": userName,
      "WhitWhomLive": whitWhomLive,
      "HowToGetSchool": howToGetSchool,
      "TypeOfDisability": typeOfDisability,
      "SiblingCount": siblingCount,
      "FamilyIncomeMoney": familyIncomeMoney,
      "RentOfHouse": rentOfHouse,
      "Working": working,
      "OutsideFromFamily": outsideFromFamily,
      "HaveOwnRoom": haveOwnRoom,
      "CameFromAbroad": cameFromAbroad,
      "Scholarship": scholarship,
      "Scheck": scheck,
      "Applied": applied
    };
  }

}