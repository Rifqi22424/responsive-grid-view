import 'package:flutter/material.dart';

import '../consts/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
          // title: Text('92 High Street, London'),
          // backgroundColor: AppColors.whiteColor,
          // centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          ]),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1200) {
            return _buildResponsiveLayout(6);
          }
          if (constraints.maxWidth > 800) {
            return _buildResponsiveLayout(4);
          }
          return _buildResponsiveLayout(2);
        },
      ),
      // bottomNavigationBar: _buildBottomNav(),
    );
  }

  _buildResponsiveLayout(int crossAxisCount) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: 1,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2
          ),
      itemBuilder: (context, index) {
        return Center(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.accentColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset('images/iphone.png'),
                Positioned(
                  top: -10,
                  right: -10,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border),
                    style: IconButton.styleFrom(
                        backgroundColor: AppColors.whiteColor),
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.all(30),
          ),
        );
      },
    );
  }
}
