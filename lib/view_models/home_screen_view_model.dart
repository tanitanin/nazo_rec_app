import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nazo_rec_app/models/home_screen_model.dart';
import 'package:nazo_rec_app/models/nazotoki_stage.dart';
import 'package:nazo_rec_app/models/user.dart';

final homeScreenViewModelProvider =
StateNotifierProvider.autoDispose<HomeScreenViewModel, HomeScreenModel>(
        (ref) => HomeScreenViewModel());

class HomeScreenViewModel extends StateNotifier<HomeScreenModel> {
  HomeScreenViewModel() : super(const HomeScreenModel());

  void updateEmail(User value){
    state = state.updateUser(value);
  }

  void updateJoinedUserList(NazotokiStage value){
    final listToUpdate = List.of(state.joinedStageList);
    if(listToUpdate.contains(value)){
      listToUpdate.remove(value);
    } else {
      listToUpdate.add(value);
    }
    state = state.updateJoinedStageList(listToUpdate);
  }
}
