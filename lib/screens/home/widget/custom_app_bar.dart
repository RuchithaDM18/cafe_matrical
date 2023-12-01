import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget{
  const CustomAppBar({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top,left: 25,right: 26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              RichText(
                text: const TextSpan(
                  children: [

                    TextSpan(

                      text: 'Howdy, What Are You\nLooking For ?',
                      style: TextStyle(color: Colors.amber,
                          fontWeight: FontWeight.bold,
                          fontSize: 24
                      ),
                    ),
                    TextSpan(
                        text: '👀',
                        style: TextStyle(fontSize: 22,)
                    ),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 0.1,
                        blurRadius: 0.1,
                        offset: const Offset(0,1)
                    ),
                  ],
                ),
                child: const Icon(Icons.shopping_cart_outlined,
                  color: Colors.grey,
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: BoxShape.circle
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}