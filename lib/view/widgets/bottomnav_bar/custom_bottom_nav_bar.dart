import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.only(left: 20.0,right: 20),
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height/8,
        height: 100,
        color: Colors.grey.shade800,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(

                    onPressed: (){},
                    icon: Icon(Icons.notes_outlined,size: 20,color: Colors.white70,)),

                IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.compare_arrows,size: 20,color: Colors.white70,)),

                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.more_horiz,size: 20,color: Colors.white70,),
                ),
              ],
            ),
            FloatingActionButton(onPressed: (){

            },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Icon(Icons.add,size: 20,color: Colors.white70,),
              backgroundColor: Colors.blueAccent,
            )
          ],
        ),
      ),
    );
  }
}
