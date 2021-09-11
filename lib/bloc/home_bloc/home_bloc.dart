import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';
import 'package:flutter_facebook_responsive_ui/repository/home_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required this.homeRepository}) : super(HomeInitial());
  HomeRepository homeRepository;

  List<Post> fetchedPosts = [];

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    switch (event.runtimeType) {
      case FetchPostsEvent:
        yield* fetchPosts();
        break;
    }
  }

  Stream<HomeState> fetchPosts() async* {
    yield HomeLoadingState();
    fetchedPosts = await homeRepository.fetchPosts();
    yield FetchPostsSuccessState();
  }
}
