namespace RiskManagement;

using { BusinessPartnerA2X } from '../srv/external/BusinessPartnerA2X.cds';

entity Risks
{
    key ID : UUID;
    newProperty : String(100);
    title : String(100);
    prio : String(5);
    descr : String(100);
    impact : Integer;
    criticality : Integer;
    mitigation : Association to one Mitigation;
    supplier : Association to one BusinessPartnerA2X.A_BusinessPartner;
}

entity Mitigation
{
    key ID : UUID;
    newProperty : String(100);
    createdAT : String(100);
    createdBy : String(100);
    description : String(100);
    owner : String(100);
    timeline : String(100);
    risks : Association to many Risks on risks.mitigation = $self;
}
