void main() {
  
  var noodles = MenuItem('Chicken noodle', 4.99);
  var pizza = Pizza(['mushrooms', 'peppers'],'Cheese Pizza', 5.99);
  
  print (noodles.title);
  print (noodles.price);
 
  print (pizza.title);
  print (pizza.price); 
  
  print (noodles.format());
  print (pizza.format());
}

class MenuItem {
  String title;
  double price;
  
  MenuItem(this.title, this.price);
  
  String format() {
    return ('$title --> $price');
  }

}

class Pizza extends MenuItem{
  List<String> toppings;
  
  Pizza(this.toppings, super.title, super.price);
}