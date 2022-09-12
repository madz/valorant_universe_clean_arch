import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/ability/ability_entity.dart';

part 'ability_model.freezed.dart';
part 'ability_model.g.dart';

@freezed
class AbilityModel with _$AbilityModel {
  const factory AbilityModel({
    String? slot,
    String? displayName,
    String? description,
    String? displayIcon,
  }) = _AbilityModel;

  factory AbilityModel.fromJson(Map<String, dynamic> json) => _$AbilityModelFromJson(json);
}

extension AbilityModelX on AbilityModel {
  AbilityEntity toAbilityEntity() {
    return AbilityEntity(
      slot: slot ?? "N/A",
      displayName: displayName ?? "N/A",
      description: description ?? "N/A",
      displayIcon: displayIcon ?? "",
    );
  }
}
