void main() {
  var noodles = MenuItem('Chicken noodle', 4.99);
  var pizza = Pizza(['mushrooms', 'peppers'], 'Cheese Pizza', 5.99);
  var roast = MenuItem('Full Chicken roast', 11.99);
  var burger = MenuItem('Ham Burger', 5.99);

  print(noodles.title);
  print(noodles.price);

  print(pizza.title);
  print(pizza.price);

  print(noodles);
  print(pizza);
  print(roast);
  print(burger);
  
  var foods = Collection<MenuItem>(
    'Menuu Items',
    [noodles, pizza, roast, burger]
  );
  
  var random = foods.randomItem();
  print ('this is random food: $random');
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

class Collection<T> {
  String name;
  List<T> data;

  Collection (this.name, this.data);

  T randomItem() {
    data.shuffle();

    return data[0];
  } 
}