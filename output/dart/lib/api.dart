library swagger.api;

import 'dart:async';
import 'dart:convert';
import 'package:http/browser_client.dart';
import 'package:http/http.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';

part 'api/customer_info_api.dart';
part 'api/me_api.dart';
part 'model/customer.dart';
part 'model/customer_attributes.dart';
part 'model/customer_list.dart';
part 'model/customer_list_links.dart';
part 'model/customer_meta.dart';
part 'model/customer_relationship.dart';
part 'model/customer_relationship_data.dart';
part 'model/error.dart';
part 'model/error_errors.dart';
part 'model/inline_response200.dart';
part 'model/machine_user.dart';
part 'model/machine_user_meta.dart';
part 'model/machine_user_o_auth.dart';
part 'model/machine_user_relationships.dart';
part 'model/machine_user_response_attributes.dart';
part 'model/machine_user_state.dart';
part 'model/meta_company.dart';
part 'model/paged_user_group_list_response.dart';
part 'model/paged_user_group_list_response_links.dart';
part 'model/partition.dart';
part 'model/partition_attributes.dart';
part 'model/partition_list.dart';
part 'model/partition_list_attributes.dart';
part 'model/partition_list_included.dart';
part 'model/partition_list_links.dart';
part 'model/partition_relationship.dart';
part 'model/partition_relationship_data.dart';
part 'model/partition_relationships.dart';
part 'model/role.dart';
part 'model/role_attributes.dart';
part 'model/role_list.dart';
part 'model/role_list_links.dart';
part 'model/role_relationship.dart';
part 'model/role_relationship_data.dart';
part 'model/user.dart';
part 'model/user_group.dart';
part 'model/user_group_attributes.dart';
part 'model/user_group_list.dart';
part 'model/user_group_list_links.dart';
part 'model/user_group_list_response_data.dart';
part 'model/user_group_relationship.dart';
part 'model/user_group_relationship_data.dart';
part 'model/user_group_relationships.dart';
part 'model/user_group_response_attribute.dart';
part 'model/user_group_response_data.dart';
part 'model/user_membership_attributes.dart';
part 'model/user_relationships.dart';
part 'model/user_response_attributes.dart';
part 'model/user_response_attributes_identity.dart';
part 'model/user_response_attributes_profile.dart';

ApiClient defaultApiClient = new ApiClient();