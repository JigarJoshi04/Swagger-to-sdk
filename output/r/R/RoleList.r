# Accounts API
#
# Accounts API 
#
# OpenAPI spec version: 0.9.5
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' RoleList Class
#'
#' @field links 
#' @field data 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RoleList <- R6::R6Class(
  'RoleList',
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
      RoleListObject <- list()
      if (!is.null(self$`links`)) {
        RoleListObject[['links']] <- self$`links`$toJSON()
      }
      if (!is.null(self$`data`)) {
        RoleListObject[['data']] <- lapply(self$`data`, function(x) x$toJSON())
      }

      RoleListObject
    },
    fromJSON = function(RoleListJson) {
      RoleListObject <- jsonlite::fromJSON(RoleListJson)
      if (!is.null(RoleListObject$`links`)) {
        linksObject <- RoleListLinks$new()
        linksObject$fromJSON(jsonlite::toJSON(RoleListObject$links, auto_unbox = TRUE))
        self$`links` <- linksObject
      }
      if (!is.null(RoleListObject$`data`)) {
        self$`data` <- lapply(RoleListObject$`data`, function(x) {
          dataObject <- Role$new()
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
    fromJSONString = function(RoleListJson) {
      RoleListObject <- jsonlite::fromJSON(RoleListJson)
      RoleListLinksObject <- RoleListLinks$new()
      self$`links` <- RoleListLinksObject$fromJSON(jsonlite::toJSON(RoleListObject$links, auto_unbox = TRUE))
      self$`data` <- lapply(RoleListObject$`data`, function(x) Role$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)