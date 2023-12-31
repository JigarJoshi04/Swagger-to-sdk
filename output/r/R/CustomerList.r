# Accounts API
#
# Accounts API 
#
# OpenAPI spec version: 0.9.5
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' CustomerList Class
#'
#' @field links 
#' @field data 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CustomerList <- R6::R6Class(
  'CustomerList',
  public = list(
    `links` = NULL,
    `data` = NULL,
    initialize = function(`links`, `data`){
      if (!missing(`links`)) {
        stopifnot(R6::is.R6(`links`))
        self$`links` <- `links`
      }
      if (!missing(`data`)) {
        stopifnot(is.list(`data`), length(`data`) != 0)
        lapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
      }
    },
    toJSON = function() {
      CustomerListObject <- list()
      if (!is.null(self$`links`)) {
        CustomerListObject[['links']] <- self$`links`$toJSON()
      }
      if (!is.null(self$`data`)) {
        CustomerListObject[['data']] <- lapply(self$`data`, function(x) x$toJSON())
      }

      CustomerListObject
    },
    fromJSON = function(CustomerListJson) {
      CustomerListObject <- jsonlite::fromJSON(CustomerListJson)
      if (!is.null(CustomerListObject$`links`)) {
        linksObject <- CustomerListLinks$new()
        linksObject$fromJSON(jsonlite::toJSON(CustomerListObject$links, auto_unbox = TRUE))
        self$`links` <- linksObject
      }
      if (!is.null(CustomerListObject$`data`)) {
        self$`data` <- lapply(CustomerListObject$`data`, function(x) {
          dataObject <- Customer$new()
          dataObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          dataObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "links": %s,
           "data": [%s]
        }',
        self$`links`$toJSON(),
        lapply(self$`data`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(CustomerListJson) {
      CustomerListObject <- jsonlite::fromJSON(CustomerListJson)
      CustomerListLinksObject <- CustomerListLinks$new()
      self$`links` <- CustomerListLinksObject$fromJSON(jsonlite::toJSON(CustomerListObject$links, auto_unbox = TRUE))
      self$`data` <- lapply(CustomerListObject$`data`, function(x) Customer$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
