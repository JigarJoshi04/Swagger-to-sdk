# Accounts API
#
# Accounts API 
#
# OpenAPI spec version: 0.9.5
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' Customer Class
#'
#' @field type 
#' @field id 
#' @field attributes 
#' @field meta 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Customer <- R6::R6Class(
  'Customer',
  public = list(
    `type` = NULL,
    `id` = NULL,
    `attributes` = NULL,
    `meta` = NULL,
    initialize = function(`type`, `id`, `attributes`, `meta`){
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
      if (!missing(`meta`)) {
        stopifnot(R6::is.R6(`meta`))
        self$`meta` <- `meta`
      }
    },
    toJSON = function() {
      CustomerObject <- list()
      if (!is.null(self$`type`)) {
        CustomerObject[['type']] <- self$`type`
      }
      if (!is.null(self$`id`)) {
        CustomerObject[['id']] <- self$`id`
      }
      if (!is.null(self$`attributes`)) {
        CustomerObject[['attributes']] <- self$`attributes`$toJSON()
      }
      if (!is.null(self$`meta`)) {
        CustomerObject[['meta']] <- self$`meta`$toJSON()
      }

      CustomerObject
    },
    fromJSON = function(CustomerJson) {
      CustomerObject <- jsonlite::fromJSON(CustomerJson)
      if (!is.null(CustomerObject$`type`)) {
        self$`type` <- CustomerObject$`type`
      }
      if (!is.null(CustomerObject$`id`)) {
        self$`id` <- CustomerObject$`id`
      }
      if (!is.null(CustomerObject$`attributes`)) {
        attributesObject <- CustomerAttributes$new()
        attributesObject$fromJSON(jsonlite::toJSON(CustomerObject$attributes, auto_unbox = TRUE))
        self$`attributes` <- attributesObject
      }
      if (!is.null(CustomerObject$`meta`)) {
        metaObject <- CustomerMeta$new()
        metaObject$fromJSON(jsonlite::toJSON(CustomerObject$meta, auto_unbox = TRUE))
        self$`meta` <- metaObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "type": %s,
           "id": %s,
           "attributes": %s,
           "meta": %s
        }',
        self$`type`,
        self$`id`,
        self$`attributes`$toJSON(),
        self$`meta`$toJSON()
      )
    },
    fromJSONString = function(CustomerJson) {
      CustomerObject <- jsonlite::fromJSON(CustomerJson)
      self$`type` <- CustomerObject$`type`
      self$`id` <- CustomerObject$`id`
      CustomerAttributesObject <- CustomerAttributes$new()
      self$`attributes` <- CustomerAttributesObject$fromJSON(jsonlite::toJSON(CustomerObject$attributes, auto_unbox = TRUE))
      CustomerMetaObject <- CustomerMeta$new()
      self$`meta` <- CustomerMetaObject$fromJSON(jsonlite::toJSON(CustomerObject$meta, auto_unbox = TRUE))
    }
  )
)
