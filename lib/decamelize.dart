import 'dart:core';

String decamelize(String input, String del) {
	//return input.replaceAll(RegExp('((([a-z])|([0-9]))([A-Z]))'), ' ${group(0)}');
	return input.splitMapJoin(RegExp('((([a-z])|([0-9]))([A-Z]))'), 
		onMatch: (match) => '${match.group(0)[0]}$del${match.group(0)[1]}',
		onNonMatch: (noMatch) => '${noMatch.substring(0)}').toLowerCase();
}

main() {
	print(decamelize('HelloWorld', '-'));
}