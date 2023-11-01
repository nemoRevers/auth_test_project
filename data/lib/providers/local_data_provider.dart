import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class LocalDataProvider {
  Future<void> write({required String key, required String value});

  Future<String?> read(String key);

  Future<void> delete(String key);
}

class SecureLocalDataProviderImpl implements LocalDataProvider {
  final FlutterSecureStorage _flutterSecureStorage;

  const SecureLocalDataProviderImpl(FlutterSecureStorage flutterSecureStorage)
      : _flutterSecureStorage = flutterSecureStorage;

  @override
  Future<String?> read(String key) {
    return _flutterSecureStorage.read(key: key);
  }

  @override
  Future<void> write({required String key, required String value}) {
    return _flutterSecureStorage.write(key: key, value: value);
  }

  @override
  Future<void> delete(String key) {
    return _flutterSecureStorage.delete(key: key);
  }
}
