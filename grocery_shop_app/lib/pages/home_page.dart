import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              child: GridView.builder(
                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
                //  childAspectRatio: 0.5,
                 ),
                itemBuilder: (context, index){
                  return 
                }
                )
              )
      
          ],
        ),
      ),
    );
  }
}