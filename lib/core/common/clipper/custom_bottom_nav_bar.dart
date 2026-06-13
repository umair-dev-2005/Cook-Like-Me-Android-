import 'package:flutter/material.dart';


class CustomBottomNavBar extends StatelessWidget {
  final Widget child ;
  const CustomBottomNavBar({super.key,
  required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomNavBarClipper(),
      child: child,
    );
  }
}

class BottomNavBarClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {

    /// Creating Instance of Path Class
    Path path = Path ();


    /// Getting Full Width & Height of Child Widget







    return path;


  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true ;
  }



}

