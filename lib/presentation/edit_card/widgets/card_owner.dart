import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tenge_bank_test/constains.dart';
import 'package:tenge_bank_test/provider/card_design_provider.dart';

class CardOwner extends StatelessWidget {
  const CardOwner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
        padding:  const EdgeInsets.symmetric(vertical: defaultPadding),
        child: TextFormField(
          controller: context.read<CardDesignProvider>().cardOwnerController,
          validator: (value) =>
          context.read<CardDesignProvider>().cardOwnerController.text.length <
              4
              ? "Incorrect value"
              : null,
          decoration: InputDecoration(
            hintText: "Full name",
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SvgPicture.asset("assets/icons/user.svg"),
            ),
          ),
        ));


  }
}
