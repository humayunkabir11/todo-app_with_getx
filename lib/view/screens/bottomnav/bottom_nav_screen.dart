import 'package:flutter/material.dart';
import 'package:todo_app/utils/colors.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
   height: MediaQuery.of(context).size.height/8,
        // height: 100
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
