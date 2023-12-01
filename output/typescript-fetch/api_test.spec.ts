/**
 * Accounts API
 * Accounts API 
 *
 * OpenAPI spec version: 0.9.5
 * 
 *
 * NOTE: This file is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the file manually.
 */

import * as api from "./api"
import { Configuration } from "./configuration"

const config: Configuration = {}

describe("CustomerInfoApi", () => {
  let instance: api.CustomerInfoApi
  beforeEach(function() {
    instance = new api.CustomerInfoApi(config)
  });

  test("getPartitions", () => {
    const customerId: string = "customerId_example"
    const include: string = undefined
    return expect(instance.getPartitions(customerId, include, {})).resolves.toBe(null)
  })
})

describe("MeApi", () => {
  let instance: api.MeApi
  beforeEach(function() {
    instance = new api.MeApi(config)
  });

  test("getMeUsergroups", () => {
    const pageCursor: string = "pageCursor_example"
    const pageSize: number = 56
    return expect(instance.getMeUsergroups(pageCursor, pageSize, {})).resolves.toBe(null)
  })
})

