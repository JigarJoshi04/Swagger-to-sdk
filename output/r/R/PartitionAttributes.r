# Accounts API
#
# Accounts API 
#
# OpenAPI spec version: 0.9.5
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' PartitionAttributes Class
#'
#' @field name 
#' @field description 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PartitionAttributes <- R6::R6Class(
  'PartitionAttributes',
  public = list(
    `name` = NULL,
    `description` = NULL,
    initialize = function(`name`, `description`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
    },
    toJSON = function() {
      PartitionAttributesObject <- list()
      if (!is.null(self$`name`)) {
        PartitionAttributesObject[['name']] <- self$`name`
      }
      if (!is.null(self$`description`)) {
        PartitionAttributesObject[['description']] <- self$`description`
      }

      PartitionAttributesObject
    },
    fromJSON = function(PartitionAttributesJson) {
      PartitionAttributesObject <- jsonlite::fromJSON(PartitionAttributesJson)
      if (!is.null(PartitionAttributesObject$`name`)) {
        self$`name` <- PartitionAttributesObject$`name`
      }
      if (!is.null(PartitionAttributesObject$`description`)) {
        self$`description` <- PartitionAttributesObject$`description`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "description": %s
        }',
        self$`name`,
        self$`description`
      )
    },
    fromJSONString = function(PartitionAttributesJson) {
      PartitionAttributesObject <- jsonlite::fromJSON(PartitionAttributesJson)
      self$`name` <- PartitionAttributesObject$`name`
      self$`description` <- PartitionAttributesObject$`description`
    }
  )
)