import 'package:flutter/material.dart';

class ExploreSearch extends StatelessWidget {
  const ExploreSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: TextField(
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 8),
          hintText: 'Search',
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15)),
          filled: true,
          fillColor: Colors.grey[200],
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
