import 'package:sun_flare/application/dependencies/repository_module.dart';
import 'package:sun_flare/domain/use_cases/solar_activities_use_case.dart';
import 'package:sun_flare/presentation/home/home_state.dart';

class HomeModule {
  static HomeState homeState() {
    return HomeState(
      SolarActivitiesUseCase(
        RepositoryModule.geoStormRepository(),
        RepositoryModule.solarFlareRepository(),
      ),
    );
  }
}
