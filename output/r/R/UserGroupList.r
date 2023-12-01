# Accounts API
#
# Accounts API 
#
# OpenAPI spec version: 0.9.5
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' UserGroupList Class
#'
#' @field links 
#' @field data 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserGroupList <- R6::R6Class(
  'UserGroupList',
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
      UserGroupListObject <- list()
      if (!is.null(self$`links`)) {
        UserGroupListObject[['links']] <- self$`links`$toJSON()
      }
      if (!is.null(self$`data`)) {
        UserGroupListObject[['data']] <- lapply(self$`data`, function(x) x$toJSON())
      }

      UserGroupListObject
    },
    fromJSON = function(UserGroupListJson) {
      UserGroupListObject <- jsonlite::fromJSON(UserGroupListJson)
      if (!is.null(UserGroupListObject$`links`)) {
        linksObject <- UserGroupListLinks$new()
        linksObject$fromJSON(jsonlite::toJSON(UserGroupListObject$links, auto_unbox = TRUE))
        self$`links` <- linksObject
      }
      if (!is.null(UserGroupListObject$`data`)) {
        self$`data` <- lapply(UserGroupListObject$`data`, function(x) {
          dataObject <- UserGroup$new()
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
    fromJSONString = function(UserGroupListJson) {
      UserGroupListObject <- jsonlite::fromJSON(UserGroupListJson)
      UserGroupListLinksObject <- UserGroupListLinks$new()
      self$`links` <- UserGroupListLinksObject$fromJSON(jsonlite::toJSON(UserGroupListObject$links, auto_unbox = TRUE))
      self$`data` <- lapply(UserGroupListObject$`data`, function(x) UserGroup$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
