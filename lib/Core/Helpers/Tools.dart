class Tools{
  static bool isValidPass(String pass){
    return RegExp(r"^(?=.*\d)(?=.*[#$^+=!*()@%&])(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$")
        .hasMatch(pass);
  }
}