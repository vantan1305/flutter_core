import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: const Color(0xFF8E97F0),
      body: SafeArea(
        child: orientation == Orientation.portrait
            ? Stack(
                children: const [
                  GetBackGround(),
                  GetStatHeader(),
                ],
              )
            : Row(
                children: const [
                  Expanded(child: GetBackGround()),
                  Expanded(child: GetStatHeader())
                ],
              ),
      ),
    );
  }
}

class GetBackGround extends StatelessWidget {
  const GetBackGround({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: FractionallySizedBox(
        heightFactor: 0.6,
        widthFactor: 1.0,
        child: FittedBox(
          fit: BoxFit.cover,
          child: SvgPicture.asset('asset/images/logo_persion.svg'),
        ),
      ),
    );
  }
}

class GetStatHeader extends StatelessWidget {
  const GetStatHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset('asset/images/logo_top.svg'),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        const Text(
          'Hi Afsar, Welcome',
          style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
              color: Colors.white),
        ),
        const Text(
          'to Silent Moon',
          style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w300),
        ),
        const Text(
          'Explore the app, Find some peace of mind to prepare for meditation.',
          style: TextStyle(
              fontFamily: 'Roboto', fontSize: 14.0, color: Colors.white),
        )
      ],
    );
  }
}
