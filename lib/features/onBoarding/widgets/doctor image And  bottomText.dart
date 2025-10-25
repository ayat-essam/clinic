import 'package:clinic/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImage extends StatelessWidget {
  const DoctorImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/imageSVG/vectorBehaindDoctor.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white70.withOpacity(0.0)
                ],
              begin: Alignment.bottomCenter ,
              end: Alignment.topCenter ,
              stops: const [0.14,0.4]
            ),
          ),
          child: Image.asset('assets/images/Doctor.png'),
        ),
        Positioned(
          right: 0 ,
            bottom: 30 ,
            left: 0 ,
            child: Text(
              'Best Doctor\n Appointment App',
              textAlign: TextAlign.center,
              style: Styles.font32BlueBold.copyWith(height: 1.4),))
      ],
    );
  }
}
