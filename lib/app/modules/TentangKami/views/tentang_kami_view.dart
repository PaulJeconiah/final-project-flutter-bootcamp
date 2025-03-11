import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tentang_kami_controller.dart';

class TentangKamiView extends GetView<TentangKamiController> {
  const TentangKamiView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF722F37),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            floating: true,
            pinned: true,
            title: Text(
              "Tentang Kami",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 32,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            backgroundColor: Color(0xFF722F37),
            leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.white,
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  SizedBox(height: 50),
                  Image.asset(
                    "assets/images/makeup-logo.png",
                    width: 250,
                    height: 270,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 43, right: 44),
              child: Column(
                children: [
                  Text(
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    """Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Convallis aenean et tortor at risus viverra. Nibh sed pulvinar proin gravida. Ultrices sagittis orci a scelerisque purus semper eget duis. Facilisi nullam vehicula ipsum a arcu cursus. Velit euismod in pellentesque massa placerat. Tempor id eu nisl nunc mi ipsum faucibus vitae aliquet. Varius sit amet mattis vulputate enim nulla. Fames ac turpis egestas integer. Sit amet tellus cras adipiscing enim eu. Duis ultricies lacus sed turpis tincidunt id aliquet. Pharetra convallis posuere morbi leo urna. Gravida neque convallis a cras semper. Dui ut ornare lectus sit. Ac placerat vestibulum lectus mauris ultrices eros.
                  
                  Vel pharetra vel turpis nunc eget lorem dolor sed. Suspendisse faucibus interdum posuere lorem ipsum dolor sit. Consectetur purus ut faucibus pulvinar elementum integer enim. Viverra aliquet eget sit amet tellus cras. Diam in arcu cursus euismod quis viverra nibh cras pulvinar. Risus viverra adipiscing at in tellus integer feugiat scelerisque. Dolor sit amet consectetur adipiscing elit ut. Leo urna molestie at elementum eu facilisis. Id faucibus nisl tincidunt eget nullam. Vitae proin sagittis nisl rhoncus mattis rhoncus urna neque viverra. Praesent tristique magna sit amet purus gravida quis. Ut morbi tincidunt augue interdum velit. Lacus luctus accumsan tortor posuere ac ut consequat semper viverra.""",
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
