import 'package:flutter/material.dart';

import '../../../core/init/constants/app_strings.dart';
import '../components/login_page_padding_row.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Expanded(flex: 1, child: RandomColorContainer()),
        Spacer(flex: 1),
        Expanded(flex: 6, child: buildBodyLogin(context)),
        Spacer(flex: 3),
        // Expanded(flex: 3, child: RandomColorContainer()),
      ],
    );
  }

  Widget buildBodyLogin(BuildContext context) {
    return LoginPageRow(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildTextEmployeLogin(context),
          buildTextWelcome(context),
          buildTextDescription(context),
          buildTextFieldEmail,
          buildTextFieldPassword(context),
          buildSignInButton(context),
        ],
      ),
    );
  }

  Text buildTextWelcome(BuildContext context) =>
      Text(AppStrings.instance.welcome, style: welcomeTextStyle(context));

  TextStyle welcomeTextStyle(BuildContext context) => Theme.of(context)
      .textTheme
      .headline4
      .copyWith(color: Colors.black, fontWeight: FontWeight.w300);

  Text buildTextEmployeLogin(BuildContext context) =>
      Text(AppStrings.instance.employeLogin, style: loginTextStyle(context));

  TextStyle loginTextStyle(BuildContext context) => Theme.of(context)
      .textTheme
      .caption
      .copyWith(color: Colors.black, fontWeight: FontWeight.w400);

  Text buildTextDescription(BuildContext context) =>
      Text(AppStrings.instance.loginDescription, style: descriptionTextStyle(context));

  TextStyle descriptionTextStyle(BuildContext context) => Theme.of(context)
      .textTheme
      .subtitle1
      .copyWith(color: Colors.black, fontWeight: FontWeight.w300);

  TextField get buildTextFieldEmail {
    return TextField(
      autofocus: true,
      decoration: InputDecoration(labelText: AppStrings.instance.emailAdress),
      keyboardType: TextInputType.emailAddress,
    );
  }

  TextField buildTextFieldPassword(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: buildInputDecorationPassword(context),
      keyboardType: TextInputType.visiblePassword,
    );
  }

  InputDecoration buildInputDecorationPassword(BuildContext context) => InputDecoration(
      labelText: AppStrings.instance.password, suffixIcon: buildForgetPasswordButton(context));

  FlatButton buildForgetPasswordButton(BuildContext context) {
    return FlatButton(
      shape: StadiumBorder(),
      onPressed: () {},
      child: Text(AppStrings.instance.forgotPassword, style: buildTextStyleForgotPassword(context)),
    );
  }

  TextStyle buildTextStyleForgotPassword(BuildContext context) =>
      Theme.of(context).textTheme.button.copyWith(color: Colors.blue, fontWeight: FontWeight.w400);

  FlatButton buildSignInButton(BuildContext context) {
    return FlatButton(
      shape: StadiumBorder(),
      onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/welcome', (route) => false),
      child: Text(AppStrings.instance.signIn, style: buttonTextStyle(context)),
      color: Colors.blue,
    );
  }

  TextStyle buttonTextStyle(BuildContext context) =>
      Theme.of(context).textTheme.button.copyWith(color: Colors.white, fontWeight: FontWeight.w500);
}
