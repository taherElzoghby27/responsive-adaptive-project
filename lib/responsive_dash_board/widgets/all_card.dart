import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/spacing.dart';

import '../utils/app_assets.dart';
import 'content_card.dart';

class AllCardWidget extends StatefulWidget {
  const AllCardWidget({
    super.key,
  });

  @override
  State<AllCardWidget> createState() => _AllCardWidgetState();
}

class _AllCardWidgetState extends State<AllCardWidget> {
  int currentIndex = 0;
  late PageController _pageController;
  @override
  initState() {
    super.initState();
    _pageController = PageController();

    _pageController.addListener(
      () {
        currentIndex = _pageController.page!.round();
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpandablePageView(
          controller: _pageController,
          children: List.generate(
            3,
            (index) => AspectRatio(
              aspectRatio: 420 / 215,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF49ACE3),
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: AssetImage(Assets.imagesMaskgroup),
                    ),
                  ),
                  child: const ContentCard(),
                ),
              ),
            ),
          ),
        ),
        verticalSpace(10),
        Row(
          children: List.generate(
            3,
            (index) => index == currentIndex
                ? Padding(
                    padding: const EdgeInsets.all(3),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 550),
                      height: 10,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF4EB7F2),
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(3),
                    child: AnimatedContainer(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFE8E8E8),
                      ),
                      duration: const Duration(milliseconds: 550),
                    ),
                  ),
          ),
        )
      ],
    );
  }
}
