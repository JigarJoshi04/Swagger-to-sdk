# Accounts API
#
# Accounts API 
#
# OpenAPI spec version: 0.9.5
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' PartitionRelationships Class
#'
#' @field ownedByCustomer 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PartitionRelationships <- R6::R6Class(
  'PartitionRelationships',
  public = list(
    `ownedByCustomer` = NULL,
    initialize = function(`ownedByCustomer`){
      if (!missing(`ownedByCustomer`)) {
        stopifnot(R6::is.R6(`ownedByCustomer`))
        self$`ownedByCustomer` <- `ownedByCustomer`
      }
    },
    toJSON = function() {
      PartitionRelationshipsObject <- list()
      if (!is.null(self$`ownedByCustomer`)) {
        PartitionRelationshipsObject[['ownedByCustomer']] <- self$`ownedByCustomer`$toJSON()
      }

      PartitionRelationshipsObject
    },
    fromJSON = function(PartitionRelationshipsJson) {
      PartitionRelationshipsObject <- jsonlite::fromJSON(PartitionRelationshipsJson)
      if (!is.null(PartitionRelationshipsObject$`ownedByCustomer`)) {
        ownedByCustomerObject <- CustomerRelationship$new()
        ownedByCustomerObject$fromJSON(jsonlite::toJSON(PartitionRelationshipsObject$ownedByCustomer, auto_unbox = TRUE))
        self$`ownedByCustomer` <- ownedByCustomerObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "ownedByCustomer": %s
        }',
        self$`ownedByCustomer`$toJSON()
      )
    },
    fromJSONString = function(PartitionRelationshipsJson) {
      PartitionRelationshipsObject <- jsonlite::fromJSON(PartitionRelationshipsJson)
      CustomerRelationshipObject <- CustomerRelationship$new()
      self$`ownedByCustomer` <- CustomerRelationshipObject$fromJSON(jsonlite::toJSON(PartitionRelationshipsObject$ownedByCustomer, auto_unbox = TRUE))
    }
  )
)