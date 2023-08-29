import 'package:currency_app/domain/models/currency/currency_data.dart';

abstract class CurrencyRemote {
  Future<CurrencyData> get(String name, String base);
}
