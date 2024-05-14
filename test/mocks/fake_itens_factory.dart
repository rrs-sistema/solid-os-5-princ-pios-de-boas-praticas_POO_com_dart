import 'package:faker/faker.dart';
import 'package:soliid_storage/src/model/solid/item_model_solid.dart';

class FakeItensFactory {
  static final item001 = ItemModelSolid();
  static final item002 = ItemModelSolid();
  static final item003 = ItemModelSolid();

  FakeItensFactory() {
    item001.id = '001';
    item001.name = 'Bicicleta';
    item001.value = 1500;

    item002.id = '002';
    item002.name = 'Bola de Futebol';
    item002.value = 55.75;

    item003.id = '003';
    item003.name = 'Cesta de Basquete';
    item003.value = 168.50;
  }

  static ItemModelSolid makeItemManual001() => item001;

  static ItemModelSolid makeItemManual002() => item002;

  static ItemModelSolid makeItemManual003() => item003;

  static ItemModelSolid makeItemFood(bool valido) => ItemModelSolid(
      id: faker.guid.guid(),
      nome: valido ? faker.food.cuisine() : '',
      valor: valido ? faker.randomGenerator.decimal(min: 1.0) : 0);

  static ItemModelSolid makeItemAnimal(bool valido) => ItemModelSolid(
      id: faker.guid.guid(),
      nome: valido ? faker.animal.name() : '',
      valor: valido ? faker.randomGenerator.decimal(min: 1.0) : 0);

  static ItemModelSolid makeItemSport(bool valido) => ItemModelSolid(
      id: faker.guid.guid(),
      nome: valido ? faker.sport.name() : '',
      valor: valido ? faker.randomGenerator.decimal(min: 1.0) : 0);

  static List<ItemModelSolid> makeItensValidoManual() => [
        makeItemManual001(),
        makeItemManual002(),
        makeItemManual003(),
      ];

  static List<ItemModelSolid> makeItensValido() => [
        makeItemFood(true),
        makeItemFood(true),
        makeItemFood(true),
        makeItemAnimal(true),
        makeItemAnimal(true),
        makeItemSport(true),
        makeItemSport(true),
        makeItemSport(true),
      ];

  static List<ItemModelSolid> makeItensInValido() => [
        makeItemFood(false),
        makeItemFood(false),
        makeItemFood(false),
        makeItemAnimal(false),
        makeItemAnimal(false),
        makeItemSport(false),
        makeItemSport(false),
        makeItemSport(false),
      ];
}
