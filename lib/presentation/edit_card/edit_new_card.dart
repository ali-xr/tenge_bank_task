import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tenge_bank_test/constains.dart';
import 'package:tenge_bank_test/data_card_bloc/data_card_bloc.dart';
import 'package:tenge_bank_test/entities/card_data.dart';
import 'package:tenge_bank_test/presentation/edit_card/components/card_type.dart';
import 'package:tenge_bank_test/presentation/edit_card/components/card_utilis.dart';
import 'package:tenge_bank_test/presentation/edit_card/components/input_formatters.dart';
import 'package:tenge_bank_test/presentation/edit_card/widgets/card_owner.dart';
import 'package:tenge_bank_test/presentation/edit_card/widgets/cvv_ex.dart';
import 'package:tenge_bank_test/presentation/home/home_page.dart';
import 'package:tenge_bank_test/provider/card_design_provider.dart';

class EditCardParametersScreen extends StatefulWidget {
  final DataCardBloc dataCardBloc;
  const EditCardParametersScreen({Key? key, required this.dataCardBloc})
      : super(key: key);

  @override
  State<EditCardParametersScreen> createState() =>
      _EditCardParametersScreenState();
}

class _EditCardParametersScreenState extends State<EditCardParametersScreen> {
  CardType cardType = CardType.Invalid;
  GlobalKey<FormState> _formkey = GlobalKey();

  void getCardTypeFrmNum() {
    String cardNum = CardUtils.getCleanedNumber(
        context.read<CardDesignProvider>().cardNumberController.text);
    CardType type = CardUtils.getCardTypeFrmNumber(cardNum);
    if (type != cardType) {
      setState(() {
        cardType = type;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    context.read<CardDesignProvider>().cardNumberController.addListener(() {
      getCardTypeFrmNum();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.dataCardBloc,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Add New Card"),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              CupertinoIcons.left_chevron,
              color: Colors.black,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding, vertical: 2 * defaultPadding),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _cardNumber(context),
                const CardOwner(),
                const CvvEx(),
                const Spacer(),
                BlocBuilder<DataCardBloc, DataCardState>(
                  builder: (context, state) {
                    return ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          widget.dataCardBloc.add(DataCardEvent.getCardData(
                              cardDataEntity: CardDataEntity(
                                  panNumber:
                                      _cardNumber(context).controller!.text,
                                  fullName: context
                                      .read<CardDesignProvider>()
                                      .cardOwnerController
                                      .text,
                                  date: context
                                      .read<CardDesignProvider>()
                                      .expDateController
                                      .text),
                              onTap: () {
                                Navigator.pop(
                                  context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) =>
                                  //           const HomePage())).whenComplete(
                                  // () {
                                  //    context.read<CardDesignProvider>().cardNumberController.clear();
                                  //    context.read<CardDesignProvider>().cardOwnerController.clear();
                                  // },
                                  // )
                                );
                              }));
                        }
                      },
                      child: const Text("Confirm Changes"),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField _cardNumber(BuildContext context) {
    return TextFormField(
      controller: context.read<CardDesignProvider>().cardNumberController,
      keyboardType: TextInputType.number,
      validator: (value) =>
          context.read<CardDesignProvider>().cardNumberController.text.length !=
                  22
              ? "Incorrect value"
              : null,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(16),
        CardNumberInputFormatter(),
      ],
      decoration: InputDecoration(
        hintText: "Card number",
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SvgPicture.asset("assets/icons/card.svg"),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CardUtils.getCardIcon(cardType),
        ),
      ),
    );
  }
}
