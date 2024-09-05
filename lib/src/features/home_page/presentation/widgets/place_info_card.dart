import 'package:backmate/src/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceInfoCard extends StatelessWidget {
  const PlaceInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
            horizontal: context.width * .03, vertical: context.height * .01),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: context.colorScheme.secondaryContainer,
                blurRadius: 2,
                offset: const Offset(2, 2))
          ],
          color: context.colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(20),
        ),
        height: context.height * .2,
        width: context.width / 2,
        child: LayoutBuilder(builder: (context, constraints) {
          print("maxWidth: ${constraints.maxWidth}");
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(20)),
                child: Image.asset(
                  'assets/images/place.jpeg',
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * .5,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: context.width * .02,
                    vertical: context.height * .005),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Place Name',
                        style: TextStyle(
                            color: context.colorScheme.surfaceTint,
                            fontWeight: FontWeight.bold,
                            fontSize: ((constraints.maxWidth +
                                        constraints.maxHeight) *
                                    context.aspectRatio) *
                                .09)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("4.2 ",
                            style: GoogleFonts.inter(
                              color: context.colorScheme.outline,
                              fontSize: ((constraints.maxWidth +
                                          constraints.maxHeight) *
                                      context.aspectRatio) *
                                  .075,
                            )),
                        Icon(
                          Icons.star,
                          color: Colors.amber.shade400,
                          size: constraints.maxWidth * .1,
                        ),
                        const Spacer(),
                        Text("Open Now",
                            style: GoogleFonts.inter(
                              color: context.colorScheme.outline,
                              fontSize: ((constraints.maxWidth +
                                          constraints.maxHeight) *
                                      context.aspectRatio) *
                                  .075,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: constraints.maxHeight * .02,
                    ),
                    Text("Xyz Nagar Kurthoul Patna 804454",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.inter(
                          color: context.colorScheme.outline,
                          fontSize:
                              ((constraints.maxWidth + constraints.maxHeight) *
                                      context.aspectRatio) *
                                  .07,
                        ))
                  ],
                ),
              )
            ],
          );
        }));
  }
}
