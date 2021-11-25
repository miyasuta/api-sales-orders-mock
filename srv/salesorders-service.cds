using { sales } from '../db/data-model';

service SalesService {
    entity A_SalesOrder as projection on sales.A_SalesOrder
    entity A_SalesOrderItem as projection on sales.A_SalesOrderItem
}