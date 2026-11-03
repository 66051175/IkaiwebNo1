import 'dart:html' as html;

const _sessionKey = 'freshflow.saved_session';

String? readSavedSession() => html.window.localStorage[_sessionKey];

Future<void> writeSavedSession(String value) async {
  html.window.localStorage[_sessionKey] = value;
}

Future<void> clearSavedSession() async {
  html.window.localStorage.remove(_sessionKey);
}
