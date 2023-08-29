import 'package:currency_app/domain/models/currency/currency_data.dart';

abstract class CurrencyRepository {
  Future<CurrencyData> get(String name, String base);
}
