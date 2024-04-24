import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../details/details_screen.dart';
import '../../model/prouduct.dart';

class HandbagsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: GridView.builder(
                itemCount: hand.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding,
                ),
                itemBuilder: (context, index) => ItemCard(
                  product: hand[index],
                  press: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      product: hand[index],
                    ),
                  )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Product? product;
  final Function()? press;
  const ItemCard({this.product, this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: product!.color,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Hero(
                  tag: '${product!.id!}', child: Image.asset(product!.image!)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              product!.title!,
              style: const TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            '\$ ${product!.price!}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
