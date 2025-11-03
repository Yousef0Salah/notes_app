import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_app_bar.dart';

class NotesViewsBody extends StatelessWidget {
  const NotesViewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: const [SizedBox(height: 50), CustomAppBar()]),
    );
  }
}
