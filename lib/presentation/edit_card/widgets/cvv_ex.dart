import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tenge_bank_test/presentation/edit_card/components/input_formatters.dart';
import 'package:tenge_bank_test/provider/card_design_provider.dart';

class CvvEx extends StatelessWidget {
  const CvvEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.35,
        child: TextFormField(
          keyboardType: TextInputType.number,
          validator: (value) =>
          context.read<CardDesignProvider>().expDateController.text.length !=
              5
              ? "Incorrect Value"
              : null,
          controller: context.read<CardDesignProvider>().expDateController,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(4),
            CardMonthInputFormatter(),
          ],
          decoration: InputDecoration(
            hintText: "MM/YY",
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SvgPicture.asset("assets/icons/calender.svg"),
            ),
          ),
        ),
      );




  }
}
