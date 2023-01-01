import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop_app/components/grocery_item_tile.dart';
import 'package:grocery_shop_app/model/cart_model.dart';
import 'package:grocery_shop_app/pages/cart_page.dart';
import 'package:provider/provider.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context, 
        MaterialPageRoute(
          builder: (context){
            return CartPage();
          }
          )),
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.shopping_bag,
        ),
      ),

      body: SafeArea(
        child: Column(
          children: [

             const SizedBox(height: 48,),
      
            //good morning
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Good Morning,"),
            ),

            const SizedBox(height: 4,),
      
            //let's order fresh items for u
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Let's order fresh items for you",
               style: GoogleFonts.notoSerif(
                  fontSize: 36,
                  fontWeight: FontWeight.bold
                ),
                  ),
            ),

            const SizedBox(height: 24.0,),
      
            //divider
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(
                thickness: 2,
              ),
            ),

            const SizedBox(height: 24.0,),
      
            //fresh items + grid
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("Fresh Items",
              style: TextStyle(fontSize: 16.0),
              ),
            ),

            Expanded(
              child: Consumer<CartModel>(
                builder: ((context, value, child){
                  return GridView.builder(
                    itemCount: value.shopItems.length,
                    padding: const EdgeInsets.all(12.0),
                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
                 childAspectRatio: 1 / 1.3,
                 ),
                itemBuilder: (context, index){
                  return GroceryItemTile(
                    itemName: value.shopItems[index][0],
                    itemPrice: value.shopItems[index][1],
                    imagePath: value.shopItems[index][2],
                    color: value.shopItems[index][3],
                  );
                }
                );
                }),
              )
              )
      
          ],
        ),
      ),
    );
  }
}