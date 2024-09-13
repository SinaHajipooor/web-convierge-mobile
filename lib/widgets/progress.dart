import 'package:flutter/material.dart';

class CProgress extends StatelessWidget {
  const CProgress({
    super.key,
  });

  @override

  Widget build(BuildContext context) {
    return const SizedBox(height:200,child:  Center(child: CircularProgressIndicator()));
  }
}