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
import io.swagger.server.models.InlineResponse200

@KtorExperimentalLocationsAPI
fun Route.CustomerInfoApi() {
    val gson = Gson()
    val empty = mutableMapOf<String, Any?>()
    get<Paths.getPartitions> {  _: Paths.getPartitions ->
        if (principal == null) {
            call.respond(HttpStatusCode.Unauthorized)
        } else {
            val exampleContentType = "application/json"
            val exampleContentString = """{
  "data" : {
    "data" : [ {
      "relationships" : {
        "ownedByCustomer" : {
          "data" : {
            "id" : "fee69bee-d108-4c30-9595-47d40b1e24ed",
            "type" : "Customer"
          }
        }
      },
      "attributes" : {
        "name" : "name",
        "description" : "sample partition"
      },
      "id" : "uuid",
      "type" : "Partition"
    }, {
      "relationships" : {
        "ownedByCustomer" : {
          "data" : {
            "id" : "fee69bee-d108-4c30-9595-47d40b1e24ed",
            "type" : "Customer"
          }
        }
      },
      "attributes" : {
        "name" : "name",
        "description" : "sample partition"
      },
      "id" : "uuid",
      "type" : "Partition"
    } ],
    "links" : {
      "next" : "/customers/8e9833b5-b844-40a3-8572-4a16d29c53bc/partitions?page[cursor]=qwerty",
      "self" : "/customers/8e9833b5-b844-40a3-8572-4a16d29c53bc/partitions"
    },
    "included" : [ {
      "attributes" : {
        "name" : "name"
      },
      "id" : "209d38aa-02c1-48ab-bf37-2716f1ddfeb6",
      "type" : "Customer"
    }, {
      "attributes" : {
        "name" : "name"
      },
      "id" : "209d38aa-02c1-48ab-bf37-2716f1ddfeb6",
      "type" : "Customer"
    } ]
  }
}"""
            
            when(exampleContentType) {
                "application/json" -> call.respond(gson.fromJson(exampleContentString, empty::class.java))
                "application/xml" -> call.respondText(exampleContentString, ContentType.Text.Xml)
                else -> call.respondText(exampleContentString)
            }        }
    }
}
