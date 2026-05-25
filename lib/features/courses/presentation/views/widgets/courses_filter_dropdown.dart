import 'package:flutter/material.dart';

class CoursesFilterDropdown extends StatelessWidget {
  final String selectedItem;
  final ValueChanged<String?> onChanged;

  const CoursesFilterDropdown({
    super.key,
    required this.selectedItem,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32.0),
      child: DropdownButton<String>(
        value: selectedItem,
        isExpanded: true,
        icon: const Icon(Icons.arrow_drop_down),
        items: const [
          DropdownMenuItem(value: 'All Courses', child: Text('All Courses')),
          DropdownMenuItem(value: 'IT Course', child: Text('IT Course')),
          DropdownMenuItem(
            value: 'Languages Course',
            child: Text('Languages Course'),
          ),
        ],
        onChanged: onChanged,
      ),
    );
  }
}
