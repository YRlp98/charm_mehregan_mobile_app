import 'package:charm_mehregan/Screens/AboutUsScreen.dart';
import 'package:charm_mehregan/Screens/ContactUsScreen.dart';
import 'package:charm_mehregan/Screens/LoginScreen.dart';
import 'package:charm_mehregan/Screens/ProductsScreen.dart';

typedef T Constructor<T>();

final Map<String, Constructor<Object>> _constructors =
    <String, Constructor<Object>>{};

void register<T>(Constructor<T> constructor) {
  _constructors[T.toString()] = constructor;
}

class ClassBuilder {
  static void registerClasses() {
    register<ProductsScreen>(() => new ProductsScreen());
    register<AboutUsScreen>(() => new AboutUsScreen());
    register<ContactUsScreen>(() => new ContactUsScreen());
    register<LoginScreen>(() => new LoginScreen());
  }

  static dynamic fromString(String type) {
    return _constructors[type]();
  }
}
