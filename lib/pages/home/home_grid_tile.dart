import 'package:flutter/material.dart';

class HomeGridTile extends StatelessWidget {
  const HomeGridTile({
    super.key,
    required this.title,
    required this.navigateTo,
  });

  final String title;
  final Widget navigateTo;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => navigateTo),
          ),
          child: Center(
            child: Text(title),
          ),
        ),
      ),
    );
  }
}
