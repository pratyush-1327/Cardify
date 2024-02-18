import 'package:cardify/constants/Assets.dart';
import 'package:cardify/constants/Pallete.dart';
import 'package:cardify/provider/auth.provider.dart';
import 'package:cardify/screens/profile/containers/options.dart';
import 'package:cardify/screens/profile/containers/user_details.dart';
import 'package:cardify/screens/profile/widgets/action_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            "My Profile",
            style: TextStyle(color: Colors.black, fontSize: 20),
            textAlign: TextAlign.left,
          ),
        ),
        UserDetails(),
        SizedBox(
          height: 10,
        ),
        Options(),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            children: [
              Expanded(
                  child: ActionButton(
                text: "Delete Account",
                bgColor: Pallete.blue,
                imageUrl: Assets.deleteAccount,
              )),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: ActionButton(
                fun: () {
                  context.read<FireAuth>().logout().then((value) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/", (route) => false);
                  });
                },
                text: "Logout",
                bgColor: Pallete.red,
                imageUrl: Assets.logout,
              )),
            ],
          ),
        )
      ],
    );
  }
}
