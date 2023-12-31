# Accounts API
#
# Accounts API 
#
# OpenAPI spec version: 0.9.5
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' UserGroupAttributes Class
#'
#' @field name 
#' @field description 
#' @field isMachineEnabled 
#' @field isSystemDefined 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserGroupAttributes <- R6::R6Class(
  'UserGroupAttributes',
  public = list(
    `name` = NULL,
    `description` = NULL,
    `isMachineEnabled` = NULL,
    `isSystemDefined` = NULL,
    initialize = function(`name`, `description`, `isMachineEnabled`, `isSystemDefined`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`isMachineEnabled`)) {
        self$`isMachineEnabled` <- `isMachineEnabled`
      }
      if (!missing(`isSystemDefined`)) {
        self$`isSystemDefined` <- `isSystemDefined`
      }
    },
    toJSON = function() {
      UserGroupAttributesObject <- list()
      if (!is.null(self$`name`)) {
        UserGroupAttributesObject[['name']] <- self$`name`
      }
      if (!is.null(self$`description`)) {
        UserGroupAttributesObject[['description']] <- self$`description`
      }
      if (!is.null(self$`isMachineEnabled`)) {
        UserGroupAttributesObject[['isMachineEnabled']] <- self$`isMachineEnabled`
      }
      if (!is.null(self$`isSystemDefined`)) {
        UserGroupAttributesObject[['isSystemDefined']] <- self$`isSystemDefined`
      }

      UserGroupAttributesObject
    },
    fromJSON = function(UserGroupAttributesJson) {
      UserGroupAttributesObject <- jsonlite::fromJSON(UserGroupAttributesJson)
      if (!is.null(UserGroupAttributesObject$`name`)) {
        self$`name` <- UserGroupAttributesObject$`name`
      }
      if (!is.null(UserGroupAttributesObject$`description`)) {
        self$`description` <- UserGroupAttributesObject$`description`
      }
      if (!is.null(UserGroupAttributesObject$`isMachineEnabled`)) {
        self$`isMachineEnabled` <- UserGroupAttributesObject$`isMachineEnabled`
      }
      if (!is.null(UserGroupAttributesObject$`isSystemDefined`)) {
        self$`isSystemDefined` <- UserGroupAttributesObject$`isSystemDefined`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "description": %s,
           "isMachineEnabled": %s,
           "isSystemDefined": %s
        }',
        self$`name`,
        self$`description`,
        self$`isMachineEnabled`,
        self$`isSystemDefined`
      )
    },
    fromJSONString = function(UserGroupAttributesJson) {
      UserGroupAttributesObject <- jsonlite::fromJSON(UserGroupAttributesJson)
      self$`name` <- UserGroupAttributesObject$`name`
      self$`description` <- UserGroupAttributesObject$`description`
      self$`isMachineEnabled` <- UserGroupAttributesObject$`isMachineEnabled`
      self$`isSystemDefined` <- UserGroupAttributesObject$`isSystemDefined`
    }
  )
)
