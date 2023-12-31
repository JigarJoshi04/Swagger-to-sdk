# Accounts API
#
# Accounts API 
#
# OpenAPI spec version: 0.9.5
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' UserGroupResponseData Class
#'
#' @field type 
#' @field id 
#' @field attributes 
#' @field relationships 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserGroupResponseData <- R6::R6Class(
  'UserGroupResponseData',
  public = list(
    `type` = NULL,
    `id` = NULL,
    `attributes` = NULL,
    `relationships` = NULL,
    initialize = function(`type`, `id`, `attributes`, `relationships`){
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`attributes`)) {
        stopifnot(R6::is.R6(`attributes`))
        self$`attributes` <- `attributes`
      }
      if (!missing(`relationships`)) {
        stopifnot(R6::is.R6(`relationships`))
        self$`relationships` <- `relationships`
      }
    },
    toJSON = function() {
      UserGroupResponseDataObject <- list()
      if (!is.null(self$`type`)) {
        UserGroupResponseDataObject[['type']] <- self$`type`
      }
      if (!is.null(self$`id`)) {
        UserGroupResponseDataObject[['id']] <- self$`id`
      }
      if (!is.null(self$`attributes`)) {
        UserGroupResponseDataObject[['attributes']] <- self$`attributes`$toJSON()
      }
      if (!is.null(self$`relationships`)) {
        UserGroupResponseDataObject[['relationships']] <- self$`relationships`$toJSON()
      }

      UserGroupResponseDataObject
    },
    fromJSON = function(UserGroupResponseDataJson) {
      UserGroupResponseDataObject <- jsonlite::fromJSON(UserGroupResponseDataJson)
      if (!is.null(UserGroupResponseDataObject$`type`)) {
        self$`type` <- UserGroupResponseDataObject$`type`
      }
      if (!is.null(UserGroupResponseDataObject$`id`)) {
        self$`id` <- UserGroupResponseDataObject$`id`
      }
      if (!is.null(UserGroupResponseDataObject$`attributes`)) {
        attributesObject <- UserGroupResponseAttribute$new()
        attributesObject$fromJSON(jsonlite::toJSON(UserGroupResponseDataObject$attributes, auto_unbox = TRUE))
        self$`attributes` <- attributesObject
      }
      if (!is.null(UserGroupResponseDataObject$`relationships`)) {
        relationshipsObject <- UserGroupRelationships$new()
        relationshipsObject$fromJSON(jsonlite::toJSON(UserGroupResponseDataObject$relationships, auto_unbox = TRUE))
        self$`relationships` <- relationshipsObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "type": %s,
           "id": %s,
           "attributes": %s,
           "relationships": %s
        }',
        self$`type`,
        self$`id`,
        self$`attributes`$toJSON(),
        self$`relationships`$toJSON()
      )
    },
    fromJSONString = function(UserGroupResponseDataJson) {
      UserGroupResponseDataObject <- jsonlite::fromJSON(UserGroupResponseDataJson)
      self$`type` <- UserGroupResponseDataObject$`type`
      self$`id` <- UserGroupResponseDataObject$`id`
      UserGroupResponseAttributeObject <- UserGroupResponseAttribute$new()
      self$`attributes` <- UserGroupResponseAttributeObject$fromJSON(jsonlite::toJSON(UserGroupResponseDataObject$attributes, auto_unbox = TRUE))
      UserGroupRelationshipsObject <- UserGroupRelationships$new()
      self$`relationships` <- UserGroupRelationshipsObject$fromJSON(jsonlite::toJSON(UserGroupResponseDataObject$relationships, auto_unbox = TRUE))
    }
  )
)
