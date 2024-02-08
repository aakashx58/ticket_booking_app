import 'package:flutter/cupertino.dart';
import '../utils/app_styles.dart';

class TicketColumn extends StatelessWidget {
  final String firstText, secondText;
  final bool isBig;
  const TicketColumn(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.isBig});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firstText,
          style: isBig ? Styles.headLineStyle3 : Styles.headLineStyle4,
        ),
        Text(
          secondText,
          style: isBig ? Styles.headLineStyle3 : Styles.headLineStyle4,
        ),
      ],
    );
  }
}
