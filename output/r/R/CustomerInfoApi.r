# Accounts API
#
# Accounts API 
#
# OpenAPI spec version: 0.9.5
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git
#' @title CustomerInfo operations
#' @description swagger.CustomerInfo
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' get_partitions List Partitions for Customer
#'
#'
#' get_roles List Roles for Customer
#'
#' }
#'
#' @export
CustomerInfoApi <- R6::R6Class(
  'CustomerInfoApi',
  public = list(
    userAgent = "Swagger-Codegen/1.0.0/r",
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    get_partitions = function(customer_id, include, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`include`)) {
        queryParams['include'] <- include
      }

      urlPath <- "/customers/{customerId}/partitions"
      if (!missing(`customer_id`)) {
        urlPath <- gsub(paste0("\\{", "customerId", "\\}"), `customer_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- InlineResponse200$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
    get_roles = function(customer_id, page_cursor, page_size, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`page_cursor`)) {
        queryParams['page[cursor]'] <- page_cursor
      }

      if (!missing(`page_size`)) {
        queryParams['page[size]'] <- page_size
      }

      urlPath <- "/customers/{customerId}/roles"
      if (!missing(`customer_id`)) {
        urlPath <- gsub(paste0("\\{", "customerId", "\\}"), `customer_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- RoleList$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
  )
)
