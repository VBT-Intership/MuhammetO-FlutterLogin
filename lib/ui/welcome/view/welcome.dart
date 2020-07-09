import 'package:flutter/material.dart';

import '../../../core/init/constants/app_strings.dart';

class WelcomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildDoneIcon(context),
          SizedBox(height: 20),
          buildSignInText(context),
          SizedBox(height: 20),
          buildWelcomeText(context),
        ],
      ),
    );
  }

  Center buildDoneIcon(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.14,
        width: MediaQuery.of(context).size.width * 0.22,
        decoration: buildBoxDecoration,
        child: buildShaderMaskGradientIcon(context),
      ),
    );
  }

  BoxDecoration get buildBoxDecoration =>
      BoxDecoration(color: Colors.white, shape: BoxShape.circle, boxShadow: [buildBoxShadow]);

  BoxShadow get buildBoxShadow =>
      BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, 5));

  ShaderMask buildShaderMaskGradientIcon(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (Rect bounds) => buildRadialGradient.createShader(bounds),
      child: buildIcon(context),
    );
  }

  RadialGradient get buildRadialGradient {
    return RadialGradient(
      center: Alignment.topRight,
      radius: 0.45,
      colors: <Color>[Color(0xFF5DACED), Color(0xFF351398)],
      tileMode: TileMode.mirror,
    );
  }

  Icon buildIcon(BuildContext context) => Icon(
        Icons.done_all,
        size: MediaQuery.of(context).size.height * 0.08,
      );

  Text buildSignInText(BuildContext context) =>
      Text(AppStrings.instance.signInSuccessful, style: signInTextStyle(context));

  TextStyle signInTextStyle(BuildContext context) => Theme.of(context)
      .textTheme
      .subtitle1
      .copyWith(color: Colors.black.withOpacity(0.7), fontWeight: FontWeight.w500);

  Text buildWelcomeText(BuildContext context) =>
      Text(AppStrings.instance.welcomeToLoginApp, style: welcomeTextStyle(context));

  TextStyle welcomeTextStyle(BuildContext context) => Theme.of(context)
      .textTheme
      .headline4
      .copyWith(color: Colors.black, fontWeight: FontWeight.w300);
}
