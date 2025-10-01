
import 'package:flutter/material.dart';
import 'package:task_one_figma/core/themes/colors/app_colors.dart';
import 'package:task_one_figma/features/details/presentation/screens/details_page.dart';
import 'package:task_one_figma/features/home/presentation/widgets/tab_container.dart';

class TabsList extends StatefulWidget {


  TabsList({super.key});

  @override
  State<TabsList> createState() => _TabsListState();
}

class _TabsListState extends State<TabsList> {
  List<String> tabs =[
     'All',
     'Popular',
     'Trending',
     'New Release',
     'Top Rated',
     'Upcoming',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: tabs.length,
    itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.only(right: 5,),
        child: TabContainer(
          isSelected: selectedIndex == index,
          text: tabs[index],
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },        
        ),
      );
    },);
  }
}