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

class CustomerAttributes(object):
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
        'name': 'str',
        'customer_membership_state': 'UserMembershipAttributes'
    }

    attribute_map = {
        'name': 'name',
        'customer_membership_state': 'customerMembershipState'
    }

    def __init__(self, name=None, customer_membership_state=None):  # noqa: E501
        """CustomerAttributes - a model defined in Swagger"""  # noqa: E501
        self._name = None
        self._customer_membership_state = None
        self.discriminator = None
        self.name = name
        if customer_membership_state is not None:
            self.customer_membership_state = customer_membership_state

    @property
    def name(self):
        """Gets the name of this CustomerAttributes.  # noqa: E501


        :return: The name of this CustomerAttributes.  # noqa: E501
        :rtype: str
        """
        return self._name

    @name.setter
    def name(self, name):
        """Sets the name of this CustomerAttributes.


        :param name: The name of this CustomerAttributes.  # noqa: E501
        :type: str
        """
        if name is None:
            raise ValueError("Invalid value for `name`, must not be `None`")  # noqa: E501

        self._name = name

    @property
    def customer_membership_state(self):
        """Gets the customer_membership_state of this CustomerAttributes.  # noqa: E501


        :return: The customer_membership_state of this CustomerAttributes.  # noqa: E501
        :rtype: UserMembershipAttributes
        """
        return self._customer_membership_state

    @customer_membership_state.setter
    def customer_membership_state(self, customer_membership_state):
        """Sets the customer_membership_state of this CustomerAttributes.


        :param customer_membership_state: The customer_membership_state of this CustomerAttributes.  # noqa: E501
        :type: UserMembershipAttributes
        """

        self._customer_membership_state = customer_membership_state

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
        if issubclass(CustomerAttributes, dict):
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
        if not isinstance(other, CustomerAttributes):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
