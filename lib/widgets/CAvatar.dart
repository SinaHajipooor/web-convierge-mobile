import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CAvatar extends StatelessWidget {
  const CAvatar({
    super.key,
    this.radius=30,
    required String url,
    this.onTap
  }) : _url = url;

  final String _url;
  final double radius;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: CircleAvatar(
        backgroundColor: Colors.lightBlueAccent[200],

        maxRadius: radius,

        child:
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: ClipOval(

            child: CachedNetworkImage(

              imageUrl: _url,
              placeholder: (context, url) => const CircularProgressIndicator(color: Colors.white),
              errorWidget: (context, url, error) => ClipOval(child: Image.asset('asset/images/user-dummy-img.jpg')),
            ),
          ),
        ),
        // Image.network(_controller.popularDoctorModel?.data?[index].image?.url??"",),
      ),
    );
  }
}
