import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {

  LanguageBloc() : super(LanguageInitial()) {
    {
      on<ChangedLanguageLocale>((event, emit) {
        emit(ChangedLanguageLocaleState(event.locale));
      });
    }
  }
}
