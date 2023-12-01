# Accounts API
#
# Accounts API 
#
# OpenAPI spec version: 0.9.5
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' PartitionRelationship Class
#'
#' @field data 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PartitionRelationship <- R6::R6Class(
  'PartitionRelationship',
  public = list(
    `data` = NULL,
    initialize = function(`data`){
      if (!missing(`data`)) {
        stopifnot(is.list(`data`), length(`data`) != 0)
        lapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
      }
    },
    toJSON = function() {
      PartitionRelationshipObject <- list()
      if (!is.null(self$`data`)) {
        PartitionRelationshipObject[['data']] <- lapply(self$`data`, function(x) x$toJSON())
      }

      PartitionRelationshipObject
    },
    fromJSON = function(PartitionRelationshipJson) {
      PartitionRelationshipObject <- jsonlite::fromJSON(PartitionRelationshipJson)
      if (!is.null(PartitionRelationshipObject$`data`)) {
        self$`data` <- lapply(PartitionRelationshipObject$`data`, function(x) {
          dataObject <- PartitionRelationshipData$new()
          dataObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          dataObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "data": [%s]
        }',
        lapply(self$`data`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(PartitionRelationshipJson) {
      PartitionRelationshipObject <- jsonlite::fromJSON(PartitionRelationshipJson)
      self$`data` <- lapply(PartitionRelationshipObject$`data`, function(x) PartitionRelationshipData$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
