import 'package:isar/isar.dart';
import 'package:recipes_app_flutter/core/error/exceptions.dart';
import 'package:recipes_app_flutter/core/helper_isar.dart';
import 'package:recipes_app_flutter/features/auth/data/models/model_user.dart';

abstract mixin class DataSourceLocalAuth {
  Future<ModelUser> login(String email, String pass);

  Future<void> register(String name, String email, String password);

  Future<ModelUser> getUser(int id);
}

class ImplDataSourceLocalAuth implements DataSourceLocalAuth {
  final HelperIsar _isar;

  ImplDataSourceLocalAuth({required HelperIsar isar}) : _isar = isar;

  @override
  Future<ModelUser> login(String email, String pass) async {
    final checkUser = await _isUserRegistered(email);
    try {
      if (checkUser != null) {
        if (checkUser.password == pass) {
          return checkUser;
        } else {
          throw UserNotFoundException();
        }
      } else {
        throw UserNotFoundException();
      }
    } catch (e) {
      if (e is UserNotFoundException) {
        rethrow;
      } else {
        throw DataParsingException();
      }
    }
  }

  @override
  Future<void> register(String name, String email, String password) async {
    try {
      if (await _isUserRegistered(email) == null) {
        final newUser = ModelUser(name: name, email: email, password: password);
        await _isar
            .getIsar()
            .writeTxn(() => _isar.getIsar().modelUsers.put(newUser));
      } else {
        throw AlreadyRegisteredException();
      }
    } catch (e) {
      if (e is AlreadyRegisteredException) {
        rethrow;
      }
    }
  }

  Future<ModelUser?> _isUserRegistered(String email) async {
    return await _isar
        .getIsar()
        .modelUsers
        .filter()
        .emailEqualTo(email)
        .findFirst();
  }

  @override
  Future<ModelUser> getUser(int id) async {
    try {
      final user = await _isar.getIsar().modelUsers.get(id);
      if (user != null) {
        return user;
      } else {
        throw UserDoNotExistException();
      }
    } catch (e) {
      if (e is UserNotFoundException) {
        rethrow;
      } else {
        throw DataParsingException();
      }
    }
  }
}
