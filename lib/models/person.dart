import 'package:cloud_firestore/cloud_firestore.dart';

class Person{
  String? imageProfile;
  String? name;
  String? username;
  String? email;
  String? password;
  String? gender;
  String? age;
  String? phone;
  String? city;
  String? country;
  String? profileHeadline;
  String? lookForInaPartener;
  int? publishedDateTime;
  String? height;
  String? body;
  String? weight;
  String? drink;
  String? smoke;
  String? martialStatus;
  String? haveChildren;
  String? noOfChildren;
  String? employeeStatus;
  String? profession;
  String? income;
  String? livingStuation;
  String? willingTorelocate;
  String? relationShipYouArelookingFor;



  String? nationality;
  String? languageSpoken;
  String? education;
  String? religion;
  String? ethenicity;
  Person({
    this.imageProfile,
    this.name,
    this.username,
    this.email,
    this.password,
    this.age,
    this.gender,
    this.phone,
    this.city,
    this.country,
    this.profileHeadline,
    this.lookForInaPartener,
    this.publishedDateTime,
    this.height,
    this.body,
    this.weight,
    this.drink,
    this.smoke,
    this.martialStatus,
    this.haveChildren,
    this.noOfChildren,
    this.employeeStatus,
    this.profession,
    this.income,
    this.livingStuation,
    this.willingTorelocate,
    this.relationShipYouArelookingFor,
    this.nationality,
    this.languageSpoken,
    this.education,
    this.religion,
    this.ethenicity,


});
  static Person fromDataSnapshot(DocumentSnapshot snapshot)
  {
   var datasnapshot=  snapshot.data() as Map<String , dynamic>;
   return Person(
       name:  datasnapshot["name"],
       imageProfile:  datasnapshot["imageProfile"],
       username:  datasnapshot["username"],
       email:  datasnapshot["email"],
       password:  datasnapshot["password"],
       age: datasnapshot["age"],

       gender:  datasnapshot["gender"],
       city:  datasnapshot["city"],
       phone:  datasnapshot["phone"],
       country:  datasnapshot["country"],
       profileHeadline:  datasnapshot["profileHeadline"],
       lookForInaPartener:  datasnapshot["lookForInaPartener"],
       publishedDateTime:  datasnapshot["publishedDateTime"],
       height:  datasnapshot["height"],
       body:  datasnapshot["body"],
       weight:  datasnapshot["weight"],
       drink:  datasnapshot["drink"],
       smoke:  datasnapshot["smoke"],
       martialStatus:  datasnapshot["martialStatus"],
       haveChildren:  datasnapshot["haveChildren"],
       noOfChildren:  datasnapshot["noOfChildren"],
       employeeStatus:  datasnapshot["employeeStatus"],
       profession:  datasnapshot["profession"],
       income:  datasnapshot["income"],
       livingStuation:  datasnapshot["livingStuation"],
       willingTorelocate:  datasnapshot["willingTorelocate"],
       relationShipYouArelookingFor:  datasnapshot["relationShipYouArelookingFor"],
       nationality:  datasnapshot["nationality"],
       languageSpoken:  datasnapshot["languageSpoken"],
       education:  datasnapshot["education"],
       religion:  datasnapshot["religion"],
       ethenicity:  datasnapshot["ethenicity"],
     Map<String, dynamic> toJson()=>
   {
       "name" : name,
    "imageProfile": imageProfile,
    "username" : username,
    "email": email,
    "password" : password,
    "age": age,
    "gender" : gender,
    "city": city,
    "phone" : phone,
    "country": country,
    "profileHeadline" : profileHeadline,
    "lookForInaPartener": lookForInaPartener,
    "publishedDateTime" : publishedDateTime,
    "height": height,
    "weight" : weight,
    "body": body,
    "drink" : drink,
    "smoke": smoke,
    "martialStatus" : martialStatus,
    "haveChildren": haveChildren,
    "employeeStatus" : employeeStatus,
    "profession": profession,
    "income" : income,
    "livingStuation": livingStuation,
    "willingTorelocate": willingTorelocate,
    "relationShipYouArelookingFor" : relationShipYouArelookingFor,
    "languageSpoken": languageSpoken,
    "education" : education,
    "religion": religion,
    "ethenicity" : ethenicity,
    "nationality": nationality,
   }
   );
  }
}