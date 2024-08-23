
import 'package:flutter/material.dart';

class ViewBodyTextSection extends StatelessWidget {
  final String title1, title2;
  final TextStyle style1, style2;

  const ViewBodyTextSection({
    super.key,
    required this.title1,
    required this.title2, required this.style1, required this.style2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title1,
          style: style1
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title2,
          style:style2,
        )
      ],
    );
  }
}
