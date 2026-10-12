import 'dart:io';

void main() {
  String size = '';
  int quantity = 0;
  int price = 0;

  print('===========================================');
  print('Pizza Price : Small=5, Medium=7, Large=10 USD');

  while (size != 'small' &&
  size != 'medium' &&
  size != 'large') {
    stdout.write('Please enter your pizza size (small,medium or large): ');
    size = stdin.readLineSync()!.toLowerCase();

    if (size != 'small' &&
    size != 'medium' &&
    size != 'large') {
      print ('Invalid pizza size. Please try again.');
    }
  }
  switch (size){
    case 'small':
    price = 5;
    break;

    case 'medium':
    price = 7;
    break;

    case 'large':
    price = 10;
    break;
  }
  while (quantity <=0){
    stdout.write('How many pizzas do you want of $size?');
    quantity = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    if (quantity <=0){
    print('Please enter a valid quantity.');
    }
  }

  int total = price * quantity;
  print('Your Total Payment is: \$${total}');
}