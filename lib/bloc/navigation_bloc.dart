import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(HomeRouteState()) {
    on<NavigateToHome>((event, emit) => emit(HomeRouteState()));
    on<NavigateToAccounts>((event, emit) => emit(AccountsRouteState()));
  }
}