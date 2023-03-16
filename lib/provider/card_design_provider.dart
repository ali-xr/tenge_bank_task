import 'dart:io';

import 'package:flutter/cupertino.dart';

class CardDesignProvider extends ChangeNotifier {
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController cardOwnerController = TextEditingController();
  TextEditingController expDateController = TextEditingController();
  File? image;
  double slider = 0;
  bool setColor = false;
  Color currentColor = const Color(0xff443a49);
  Color? textColor;
}
