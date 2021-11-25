using { managed } from '@sap/cds/common';
namespace sales;

entity A_SalesOrder: managed {
    key SalesOrder: String;
    SalesOrderType: String;
    SalesOrganization: String;
    DistributionChannel: String;
    OrganizationDivision: String;
    SoldToParty: String;
    PurchaseOrderByCustomer: String;
    to_Item: Composition of many A_SalesOrderItem on to_Item.SalesOrder = $self.SalesOrder
}

entity A_SalesOrderItem {
    key SalesOrder: String;
    key SalesOrderItem: String;
    key Material: String;
    to_SalesOrder: Association to A_SalesOrder on to_SalesOrder.SalesOrder = $self.SalesOrder
};