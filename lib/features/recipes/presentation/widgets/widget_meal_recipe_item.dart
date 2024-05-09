import 'package:flutter/material.dart';

class WidgetMealRecipeItem extends StatelessWidget {
  final String urlImage;
  final String name;
  final VoidCallback onTap;

  const WidgetMealRecipeItem(
      {super.key,
      required this.urlImage,
      required this.name,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(9),
      onTap: onTap,
      child: SizedBox(
        height: 180,
        width: 180,
        child: Card(
          color: Theme.of(context).colorScheme.secondaryContainer,
          elevation: 0,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(
                urlImage,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                      Colors.transparent,
                      Colors.transparent,
                      Colors.black26,
                      Colors.black45,
                      Colors.black54
                    ],
                        begin: FractionalOffset(0.0, 0.0),
                        end: FractionalOffset(0.0, 1.0))),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    textAlign: TextAlign.left,
                    name,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
