class AppStrings {
  static AppStrings _instance;
  static AppStrings get instance {
    if (_instance == null) _instance = AppStrings._init();
    return _instance;
  }

  AppStrings._init();

  String get welcome => "Welcome!";
  String get employeLogin => "Employee Login";
  String get loginDescription => "Please Sign-in to continue";
  String get emailAdress => "Email Address";
  String get password => "Password";
  String get forgotPassword => "Forgot Password";
  String get signIn => "Sign In";
  String get signInSuccessful => "Sign In Successful!";
  String get welcomeToLoginApp => "Welcome to Login App";
}
