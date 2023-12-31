# Accounts API
#
# Accounts API 
#
# OpenAPI spec version: 0.9.5
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' RoleListLinks Class
#'
#' @field self 
#' @field next 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RoleListLinks <- R6::R6Class(
  'RoleListLinks',
  public = list(
    `self` = NULL,
    `next` = NULL,
    initialize = function(`self`, `next`){
      if (!missing(`self`)) {
        stopifnot(is.character(`self`), length(`self`) == 1)
        self$`self` <- `self`
      }
      if (!missing(`next`)) {
        stopifnot(is.character(`next`), length(`next`) == 1)
        self$`next` <- `next`
      }
    },
    toJSON = function() {
      RoleListLinksObject <- list()
      if (!is.null(self$`self`)) {
        RoleListLinksObject[['self']] <- self$`self`
      }
      if (!is.null(self$`next`)) {
        RoleListLinksObject[['next']] <- self$`next`
      }

      RoleListLinksObject
    },
    fromJSON = function(RoleListLinksJson) {
      RoleListLinksObject <- jsonlite::fromJSON(RoleListLinksJson)
      if (!is.null(RoleListLinksObject$`self`)) {
        self$`self` <- RoleListLinksObject$`self`
      }
      if (!is.null(RoleListLinksObject$`next`)) {
        self$`next` <- RoleListLinksObject$`next`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "self": %s,
           "next": %s
        }',
        self$`self`,
        self$`next`
      )
    },
    fromJSONString = function(RoleListLinksJson) {
      RoleListLinksObject <- jsonlite::fromJSON(RoleListLinksJson)
      self$`self` <- RoleListLinksObject$`self`
      self$`next` <- RoleListLinksObject$`next`
    }
  )
)
