import 'package:flutter/cupertino.dart';

import '../../../core/constraints/constants.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kColorWhite,
          size: 30,
        ),
        Text(title)
      ],
    );
  }
}
