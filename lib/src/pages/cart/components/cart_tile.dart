import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_color.dart';
import 'package:greengrocer/src/models/cart_item_model.dart';
import 'package:greengrocer/src/pages/commom_widgets/quantity_widget.dart';
import 'package:greengrocer/src/services/utils_services.dart';

class CartTile extends StatelessWidget {
  final CartItemModel cartItem;
  CartTile({super.key, required this.cartItem});

  final UtilsService utilsServices = UtilsService();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        // IMG
        leading: Image.asset(
          cartItem.item.imgUrl,
          height: 60,
          width: 60,
        ),

        // Title
        title: Text(
          cartItem.item.itemName,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),

        // Total
        subtitle: Text(
          utilsServices.priceToCurrency(cartItem.totalPrice()),
          style: TextStyle(
            color: CustomColors.customSwatchColor,
            fontWeight: FontWeight.bold,
          ),
        ),

        // Qtde
        trailing: QuantityEntity(
            suffixText: cartItem.item.unit,
            value: cartItem.quantity,
            result: (quantity) {}),
      ),
    );
  }
}
