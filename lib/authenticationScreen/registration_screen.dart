import "dart:io";

import "package:chattar/controllers/authentication_controllers.dart";
import "package:chattar/widgets/custom-text-field-widget.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen>
{
  TextEditingController emailTextEditingController =TextEditingController();
  TextEditingController passwordTextEditingController =TextEditingController();
  TextEditingController nameTextEditingController =TextEditingController();
  TextEditingController usernameTextEditingController =TextEditingController();
  TextEditingController genderTextEditingController =TextEditingController();
  TextEditingController ageTextEditingController =TextEditingController();
  TextEditingController phoneTextEditingController =TextEditingController();
  TextEditingController cityTextEditingController =TextEditingController();
  TextEditingController countryTextEditingController =TextEditingController();
  TextEditingController profileHeadlineTextEditingController =TextEditingController();
  TextEditingController lookForInaPartenerTextEditingController =TextEditingController();

  TextEditingController heightTextEditingController =TextEditingController();
  TextEditingController bodyTypeTextEditingController =TextEditingController();
  TextEditingController weightTextEditingController =TextEditingController();

  TextEditingController drinkTextEditingController =TextEditingController();
  TextEditingController smokeTextEditingController =TextEditingController();
  TextEditingController martialStatusTextEditingController =TextEditingController();
  TextEditingController haveChildrenTextEditingController =TextEditingController();
  TextEditingController noOfChildrenTextEditingController =TextEditingController();
  TextEditingController employeeStatusTextEditingController =TextEditingController();
  TextEditingController professionTextEditingController =TextEditingController();
  TextEditingController incomeTextEditingController =TextEditingController();
  TextEditingController livingStuationTextEditingController =TextEditingController();
  TextEditingController willingTorelocateTextEditingController =TextEditingController();
  TextEditingController relationShipYouArelookingForTextEditingController =TextEditingController();

  TextEditingController nationalityTextEditingController =TextEditingController();
  TextEditingController languageSpokenTextEditingController =TextEditingController();
  TextEditingController educationTextEditingController =TextEditingController();
  TextEditingController religionTextEditingController =TextEditingController();
  TextEditingController ethenicityTextEditingController =TextEditingController();
  bool showProgressBar= false;

  var authenticationControllers = AuthenticationControllers.authControllers;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              const SizedBox(
                height: 35,
              ),

              const Text("Create account",
              style: TextStyle(
                fontSize: 10,
                color: Colors.lightGreen,
                fontWeight: FontWeight.bold,

              ),
              ),
          //authenticationControllers.pickImageFileFromGallery();
              const SizedBox(
                height: 10,
              ),

              const Text("Start here",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,

                ),
              ),
              const SizedBox(
                height: 20,
              ),
              authenticationControllers.imageFile ==null?
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(
                    "images/chatter2.jpg"
                ),
                backgroundColor: Colors.black,

              ):Container(
               width:180,
               height:180,
               decoration: BoxDecoration(
                 shape:BoxShape.circle,
                 color: Colors.grey,
                 image: DecorationImage(
                   fit: BoxFit.fitHeight,
                   image: FileImage(
                     File(
                       authenticationControllers.imageFile!.path,
                     )
                   )
                 )
               )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () async
                    {
                     await authenticationControllers.pickImageFileFromGallery();
                     setState(() {
                       authenticationControllers.imageFile;
                     });
                    },
                    icon: const Icon(Icons.image,
                    color: Colors.pinkAccent,
                    size: 30,),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  IconButton(
                    onPressed: () async
                    {
                    await  authenticationControllers.captureImageFromPhoneCamera();
                    setState(() {
                      authenticationControllers.imageFile;
                    });
                    },
                    icon: const Icon(Icons.camera_alt_outlined,
                      color: Colors.pinkAccent,
                      size: 30,),
                  )
                ],
              ),

              const SizedBox(
                height: 25,
              ),
              const Text("Personal information",
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,

                ),
              ),
              const SizedBox(
                height: 25,
              ),

              // names
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: nameTextEditingController,
                  labelText: "Enter your names",
                  iconData: Icons.person,
                  isObsecure: false,

                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //username
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: usernameTextEditingController,
                  labelText: "Username",
                  iconData: Icons.person_pin,
                  isObsecure: false,

                ),
              ),

              //email
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: emailTextEditingController,
                  labelText: "email",
                  iconData: Icons.email_sharp,
                  isObsecure: false,

                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // password
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: passwordTextEditingController,
                  labelText: "Password",
                  iconData: Icons.lock_outlined,
                  isObsecure: true,

                ),
              ),
              //gender
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: genderTextEditingController,
                  labelText: "Gender",
                  iconData: Icons.person_pin_outlined,
                  isObsecure: false,

                ),
              ),
              const SizedBox(
                height: 10,
              ),


              //age

              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: ageTextEditingController,
                  labelText: "Age",
                  iconData: Icons.numbers_rounded,
                  isObsecure: false,

                ),
              ),
              //phone
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: phoneTextEditingController,
                  labelText: "Phone number",
                  iconData: Icons.phone,
                  isObsecure: false,

                ),
              ),
              //city
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: cityTextEditingController,
                  labelText: "City",
                  iconData: Icons.location_city,
                  isObsecure: false,

                ),
              ),
              //county
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: countryTextEditingController,
                  labelText: "Country",
                  iconData: Icons.map,
                  isObsecure: false,

                ),
              ),
              //profile
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: profileHeadlineTextEditingController,
                  labelText: "Profile",
                  iconData: Icons.text_decrease_sharp,
                  isObsecure: false,

                ),
              ),
              //patern
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: lookForInaPartenerTextEditingController,
                  labelText: "a Kind of person that intrest you",
                  iconData: Icons.face,
                  isObsecure: false,

                ),
              ),
              const SizedBox(
                height: 10,
              ),
             // appearance
              const Text("Appearance",
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,

                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // height
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: heightTextEditingController,
                  labelText: "Height",
                  iconData: Icons.insert_chart,
                  isObsecure: false,

                ),
              ),
              const SizedBox(
                height: 10,
              ),

              //weight
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: weightTextEditingController,
                  labelText: "Weight",
                  iconData: Icons.table_chart,
                  isObsecure: false,

                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //body type
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: bodyTypeTextEditingController,
                  labelText: "Body type",
                  iconData: Icons.type_specimen,
                  isObsecure: false,

                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //Life style

              const Text("Life style:",
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,

                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Drink
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: drinkTextEditingController,
                  labelText: "Drink",
                  iconData: Icons.local_drink,
                  isObsecure: false,

                ),
              ),
              const SizedBox(
                height: 10,
              ),

              //Smoke
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: smokeTextEditingController,
                  labelText: "Smoke",
                  iconData: Icons.smoking_rooms_outlined,
                  isObsecure: false,

                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //body type
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: martialStatusTextEditingController,
                  labelText: "Martual status",
                  iconData: CupertinoIcons.person_2,
                  isObsecure: false,

                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Have child
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: haveChildrenTextEditingController,
                  labelText: "Do you have childreen?",
                  iconData: CupertinoIcons.person_3_fill,
                  isObsecure: false,

                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // number of children
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: noOfChildrenTextEditingController,
                  labelText: "Number of children",
                  iconData: CupertinoIcons.person_2_fill,
                  isObsecure: false,

                ),
              ),
              const SizedBox(
                height: 10,
              ),
             // Proffession
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: professionTextEditingController,
                  labelText: "Profession",
                  iconData: Icons.business_center,
                  isObsecure: false,

                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //employment status
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: employeeStatusTextEditingController,
                  labelText: "Your employment status",
                  iconData: CupertinoIcons.rectangle_stack_person_crop,
                  isObsecure: false,

                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Income
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: incomeTextEditingController,
                  labelText: "Income",
                  iconData: CupertinoIcons.money_dollar_circle,
                  isObsecure: false,

                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Living Stuation
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: livingStuationTextEditingController,
                  labelText: "Living ",
                  iconData: CupertinoIcons.person_2_square_stack,
                  isObsecure: false,

                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Willing to relocate
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: willingTorelocateTextEditingController,
                  labelText: "Are you willing to relocate? ",
                  iconData: CupertinoIcons.person_2,
                  isObsecure: false,

                ),
              ),
              const SizedBox(
                height: 10,
              ),

              //relation you are looking for
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: relationShipYouArelookingForTextEditingController,
                  labelText: "What relation ship you are looking for :",
                  iconData: CupertinoIcons.person_crop_circle_badge_checkmark,
                  isObsecure: false,

                ),
              ),
              const SizedBox(
                height: 10,
              ),

              const Text("Back ground and culture:",
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,

                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Nationality
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: nationalityTextEditingController,
                  labelText: "Nationality",
                  iconData: Icons.flag,
                  isObsecure: false,

                ),
              ),
              const SizedBox(
                height: 10,
              ),

              //Education
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: educationTextEditingController,
                  labelText: "Education",
                  iconData: Icons.history_edu,
                  isObsecure: false,

                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Language
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: languageSpokenTextEditingController,
                  labelText: "Language spoken",
                  iconData: CupertinoIcons.person_badge_plus_fill,
                  isObsecure: false,

                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // religion
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: religionTextEditingController,
                  labelText: "Your religion believe",
                  iconData: CupertinoIcons.check_mark_circled_solid,
                  isObsecure: false,

                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Ethenicity
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: ethenicityTextEditingController,
                  labelText: "Ethenicity",
                  iconData: CupertinoIcons.eye,
                  isObsecure: false,

                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),

                  ),
                ),
                child: InkWell(
                  onTap: (){

                  },
                  child: const Center(
                    child: Text(
                      "Signup", style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87
                    ),
                    ),
                  ),
                ),

              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Do you already have account ?",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.w900,

                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.back(); // Provide an instance of RegistrationScreen
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),


                ],
              ),
              const SizedBox(
                height: 20,
              ),
              showProgressBar==true?
              const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.lightGreenAccent
                ),
              ):
              Container(),
              const SizedBox(
                height: 30,
              ),




            ],
          ),
        ),
      ),
    );
  }
}
