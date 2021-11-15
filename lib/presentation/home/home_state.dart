import 'package:mobx/mobx.dart';

import 'package:sun_flare/domain/models/solar_activities_model.dart';
import 'package:sun_flare/domain/use_cases/solar_activities_use_case.dart';

part 'home_state.g.dart';

class HomeState = HomeStateBase with _$HomeState;

abstract class HomeStateBase with Store {
  final SolarActivitiesUseCase _useCase;

  HomeStateBase(this._useCase) {
    getSolarActivities();
  }

  @observable
  SolarActivitiesModel? solarActivitiesModel;

  @observable
  bool isLoading = false;

  @action
  Future<void> getSolarActivities() async {
    isLoading = true;
    solarActivitiesModel = await _useCase.getLastSolarActivities();
    isLoading = false;
  }
}
