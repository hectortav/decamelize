import 'package:decamelize/decamelize.dart';

bool main() {
  assert(decamelize('easyTest', '_') == 'easy_test');
  assert(decamelize('EasyTest', '_') == 'easy_test');
  assert(decamelize('justATest', '_') == 'just_a_test');
  assert(decamelize('JustATest', '_') == 'just_a_test');
  assert(decamelize('JUST A TEST', '_') == 'just a test');
  assert(decamelize('JUSTATEST', '_') == 'justatest');
  return true;
}
