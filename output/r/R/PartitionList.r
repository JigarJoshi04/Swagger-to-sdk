# Accounts API
#
# Accounts API 
#
# OpenAPI spec version: 0.9.5
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' PartitionList Class
#'
#' @field links 
#' @field data 
#' @field included 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PartitionList <- R6::R6Class(
  'PartitionList',
  public = list(
    `links` = NULL,
    `data` = NULL,
    `included` = NULL,
    initialize = function(`links`, `data`, `included`){
      if (!missing(`links`)) {
        stopifnot(R6::is.R6(`links`))
        self$`links` <- `links`
      }
      if (!missing(`data`)) {
        stopifnot(is.list(`data`), length(`data`) != 0)
        lapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
      }
      if (!missing(`included`)) {
        stopifnot(is.list(`included`), length(`included`) != 0)
        lapply(`included`, function(x) stopifnot(R6::is.R6(x)))
        self$`included` <- `included`
      }
    },
    toJSON = function() {
      PartitionListObject <- list()
      if (!is.null(self$`links`)) {
        PartitionListObject[['links']] <- self$`links`$toJSON()
      }
      if (!is.null(self$`data`)) {
        PartitionListObject[['data']] <- lapply(self$`data`, function(x) x$toJSON())
      }
      if (!is.null(self$`included`)) {
        PartitionListObject[['included']] <- lapply(self$`included`, function(x) x$toJSON())
      }

      PartitionListObject
    },
    fromJSON = function(PartitionListJson) {
      PartitionListObject <- jsonlite::fromJSON(PartitionListJson)
      if (!is.null(PartitionListObject$`links`)) {
        linksObject <- PartitionListLinks$new()
        linksObject$fromJSON(jsonlite::toJSON(PartitionListObject$links, auto_unbox = TRUE))
        self$`links` <- linksObject
      }
      if (!is.null(PartitionListObject$`data`)) {
        self$`data` <- lapply(PartitionListObject$`data`, function(x) {
          dataObject <- Partition$new()
          dataObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          dataObject
        })
      }
      if (!is.null(PartitionListObject$`included`)) {
        self$`included` <- lapply(PartitionListObject$`included`, function(x) {
          includedObject <- PartitionListIncluded$new()
          includedObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          includedObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "links": %s,
           "data": [%s],
           "included": [%s]
        }',
        self$`links`$toJSON(),
        lapply(self$`data`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`included`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(PartitionListJson) {
      PartitionListObject <- jsonlite::fromJSON(PartitionListJson)
      PartitionListLinksObject <- PartitionListLinks$new()
      self$`links` <- PartitionListLinksObject$fromJSON(jsonlite::toJSON(PartitionListObject$links, auto_unbox = TRUE))
      self$`data` <- lapply(PartitionListObject$`data`, function(x) Partition$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`included` <- lapply(PartitionListObject$`included`, function(x) PartitionListIncluded$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
