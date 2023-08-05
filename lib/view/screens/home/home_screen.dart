import 'package:flutter/material.dart';
import 'package:todo_app/utils/colors.dart';
import 'package:todo_app/utils/images.dart';
import 'package:todo_app/view/widgets/bottomnav_bar/custom_bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
         backgroundColor: AppColors.bgColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,

          bottom:  const TabBar(
              indicatorColor: Colors.greenAccent,
              tabs: [
                Tab(icon: Icon(Icons.star),),
                Tab(text: "My Tasks",),
                Tab(text: " +  New list",)
          ]),
          actions: const [
            CircleAvatar(
                backgroundColor: AppColors.primaryColor,
                child: Image(image: AssetImage(AppImages.note_book),height: 20,width: 20,),
            ),
          ],
          title: const Text("Tasks",style: TextStyle(color: AppColors.primaryColor),),
          centerTitle: true,
        ),

        body: TabBarView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(

                    children: [
                      SizedBox(height: 100,),
                      Image.asset(AppImages.star,height: 100,width: 100),
                      const SizedBox(height: 20,),
                      const Text("No starred tasks",style: TextStyle(color: AppColors.primaryColor,fontSize: 18),),
                      const SizedBox(height: 20),
                      const Text(
                        "Mark important tasks with star so that you can easily find them here",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: AppColors.primaryColor,fontSize: 14)
                      ),
                    ],
                  ),
                ),
                CustomBottomNavBar()
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(

                    children: [
                      SizedBox(height: 100,),
                      Image.asset(AppImages.star,height: 100,width: 100),
                      const SizedBox(height: 20,),
                      const Text("No starred tasks",style: TextStyle(color: AppColors.primaryColor,fontSize: 18),),
                      const SizedBox(height: 20),
                      const Text(
                        "Mark important tasks with star so that you can easily find them here",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: AppColors.primaryColor,fontSize: 14)
                      ),
                    ],
                  ),
                ),

              ],
            ),



          ],
        ),

      ),
    );
  }
}
