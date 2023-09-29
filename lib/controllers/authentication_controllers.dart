import 'package:get/get.dart';
//import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class AuthenticationControllers extends GetxController
{
  static AuthenticationControllers  authControllers =Get.find();
  late Rx<File?> pickedFile;
  File? get profileImage =>pickedFile.value;
  XFile? imageFile;

  pickImageFileFromGallery() async
  {
    imageFile = await ImagePicker().pickImage(source:ImageSource.gallery);
    if (imageFile !=null)
    {
      Get.snackbar("Profile Image", " You have succesfuly picked your Profile image");
    }
    pickedFile = Rx<File?>(File(imageFile!.path));
  }
  captureImageFromPhoneCamera() async
  {
    imageFile = await ImagePicker().pickImage(source:ImageSource.camera);
    if (imageFile !=null)
    {
      Get.snackbar("Profile Image", " Your camera image have successfuly taken.");
    }
    pickedFile = Rx<File?>(File(imageFile!.path));
  }
}