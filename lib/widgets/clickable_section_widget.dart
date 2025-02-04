import 'package:flutter/material.dart';

class ClickableSection extends StatelessWidget {
  const ClickableSection({
    super.key,
    required this.title,
    required this.cta,
    required this.backgroundColor,
    required this.titleColor,
    required this.ctaColor,
  });

  final String title;
  final String cta;
  final Color backgroundColor;
  final Color titleColor;
  final Color ctaColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: backgroundColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: titleColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      cta,
                      style: TextStyle(
                        color: ctaColor,
                      ),
                    ),
                  )
               ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}