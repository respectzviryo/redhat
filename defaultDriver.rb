require 'salesforce.rb'
require 'defaultMappingRegistry.rb'
require 'soap/rpc/driver'

class Soap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://login.salesforce.com/services/Soap/u/20.0"

  Methods = [
    [ "",
      "login",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "login"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "loginResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "LoginFault"=>{:namespace=>nil, :use=>"literal", :name=>"LoginFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidIdFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidIdFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "describeSObject",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeSObject"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeSObjectResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidSObjectFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidSObjectFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "describeSObjects",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeSObjects"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeSObjectsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidSObjectFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidSObjectFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "describeGlobal",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeGlobal"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeGlobalResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "describeDataCategoryGroups",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeDataCategoryGroups"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeDataCategoryGroupsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidSObjectFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidSObjectFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "describeDataCategoryGroupStructures",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeDataCategoryGroupStructures"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeDataCategoryGroupStructuresResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidSObjectFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidSObjectFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "describeLayout",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeLayout"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeLayoutResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidSObjectFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidSObjectFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidIdFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidIdFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "describeSoftphoneLayout",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeSoftphoneLayout"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeSoftphoneLayoutResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "describeTabs",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeTabs"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeTabsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "create",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "create"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "createResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidFieldFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidFieldFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidSObjectFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidSObjectFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidIdFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidIdFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "update",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "update"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "updateResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidFieldFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidFieldFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidSObjectFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidSObjectFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidIdFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidIdFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "upsert",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "upsert"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "upsertResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidFieldFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidFieldFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidSObjectFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidSObjectFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidIdFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidIdFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "merge",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "merge"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "mergeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidFieldFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidFieldFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidSObjectFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidSObjectFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidIdFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidIdFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "delete",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "delete"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "deleteResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "undelete",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "undelete"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "undeleteResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "emptyRecycleBin",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "emptyRecycleBin"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "emptyRecycleBinResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "retrieve",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "retrieve"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "retrieveResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidFieldFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidFieldFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "MalformedQueryFault"=>{:namespace=>nil, :use=>"literal", :name=>"MalformedQueryFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidSObjectFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidSObjectFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidIdFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidIdFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "process",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "process"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "processResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidIdFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidIdFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "convertLead",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "convertLead"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "convertLeadResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "logout",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "logout"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "logoutResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "invalidateSessions",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "invalidateSessions"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "invalidateSessionsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "getDeleted",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "getDeleted"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "getDeletedResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidSObjectFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidSObjectFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "getUpdated",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "getUpdated"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "getUpdatedResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidSObjectFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidSObjectFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "query",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "query"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "queryResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidQueryLocatorFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidQueryLocatorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidFieldFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidFieldFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "MalformedQueryFault"=>{:namespace=>nil, :use=>"literal", :name=>"MalformedQueryFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidSObjectFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidSObjectFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidIdFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidIdFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "queryAll",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "queryAll"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "queryAllResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidQueryLocatorFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidQueryLocatorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidFieldFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidFieldFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "MalformedQueryFault"=>{:namespace=>nil, :use=>"literal", :name=>"MalformedQueryFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidSObjectFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidSObjectFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidIdFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidIdFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "queryMore",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "queryMore"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "queryMoreResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidQueryLocatorFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidQueryLocatorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidFieldFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidFieldFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "search",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "search"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "searchResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "MalformedSearchFault"=>{:namespace=>nil, :use=>"literal", :name=>"MalformedSearchFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidFieldFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidFieldFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidSObjectFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidSObjectFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "getServerTimestamp",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "getServerTimestamp"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "getServerTimestampResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "setPassword",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "setPassword"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "setPasswordResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidNewPasswordFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidNewPasswordFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidIdFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidIdFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "resetPassword",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "resetPassword"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "resetPasswordResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}, "InvalidIdFault"=>{:namespace=>nil, :use=>"literal", :name=>"InvalidIdFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "getUserInfo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "getUserInfo"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "getUserInfoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ],
    [ "",
      "sendEmail",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "sendEmail"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "sendEmailResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault"=>{:namespace=>nil, :use=>"literal", :name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"urn:partner.soap.sforce.com"}} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

