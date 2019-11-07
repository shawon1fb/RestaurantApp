import 'package:flutter/material.dart';
import '../../component/FoodItemCard.dart';
import '../../component/ItemsListCard.dart';
import 'FoolItemList.dart';

class ListGenerator {
  List<FoodItemCard> FoodItemCardGenerate() {
    List<FoodItemCard> FoodListWigetCard = new List();
    for (FoodItem i in FoodList) {
      FoodListWigetCard.add(
        FoodItemCard(
          imagePath: i.imagePath,
          Title: i.Title,
          Subtitle: i.Subtitle,
          Rating: i.Rating,
          isopen: 'Open',
          RatingPoint: i.RatingPoint,
        ),
      );
    }
    return FoodListWigetCard;
  }

  List<FoodItemCard> OnTagSelecte(String Tag) {
    print('OnTagSelecte called =====> ');

    print(Tag);

    List<FoodItemCard> FoodListWigetCard = new List();
    for (FoodItem i in FoodList) {
      if (i.Tag == Tag) {
        FoodListWigetCard.add(
          FoodItemCard(
            imagePath: i.imagePath,
            Title: i.Title,
            Subtitle: i.Subtitle,
            Rating: i.Rating,
            isopen: 'Open',
            RatingPoint: i.RatingPoint,
          ),
        );
      }
    }

    return FoodListWigetCard;
  }
}
