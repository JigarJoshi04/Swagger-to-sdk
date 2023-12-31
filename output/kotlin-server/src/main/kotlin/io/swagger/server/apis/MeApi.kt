/**
* Accounts API
* Accounts API 
*
* OpenAPI spec version: 0.9.5
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/package io.swagger.server.apis

import com.google.gson.Gson
import io.ktor.application.call
import io.ktor.auth.UserIdPrincipal
import io.ktor.auth.authentication
import io.ktor.auth.authenticate
import io.ktor.auth.OAuthAccessTokenResponse
import io.ktor.auth.OAuthServerSettings
import io.ktor.http.ContentType
import io.ktor.http.HttpStatusCode
import io.ktor.locations.KtorExperimentalLocationsAPI
import io.ktor.locations.delete
import io.ktor.locations.get
import io.ktor.locations.post
import io.ktor.locations.put
import io.ktor.response.respond
import io.ktor.response.respondText
import io.ktor.routing.Route
import io.ktor.routing.route

import io.swagger.server.Paths
import io.swagger.server.infrastructure.ApiPrincipal


import io.swagger.server.models.Error
import io.swagger.server.models.UserGroupList

@KtorExperimentalLocationsAPI
fun Route.MeApi() {
    val gson = Gson()
    val empty = mutableMapOf<String, Any?>()
    get<Paths.getMeUsergroups> {  _: Paths.getMeUsergroups ->
        if (principal == null) {
            call.respond(HttpStatusCode.Unauthorized)
        } else {
            val exampleContentType = "application/json"
            val exampleContentString = """{
  "data" : [ {
    "relationships" : {
      "authorizedAs" : {
        "data" : [ {
          "id" : "38c5b37e-1143-4760-98b9-0bf15fdf2c6f",
          "type" : "Role"
        }, {
          "id" : "38c5b37e-1143-4760-98b9-0bf15fdf2c6f",
          "type" : "Role"
        } ]
      },
      "hasAccessTo" : {
        "data" : [ {
          "id" : "e0e662a9-c7a9-495a-a345-e06436d41941",
          "type" : "Partition"
        }, {
          "id" : "e0e662a9-c7a9-495a-a345-e06436d41941",
          "type" : "Partition"
        } ]
      },
      "ownedBy" : {
        "data" : {
          "id" : "fee69bee-d108-4c30-9595-47d40b1e24ed",
          "type" : "Customer"
        }
      }
    },
    "attributes" : {
      "isMachineEnabled" : true,
      "isSystemDefined" : true,
      "name" : "CustomerOperator",
      "description" : "Customer Operator for managing user groups"
    },
    "id" : "f68a9762-9679-4c17-9012-ec9271f4087f",
    "type" : "UserGroup"
  }, {
    "relationships" : {
      "authorizedAs" : {
        "data" : [ {
          "id" : "38c5b37e-1143-4760-98b9-0bf15fdf2c6f",
          "type" : "Role"
        }, {
          "id" : "38c5b37e-1143-4760-98b9-0bf15fdf2c6f",
          "type" : "Role"
        } ]
      },
      "hasAccessTo" : {
        "data" : [ {
          "id" : "e0e662a9-c7a9-495a-a345-e06436d41941",
          "type" : "Partition"
        }, {
          "id" : "e0e662a9-c7a9-495a-a345-e06436d41941",
          "type" : "Partition"
        } ]
      },
      "ownedBy" : {
        "data" : {
          "id" : "fee69bee-d108-4c30-9595-47d40b1e24ed",
          "type" : "Customer"
        }
      }
    },
    "attributes" : {
      "isMachineEnabled" : true,
      "isSystemDefined" : true,
      "name" : "CustomerOperator",
      "description" : "Customer Operator for managing user groups"
    },
    "id" : "f68a9762-9679-4c17-9012-ec9271f4087f",
    "type" : "UserGroup"
  } ],
  "links" : {
    "next" : "/me/usergroups?page[cursor]=qwerty",
    "self" : "/me/usergroups"
  }
}"""
            
            when(exampleContentType) {
                "application/json" -> call.respond(gson.fromJson(exampleContentString, empty::class.java))
                "application/xml" -> call.respondText(exampleContentString, ContentType.Text.Xml)
                else -> call.respondText(exampleContentString)
            }        }
    }
}
