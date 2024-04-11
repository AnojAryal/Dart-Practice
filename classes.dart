void main() {
  var noodles = MenuItem('Chicken noodle', 4.99);
  var pizza = Pizza(['mushrooms', 'peppers'], 'Cheese Pizza', 5.99);

  print(noodles.title);
  print(noodles.price);

  print(pizza.title);
  print(pizza.price);

  print(noodles);
  print(pizza);
}

class MenuItem {
  String title;
  double price;

  MenuItem(this.title, this.price);

  String format() {
    return ('$title --> $price');
  }

  @override
  String toString() {
    return format();
  }
}

class Pizza extends MenuItem {
  List<String> toppings;

  Pizza(this.toppings, super.title, super.price);

  @override
  String format() {
    var formattedToppings = 'Contains:';

    for (final t in toppings) {
      formattedToppings = '$formattedToppings $t';
    }
    return '$title --> $price \n$formattedToppings';
  }
}
