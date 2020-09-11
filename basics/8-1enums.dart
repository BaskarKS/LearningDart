enum CarType { convertible, suv, hatchback, sedan, coupe}

main(List<String> args) {
  CarType car = CarType.sedan;
  print(car.index);

  print('\nAll Car-Types');
  for (CarType each in CarType.values) print(each);
}
