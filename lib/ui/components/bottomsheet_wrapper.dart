import 'package:flutter/material.dart';

class BottomSheetWrapper extends StatelessWidget {
  final List<Widget> children;
  final String title;
  final String? subtitle;

  const BottomSheetWrapper({
    Key? key,
    required this.title,
    this.subtitle,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.all(6).copyWith(bottom: 0),
        decoration: BoxDecoration(
            color: Color(0xFF313035),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            )),
        child: SingleChildScrollView(
          child: Stack(alignment: Alignment.bottomRight, children: [
            Positioned(
              top: 170,
              left: 160,
              child: Image.asset(
                "assets/beer.png",
                width: 250,
                color: Color(0xFFC9E5FF).withAlpha(35),
              ),
            ),
            Container(
              constraints: BoxConstraints(
                minHeight: subtitle != null ? 500 : 390,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white.withOpacity(.9)),
                            ),
                            subtitle == null
                                ? Container()
                                : Text(
                                    subtitle!,
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white.withOpacity(.6),
                                    ),
                                  )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, right: 20),
                        child: IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ],
                  ),
                  ...children,
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
