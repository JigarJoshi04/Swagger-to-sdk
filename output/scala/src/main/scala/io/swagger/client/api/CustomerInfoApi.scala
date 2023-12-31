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
 */
package io.swagger.client.api

import java.text.SimpleDateFormat

import io.swagger.client.model.Error
import io.swagger.client.model.RoleList
import io.swagger.client.model.inline_response_200
import io.swagger.client.{ApiInvoker, ApiException}

import com.sun.jersey.multipart.FormDataMultiPart
import com.sun.jersey.multipart.file.FileDataBodyPart

import javax.ws.rs.core.MediaType

import java.io.File
import java.util.Date
import java.util.TimeZone

import scala.collection.mutable.HashMap

import com.wordnik.swagger.client._
import scala.concurrent.Future
import collection.mutable

import java.net.URI

import com.wordnik.swagger.client.ClientResponseReaders.Json4sFormatsReader._
import com.wordnik.swagger.client.RequestWriters.Json4sFormatsWriter._

import scala.concurrent.ExecutionContext.Implicits.global
import scala.concurrent._
import scala.concurrent.duration._
import scala.util.{Failure, Success, Try}

import org.json4s._

class CustomerInfoApi(
  val defBasePath: String = "https://api.bpcloud.siemens.com/accounts",
  defApiInvoker: ApiInvoker = ApiInvoker
) {
  private lazy val dateTimeFormatter = {
    val formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ")
    formatter.setTimeZone(TimeZone.getTimeZone("UTC"))
    formatter
  }
  private val dateFormatter = {
    val formatter = new SimpleDateFormat("yyyy-MM-dd")
    formatter.setTimeZone(TimeZone.getTimeZone("UTC"))
    formatter
  }
  implicit val formats = new org.json4s.DefaultFormats {
    override def dateFormatter = dateTimeFormatter
  }
  implicit val stringReader: ClientResponseReader[String] = ClientResponseReaders.StringReader
  implicit val unitReader: ClientResponseReader[Unit] = ClientResponseReaders.UnitReader
  implicit val jvalueReader: ClientResponseReader[JValue] = ClientResponseReaders.JValueReader
  implicit val jsonReader: ClientResponseReader[Nothing] = JsonFormatsReader
  implicit val stringWriter: RequestWriter[String] = RequestWriters.StringWriter
  implicit val jsonWriter: RequestWriter[Nothing] = JsonFormatsWriter

  var basePath: String = defBasePath
  var apiInvoker: ApiInvoker = defApiInvoker

  def addHeader(key: String, value: String): mutable.HashMap[String, String] = {
    apiInvoker.defaultHeaders += key -> value
  }

  val config: SwaggerConfig = SwaggerConfig.forUrl(new URI(defBasePath))
  val client = new RestClient(config)
  val helper = new CustomerInfoApiAsyncHelper(client, config)

  /**
   * List Partitions for Customer
   * Get the partitions for the specified customer
   *
   * @param customerId Customer ID 
   * @param include include related resources (optional)
   * @return inline_response_200
   */
  def getPartitions(customerId: String, include: Option[String] = None): Option[inline_response_200] = {
    val await = Try(Await.result(getPartitionsAsync(customerId, include), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * List Partitions for Customer asynchronously
   * Get the partitions for the specified customer
   *
   * @param customerId Customer ID 
   * @param include include related resources (optional)
   * @return Future(inline_response_200)
   */
  def getPartitionsAsync(customerId: String, include: Option[String] = None): Future[inline_response_200] = {
      helper.getPartitions(customerId, include)
  }

  /**
   * List Roles for Customer
   * Get the roles available for specified customer ID
   *
   * @param customerId Customer ID 
   * @param pageCursor Cursor to fetch next paginated items (optional)
   * @param pageSize Max number of items to return in a page (optional, default to 20)
   * @return RoleList
   */
  def getRoles(customerId: String, pageCursor: Option[String] = None, pageSize: Option[Integer] = Option(20)): Option[RoleList] = {
    val await = Try(Await.result(getRolesAsync(customerId, pageCursor, pageSize), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * List Roles for Customer asynchronously
   * Get the roles available for specified customer ID
   *
   * @param customerId Customer ID 
   * @param pageCursor Cursor to fetch next paginated items (optional)
   * @param pageSize Max number of items to return in a page (optional, default to 20)
   * @return Future(RoleList)
   */
  def getRolesAsync(customerId: String, pageCursor: Option[String] = None, pageSize: Option[Integer] = Option(20)): Future[RoleList] = {
      helper.getRoles(customerId, pageCursor, pageSize)
  }

}

class CustomerInfoApiAsyncHelper(client: TransportClient, config: SwaggerConfig) extends ApiClient(client, config) {

  def getPartitions(customerId: String,
    include: Option[String] = None
    )(implicit reader: ClientResponseReader[inline_response_200]): Future[inline_response_200] = {
    // create path and map variables
    val path = (addFmt("/customers/{customerId}/partitions")
      replaceAll("\\{" + "customerId" + "\\}", customerId.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (customerId == null) throw new Exception("Missing required parameter 'customerId' when calling CustomerInfoApi->getPartitions")

    include match {
      case Some(param) => queryParams += "include" -> param.toString
      case _ => queryParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getRoles(customerId: String,
    pageCursor: Option[String] = None,
    pageSize: Option[Integer] = Option(20)
    )(implicit reader: ClientResponseReader[RoleList]): Future[RoleList] = {
    // create path and map variables
    val path = (addFmt("/customers/{customerId}/roles")
      replaceAll("\\{" + "customerId" + "\\}", customerId.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (customerId == null) throw new Exception("Missing required parameter 'customerId' when calling CustomerInfoApi->getRoles")

    pageCursor match {
      case Some(param) => queryParams += "page[cursor]" -> param.toString
      case _ => queryParams
    }
    pageSize match {
      case Some(param) => queryParams += "page[size]" -> param.toString
      case _ => queryParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }


}
