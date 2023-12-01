# Accounts API
#
# Accounts API 
#
# OpenAPI spec version: 0.9.5
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' MachineUserMeta Class
#'
#' @field createdAt 
#' @field updatedAt 
#' @field createdBy 
#' @field updatedBy 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MachineUserMeta <- R6::R6Class(
  'MachineUserMeta',
  public = list(
    `createdAt` = NULL,
    `updatedAt` = NULL,
    `createdBy` = NULL,
    `updatedBy` = NULL,
    initialize = function(`createdAt`, `updatedAt`, `createdBy`, `updatedBy`){
      if (!missing(`createdAt`)) {
        stopifnot(is.character(`createdAt`), length(`createdAt`) == 1)
        self$`createdAt` <- `createdAt`
      }
      if (!missing(`updatedAt`)) {
        stopifnot(is.character(`updatedAt`), length(`updatedAt`) == 1)
        self$`updatedAt` <- `updatedAt`
      }
      if (!missing(`createdBy`)) {
        stopifnot(is.character(`createdBy`), length(`createdBy`) == 1)
        self$`createdBy` <- `createdBy`
      }
      if (!missing(`updatedBy`)) {
        stopifnot(is.character(`updatedBy`), length(`updatedBy`) == 1)
        self$`updatedBy` <- `updatedBy`
      }
    },
    toJSON = function() {
      MachineUserMetaObject <- list()
      if (!is.null(self$`createdAt`)) {
        MachineUserMetaObject[['createdAt']] <- self$`createdAt`
      }
      if (!is.null(self$`updatedAt`)) {
        MachineUserMetaObject[['updatedAt']] <- self$`updatedAt`
      }
      if (!is.null(self$`createdBy`)) {
        MachineUserMetaObject[['createdBy']] <- self$`createdBy`
      }
      if (!is.null(self$`updatedBy`)) {
        MachineUserMetaObject[['updatedBy']] <- self$`updatedBy`
      }

      MachineUserMetaObject
    },
    fromJSON = function(MachineUserMetaJson) {
      MachineUserMetaObject <- jsonlite::fromJSON(MachineUserMetaJson)
      if (!is.null(MachineUserMetaObject$`createdAt`)) {
        self$`createdAt` <- MachineUserMetaObject$`createdAt`
      }
      if (!is.null(MachineUserMetaObject$`updatedAt`)) {
        self$`updatedAt` <- MachineUserMetaObject$`updatedAt`
      }
      if (!is.null(MachineUserMetaObject$`createdBy`)) {
        self$`createdBy` <- MachineUserMetaObject$`createdBy`
      }
      if (!is.null(MachineUserMetaObject$`updatedBy`)) {
        self$`updatedBy` <- MachineUserMetaObject$`updatedBy`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "createdAt": %s,
           "updatedAt": %s,
           "createdBy": %s,
           "updatedBy": %s
        }',
        self$`createdAt`,
        self$`updatedAt`,
        self$`createdBy`,
        self$`updatedBy`
      )
    },
    fromJSONString = function(MachineUserMetaJson) {
      MachineUserMetaObject <- jsonlite::fromJSON(MachineUserMetaJson)
      self$`createdAt` <- MachineUserMetaObject$`createdAt`
      self$`updatedAt` <- MachineUserMetaObject$`updatedAt`
      self$`createdBy` <- MachineUserMetaObject$`createdBy`
      self$`updatedBy` <- MachineUserMetaObject$`updatedBy`
    }
  )
)