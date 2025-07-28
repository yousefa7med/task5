import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:otp_screen/models/product_model.dart';
import 'package:otp_screen/widgets/category_navBar.dart';
import 'package:otp_screen/widgets/homescreen_appbar.dart';
import 'package:otp_screen/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.products});
  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.favorite_border),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: size.height * 0.4,
            decoration: BoxDecoration(color: Colors.amberAccent),
          ),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                children: [
                  HomescreenAppbar(),
                  Align(
                    alignment: AlignmentDirectional.centerStart,

                    child: Text(
                      'Hello , Pino',
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerStart,

                    child: Text(
                      'What do you want to buy?',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Gap(size.height * 0.128),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.amber,
                          size: 26,
                        ),
                      ),
                    ),
                  ),
                  Gap(20),
                  CategoryNavbar(),
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
