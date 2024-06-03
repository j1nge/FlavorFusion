import 'package:flutter/material.dart';
import 'package:midyearapp/models/food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
        name: "Salmon Sushi",
        price: '21.00',
        imagePath: 'lib/images/nigiri.png',
        rating: '4.6',
        description:
            'Delight your taste buds with our exquisite salmon sushi, a culinary masterpiece that captures the essence of freshness and flavor. Tender slices of premium, melt-in-your-mouth salmon rest gracefully atop perfectly seasoned rice, creating a harmonious balance of textures. The vibrant orange hue of the salmon hints at its rich omega-3 fatty acids, while the subtle sweetness is complemented by a touch of wasabi and soy sauce. Each bite is a journey through the ocean\'s bounty, a symphony of taste that lingers on the palate. Indulge in the simplicity and elegance of our salmon sushi, a true delicacy for sushi connoisseurs.'),
    Food(
        name: "Chicken Wrap",
        price: '8.50',
        imagePath: 'lib/images/burrito.png',
        rating: '4.9',
        description:
            'Indulge in the savory delight of our Chicken Wrap, a culinary masterpiece that combines the succulence of tender chicken strips with a medley of fresh, crisp vegetables, all snugly wrapped in a soft tortilla. The seasoned chicken, grilled to perfection, adds a burst of flavor that harmonizes seamlessly with the vibrant array of colorful veggies. From the crunch of lettuce to the juiciness of tomatoes, every bite is a symphony of textures and tastes. Drizzled with our signature sauce, this wrap is a perfect blend of wholesome ingredients and zesty goodness. Experience a burst of flavors in every mouthful with our Chicken Wrap – a satisfying and wholesome treat for your taste buds.'),
    Food(
        name: "Chicken Pasta",
        price: '18.75',
        imagePath: 'lib/images/chicken-soup.png',
        rating: '4.6',
        description:
            'Immerse yourself in the comforting embrace of our Chicken Pasta. Succulent pieces of grilled chicken are expertly combined with al dente pasta, creating a symphony of flavors. The dish is elegantly coated in a rich, creamy Alfredo sauce, perfectly seasoned to tantalize your taste buds. Garnished with fresh herbs, this hearty Chicken Pasta promises a delightful fusion of comfort and culinary excellence.'),
    Food(
        name: "Veggie Wrap",
        price: '8.99',
        imagePath: 'lib/images/wrap.png',
        rating: '3.5',
        description:
            'Elevate your dining experience with our Veggie Wrap, a delightful medley of crisp, colorful vegetables nestled within a soft tortilla. Crunch into the freshness of lettuce, tomatoes, cucumbers, and more, all harmonizing with a delectable sauce that adds a zesty twist. This Veggie Wrap is a burst of health and flavor, offering a satisfying, plant-powered alternative for those seeking a delicious and wholesome meal'),
    Food(
        name: "Shrimp Tacos",
        price: '14.99',
        imagePath: 'lib/images/tacos.png',
        rating: '4.5',
        description:
            'Transport your taste buds to coastal bliss with our Shrimp Tacos. Succulent shrimp, perfectly grilled and seasoned, are cradled in warm tortillas and adorned with vibrant toppings. The combination of flavors, from the smokiness of the shrimp to the freshness of salsa, creates a fiesta of taste. Each bite is a journey to seaside flavors, making our Shrimp Tacos a must-try for seafood enthusiasts.'),
    Food(
        name: "Greek Salad",
        price: '9.50',
        imagePath: 'lib/images/salad.png',
        rating: '4.1',
        description:
            'Revel in the classic elegance of our Greek Salad. Crisp lettuce, juicy tomatoes, cucumber slices, Kalamata olives, and feta cheese come together in a refreshing symphony of Mediterranean flavors. Drizzled with olive oil and sprinkled with oregano, this salad is a celebration of simplicity and authenticity. Immerse yourself in the wholesome goodness of our Greek Salad – a palate-pleasing experience.'),
    Food(
        name: "Chicken Bucket",
        price: '20.75',
        imagePath: 'lib/images/chicken-bucket.png',
        rating: '4.3',
        description:
            'Dive into a feast of flavor with our Chicken Bucket – a generous assortment of crispy and tender fried chicken pieces. Savor the golden perfection of each bite, as the seasoned coating gives way to succulent and flavorful chicken inside. Whether you\'re sharing with friends or indulging solo, our Chicken Bucket promises a satisfying and finger-licking culinary adventure that will leave you craving more.'),
  ];

  final List<Food> _foodMenu2 = [Food(
        name: "Kung Pao Chicken",
        price: '21.00',
        imagePath: 'lib/images/kung-pao-chicken.png',
        rating: '3.9',
        description:
            'Embark on a culinary adventure with our Kung Pao Chicken, a masterpiece that fuses bold flavors and tantalizing textures. Succulent pieces of diced chicken, wok-seared to perfection, are embraced by a symphony of ingredients, including crunchy peanuts, crisp bell peppers, and vibrant green onions. Bathed in a velvety, slightly sweet, and tangy Kung Pao sauce, this dish is elevated with the distinct heat of dried red chilies, creating a harmonious blend of spiciness and savory goodness. Garnished with a sprinkle of sesame seeds, Kung Pao Chicken is a true representation of the rich and diverse flavors found in Chinese cuisine, promising an unforgettable dining experience for the adventurous palate. This snack is like the ninja of munchies – stealthy, swift, and always disappearing before you can blink. Rumor has it, Eric Jing once hid in a breadcrumb and played hide-and-seek with a breadcrumb from a different sandwich.'),
    Food(
        name: "A little snack",
        price: '8.50',
        imagePath: 'lib/images/ericjing.png',
        rating: '10.0',
        description:
            'Introducing Eric Jing, the pint-sized snack with a big personality! Imagine a snack so small, it makes peanuts look like giants. Eric Jing is so tiny, it comes with a magnifying glass, not to find it, but just to appreciate its microscopic awesomeness.'),
    Food(
        name: "Lo Mein",
        price: '18.75',
        imagePath: 'lib/images/lo-mein.png',
        rating: '4.2',
        description:
            'Immerse yourself in the savory delight of our Lo Mein, a Chinese noodle dish that harmonizes textures and flavors. Soft egg noodles are stir-fried to perfection and generously mixed with a medley of crisp vegetables and your choice of protein, creating a symphony of tastes. The dish is elevated with a savory soy-based sauce, ensuring each bite is a delectable blend of comfort and culinary excellence.'),
    Food(
        name: "Dumplings",
        price: '8.99',
        imagePath: 'lib/images/dumplings.png',
        rating: '4.2',
        description:
            'Delight in the exquisite flavors of our Dumplings, bite-sized parcels of joy that encapsulate the essence of Chinese culinary artistry. Thin, delicate wrappers enfold a delectable filling, whether it\'s succulent minced meat or a delightful blend of vegetables. Steamed or pan-fried to perfection, these dumplings are served with a dipping sauce, offering a burst of flavor with every tender, flavorful bite.'),
    Food(
        name: "Fried Rice",
        price: '14.99',
        imagePath: 'lib/images/fried-rice.png',
        rating: '4.5',
        description:
            'Embark on a culinary journey with our Fried Rice, a classic Chinese dish that marries fragrant jasmine rice with a colorful array of vegetables, egg, and your choice of protein. Stir-fried to perfection, the dish is seasoned with soy sauce and other aromatic spices, resulting in a harmonious blend of textures and savory goodness. Each forkful is a symphony of flavors that captures the heart of Chinese comfort cuisine.'),
    Food(
        name: "Spring Rolls",
        price: '9.50',
        imagePath: 'lib/images/spring-rolls.png',
        rating: '4.3',
        description:
'Experience the crisp and delightful crunch of our Spring Rolls, a timeless Chinese appetizer that combines a delicate, flaky wrapper with a flavorful filling of vegetables, sometimes accompanied by shrimp or meat. Lightly fried to golden perfection, these rolls offer a satisfying contrast of textures. Served with a side of sweet and tangy dipping sauce, our Spring Rolls are a perfect prelude to a Chinese feast.'),
    Food(
        name: "Pork Buns",
        price: '4.75',
        imagePath: 'lib/images/pork-bun.png',
        rating: '4.7',
        description:
            'Indulge in the soft and pillowy goodness of our Pork Buns, a classic Chinese delicacy that combines fluffy steamed buns with a savory filling of seasoned pork. The perfect balance of sweet and savory, these buns are a delightful treat for the palate. Whether steamed or baked, each bite promises a burst of flavor that showcases the artistry of Chinese culinary traditions.'),
  ];
  List<Food> _cart = [];

  List<Food> get foodMenu => _foodMenu;
  List<Food> get foodMenu2 => _foodMenu2;
  List<Food> get cart => _cart;

  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
