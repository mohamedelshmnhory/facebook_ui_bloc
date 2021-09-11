part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeInitial extends HomeState {
  @override
  List<Object> get props => [];
}

class HomeLoadingState extends HomeState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class FetchPostsSuccessState extends HomeState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class FetchPostsFailureState extends HomeState {
  final String error;

  FetchPostsFailureState(this.error);
  @override
  // TODO: implement props
  List<Object?> get props => [error];
}
