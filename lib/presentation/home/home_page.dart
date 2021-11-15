import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:sun_flare/presentation/home/home_state.dart';

class HomePage extends StatefulWidget {
  final HomeState homeState;
  const HomePage({Key? key, required this.homeState}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Observer(
          builder: (_) {
            if (widget.homeState.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                    'Last Solar Flare Date: ${widget.homeState.solarActivitiesModel!.lastFlare.startTime}'),
                Text(
                    'Last GeoStorm Date: ${widget.homeState.solarActivitiesModel!.lastStorm.startTime}'),
              ],
            );
          },
        ),
      ),
    );
  }
}
