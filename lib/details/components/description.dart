import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../model/prouduct.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(product!.description!, style: TextStyle(height: 1.5)),
    );
  }
}
