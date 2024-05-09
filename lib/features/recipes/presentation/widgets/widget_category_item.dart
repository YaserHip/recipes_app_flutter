import 'package:flutter/material.dart';

class WidgetCategoryItem extends StatelessWidget {
  final String urlImage;
  final String name;
  final VoidCallback onTap;

  const WidgetCategoryItem(
      {super.key,
      required this.urlImage,
      required this.name,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.tertiaryContainer,
      elevation: 0,
      child: InkWell(
        borderRadius: BorderRadius.circular(9),
        onTap: onTap,
        child: SizedBox(
          height: 70,
          width: 110,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.network(
                urlImage,
                width: 50,
              ),
              Text(
                name,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.onTertiaryContainer),
              )
            ],
          ),
        ),
      ),
    );
  }
}
