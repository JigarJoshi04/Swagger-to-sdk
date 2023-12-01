import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for CustomerInfoApi
void main() {
  var instance = new CustomerInfoApi();

  group('tests for CustomerInfoApi', () {
    // List Partitions for Customer
    //
    // Get the partitions for the specified customer
    //
    //Future<InlineResponse200> getPartitions(String customerId, { String include }) async
    test('test getPartitions', () async {
      // TODO
    });

    // List Roles for Customer
    //
    // Get the roles available for specified customer ID
    //
    //Future<RoleList> getRoles(String customerId, { String page[cursor], int page[size] }) async
    test('test getRoles', () async {
      // TODO
    });

  });
}
