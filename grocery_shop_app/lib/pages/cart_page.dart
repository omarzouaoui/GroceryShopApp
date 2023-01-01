import 'package:flutter/material.dart';
import 'package:grocery_shop_app/model/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart Page"),
        centerTitle: true,
      ), 
      body: Consumer<CartModel>(builder: (context, value, child) {
        return Column(
          children: [
            //list of cart item
            Expanded(
              child: ListView.builder(
                itemCount: value.cartItems.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          value.cartItems[index][2],
                          height: 36,
                          ),
                        title: Text(
                          value.cartItems[index][0],
                        ),
                        subtitle: Text(
                          "\$ "+value.cartItems[index][1]
                        ),
                        trailing: IconButton(
                        onPressed: () =>
                        Provider.of<CartModel>(context, listen: false)
                        .removeItemFromCart(index), 
                        icon: Icon(Icons.cancel)
                        )
                      ),
                    ),
                  );
                },
                )
              )
          ],
        );
      },)
    );
  }
}