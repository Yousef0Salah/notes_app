import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            textColor: Colors.black,
            title: const Text('Flutter tips', style: TextStyle(fontSize: 26)),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Build your career with yousef salah',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withValues(alpha: 0.5),
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                // Icons.delete,
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 25,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              'May21 , 2022',
              style: TextStyle(
                color: Colors.black.withValues(alpha: 0.5),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
