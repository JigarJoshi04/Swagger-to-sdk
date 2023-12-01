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

class MachineUserResponseAttributes(object):
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
        'purpose': 'str',
        'state': 'MachineUserState',
        'o_auth': 'MachineUserOAuth'
    }

    attribute_map = {
        'name': 'name',
        'purpose': 'purpose',
        'state': 'state',
        'o_auth': 'oAuth'
    }

    def __init__(self, name=None, purpose=None, state=None, o_auth=None):  # noqa: E501
        """MachineUserResponseAttributes - a model defined in Swagger"""  # noqa: E501
        self._name = None
        self._purpose = None
        self._state = None
        self._o_auth = None
        self.discriminator = None
        self.name = name
        self.purpose = purpose
        self.state = state
        self.o_auth = o_auth

    @property
    def name(self):
        """Gets the name of this MachineUserResponseAttributes.  # noqa: E501

        Name of Machine User  # noqa: E501

        :return: The name of this MachineUserResponseAttributes.  # noqa: E501
        :rtype: str
        """
        return self._name

    @name.setter
    def name(self, name):
        """Sets the name of this MachineUserResponseAttributes.

        Name of Machine User  # noqa: E501

        :param name: The name of this MachineUserResponseAttributes.  # noqa: E501
        :type: str
        """
        if name is None:
            raise ValueError("Invalid value for `name`, must not be `None`")  # noqa: E501

        self._name = name

    @property
    def purpose(self):
        """Gets the purpose of this MachineUserResponseAttributes.  # noqa: E501

        Purpose of this machine user  # noqa: E501

        :return: The purpose of this MachineUserResponseAttributes.  # noqa: E501
        :rtype: str
        """
        return self._purpose

    @purpose.setter
    def purpose(self, purpose):
        """Sets the purpose of this MachineUserResponseAttributes.

        Purpose of this machine user  # noqa: E501

        :param purpose: The purpose of this MachineUserResponseAttributes.  # noqa: E501
        :type: str
        """
        if purpose is None:
            raise ValueError("Invalid value for `purpose`, must not be `None`")  # noqa: E501

        self._purpose = purpose

    @property
    def state(self):
        """Gets the state of this MachineUserResponseAttributes.  # noqa: E501


        :return: The state of this MachineUserResponseAttributes.  # noqa: E501
        :rtype: MachineUserState
        """
        return self._state

    @state.setter
    def state(self, state):
        """Sets the state of this MachineUserResponseAttributes.


        :param state: The state of this MachineUserResponseAttributes.  # noqa: E501
        :type: MachineUserState
        """
        if state is None:
            raise ValueError("Invalid value for `state`, must not be `None`")  # noqa: E501

        self._state = state

    @property
    def o_auth(self):
        """Gets the o_auth of this MachineUserResponseAttributes.  # noqa: E501


        :return: The o_auth of this MachineUserResponseAttributes.  # noqa: E501
        :rtype: MachineUserOAuth
        """
        return self._o_auth

    @o_auth.setter
    def o_auth(self, o_auth):
        """Sets the o_auth of this MachineUserResponseAttributes.


        :param o_auth: The o_auth of this MachineUserResponseAttributes.  # noqa: E501
        :type: MachineUserOAuth
        """
        if o_auth is None:
            raise ValueError("Invalid value for `o_auth`, must not be `None`")  # noqa: E501

        self._o_auth = o_auth

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
        if issubclass(MachineUserResponseAttributes, dict):
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
        if not isinstance(other, MachineUserResponseAttributes):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
