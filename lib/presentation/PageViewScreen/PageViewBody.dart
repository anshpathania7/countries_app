import 'package:auto_route/auto_route.dart';
import 'package:countries_app/presentation/PageViewScreen/CircleDotIndicator.dart';
import 'package:countries_app/presentation/PageViewScreen/SinglePage.dart';
import 'package:flutter/material.dart';

class PageViewBody extends StatefulWidget {
  @override
  _PageViewBodyState createState() => _PageViewBodyState();
}

class _PageViewBodyState extends State<PageViewBody> {
  int currentPage;
  PageController _pageController;
  List<Widget> pages = [
    SinglePage(
      pageText: "One",
    ),
    SinglePage(
      pageText: "Two",
    ),
    SinglePage(
      pageText: "Three",
    ),
    SinglePage(
      pageText: "Four",
    ),
    SinglePage(
      pageText: "Five",
    ),
  ];

  @override
  void initState() {
    super.initState();
    currentPage = 0;
    _pageController = new PageController(
      initialPage: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => ExtendedNavigator.of(context).pop()),
      ),
      body: Stack(
        children: [
          PageView.builder(
              controller: _pageController,
              itemCount: pages.length,
              onPageChanged: (i) {
                setState(() {
                  currentPage = i;
                });
              },
              itemBuilder: (context, i) => pages[i]),
          Positioned(
            top: 60,
            left: MediaQuery.of(context).size.width * 0.32,
            child: Row(
              children: [
                for (int i = 0; i < 5; i++)
                  if (i == currentPage) ...[
                    CircleDotIndicator(
                      isActive: true,
                    )
                  ] else
                    CircleDotIndicator(
                      isActive: false,
                    ),
              ],
            ),
          ),
          Positioned(
              bottom: 50,
              left: MediaQuery.of(context).size.width * 0.42,
              child: OutlinedButton(
                  onPressed: () {
                    print("pressed");
                    _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.linear);
                  },
                  child: Text("Next"))),
        ],
      ),
    );
  }
}
