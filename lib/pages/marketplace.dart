import 'package:flutter/material.dart';
import 'package:frontend/resources/colorPalette.dart';
import 'package:frontend/resources/models/marketData.dart';
import 'package:frontend/widgets/categoryBar.dart';
import 'package:frontend/widgets/searchbar.dart';

class Marketplace extends StatefulWidget {
  const Marketplace({ Key? key }) : super(key: key);

  @override
  _MarketplaceState createState() => _MarketplaceState();
}

class _MarketplaceState extends State<Marketplace> {
final CategoryBar categoryBar = CategoryBar();
ScrollController _controller = ScrollController();
bool closeTopContainer = false;
double topContainer = 0;

List<Widget> marketsData = [];

void getPostsData() {
    List<dynamic> responseList = MARKET_DATA;
    List<Widget> marketItems = [];
    responseList.forEach((post) {
      marketItems.add(Container(
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)), 
            color: AppTheme.white, 
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(100), 
                blurRadius: 10.0
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      post["name"],
                      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      post["brand"],
                      style: const TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\$ ${post["price"]}",
                      style: const TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                /*Image.asset(
                  "assets/images/${post["image"]}",
                  height: double.infinity,
                )*/
              ],
            ),
          )
        )
      );
    }
  );
  setState(() { marketsData = marketItems; });
}

@override
  void initState() {
    getPostsData();
    _controller.addListener(() {
      double value = _controller.offset/119;
      setState(() {
        topContainer = value;
        closeTopContainer = _controller.offset > 50;
      });
    });
    super.initState();
  }

@override
Widget build(BuildContext context) {
  return SafeArea(
    child: Scaffold(
      backgroundColor: AppTheme.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            getSearchBarUI(context),
            const SizedBox( height: 10, ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: closeTopContainer ? 0 : 1,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.topCenter,
                height: closeTopContainer ? 0 : MediaQuery.of(context).size.width*0.3,
                child: CategoryBar()
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: ListView.builder(
                controller: _controller,
                itemCount: marketsData.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  double scale = 1.0;
                  if (topContainer > 0.5) { 
                    scale = index + 0.5 - topContainer;
                    if (scale < 0) { scale = 0; } 
                    else if (scale > 1) { scale = 1; }
                  }
                  return Opacity(
                    opacity: scale,
                    child: Transform(
                      transform: Matrix4.identity()..scale(scale,scale),
                      alignment: Alignment.bottomCenter,
                      child: Align(
                        heightFactor: 0.7,
                        alignment: Alignment.topCenter,
                        child: marketsData[index]
                      ),
                    ),
                  );
                }
              ),
            ),
          ],
        ),
      ),
    ),
  );
}}