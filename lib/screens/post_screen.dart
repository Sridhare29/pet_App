import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_app/provider/data_provider.dart';
import 'package:pet_app/widget/dimensions.dart';

import '../widget/app_icon.dart';
import '../widget/format_time.dart';
import '../widget/small_text.dart';

class PostScreen extends ConsumerWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final _data = ref.watch(userDataProvider);
    return Scaffold(
      body: _data.when(data: (_data){
          return Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.maxFinite,
                height: Dimensions.imgHeight,
                child: Image.network(
                _data[2].image??"",
                fit: BoxFit.cover,
              ),

              ),
              Positioned(
                top: Dimensions.height45,
                left: Dimensions.height20,
                right: Dimensions.height20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   const AppIcon(
                        icon: Icons.arrow_back_ios,
                        backgroundColor: const Color.fromARGB(50, 0, 0, 0),
                        iconColor: Colors.white),
                    Container(
                      child: Row(children: [
                        ClipOval(
                          child: Image.asset(
                            "images/prof_ic.png", 
                            width: Dimensions.width32,
                            height: Dimensions.height32,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          children: [
                            SmallText(
                              weight: FontWeight.w500,
                              text: "James Doggo",
                              size: Dimensions.radius14,
                              color: Colors.white,
                            ),
                            SmallText(
                              weight: FontWeight.w200,
                              text: " @jimmywhofwhof",
                              size: Dimensions.radius14,
                              color: Colors.white,
                            )
                          ],
                        )
                      ]),
                    ),
                   const AppIcon(
                        icon: Icons.more_horiz_rounded,
                        backgroundColor: const Color.fromARGB(50, 0, 0, 0),
                        iconColor: Colors.white)
                  ],
                ),
              ),
              Positioned(
                bottom: Dimensions.height30,
                left: Dimensions.height20,
                right: Dimensions.height20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   const AppIcon(
                        icon: Icons.favorite_rounded,
                        backgroundColor: const Color.fromARGB(50, 0, 0, 0),
                        iconColor: Colors.red),
                    SizedBox(
                      width: Dimensions.width5,
                    ),
                    SmallText(
                      weight: FontWeight.w500,
                      text: "1.5K",
                      color: Colors.white,
                      size: Dimensions.font16,
                    ),
                    SizedBox(
                      width: Dimensions.width10,
                    ),
                   const AppIcon(
                      icon: FontAwesomeIcons.comment,
                      backgroundColor: const Color.fromARGB(50, 0, 0, 0),
                      iconColor: Colors.white,
                    ),
                    SizedBox(
                      width: Dimensions.width5,
                    ),
                    SmallText(
                      weight: FontWeight.w500,
                      text: "324",
                      color: Colors.white,
                      size: Dimensions.font16,
                    ),
                    SizedBox(
                      width: Dimensions.width10,
                    ),
                   const AppIcon(
                        icon: FontAwesomeIcons.share,
                        backgroundColor: const Color.fromARGB(50, 0, 0, 0),
                        iconColor: Colors.white),
                    SizedBox(
                      width: Dimensions.width5,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                top: Dimensions.radius20,
                left: Dimensions.radius20,
                right: Dimensions.radius20),
            child: Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmallText(
                  text: _data[1].title ?? " ",
                  weight: FontWeight.normal,
                  color: const Color.fromARGB(255, 101, 99, 99),
                  size: Dimensions.radius13,
                ),
                SmallText(
                  text: formatTimestamp(_data[0].created??""),
                  weight: FontWeight.normal,
                  color: Colors.grey,
                  size: Dimensions.radius12,
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                SmallText(
                  weight: FontWeight.w500,
                  text: "Show all 192 comments",
                  size: Dimensions.radius13,
                ),
                SizedBox(
                  height: Dimensions.radius12,
                ),
                Row(
                  children: [
                    ClipOval(
                      child: Image.network(
                            _data[2].image??"",
                        width: Dimensions.width32,
                        height: Dimensions.height32,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: Dimensions.width5),
                    Expanded(
                      child: TextField(
                        cursorHeight: Dimensions.height10,
                        decoration: InputDecoration(
                          hintText: "    Write a comment..",
                          filled: true,
                          fillColor: const Color(0xFFF4F4F5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(Dimensions.radius20)),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 0),
                        ),
                        style:
                            TextStyle(fontSize: Dimensions.font16, height: 1.0),
                        strutStyle: const StrutStyle(height: 1.0),
                        keyboardType: TextInputType.multiline,
                        minLines: null,
                        maxLines: null,
                      ),
                    ),
                  ],
                )
              ],
            )),
          )
        ],
      );
      },
       error: (err, s) => Text(err.toString()),
       loading: ()=>const Center(
        child: CircularProgressIndicator(),
      )),
    );
  }
}
