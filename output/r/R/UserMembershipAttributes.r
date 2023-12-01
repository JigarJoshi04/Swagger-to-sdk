# Accounts API
#
# Accounts API 
#
# OpenAPI spec version: 0.9.5
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' UserMembershipAttributes Class
#'
#' @field state 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserMembershipAttributes <- R6::R6Class(
  'UserMembershipAttributes',
  public = list(
    `state` = NULL,
    initialize = function(`state`){
      if (!missing(`state`)) {
        stopifnot(is.character(`state`), length(`state`) == 1)
        self$`state` <- `state`
      }
    },
    toJSON = function() {
      UserMembershipAttributesObject <- list()
      if (!is.null(self$`state`)) {
        UserMembershipAttributesObject[['state']] <- self$`state`
      }

      UserMembershipAttributesObject
    },
    fromJSON = function(UserMembershipAttributesJson) {
      UserMembershipAttributesObject <- jsonlite::fromJSON(UserMembershipAttributesJson)
      if (!is.null(UserMembershipAttributesObject$`state`)) {
        self$`state` <- UserMembershipAttributesObject$`state`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "state": %s
        }',
        self$`state`
      )
    },
    fromJSONString = function(UserMembershipAttributesJson) {
      UserMembershipAttributesObject <- jsonlite::fromJSON(UserMembershipAttributesJson)
      self$`state` <- UserMembershipAttributesObject$`state`
    }
  )
)
