import 'package:flutter/material.dart';

class ContentWidget extends StatefulWidget {
  const ContentWidget({Key? key}) : super(key: key);

  @override
  _ContentWidgetState createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  int _currentIndex = 0;
  static const List<Map<String, dynamic>> content = [
    {
      "text": 'search for a place to live easily and quickly',
      "icon": Icons.search,
    },
    {
      "text":
          'save your favourite places and share them with friends and family',
      "icon": Icons.favorite_border,
    },
    {
      "text": 'easily become a host and get customers quickly',
      "icon": Icons.house,
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
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(fontSize: 19),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // image
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 30),
                      width: 300,
                      child: Icon(
                        content[index]['icon'],
                        size: 130,
                        color: Theme.of(context).primaryColor,
                      ),
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
