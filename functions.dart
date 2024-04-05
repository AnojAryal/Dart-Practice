void main() {
    final greeting = greet('Anoj', 21);
    print (greeting);

    //named parameter
    final caffine = coffee(brand : 'expresso', price: 20);
    print (caffine);
}


greet(String name, int age){
    return 'Hi my name is $name and my age is $age';
}

//positional argument
String coffee({String? brand, required int price}){
    return '$brand coffe costs Rs. $price';
}