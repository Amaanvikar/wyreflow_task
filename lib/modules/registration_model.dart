class UserModel {
  final String? paymentStatus;
  final String? timeEnd;
  final String unique;
  final String fullName;
  final String fatherName;
  final String email;
  final DateTime? dateOfBirth;
  final String? gender;
  final String phoneNumber;
  final String whatsappNumber;
  final String collegeState;
  final String birthPlace;
  final String collegeName;
  final String branchName;
  final String degreeName;
  final int? passingYear;
  final String password;
  final bool verified;
  final String? otp;

  UserModel({
    this.paymentStatus,
    this.timeEnd,
    required this.unique,
    required this.fullName,
    required this.fatherName,
    required this.email,
    this.dateOfBirth,
    this.gender,
    required this.phoneNumber,
    required this.whatsappNumber,
    required this.collegeState,
    required this.birthPlace,
    required this.collegeName,
    required this.branchName,
    required this.degreeName,
    this.passingYear,
    required this.password,
    required this.verified,
    this.otp,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      paymentStatus: json['paymentStatus'],
      timeEnd: json['timeEnd'],
      unique: json['unique'],
      fullName: json['fullName'],
      fatherName: json['fatherName'],
      email: json['email'],
      dateOfBirth: json['dateOfBirth'] != null
          ? DateTime.parse(json['dateOfBirth'])
          : null,
      gender: json['gender'],
      phoneNumber: json['phoneNumber'],
      whatsappNumber: json['whatsappNumber'],
      collegeState: json['collegeState'],
      birthPlace: json['birthPlace'],
      collegeName: json['collegeName'],
      branchName: json['branchName'],
      degreeName: json['degreeName'],
      passingYear: json['passingYear'],
      password: json['password'],
      verified: json['verified'] ?? false,
      otp: json['otp'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'paymentStatus': paymentStatus,
      'timeEnd': timeEnd,
      'unique': unique,
      'fullName': fullName,
      'fatherName': fatherName,
      'email': email,
      'dateOfBirth': dateOfBirth?.toIso8601String(),
      'gender': gender,
      'phoneNumber': phoneNumber,
      'whatsappNumber': whatsappNumber,
      'collegeState': collegeState,
      'birthPlace': birthPlace,
      'collegeName': collegeName,
      'branchName': branchName,
      'degreeName': degreeName,
      'passingYear': passingYear,
      'password': password,
      'verified': verified,
      'otp': otp,
    };
  }
}
