 print(pizza.title);
  print(pizza.price);

  print(noodles);
  print(pizza);
  print(roast);
  print(burger);
  
  var foods = Collection(
    'Menuu Items',
    [noodles, pizza, roast, burger]
  );
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

class Collection {
  String name;
  List data;

  Collection (this.name, this.data);

  randomItem() {
    data.shuffle();

    return data[0];
  } 
}