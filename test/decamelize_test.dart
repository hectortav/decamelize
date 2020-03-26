import '../lib/decamelize.dart';

bool main() {
	print(decamelize('easyTest','_'));
	assert(decamelize('easyTest','_') == 'easy_test');
	print(decamelize('EasyTest','_'));
	assert(decamelize('EasyTest','_') == 'easy_test');
	print(decamelize('justATest','_'));
	assert(decamelize('justATest','_') == 'just_a_test');
	print(decamelize('JustATest','_'));
	assert(decamelize('JustATest','_') == 'just_a_test');
	print(decamelize('JUST A TEST','_'));
	assert(decamelize('JUST A TEST','_') == 'just a test');
	print(decamelize('JUSTATEST','_'));
	assert(decamelize('JUSTATEST','_') == 'justatest');
	return true;
}