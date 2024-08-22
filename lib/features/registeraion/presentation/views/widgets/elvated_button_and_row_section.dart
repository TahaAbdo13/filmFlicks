import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_elevated_button.dart';
import 'package:filmflicks/features/registeraion/presentation/views/widgets/wellcome_view_body.dart';
import 'package:flutter/material.dart';

import 'have_an_acount_row.dart';

class ElvatedButtonAndRowSection extends StatelessWidget {
  const ElvatedButtonAndRowSection({
    super.key,
   
  });



  @override
  Widget build(BuildContext context) {
     var hieght = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SizedBox(
            width: width,
            height: hieght * 0.080,
            child: CustomElevatedButton(
              onPressed: () {},
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
       const HaveAnAcountRow()
      ],
    );
  }
}
