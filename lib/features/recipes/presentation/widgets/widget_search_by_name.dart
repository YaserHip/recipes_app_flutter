import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/approuter.dart';

class WidgetSearchByName extends StatelessWidget {
  const WidgetSearchByName({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: textController,
            onSubmitted: (String val) {
              context.push('/${AppRoutes.pageSearchList.name}/$val');
            },
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none),
                hintText: 'Search recipe by name.'),
          ),
        ),
        const SizedBox(width: 16),
        ElevatedButton(
          onPressed: () {
            context.push(
                '/${AppRoutes.pageSearchList.name}/${textController.text}');
          },
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              padding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 16)),
          child: const Icon(Icons.search),
        )
      ],
    );
  }
}
