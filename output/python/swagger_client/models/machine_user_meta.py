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

class MachineUserMeta(object):
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
        'created_at': 'datetime',
        'updated_at': 'datetime',
        'created_by': 'str',
        'updated_by': 'str'
    }

    attribute_map = {
        'created_at': 'createdAt',
        'updated_at': 'updatedAt',
        'created_by': 'createdBy',
        'updated_by': 'updatedBy'
    }

    def __init__(self, created_at=None, updated_at=None, created_by=None, updated_by=None):  # noqa: E501
        """MachineUserMeta - a model defined in Swagger"""  # noqa: E501
        self._created_at = None
        self._updated_at = None
        self._created_by = None
        self._updated_by = None
        self.discriminator = None
        self.created_at = created_at
        if updated_at is not None:
            self.updated_at = updated_at
        if created_by is not None:
            self.created_by = created_by
        if updated_by is not None:
            self.updated_by = updated_by

    @property
    def created_at(self):
        """Gets the created_at of this MachineUserMeta.  # noqa: E501


        :return: The created_at of this MachineUserMeta.  # noqa: E501
        :rtype: datetime
        """
        return self._created_at

    @created_at.setter
    def created_at(self, created_at):
        """Sets the created_at of this MachineUserMeta.


        :param created_at: The created_at of this MachineUserMeta.  # noqa: E501
        :type: datetime
        """
        if created_at is None:
            raise ValueError("Invalid value for `created_at`, must not be `None`")  # noqa: E501

        self._created_at = created_at

    @property
    def updated_at(self):
        """Gets the updated_at of this MachineUserMeta.  # noqa: E501


        :return: The updated_at of this MachineUserMeta.  # noqa: E501
        :rtype: datetime
        """
        return self._updated_at

    @updated_at.setter
    def updated_at(self, updated_at):
        """Sets the updated_at of this MachineUserMeta.


        :param updated_at: The updated_at of this MachineUserMeta.  # noqa: E501
        :type: datetime
        """

        self._updated_at = updated_at

    @property
    def created_by(self):
        """Gets the created_by of this MachineUserMeta.  # noqa: E501


        :return: The created_by of this MachineUserMeta.  # noqa: E501
        :rtype: str
        """
        return self._created_by

    @created_by.setter
    def created_by(self, created_by):
        """Sets the created_by of this MachineUserMeta.


        :param created_by: The created_by of this MachineUserMeta.  # noqa: E501
        :type: str
        """

        self._created_by = created_by

    @property
    def updated_by(self):
        """Gets the updated_by of this MachineUserMeta.  # noqa: E501


        :return: The updated_by of this MachineUserMeta.  # noqa: E501
        :rtype: str
        """
        return self._updated_by

    @updated_by.setter
    def updated_by(self, updated_by):
        """Sets the updated_by of this MachineUserMeta.


        :param updated_by: The updated_by of this MachineUserMeta.  # noqa: E501
        :type: str
        """

        self._updated_by = updated_by

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
        if issubclass(MachineUserMeta, dict):
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
        if not isinstance(other, MachineUserMeta):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
