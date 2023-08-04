class ExampleData {
  ExampleData._internal();

  static List<String> images = [
    "https://github.com/wayne900204/vertical_scrollable_tabview/blob/main/example/assets/food.jpeg?raw=true",
    "https://github.com/wayne900204/vertical_scrollable_tabview/blob/main/example/assets/food.jpeg?raw=true",
    "https://github.com/wayne900204/vertical_scrollable_tabview/blob/main/example/assets/food.jpeg?raw=true",
    "https://github.com/wayne900204/vertical_scrollable_tabview/blob/main/example/assets/food.jpeg?raw=true",
    "https://github.com/wayne900204/vertical_scrollable_tabview/blob/main/example/assets/food.jpeg?raw=true",
  ];

  static List<Category> data = [
    category1,
    category2,
    category3,
    category4,
    category4,
    category4,
    category3,
    category4,
    category4,
    category3,
  ];

  static Category category1 = Category(
    title: "Category-1",
    subtitle: "Category-1 description",
    isHotSale: true,
    foods: List.generate(
      5,
      (index) {
        return Food(
          name: "Category-1 Food",
          price: "200",
          comparePrice: "\$198",
          imageUrl: images[index % images.length],
          isHotSale: false,
        );
      },
    ),
  );

  static Category category2 = Category(
    title: "Category-2",
    subtitle: "Category-2 description",
    isHotSale: false,
    foods: List.generate(
      3,
      (index) {
        return Food(
          name: "Category-2 Food",
          price: "230",
          comparePrice: "\$250",
          imageUrl: images[index % images.length],
          isHotSale: index == 2 ? true : false,
        );
      },
    ),
  );

  static Category category3 = Category(
    title: "Category-3",
    subtitle: null,
    isHotSale: false,
    foods: List.generate(
      1,
      (index) {
        return Food(
          name: "Category-2 Food",
          price: "258",
          comparePrice: "\$289",
          imageUrl: images[index % images.length],
          isHotSale: false,
        );
      },
    ),
  );

  static Category category4 = Category(
    title: "Category-4",
    subtitle: "Category-4 description",
    isHotSale: false,
    foods: List.generate(
      5,
      (index) {
        return Food(
          name: "Category-4 Food",
          price: "240",
          comparePrice: "\$300",
          imageUrl: images[index % images.length],
          isHotSale: index == 3 ? true : false,
        );
      },
    ),
  );
}

class Category {
  String title;
  String? subtitle;
  List<Food> foods;
  bool isHotSale;

  Category({
    required this.title,
    required this.subtitle,
    required this.foods,
    required this.isHotSale,
  });
}

class Food {
  String name;
  String price;
  String comparePrice;
  String imageUrl;
  bool isHotSale;

  Food({
    required this.name,
    required this.price,
    required this.comparePrice,
    required this.imageUrl,
    required this.isHotSale,
  });
}
