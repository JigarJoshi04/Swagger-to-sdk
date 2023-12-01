import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for MeApi
void main() {
  var instance = new MeApi();

  group('tests for MeApi', () {
    // Get the usergroups of caller
    //
    // Return list of the usergroup (user identity inferred from the SUB in the token) 
    //
    //Future<UserGroupList> getMeUsergroups({ String page[cursor], int page[size] }) async
    test('test getMeUsergroups', () async {
      // TODO
    });

  });
}
