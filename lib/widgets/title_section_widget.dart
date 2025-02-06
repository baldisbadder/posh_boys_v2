import 'package:flutter/material.dart';
import '../widgets/title_text_widget.dart';

class TitleSection extends StatelessWidget {
  const TitleSection ({
    super.key,
    required this.title,
    required this.intro,
  });

  final String title;
  final String intro;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TitleTextWidget(title: title),
                Text(
                  intro,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.amber,
                  ),
                )
              ]
            )
          )
        ],
      )
    );
  }
}

