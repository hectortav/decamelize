import 'dart:core';

String decamelize(String input, String del) {
  if (input == input.toUpperCase()) {
    return input.toLowerCase();
  }
  if (RegExp('([a-z]|[A-Z]|[0-9])').hasMatch(del)) {
    throw ('$del is not acceptable');
  }

  String output = input.splitMapJoin(
      RegExp('((([a-z])|([0-9]))((A|I)([A-Z]))(([a-z])|([0-9])))'),
      onMatch: (match) =>
          '${match.group(0)[0]}$del${match.group(0)[1]}$del${match.group(0)[2]}${match.group(0)[3]}',
      onNonMatch: (noMatch) => '${noMatch.substring(0)}');
  return output
      .splitMapJoin(RegExp('(([a-z]|[0-9])[A-Z]([a-z]|[0-9]))'),
          onMatch: (match) =>
              '${match.group(0)[0]}$del${match.group(0)[1]}${match.group(0)[2]}',
          onNonMatch: (noMatch) => '${noMatch.substring(0)}')
      .toLowerCase();
}
