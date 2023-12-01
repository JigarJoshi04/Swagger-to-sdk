# coding: utf-8

"""
    Accounts API

    Accounts API   # noqa: E501

    OpenAPI spec version: 0.9.5
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""

import pprint
import re  # noqa: F401

import six

class UserResponseAttributesIdentity(object):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    """
    """
    Attributes:
      swagger_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    swagger_types = {
        'email_id': 'str',
        'external_id': 'str',
        'family_name': 'str',
        'full_name': 'str',
        'given_name': 'str'
    }

    attribute_map = {
        'email_id': 'emailId',
        'external_id': 'externalId',
        'family_name': 'familyName',
        'full_name': 'fullName',
        'given_name': 'givenName'
    }

    def __init__(self, email_id=None, external_id=None, family_name=None, full_name=None, given_name=None):  # noqa: E501
        """UserResponseAttributesIdentity - a model defined in Swagger"""  # noqa: E501
        self._email_id = None
        self._external_id = None
        self._family_name = None
        self._full_name = None
        self._given_name = None
        self.discriminator = None
        self.email_id = email_id
        self.external_id = external_id
        if family_name is not None:
            self.family_name = family_name
        if full_name is not None:
            self.full_name = full_name
        self.given_name = given_name

    @property
    def email_id(self):
        """Gets the email_id of this UserResponseAttributesIdentity.  # noqa: E501

        email address of the user  # noqa: E501

        :return: The email_id of this UserResponseAttributesIdentity.  # noqa: E501
        :rtype: str
        """
        return self._email_id

    @email_id.setter
    def email_id(self, email_id):
        """Sets the email_id of this UserResponseAttributesIdentity.

        email address of the user  # noqa: E501

        :param email_id: The email_id of this UserResponseAttributesIdentity.  # noqa: E501
        :type: str
        """
        if email_id is None:
            raise ValueError("Invalid value for `email_id`, must not be `None`")  # noqa: E501

        self._email_id = email_id

    @property
    def external_id(self):
        """Gets the external_id of this UserResponseAttributesIdentity.  # noqa: E501

        horizon ID of the user within Siemens ID  # noqa: E501

        :return: The external_id of this UserResponseAttributesIdentity.  # noqa: E501
        :rtype: str
        """
        return self._external_id

    @external_id.setter
    def external_id(self, external_id):
        """Sets the external_id of this UserResponseAttributesIdentity.

        horizon ID of the user within Siemens ID  # noqa: E501

        :param external_id: The external_id of this UserResponseAttributesIdentity.  # noqa: E501
        :type: str
        """
        if external_id is None:
            raise ValueError("Invalid value for `external_id`, must not be `None`")  # noqa: E501

        self._external_id = external_id

    @property
    def family_name(self):
        """Gets the family_name of this UserResponseAttributesIdentity.  # noqa: E501

        user's family name  # noqa: E501

        :return: The family_name of this UserResponseAttributesIdentity.  # noqa: E501
        :rtype: str
        """
        return self._family_name

    @family_name.setter
    def family_name(self, family_name):
        """Sets the family_name of this UserResponseAttributesIdentity.

        user's family name  # noqa: E501

        :param family_name: The family_name of this UserResponseAttributesIdentity.  # noqa: E501
        :type: str
        """

        self._family_name = family_name

    @property
    def full_name(self):
        """Gets the full_name of this UserResponseAttributesIdentity.  # noqa: E501

        user's full name  # noqa: E501

        :return: The full_name of this UserResponseAttributesIdentity.  # noqa: E501
        :rtype: str
        """
        return self._full_name

    @full_name.setter
    def full_name(self, full_name):
        """Sets the full_name of this UserResponseAttributesIdentity.

        user's full name  # noqa: E501

        :param full_name: The full_name of this UserResponseAttributesIdentity.  # noqa: E501
        :type: str
        """

        self._full_name = full_name

    @property
    def given_name(self):
        """Gets the given_name of this UserResponseAttributesIdentity.  # noqa: E501

        user's given name  # noqa: E501

        :return: The given_name of this UserResponseAttributesIdentity.  # noqa: E501
        :rtype: str
        """
        return self._given_name

    @given_name.setter
    def given_name(self, given_name):
        """Sets the given_name of this UserResponseAttributesIdentity.

        user's given name  # noqa: E501

        :param given_name: The given_name of this UserResponseAttributesIdentity.  # noqa: E501
        :type: str
        """
        if given_name is None:
            raise ValueError("Invalid value for `given_name`, must not be `None`")  # noqa: E501

        self._given_name = given_name

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.swagger_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value
        if issubclass(UserResponseAttributesIdentity, dict):
            for key, value in self.items():
                result[key] = value

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, UserResponseAttributesIdentity):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other