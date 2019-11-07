import 'dart:core';

class FoodItem {
  FoodItem({
    this.imagePath,
    this.Title,
    this.Subtitle,
    this.RatingPoint,
    this.Rating,
    this.Tag,
  });

  String imagePath;
  String Title;
  String Subtitle;
  String RatingPoint;
  String Rating;
  String Tag;
}

class Food_Tag {
  Food_Tag({
    this.ImagePath,
    this.TagName,
    this.selected = false,
  });

  String ImagePath;
  String TagName;
  bool selected;
}

List<String> TagList = ['khichuri', 'Burger', 'Biryani', 'Pizza'];

List<Food_Tag> Tag_List = [
  Food_Tag(
    ImagePath: 'images/Tag_Image/khichuri.svg',
    TagName: 'khichuri',
  ),
  Food_Tag(
    ImagePath: 'images/Tag_Image/hamburger.svg',
    TagName: 'Burger',
  ),
  Food_Tag(
    ImagePath: 'images/Tag_Image/biryani.svg',
    TagName: 'Biryani',
  ),
  Food_Tag(
    ImagePath: 'images/Tag_Image/round_pizza.svg',
    TagName: 'Pizza',
  ),
];

List<FoodItem> FoodList = [
  FoodItem(
    imagePath: 'images/khichuri.png',
    Title: 'Mutton Vuna khichuri',
    Subtitle: 'Diep vai khawabe',
    RatingPoint: '4.5',
    Rating: '(129 rating)',
    Tag: Tag_List[0].TagName,
  ),
  FoodItem(
    imagePath: 'images/berger.png',
    Title: 'Burger Quen',
    Subtitle: 'Restaurant-Fastfood1',
    RatingPoint: '4.5',
    Rating: '(129 rating)',
    Tag: Tag_List[1].TagName,
  ),
  FoodItem(
      imagePath: 'images/branini.png',
      Title: 'Chicken Biryani',
      Subtitle: 'Biryani House',
      RatingPoint: '4.5',
      Rating: '(129 rating)',
      Tag: Tag_List[2].TagName),
  FoodItem(
    imagePath: 'images/pizza.png',
    Title: 'Pizza',
    Subtitle: 'Pizza hut',
    RatingPoint: '4.5',
    Rating: '(129 rating)',
    Tag: Tag_List[3].TagName,
  ),
  FoodItem(
    imagePath: 'images/khichuri.png',
    Title: 'Mutton Vuna khichuri',
    Subtitle: 'Diep vai khawabe',
    RatingPoint: '4.5',
    Rating: '(129 rating)',
    Tag: Tag_List[0].TagName,
  ),
  FoodItem(
    imagePath: 'images/pizza.png',
    Title: 'Pizza',
    Subtitle: 'Pizza hut',
    RatingPoint: '4.5',
    Rating: '(129 rating)',
    Tag: Tag_List[3].TagName,
  ),
  FoodItem(
    imagePath: 'images/khichuri.png',
    Title: 'Mutton Vuna khichuri',
    Subtitle: 'Diep vai khawabe',
    RatingPoint: '4.5',
    Rating: '(129 rating)',
    Tag: Tag_List[0].TagName,
  ),
  FoodItem(
    imagePath: 'images/pizza.png',
    Title: 'Pizza',
    Subtitle: 'Pizza hut',
    RatingPoint: '4.5',
    Rating: '(129 rating)',
    Tag: Tag_List[3].TagName,
  ),
  FoodItem(
    imagePath: 'images/khichuri.png',
    Title: 'Mutton Vuna khichuri',
    Subtitle: 'Diep vai khawabe',
    RatingPoint: '4.5',
    Rating: '(129 rating)',
    Tag: Tag_List[0].TagName,
  ),
];
