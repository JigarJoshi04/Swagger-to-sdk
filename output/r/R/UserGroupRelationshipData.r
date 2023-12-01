# Accounts API
#
# Accounts API 
#
# OpenAPI spec version: 0.9.5
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' UserGroupRelationshipData Class
#'
#' @field type 
#' @field id 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserGroupRelationshipData <- R6::R6Class(
  'UserGroupRelationshipData',
  public = list(
    `type` = NULL,
    `id` = NULL,
    initialize = function(`type`, `id`){
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
    },
    toJSON = function() {
      UserGroupRelationshipDataObject <- list()
      if (!is.null(self$`type`)) {
        UserGroupRelationshipDataObject[['type']] <- self$`type`
      }
      if (!is.null(self$`id`)) {
        UserGroupRelationshipDataObject[['id']] <- self$`id`
      }

      UserGroupRelationshipDataObject
    },
    fromJSON = function(UserGroupRelationshipDataJson) {
      UserGroupRelationshipDataObject <- jsonlite::fromJSON(UserGroupRelationshipDataJson)
      if (!is.null(UserGroupRelationshipDataObject$`type`)) {
        self$`type` <- UserGroupRelationshipDataObject$`type`
      }
      if (!is.null(UserGroupRelationshipDataObject$`id`)) {
        self$`id` <- UserGroupRelationshipDataObject$`id`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "type": %s,
           "id": %s
        }',
        self$`type`,
        self$`id`
      )
    },
    fromJSONString = function(UserGroupRelationshipDataJson) {
      UserGroupRelationshipDataObject <- jsonlite::fromJSON(UserGroupRelationshipDataJson)
      self$`type` <- UserGroupRelationshipDataObject$`type`
      self$`id` <- UserGroupRelationshipDataObject$`id`
    }
  )
)