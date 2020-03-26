import 'dart:core';

String decamelize(String input, String del) {
	return input.splitMapJoin(
		RegExp('((([a-z])|([0-9]))(?=[A-Z]))'), 
		onMatch: (match) => '${match.group(0)}$del',
		onNonMatch: (noMatch) => '${noMatch.substring(0)}').splitMapJoin(
			RegExp('((([a-z])|([0-9]))((A|I)([A-Z]))(([a-z])|([0-9])))'),
			onMatch: (match) => '${match.group(0)}$del',
			onNonMatch: (noMatch) => '${noMatch.substring(0)}'
		).toLowerCase();
}