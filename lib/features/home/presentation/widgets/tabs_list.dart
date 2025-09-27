
import 'package:flutter/material.dart';
import 'package:task_one_figma/core/themes/colors/app_colors.dart';
import 'package:task_one_figma/features/details/presentation/screens/details_page.dart';
import 'package:task_one_figma/features/home/presentation/widgets/tab_container.dart';

class TabsList extends StatelessWidget {

  List<String> tabs =[
     'All',
     'Popular',
     'Trending',
     'New Release',
     'Top Rated',
     'Upcoming',
  ];


  TabsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: tabs.length,
    itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.only(right: 4,),
        child: InkWell(
          onTap: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> DetailsPage(),),);
          },
          child: TabContainer(
            color: index==0? AppColors.purple: Colors.white,
            text: tabs[index],
            textColor: index==0? Colors.white: AppColors.purple,
          ),
        ),
      );
    },);
  }
}