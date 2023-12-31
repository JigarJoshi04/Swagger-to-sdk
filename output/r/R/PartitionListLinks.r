# Accounts API
#
# Accounts API 
#
# OpenAPI spec version: 0.9.5
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' PartitionListLinks Class
#'
#' @field self 
#' @field next 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PartitionListLinks <- R6::R6Class(
  'PartitionListLinks',
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
      PartitionListLinksObject <- list()
      if (!is.null(self$`self`)) {
        PartitionListLinksObject[['self']] <- self$`self`
      }
      if (!is.null(self$`next`)) {
        PartitionListLinksObject[['next']] <- self$`next`
      }

      PartitionListLinksObject
    },
    fromJSON = function(PartitionListLinksJson) {
      PartitionListLinksObject <- jsonlite::fromJSON(PartitionListLinksJson)
      if (!is.null(PartitionListLinksObject$`self`)) {
        self$`self` <- PartitionListLinksObject$`self`
      }
      if (!is.null(PartitionListLinksObject$`next`)) {
        self$`next` <- PartitionListLinksObject$`next`
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
    fromJSONString = function(PartitionListLinksJson) {
      PartitionListLinksObject <- jsonlite::fromJSON(PartitionListLinksJson)
      self$`self` <- PartitionListLinksObject$`self`
      self$`next` <- PartitionListLinksObject$`next`
    }
  )
)
