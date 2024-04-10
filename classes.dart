void main() {
  
  var noodles = MenuItem('Chicken noodle', 4.99);
  var pizza = MenuItem('Cheese Pizza', 5.99);
  
  print (noodles.title);
  print (noodles.price);
 
  print (pizza.title);
  print (pizza.price); 
}

class MenuItem {
  String title;
  double price;
  
  MenuItem(this.title, this.price);
}