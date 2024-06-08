import 'package:collection/collection.dart';

enum ParticipantType {
  family,
  group,
}

enum Gender {
  male,
  female,
}

enum Relation {
  colleague,
  family,
}

enum DeliveryType {
  localCenter,
  walkCenter,
  self,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (ParticipantType):
      return ParticipantType.values.deserialize(value) as T?;
    case (Gender):
      return Gender.values.deserialize(value) as T?;
    case (Relation):
      return Relation.values.deserialize(value) as T?;
    case (DeliveryType):
      return DeliveryType.values.deserialize(value) as T?;
    default:
      return null;
  }
}
