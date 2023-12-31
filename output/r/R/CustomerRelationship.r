# Accounts API
#
# Accounts API 
#
# OpenAPI spec version: 0.9.5
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' CustomerRelationship Class
#'
#' @field data 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CustomerRelationship <- R6::R6Class(
  'CustomerRelationship',
  public = list(
    `data` = NULL,
    initialize = function(`data`){
      if (!missing(`data`)) {
        stopifnot(R6::is.R6(`data`))
        self$`data` <- `data`
      }
    },
    toJSON = function() {
      CustomerRelationshipObject <- list()
      if (!is.null(self$`data`)) {
        CustomerRelationshipObject[['data']] <- self$`data`$toJSON()
      }

      CustomerRelationshipObject
    },
    fromJSON = function(CustomerRelationshipJson) {
      CustomerRelationshipObject <- jsonlite::fromJSON(CustomerRelationshipJson)
      if (!is.null(CustomerRelationshipObject$`data`)) {
        dataObject <- CustomerRelationshipData$new()
        dataObject$fromJSON(jsonlite::toJSON(CustomerRelationshipObject$data, auto_unbox = TRUE))
        self$`data` <- dataObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "data": %s
        }',
        self$`data`$toJSON()
      )
    },
    fromJSONString = function(CustomerRelationshipJson) {
      CustomerRelationshipObject <- jsonlite::fromJSON(CustomerRelationshipJson)
      CustomerRelationshipDataObject <- CustomerRelationshipData$new()
      self$`data` <- CustomerRelationshipDataObject$fromJSON(jsonlite::toJSON(CustomerRelationshipObject$data, auto_unbox = TRUE))
    }
  )
)
