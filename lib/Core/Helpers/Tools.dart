class Tools{
  static bool isValidPass(String pass){
    return RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#$^+=!*()@%&]).{8,10}$")
        .hasMatch(pass);
  }
}