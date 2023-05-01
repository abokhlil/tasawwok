import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "Enter Correct User Name ";
    }
  }

  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "Enter Correct Email";
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "Enter Correct Phone Number";
    }
  }
  if (val.isEmpty) {
    return "value Can't be Empty";
  }

  if (val.length < min) {
    return "value Can't be lass than $min";
  }
  if (val.length > max) {
    return "value Can't be larger than $max";
  }
  if (val.isEmpty) {
    return "value Can't be Empty";
  }
}
