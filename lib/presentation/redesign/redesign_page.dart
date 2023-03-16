import 'dart:io';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:tenge_bank_test/constains.dart';
import 'package:tenge_bank_test/presentation/home/home_page.dart';
import 'package:tenge_bank_test/provider/card_design_provider.dart';

class RedesignPage extends StatefulWidget {
  const RedesignPage({super.key});

  @override
  State<RedesignPage> createState() => _RedesignPageState();
}

class _RedesignPageState extends State<RedesignPage> {
  Color pickerColor = const Color(0xff443a49);
  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return null;
    final imageTempopary = File(image.path);
    setState(() {
      context.read<CardDesignProvider>().image = imageTempopary;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final read = context.read<CardDesignProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Redesign Card"),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(CupertinoIcons.left_chevron, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _card(size),
            Slider.adaptive(
              label: "sgsgs",
              value: read.slider,
              onChanged: (value) {
                setState(() {
                  read.slider = value;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: getImage,
                child: const Text("Image from Gallery"),
              ),
            ),
            _setColorButton(context),
            TextButton(
              onPressed: () => showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => AlertDialog(
                  title: const Text('Pick a color!'),
                  content: SingleChildScrollView(
                    child: ColorPicker(
                      pickerColor: read.textColor ?? Colors.black,
                      onColorChanged: changeColor,
                    ),
                  ),
                  actions: <Widget>[
                    ElevatedButton(
                      child: const Text(
                        'Got it',
                      ),
                      onPressed: () {
                        setState(() => read.textColor = pickerColor);
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
              child: Text(
                "Change Text Color",
                style: TextStyle(color: primaryColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  child: const Text("Confirm Changes")),
            ),
          ],
        ),
      ),
    );
  }

  Container _card(Size size) {
    return Container(
      height: size.height * 0.3,
      width: size.width * 0.9,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: context.read<CardDesignProvider>().currentColor,
        image: context.read<CardDesignProvider>().setColor
            ? null
            : DecorationImage(
                image: context.read<CardDesignProvider>().image != null
                    ? FileImage(context.read<CardDesignProvider>().image!)
                    : const AssetImage("assets/images/back-image.jpeg")
                        as ImageProvider,
                fit: BoxFit.cover,
              ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: BackdropFilter(
          filter: ImageFilter.blur(
              sigmaX: 0,
              sigmaY: context.read<CardDesignProvider>().slider * 10),
          child: Container(
            alignment: Alignment.bottomRight,
            margin: const EdgeInsets.all(20),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "0000 0000 0000 0000\n\n",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: context.read<CardDesignProvider>().textColor ??
                            Colors.black),
                  ),
                  TextSpan(
                    text: "00/00\n\n",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: context.read<CardDesignProvider>().textColor ??
                            Colors.black),
                  ),
                  TextSpan(
                    text: "Abdullayev Abdulla Abdullayevich",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: context.read<CardDesignProvider>().textColor ??
                            Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding _setColorButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: () {
          context.read<CardDesignProvider>().setColor
              ? setState(() {
                  context.read<CardDesignProvider>().setColor =
                      !context.read<CardDesignProvider>().setColor;
                  context.read<CardDesignProvider>().currentColor =
                      Colors.transparent;
                })
              : showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) => AlertDialog(
                    title: const Text('Pick a color!'),
                    content: SingleChildScrollView(
                      child: ColorPicker(
                        pickerColor: pickerColor,
                        onColorChanged: changeColor,
                      ),
                    ),
                    actions: <Widget>[
                      ElevatedButton(
                        child: const Text('Got it'),
                        onPressed: () {
                          setState(() => context
                              .read<CardDesignProvider>()
                              .currentColor = pickerColor);
                          context.read<CardDesignProvider>().setColor =
                              !context.read<CardDesignProvider>().setColor;
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                );
        },
        child: Text(
          context.read<CardDesignProvider>().setColor
              ? "Remove Color"
              : "Set Color",
        ),
      ),
    );
  }
}
