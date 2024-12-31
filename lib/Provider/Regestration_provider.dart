import 'package:assisment/Models/Registration_model.dart';
import 'package:flutter/cupertino.dart';

import '../Services/RegistrationServices.dart';

class RegistrationProvider extends ChangeNotifier {
  RegistrationModel? user;
  Future<void> Login({required String email, required String password}) async {
    user = await RegistrationServices.Login(email, password);
    notifyListeners();
  }

  Future<void> SignUp
      (
      {required String email,
        required String password,
        required String name,
        required String number}
      ) async
  {
    user = await RegistrationServices.SignUp(email, password, name, number);
    notifyListeners();
  }
}