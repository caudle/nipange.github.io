import 'package:flutter/material.dart';

class ContentWidget extends StatefulWidget {
  const ContentWidget({Key? key}) : super(key: key);

  @override
  _ContentWidgetState createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  int _currentIndex = 0;
  static const List<Map<String, String>> content = [
    {
      "text": 'Easily search for places to live quickly',
      "image": 'image goes here',
    },
    {
      "text": 'Save all your favourite places and visit them later',
      "image": 'image goes here',
    },
    {
      "text": 'Easily add your places to get customers quickly',
      "image": 'image goes here',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: PageView.builder(
            itemBuilder: (context, index) {
              return Column(
                children: [
                  // title
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      content[index]['text']!,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  // image
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 30),
                      width: 300,
                      color: Colors.red,
                      child: Text(content[index]['image']!),
                    ),
                  ),
                ],
              );
            },
            itemCount: content.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),

        // dots
        _buildDots(),
      ],
    );
  }

  Widget _buildDots() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
            content.length,
            (index) => Container(
                  width: 12,
                  height: 12,
                  margin: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index == _currentIndex
                        ? Theme.of(context).primaryColorDark
                        : null,
                    border: Border.all(
                      width: 0,
                      color: index == _currentIndex
                          ? Colors.white
                          : Theme.of(context).primaryColorDark,
                    ),
                  ),
                )),
      ),
    );
  }
}
