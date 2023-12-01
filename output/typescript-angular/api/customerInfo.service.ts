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
 *//* tslint:disable:no-unused-variable member-ordering */

import { Inject, Injectable, Optional }                      from '@angular/core';
import { HttpClient, HttpHeaders, HttpParams,
         HttpResponse, HttpEvent }                           from '@angular/common/http';
import { CustomHttpUrlEncodingCodec }                        from '../encoder';

import { Observable }                                        from 'rxjs';

import { InlineResponse200 } from '../model/inlineResponse200';
import { RoleList } from '../model/roleList';

import { BASE_PATH, COLLECTION_FORMATS }                     from '../variables';
import { Configuration }                                     from '../configuration';


@Injectable()
export class CustomerInfoService {

    protected basePath = 'https://api.bpcloud.siemens.com/accounts';
    public defaultHeaders = new HttpHeaders();
    public configuration = new Configuration();

    constructor(protected httpClient: HttpClient, @Optional()@Inject(BASE_PATH) basePath: string, @Optional() configuration: Configuration) {
        if (basePath) {
            this.basePath = basePath;
        }
        if (configuration) {
            this.configuration = configuration;
            this.basePath = basePath || configuration.basePath || this.basePath;
        }
    }

    /**
     * @param consumes string[] mime-types
     * @return true: consumes contains 'multipart/form-data', false: otherwise
     */
    private canConsumeForm(consumes: string[]): boolean {
        const form = 'multipart/form-data';
        for (const consume of consumes) {
            if (form === consume) {
                return true;
            }
        }
        return false;
    }


    /**
     * List Partitions for Customer
     * Get the partitions for the specified customer
     * @param customerId Customer ID
     * @param include include related resources
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public getPartitions(customerId: string, include?: string, observe?: 'body', reportProgress?: boolean): Observable<InlineResponse200>;
    public getPartitions(customerId: string, include?: string, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<InlineResponse200>>;
    public getPartitions(customerId: string, include?: string, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<InlineResponse200>>;
    public getPartitions(customerId: string, include?: string, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {

        if (customerId === null || customerId === undefined) {
            throw new Error('Required parameter customerId was null or undefined when calling getPartitions.');
        }


        let queryParameters = new HttpParams({encoder: new CustomHttpUrlEncodingCodec()});
        if (include !== undefined && include !== null) {
            queryParameters = queryParameters.set('include', <any>include);
        }

        let headers = this.defaultHeaders;

        // authentication (service_auth) required
        if (this.configuration.accessToken) {
            const accessToken = typeof this.configuration.accessToken === 'function'
                ? this.configuration.accessToken()
                : this.configuration.accessToken;
            headers = headers.set('Authorization', 'Bearer ' + accessToken);
        }
        // to determine the Accept header
        let httpHeaderAccepts: string[] = [
            'application/vnd.api+json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected != undefined) {
            headers = headers.set('Accept', httpHeaderAcceptSelected);
        }

        // to determine the Content-Type header
        const consumes: string[] = [
        ];

        return this.httpClient.request<InlineResponse200>('get',`${this.basePath}/customers/${encodeURIComponent(String(customerId))}/partitions`,
            {
                params: queryParameters,
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * List Roles for Customer
     * Get the roles available for specified customer ID
     * @param customerId Customer ID
     * @param pageCursor Cursor to fetch next paginated items
     * @param pageSize Max number of items to return in a page
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public getRoles(customerId: string, pageCursor?: string, pageSize?: number, observe?: 'body', reportProgress?: boolean): Observable<RoleList>;
    public getRoles(customerId: string, pageCursor?: string, pageSize?: number, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<RoleList>>;
    public getRoles(customerId: string, pageCursor?: string, pageSize?: number, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<RoleList>>;
    public getRoles(customerId: string, pageCursor?: string, pageSize?: number, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {

        if (customerId === null || customerId === undefined) {
            throw new Error('Required parameter customerId was null or undefined when calling getRoles.');
        }



        let queryParameters = new HttpParams({encoder: new CustomHttpUrlEncodingCodec()});
        if (pageCursor !== undefined && pageCursor !== null) {
            queryParameters = queryParameters.set('page[cursor]', <any>pageCursor);
        }
        if (pageSize !== undefined && pageSize !== null) {
            queryParameters = queryParameters.set('page[size]', <any>pageSize);
        }

        let headers = this.defaultHeaders;

        // authentication (service_auth) required
        if (this.configuration.accessToken) {
            const accessToken = typeof this.configuration.accessToken === 'function'
                ? this.configuration.accessToken()
                : this.configuration.accessToken;
            headers = headers.set('Authorization', 'Bearer ' + accessToken);
        }
        // to determine the Accept header
        let httpHeaderAccepts: string[] = [
            'application/vnd.api+json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected != undefined) {
            headers = headers.set('Accept', httpHeaderAcceptSelected);
        }

        // to determine the Content-Type header
        const consumes: string[] = [
        ];

        return this.httpClient.request<RoleList>('get',`${this.basePath}/customers/${encodeURIComponent(String(customerId))}/roles`,
            {
                params: queryParameters,
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

}