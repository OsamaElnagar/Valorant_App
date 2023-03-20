

import '../../const/const.dart';
import '../../const/strings.dart';

class OnBoardingContent {
  String image;
  String title;
  String secTitle;
  String description;

  OnBoardingContent(
      {required this.image,
        required this.title,
        required this.description,
        required this.secTitle});
}

List sherif = [];
List<OnBoardingContent> contents = [
  OnBoardingContent(
      title: Constant.send_and_recive,
      secTitle: Constant.quickly,
      image: Names.animation_one,
      description: Constant.dec_one),
  OnBoardingContent(
      title: Constant.send_whatever_u,
      secTitle: Constant.want,
      image: Names.animation_two,
      description: Constant.dec_two),
  OnBoardingContent(
      title: Constant.all_files,
      secTitle: Constant.r_safe,
      image: Names.animation_three,
      description: Constant.dec_three),
];