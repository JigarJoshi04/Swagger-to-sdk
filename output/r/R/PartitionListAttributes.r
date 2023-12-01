# Accounts API
#
# Accounts API 
#
# OpenAPI spec version: 0.9.5
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' PartitionListAttributes Class
#'
#' @field name 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PartitionListAttributes <- R6::R6Class(
  'PartitionListAttributes',
  public = list(
    `name` = NULL,
    initialize = function(`name`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
    },
    toJSON = function() {
      PartitionListAttributesObject <- list()
      if (!is.null(self$`name`)) {
        PartitionListAttributesObject[['name']] <- self$`name`
      }

      PartitionListAttributesObject
    },
    fromJSON = function(PartitionListAttributesJson) {
      PartitionListAttributesObject <- jsonlite::fromJSON(PartitionListAttributesJson)
      if (!is.null(PartitionListAttributesObject$`name`)) {
        self$`name` <- PartitionListAttributesObject$`name`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s
        }',
        self$`name`
      )
    },
    fromJSONString = function(PartitionListAttributesJson) {
      PartitionListAttributesObject <- jsonlite::fromJSON(PartitionListAttributesJson)
      self$`name` <- PartitionListAttributesObject$`name`
    }
  )
)