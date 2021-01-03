import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loan_machine/domain/auth/user.dart';
import 'package:loan_machine/domain/auth/value_objects.dart';
import 'package:loan_machine/domain/core/value_object.dart';
import 'package:loan_machine/infrastructure/core/encrypter.dart';

part 'user_dto.freezed.dart';

@freezed
abstract class UserDto implements _$UserDto {
  const factory UserDto(
      {String emailAddress, String password, String uniqueId}) = _UserDto;

  const UserDto._();

  factory UserDto.fromDomain(User user) {
    return UserDto(
        emailAddress: user.emailAddress.getOrCrash(),
        password: user.password.getOrCrash(),
        uniqueId: user.uniqueId.getOrCrash());
  }
  User toDomain() {
    return User(
        emailAddress: EmailAddress(emailAddress),
        password: Password(password),
        uniqueId: UniqueId.fromUniqueString(uniqueId));
  }

  factory UserDto.fromMap(Map<String, String> userMap) => UserDto(
      uniqueId: userMap["uniqueId"],
      emailAddress: userMap["emailAddress"],
      password: userMap["password"]);

  Map<String, String> toMap() => <String, String>{
        "uniqueId": uniqueId,
        "emailAddress": emailAddress,
        "password": encrpyt(password)
      };
}
