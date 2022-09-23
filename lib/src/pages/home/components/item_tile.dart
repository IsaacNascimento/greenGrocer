import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_color.dart';
import 'package:greengrocer/src/models/item_model.dart';
import 'package:greengrocer/src/pages/product/product_screen.dart';
import 'package:greengrocer/src/services/utils_services.dart';

class ItemTile extends StatelessWidget {
  final ItemModel item;
  ItemTile({super.key, required this.item});

  UtilsService utilsServices = UtilsService();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (c) {
                  return ProductScreen(item: item);
                },
              ),
            );
          },
          child: Card(
            elevation: 1.5,
            shadowColor: Colors.grey.shade300,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Image
                  Expanded(child: Image.asset(item.imgUrl)),

                  // Nome
                  Text(
                    item.itemName,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // Preco - Unidade
                  Row(
                    children: [
                      Text(
                        utilsServices.priceToCurrency(item.price),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: CustomColors.customSwatchColor),
                      ),
                      Text(
                        '/${item.unit}',
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 4,
          right: 4,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 40,
              width: 35,
              decoration: BoxDecoration(
                color: CustomColors.customSwatchColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: const Icon(
                Icons.add_shopping_cart_outlined,
                color: Colors.white,
                size: 20.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
