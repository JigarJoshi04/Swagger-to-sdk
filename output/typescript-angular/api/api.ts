export * from './customerInfo.service';
import { CustomerInfoService } from './customerInfo.service';
export * from './me.service';
import { MeService } from './me.service';
export const APIS = [CustomerInfoService, MeService];
