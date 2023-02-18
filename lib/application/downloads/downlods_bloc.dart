import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/downloads/model/i_downloads_repo.dart';

import '../../domain/downloads/donwloads.dart';
part 'downlods_event.dart';
part 'downlods_state.dart';
part 'downlods_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo _downloadsRepo;

  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.inital()) {
    on<_GetDownloadsImage>((event, emit) async {
      state.copyWith(
        isLoading: true,
        downloadsFailureOrSuccessOption: none(),
      );
      final Either<MainFailure, List<Downloads>> downloadsOption =
          await _downloadsRepo.getDownloadsImage();
      log(downloadsOption.toString());
      emit(
        downloadsOption.fold(
            (failure) => state.copyWith(
                isLoading: false,
                downloadsFailureOrSuccessOption: some(Left(failure))),
            (success) => state.copyWith(
                isLoading: false,
                downloads: success,
                downloadsFailureOrSuccessOption: some(Right(success)))),
      );
    });
  }
}
