class Student{
  final String studentId;
  final String nameAndSurname;
  final String number;
  final String branch;
  final String phone;
  final String address;
  final String classroom;
  final int numberOfBrotherAndSister;
  final int familyIncomeMoney;
  final String typeOfDisability;
  final bool scheck;
  final bool rentOfHouse;
  final bool haveOwnRoom;
  final bool working;
  final bool outsideFromFamily;
  final bool cameFromAbroad;
  final bool scholarship;
  final String homeHeating;
  final String whitWhomLive;
  final String howToGetSchool;
  final String guardian;
  final String guardianPhone;

  Student({
    required this.studentId,
    required this.nameAndSurname,
    required this.number,
    required this.branch,
    required this.phone,
    required this.address,
    required this.classroom,
    required this.numberOfBrotherAndSister,
    required this.familyIncomeMoney,
    required this.typeOfDisability,
    required this.scheck,
    required this.rentOfHouse,
    required this.haveOwnRoom,
    required this.working,
    required this.outsideFromFamily,
    required this.cameFromAbroad,
    required this.scholarship,
    required this.homeHeating,
    required this.whitWhomLive,
    required this.howToGetSchool,
    required this.guardian,
    required this.guardianPhone,

  });

  factory Student.fromJson(Map<String,dynamic>json){
    return Student(
      studentId:json["StudentId"],
      nameAndSurname:json["NameAndSurname"],
      number:json["Number"],
      branch:json["Branch"],
      phone:json["Phone"],
      address:json["Address"],
      classroom:json["Classroom"],
      numberOfBrotherAndSister:json["NumberOfBrotherAndSister"],
      familyIncomeMoney:json["FamilyIncomeMoney"],
      typeOfDisability:json["TypeOfDisability"],
      scheck:json["Scheck"],
      rentOfHouse:json["RentOfHouse"],
      haveOwnRoom:json["HaveOwnRoom"],
      working:json["Working"],
      outsideFromFamily:json["OutsideFromFamily"],
      cameFromAbroad:json["CameFromAbroad"],
      scholarship:json["Scholarship"],
      homeHeating:json["HomeHeating"],
      whitWhomLive:json["WhitWhomLive"],
      howToGetSchool:json["HowToGetSchool"],
      guardian:json["Guardian"],
      guardianPhone:json["GuardianPhone"],
    );
  }
}