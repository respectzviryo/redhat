require 'default.rb'
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
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}, "InvalidIdFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidIdFault"}, "LoginFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"LoginFault"}} }
    ],
    [ "",
      "describeSObject",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeSObject"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeSObjectResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}, "InvalidSObjectFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidSObjectFault"}} }
    ],
    [ "",
      "describeSObjects",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeSObjects"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeSObjectsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}, "InvalidSObjectFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidSObjectFault"}} }
    ],
    [ "",
      "describeGlobal",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeGlobal"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeGlobalResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}} }
    ],
    [ "",
      "describeDataCategoryGroups",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeDataCategoryGroups"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeDataCategoryGroupsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}, "InvalidSObjectFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidSObjectFault"}} }
    ],
    [ "",
      "describeDataCategoryGroupStructures",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeDataCategoryGroupStructures"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeDataCategoryGroupStructuresResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}, "InvalidSObjectFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidSObjectFault"}} }
    ],
    [ "",
      "describeLayout",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeLayout"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeLayoutResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}, "InvalidIdFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidIdFault"}, "InvalidSObjectFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidSObjectFault"}} }
    ],
    [ "",
      "describeSoftphoneLayout",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeSoftphoneLayout"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeSoftphoneLayoutResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}} }
    ],
    [ "",
      "describeTabs",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeTabs"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "describeTabsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}} }
    ],
    [ "",
      "create",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "create"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "createResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidFieldFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidFieldFault"}, "UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}, "InvalidIdFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidIdFault"}, "InvalidSObjectFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidSObjectFault"}} }
    ],
    [ "",
      "update",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "update"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "updateResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidFieldFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidFieldFault"}, "UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}, "InvalidIdFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidIdFault"}, "InvalidSObjectFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidSObjectFault"}} }
    ],
    [ "",
      "upsert",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "upsert"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "upsertResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidFieldFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidFieldFault"}, "UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}, "InvalidIdFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidIdFault"}, "InvalidSObjectFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidSObjectFault"}} }
    ],
    [ "",
      "merge",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "merge"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "mergeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidFieldFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidFieldFault"}, "UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}, "InvalidIdFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidIdFault"}, "InvalidSObjectFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidSObjectFault"}} }
    ],
    [ "",
      "delete",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "delete"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "deleteResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}} }
    ],
    [ "",
      "undelete",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "undelete"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "undeleteResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}} }
    ],
    [ "",
      "emptyRecycleBin",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "emptyRecycleBin"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "emptyRecycleBinResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}} }
    ],
    [ "",
      "retrieve",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "retrieve"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "retrieveResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MalformedQueryFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"MalformedQueryFault"}, "UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}, "InvalidFieldFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidFieldFault"}, "InvalidIdFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidIdFault"}, "InvalidSObjectFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidSObjectFault"}} }
    ],
    [ "",
      "process",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "process"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "processResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}, "InvalidIdFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidIdFault"}} }
    ],
    [ "",
      "convertLead",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "convertLead"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "convertLeadResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}} }
    ],
    [ "",
      "logout",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "logout"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "logoutResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}} }
    ],
    [ "",
      "invalidateSessions",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "invalidateSessions"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "invalidateSessionsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}} }
    ],
    [ "",
      "getDeleted",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "getDeleted"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "getDeletedResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}, "InvalidSObjectFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidSObjectFault"}} }
    ],
    [ "",
      "getUpdated",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "getUpdated"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "getUpdatedResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}, "InvalidSObjectFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidSObjectFault"}} }
    ],
    [ "",
      "query",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "query"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "queryResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MalformedQueryFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"MalformedQueryFault"}, "UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}, "InvalidFieldFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidFieldFault"}, "InvalidQueryLocatorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidQueryLocatorFault"}, "InvalidIdFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidIdFault"}, "InvalidSObjectFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidSObjectFault"}} }
    ],
    [ "",
      "queryAll",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "queryAll"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "queryAllResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MalformedQueryFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"MalformedQueryFault"}, "UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}, "InvalidFieldFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidFieldFault"}, "InvalidQueryLocatorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidQueryLocatorFault"}, "InvalidIdFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidIdFault"}, "InvalidSObjectFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidSObjectFault"}} }
    ],
    [ "",
      "queryMore",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "queryMore"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "queryMoreResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidFieldFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidFieldFault"}, "UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}, "InvalidQueryLocatorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidQueryLocatorFault"}} }
    ],
    [ "",
      "search",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "search"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "searchResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}, "InvalidFieldFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidFieldFault"}, "MalformedSearchFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"MalformedSearchFault"}, "InvalidSObjectFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidSObjectFault"}} }
    ],
    [ "",
      "getServerTimestamp",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "getServerTimestamp"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "getServerTimestampResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}} }
    ],
    [ "",
      "setPassword",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "setPassword"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "setPasswordResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}, "InvalidNewPasswordFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidNewPasswordFault"}, "InvalidIdFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidIdFault"}} }
    ],
    [ "",
      "resetPassword",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "resetPassword"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "resetPasswordResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}, "InvalidIdFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"InvalidIdFault"}} }
    ],
    [ "",
      "getUserInfo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "getUserInfo"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "getUserInfoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}} }
    ],
    [ "",
      "sendEmail",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "sendEmail"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:partner.soap.sforce.com", "sendEmailResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:partner.soap.sforce.com", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :name=>"UnexpectedErrorFault"}} }
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

