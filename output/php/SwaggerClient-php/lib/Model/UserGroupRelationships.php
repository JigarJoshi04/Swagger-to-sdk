<?php
/**
 * UserGroupRelationships
 *
 * PHP version 5
 *
 * @category Class
 * @package  Swagger\Client
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */

/**
 * Accounts API
 *
 * Accounts API
 *
 * OpenAPI spec version: 0.9.5
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 * Swagger Codegen version: 3.0.27
 */
/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

namespace Swagger\Client\Model;

use \ArrayAccess;
use \Swagger\Client\ObjectSerializer;

/**
 * UserGroupRelationships Class Doc Comment
 *
 * @category Class
 * @package  Swagger\Client
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */
class UserGroupRelationships implements ModelInterface, ArrayAccess
{
    const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $swaggerModelName = 'UserGroup_relationships';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $swaggerTypes = [
        'has_access_to' => '\Swagger\Client\Model\PartitionRelationship',
'authorized_as' => '\Swagger\Client\Model\RoleRelationship',
'owned_by' => '\Swagger\Client\Model\CustomerRelationship'    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $swaggerFormats = [
        'has_access_to' => null,
'authorized_as' => null,
'owned_by' => null    ];

    /**
     * Array of property to type mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function swaggerTypes()
    {
        return self::$swaggerTypes;
    }

    /**
     * Array of property to format mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function swaggerFormats()
    {
        return self::$swaggerFormats;
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'has_access_to' => 'hasAccessTo',
'authorized_as' => 'authorizedAs',
'owned_by' => 'ownedBy'    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'has_access_to' => 'setHasAccessTo',
'authorized_as' => 'setAuthorizedAs',
'owned_by' => 'setOwnedBy'    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'has_access_to' => 'getHasAccessTo',
'authorized_as' => 'getAuthorizedAs',
'owned_by' => 'getOwnedBy'    ];

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @return array
     */
    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @return array
     */
    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @return array
     */
    public static function getters()
    {
        return self::$getters;
    }

    /**
     * The original name of the model.
     *
     * @return string
     */
    public function getModelName()
    {
        return self::$swaggerModelName;
    }

    

    /**
     * Associative array for storing property values
     *
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor
     *
     * @param mixed[] $data Associated array of property values
     *                      initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->container['has_access_to'] = isset($data['has_access_to']) ? $data['has_access_to'] : null;
        $this->container['authorized_as'] = isset($data['authorized_as']) ? $data['authorized_as'] : null;
        $this->container['owned_by'] = isset($data['owned_by']) ? $data['owned_by'] : null;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        return $invalidProperties;
    }

    /**
     * Validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {
        return count($this->listInvalidProperties()) === 0;
    }


    /**
     * Gets has_access_to
     *
     * @return \Swagger\Client\Model\PartitionRelationship
     */
    public function getHasAccessTo()
    {
        return $this->container['has_access_to'];
    }

    /**
     * Sets has_access_to
     *
     * @param \Swagger\Client\Model\PartitionRelationship $has_access_to has_access_to
     *
     * @return $this
     */
    public function setHasAccessTo($has_access_to)
    {
        $this->container['has_access_to'] = $has_access_to;

        return $this;
    }

    /**
     * Gets authorized_as
     *
     * @return \Swagger\Client\Model\RoleRelationship
     */
    public function getAuthorizedAs()
    {
        return $this->container['authorized_as'];
    }

    /**
     * Sets authorized_as
     *
     * @param \Swagger\Client\Model\RoleRelationship $authorized_as authorized_as
     *
     * @return $this
     */
    public function setAuthorizedAs($authorized_as)
    {
        $this->container['authorized_as'] = $authorized_as;

        return $this;
    }

    /**
     * Gets owned_by
     *
     * @return \Swagger\Client\Model\CustomerRelationship
     */
    public function getOwnedBy()
    {
        return $this->container['owned_by'];
    }

    /**
     * Sets owned_by
     *
     * @param \Swagger\Client\Model\CustomerRelationship $owned_by owned_by
     *
     * @return $this
     */
    public function setOwnedBy($owned_by)
    {
        $this->container['owned_by'] = $owned_by;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset)
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     *
     * @param integer $offset Offset
     *
     * @return mixed
     */
    public function offsetGet($offset)
    {
        return isset($this->container[$offset]) ? $this->container[$offset] : null;
    }

    /**
     * Sets value based on offset.
     *
     * @param integer $offset Offset
     * @param mixed   $value  Value to be set
     *
     * @return void
     */
    public function offsetSet($offset, $value)
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     *
     * @param integer $offset Offset
     *
     * @return void
     */
    public function offsetUnset($offset)
    {
        unset($this->container[$offset]);
    }

    /**
     * Gets the string presentation of the object
     *
     * @return string
     */
    public function __toString()
    {
        if (defined('JSON_PRETTY_PRINT')) { // use JSON pretty print
            return json_encode(
                ObjectSerializer::sanitizeForSerialization($this),
                JSON_PRETTY_PRINT
            );
        }

        return json_encode(ObjectSerializer::sanitizeForSerialization($this));
    }
}
