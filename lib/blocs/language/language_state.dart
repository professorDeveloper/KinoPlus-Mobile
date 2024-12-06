part of 'language_bloc.dart';

@immutable
abstract class LanguageState {}

class LanguageInitial extends LanguageState {}
class ChangedLanguageLocaleState extends LanguageState{
  final Locale locale;

  ChangedLanguageLocaleState(this.locale);
}