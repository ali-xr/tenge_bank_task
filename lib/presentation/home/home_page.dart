import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tenge_bank_test/data_card_bloc/data_card_bloc.dart';
import 'package:tenge_bank_test/presentation/edit_card/edit_new_card.dart';
import 'package:tenge_bank_test/presentation/redesign/redesign_page.dart';
import 'package:tenge_bank_test/provider/card_design_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late DataCardBloc dataCardBloc;

  @override
  void initState() {
    dataCardBloc = DataCardBloc();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final read = context.read<CardDesignProvider>();
    return BlocProvider.value(
      value: dataCardBloc,
      child: Scaffold(
        appBar: AppBar(title: Text("Your payment card")),
        body: BlocBuilder<DataCardBloc, DataCardState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: size.height * 0.3,
                  width: size.width * 0.9,
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: context.read<CardDesignProvider>().currentColor,
                    image: context.read<CardDesignProvider>().setColor
                        ? null
                        : DecorationImage(
                            image: context.read<CardDesignProvider>().image !=
                                    null
                                ? FileImage(
                                    context.read<CardDesignProvider>().image!)
                                : const AssetImage(
                                        "assets/images/back-image.jpeg")
                                    as ImageProvider,
                            fit: BoxFit.cover,
                          ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                          sigmaX: 0,
                          sigmaY:
                              context.read<CardDesignProvider>().slider * 10),
                      child: Container(
                        height: size.height * 0.3,
                        width: size.width * 0.9,
                        margin: const EdgeInsets.all(20),
                        alignment: Alignment.bottomLeft,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: state.cardDataEntity.panNumber.isEmpty
                                    ? "8600 1234 4567 7890\n\n"
                                    : "${read.cardNumberController.text}\n\n",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        color: context
                                                .read<CardDesignProvider>()
                                                .textColor ??
                                            Colors.black),
                              ),
                              TextSpan(
                                text: state.cardDataEntity.date.isEmpty
                                    ? "03/28\n\n"
                                    : "${state.cardDataEntity.date}\n\n",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                        color: context
                                                .read<CardDesignProvider>()
                                                .textColor ??
                                            Colors.black),
                              ),
                              TextSpan(
                                text: state.cardDataEntity.fullName.isEmpty
                                    ? "Xurshetov Ali Azamatovich"
                                    : state.cardDataEntity.fullName,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                        color: context
                                                .read<CardDesignProvider>()
                                                .textColor ??
                                            Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                 EditCardParametersScreen(dataCardBloc: dataCardBloc,))),
                    child: Text(
                      "Edit Your Card Parameters",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RedesignPage())),
                    child: Text(
                      "Edit Your Card Design",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            );
          },
        ),
      ),
    );
  }
}
