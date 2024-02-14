import 'package:cardify/constants/Assets.dart';
import 'package:cardify/constants/Pallete.dart';
import 'package:cardify/screens/profile/containers/options.dart';
import 'package:cardify/screens/profile/containers/user_details.dart';
import 'package:cardify/screens/profile/widgets/action_button.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "My Profile",
          style: TextStyle(color: Colors.black, fontSize: 20),
          textAlign: TextAlign.left,
        ),
        UserDetails(),
        SizedBox(
          height: 10,
        ),
        Options(),
        SizedBox(
          height: 10,
        ),
        Row(
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
              text: "Logout",
              bgColor: Pallete.red,
              imageUrl: Assets.logout,
            )),
          ],
        )
      ],
    );
  }
}
