# Accounts API
#
# Accounts API 
#
# OpenAPI spec version: 0.9.5
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' CustomerMeta Class
#'
#' @field updatedAt 
#' @field updatedBy 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CustomerMeta <- R6::R6Class(
  'CustomerMeta',
  public = list(
    `updatedAt` = NULL,
    `updatedBy` = NULL,
    initialize = function(`updatedAt`, `updatedBy`){
      if (!missing(`updatedAt`)) {
        stopifnot(is.character(`updatedAt`), length(`updatedAt`) == 1)
        self$`updatedAt` <- `updatedAt`
      }
      if (!missing(`updatedBy`)) {
        stopifnot(is.character(`updatedBy`), length(`updatedBy`) == 1)
        self$`updatedBy` <- `updatedBy`
      }
    },
    toJSON = function() {
      CustomerMetaObject <- list()
      if (!is.null(self$`updatedAt`)) {
        CustomerMetaObject[['updatedAt']] <- self$`updatedAt`
      }
      if (!is.null(self$`updatedBy`)) {
        CustomerMetaObject[['updatedBy']] <- self$`updatedBy`
      }

      CustomerMetaObject
    },
    fromJSON = function(CustomerMetaJson) {
      CustomerMetaObject <- jsonlite::fromJSON(CustomerMetaJson)
      if (!is.null(CustomerMetaObject$`updatedAt`)) {
        self$`updatedAt` <- CustomerMetaObject$`updatedAt`
      }
      if (!is.null(CustomerMetaObject$`updatedBy`)) {
        self$`updatedBy` <- CustomerMetaObject$`updatedBy`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "updatedAt": %s,
           "updatedBy": %s
        }',
        self$`updatedAt`,
        self$`updatedBy`
      )
    },
    fromJSONString = function(CustomerMetaJson) {
      CustomerMetaObject <- jsonlite::fromJSON(CustomerMetaJson)
      self$`updatedAt` <- CustomerMetaObject$`updatedAt`
      self$`updatedBy` <- CustomerMetaObject$`updatedBy`
    }
  )
)
