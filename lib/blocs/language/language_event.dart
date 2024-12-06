part of 'language_bloc.dart';

@immutable
abstract class LanguageEvent {}
class ChangedLanguageLocale extends LanguageEvent{
  final Locale locale;

  ChangedLanguageLocale(this.locale);
}
