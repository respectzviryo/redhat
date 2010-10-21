require 'default.rb'
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsFaultPartnerSoapSforceCom = "urn:fault.partner.soap.sforce.com"
  NsPartnerSoapSforceCom = "urn:partner.soap.sforce.com"
  NsSobjectPartnerSoapSforceCom = "urn:sobject.partner.soap.sforce.com"
  NsXMLSchema = "http://www.w3.org/2001/XMLSchema"

  EncodedRegistry.register(
    :class => SObject,
    :schema_type => XSD::QName.new(NsSobjectPartnerSoapSforceCom, "sObject"),
    :schema_element => [
      ["type", "SOAP::SOAPString"],
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectPartnerSoapSforceCom, "Id")]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => QueryResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "QueryResult"),
    :schema_element => [
      ["done", "SOAP::SOAPBoolean"],
      ["queryLocator", nil],
      ["records", "SObject[]", [0, nil]],
      ["size", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => SearchResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "SearchResult"),
    :schema_element => [
      ["searchRecords", "SearchRecord[]", [0, nil]],
      ["sforceReserved", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SearchRecord,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "SearchRecord"),
    :schema_element => [
      ["record", "SObject"]
    ]
  )

  EncodedRegistry.register(
    :class => GetUpdatedResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "GetUpdatedResult"),
    :schema_element => [
      ["ids", "[]", [0, nil]],
      ["latestDateCovered", "SOAP::SOAPDateTime"],
      ["sforceReserved", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetDeletedResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "GetDeletedResult"),
    :schema_element => [
      ["deletedRecords", "DeletedRecord[]", [0, nil]],
      ["earliestDateAvailable", "SOAP::SOAPDateTime"],
      ["latestDateCovered", "SOAP::SOAPDateTime"],
      ["sforceReserved", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DeletedRecord,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DeletedRecord"),
    :schema_element => [
      ["deletedDate", "SOAP::SOAPDateTime"],
      ["id", nil]
    ]
  )

  EncodedRegistry.register(
    :class => GetServerTimestampResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "GetServerTimestampResult"),
    :schema_element => [
      ["timestamp", "SOAP::SOAPDateTime"]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidateSessionsResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "InvalidateSessionsResult"),
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => SetPasswordResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "SetPasswordResult"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => ResetPasswordResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "ResetPasswordResult"),
    :schema_element => [
      ["password", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => GetUserInfoResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "GetUserInfoResult"),
    :schema_element => [
      ["accessibilityMode", "SOAP::SOAPBoolean"],
      ["currencySymbol", "SOAP::SOAPString"],
      ["orgDefaultCurrencyIsoCode", "SOAP::SOAPString"],
      ["orgDisallowHtmlAttachments", "SOAP::SOAPBoolean"],
      ["orgHasPersonAccounts", "SOAP::SOAPBoolean"],
      ["organizationId", nil],
      ["organizationMultiCurrency", "SOAP::SOAPBoolean"],
      ["organizationName", "SOAP::SOAPString"],
      ["profileId", nil],
      ["roleId", nil],
      ["userDefaultCurrencyIsoCode", "SOAP::SOAPString"],
      ["userEmail", "SOAP::SOAPString"],
      ["userFullName", "SOAP::SOAPString"],
      ["userId", nil],
      ["userLanguage", "SOAP::SOAPString"],
      ["userLocale", "SOAP::SOAPString"],
      ["userName", "SOAP::SOAPString"],
      ["userTimeZone", "SOAP::SOAPString"],
      ["userType", "SOAP::SOAPString"],
      ["userUiSkin", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => LoginResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "LoginResult"),
    :schema_element => [
      ["metadataServerUrl", "SOAP::SOAPString"],
      ["passwordExpired", "SOAP::SOAPBoolean"],
      ["sandbox", "SOAP::SOAPBoolean"],
      ["serverUrl", "SOAP::SOAPString"],
      ["sessionId", "SOAP::SOAPString"],
      ["userId", nil],
      ["userInfo", "GetUserInfoResult", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Error,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "Error"),
    :schema_element => [
      ["fields", "SOAP::SOAPString[]", [0, nil]],
      ["message", "SOAP::SOAPString"],
      ["statusCode", "StatusCode"]
    ]
  )

  EncodedRegistry.register(
    :class => SendEmailError,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "SendEmailError"),
    :schema_element => [
      ["fields", "SOAP::SOAPString[]", [0, nil]],
      ["message", "SOAP::SOAPString"],
      ["statusCode", "StatusCode"],
      ["targetObjectId", nil]
    ]
  )

  EncodedRegistry.register(
    :class => SaveResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "SaveResult"),
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", nil],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => UpsertResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "UpsertResult"),
    :schema_element => [
      ["created", "SOAP::SOAPBoolean"],
      ["errors", "Error[]", [0, nil]],
      ["id", nil],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => MergeRequest,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "MergeRequest"),
    :schema_element => [
      ["masterRecord", "SObject"],
      ["recordToMergeIds", "[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MergeResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "MergeResult"),
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", nil],
      ["mergedRecordIds", "[]", [0, nil]],
      ["success", "SOAP::SOAPBoolean"],
      ["updatedRelatedIds", "[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ProcessRequest,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "ProcessRequest"),
    :schema_element => [
      ["comments", "SOAP::SOAPString"],
      ["nextApproverIds", "[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ProcessSubmitRequest,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "ProcessSubmitRequest"),
    :schema_basetype => XSD::QName.new(NsPartnerSoapSforceCom, "ProcessRequest"),
    :schema_element => [
      ["comments", "SOAP::SOAPString"],
      ["nextApproverIds", "[]", [0, nil]],
      ["objectId", nil]
    ]
  )

  EncodedRegistry.register(
    :class => ProcessWorkitemRequest,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "ProcessWorkitemRequest"),
    :schema_basetype => XSD::QName.new(NsPartnerSoapSforceCom, "ProcessRequest"),
    :schema_element => [
      ["comments", "SOAP::SOAPString"],
      ["nextApproverIds", "[]", [0, nil]],
      ["action", "SOAP::SOAPString"],
      ["workitemId", nil]
    ]
  )

  EncodedRegistry.register(
    :class => ProcessResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "ProcessResult"),
    :schema_element => [
      ["actorIds", "[]", [0, nil]],
      ["entityId", nil],
      ["errors", "Error[]", [0, nil]],
      ["instanceId", nil],
      ["instanceStatus", "SOAP::SOAPString"],
      ["newWorkitemIds", "[]", [0, nil]],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => DeleteResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DeleteResult"),
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", nil],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => UndeleteResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "UndeleteResult"),
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", nil],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => EmptyRecycleBinResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "EmptyRecycleBinResult"),
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", nil],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => LeadConvert,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "LeadConvert"),
    :schema_element => [
      ["accountId", nil],
      ["contactId", nil],
      ["convertedStatus", "SOAP::SOAPString"],
      ["doNotCreateOpportunity", "SOAP::SOAPBoolean"],
      ["leadId", nil],
      ["opportunityName", "SOAP::SOAPString"],
      ["overwriteLeadSource", "SOAP::SOAPBoolean"],
      ["ownerId", nil],
      ["sendNotificationEmail", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => LeadConvertResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "LeadConvertResult"),
    :schema_element => [
      ["accountId", nil],
      ["contactId", nil],
      ["errors", "Error[]", [0, nil]],
      ["leadId", nil],
      ["opportunityId", nil],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeSObjectResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeSObjectResult"),
    :schema_element => [
      ["activateable", "SOAP::SOAPBoolean"],
      ["childRelationships", "ChildRelationship[]", [0, nil]],
      ["createable", "SOAP::SOAPBoolean"],
      ["custom", "SOAP::SOAPBoolean"],
      ["customSetting", "SOAP::SOAPBoolean"],
      ["deletable", "SOAP::SOAPBoolean"],
      ["deprecatedAndHidden", "SOAP::SOAPBoolean"],
      ["feedEnabled", "SOAP::SOAPBoolean"],
      ["fields", "Field[]", [0, nil]],
      ["keyPrefix", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["labelPlural", "SOAP::SOAPString"],
      ["layoutable", "SOAP::SOAPBoolean"],
      ["mergeable", "SOAP::SOAPBoolean"],
      ["name", "SOAP::SOAPString"],
      ["queryable", "SOAP::SOAPBoolean"],
      ["recordTypeInfos", "RecordTypeInfo[]", [0, nil]],
      ["replicateable", "SOAP::SOAPBoolean"],
      ["retrieveable", "SOAP::SOAPBoolean"],
      ["searchable", "SOAP::SOAPBoolean"],
      ["triggerable", "SOAP::SOAPBoolean", [0, 1]],
      ["undeletable", "SOAP::SOAPBoolean"],
      ["updateable", "SOAP::SOAPBoolean"],
      ["urlDetail", "SOAP::SOAPString"],
      ["urlEdit", "SOAP::SOAPString"],
      ["urlNew", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeGlobalSObjectResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeGlobalSObjectResult"),
    :schema_element => [
      ["activateable", "SOAP::SOAPBoolean"],
      ["createable", "SOAP::SOAPBoolean"],
      ["custom", "SOAP::SOAPBoolean"],
      ["customSetting", "SOAP::SOAPBoolean"],
      ["deletable", "SOAP::SOAPBoolean"],
      ["deprecatedAndHidden", "SOAP::SOAPBoolean"],
      ["feedEnabled", "SOAP::SOAPBoolean"],
      ["keyPrefix", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["labelPlural", "SOAP::SOAPString"],
      ["layoutable", "SOAP::SOAPBoolean"],
      ["mergeable", "SOAP::SOAPBoolean"],
      ["name", "SOAP::SOAPString"],
      ["queryable", "SOAP::SOAPBoolean"],
      ["replicateable", "SOAP::SOAPBoolean"],
      ["retrieveable", "SOAP::SOAPBoolean"],
      ["searchable", "SOAP::SOAPBoolean"],
      ["triggerable", "SOAP::SOAPBoolean"],
      ["undeletable", "SOAP::SOAPBoolean"],
      ["updateable", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => ChildRelationship,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "ChildRelationship"),
    :schema_element => [
      ["cascadeDelete", "SOAP::SOAPBoolean"],
      ["childSObject", "SOAP::SOAPString"],
      ["deprecatedAndHidden", "SOAP::SOAPBoolean"],
      ["field", "SOAP::SOAPString"],
      ["relationshipName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeGlobalResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeGlobalResult"),
    :schema_element => [
      ["encoding", "SOAP::SOAPString"],
      ["maxBatchSize", "SOAP::SOAPInt"],
      ["sobjects", "DescribeGlobalSObjectResult[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Field,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "Field"),
    :schema_element => [
      ["autoNumber", "SOAP::SOAPBoolean"],
      ["byteLength", "SOAP::SOAPInt"],
      ["calculated", "SOAP::SOAPBoolean"],
      ["calculatedFormula", "SOAP::SOAPString", [0, 1]],
      ["caseSensitive", "SOAP::SOAPBoolean"],
      ["controllerName", "SOAP::SOAPString", [0, 1]],
      ["createable", "SOAP::SOAPBoolean"],
      ["custom", "SOAP::SOAPBoolean"],
      ["defaultValueFormula", "SOAP::SOAPString", [0, 1]],
      ["defaultedOnCreate", "SOAP::SOAPBoolean"],
      ["dependentPicklist", "SOAP::SOAPBoolean", [0, 1]],
      ["deprecatedAndHidden", "SOAP::SOAPBoolean"],
      ["digits", "SOAP::SOAPInt"],
      ["externalId", "SOAP::SOAPBoolean", [0, 1]],
      ["filterable", "SOAP::SOAPBoolean"],
      ["groupable", "SOAP::SOAPBoolean"],
      ["htmlFormatted", "SOAP::SOAPBoolean", [0, 1]],
      ["idLookup", "SOAP::SOAPBoolean"],
      ["inlineHelpText", "SOAP::SOAPString", [0, 1]],
      ["label", "SOAP::SOAPString"],
      ["length", "SOAP::SOAPInt"],
      ["name", "SOAP::SOAPString"],
      ["nameField", "SOAP::SOAPBoolean"],
      ["namePointing", "SOAP::SOAPBoolean", [0, 1]],
      ["nillable", "SOAP::SOAPBoolean"],
      ["picklistValues", "PicklistEntry[]", [0, nil]],
      ["precision", "SOAP::SOAPInt"],
      ["referenceTo", "SOAP::SOAPString[]", [0, nil]],
      ["relationshipName", "SOAP::SOAPString", [0, 1]],
      ["relationshipOrder", "SOAP::SOAPInt", [0, 1]],
      ["restrictedPicklist", "SOAP::SOAPBoolean"],
      ["scale", "SOAP::SOAPInt"],
      ["soapType", "SoapType"],
      ["sortable", "SOAP::SOAPBoolean", [0, 1]],
      ["type", "FieldType"],
      ["unique", "SOAP::SOAPBoolean"],
      ["updateable", "SOAP::SOAPBoolean"],
      ["writeRequiresMasterRead", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PicklistEntry,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "PicklistEntry"),
    :schema_element => [
      ["active", "SOAP::SOAPBoolean"],
      ["defaultValue", "SOAP::SOAPBoolean"],
      ["label", "SOAP::SOAPString"],
      ["validFor", "SOAP::SOAPBase64", [0, 1]],
      ["value", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeDataCategoryGroupResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeDataCategoryGroupResult"),
    :schema_element => [
      ["categoryCount", "SOAP::SOAPInt"],
      ["description", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"],
      ["sobject", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeDataCategoryGroupStructureResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeDataCategoryGroupStructureResult"),
    :schema_element => [
      ["description", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"],
      ["sobject", "SOAP::SOAPString"],
      ["topCategories", "DataCategory[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DataCategoryGroupSobjectTypePair,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DataCategoryGroupSobjectTypePair"),
    :schema_element => [
      ["dataCategoryGroupName", "SOAP::SOAPString"],
      ["sobject", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DataCategory,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DataCategory"),
    :schema_element => [
      ["childCategories", "DataCategory[]", [0, nil]],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeSoftphoneLayoutResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeSoftphoneLayoutResult"),
    :schema_element => [
      ["callTypes", "DescribeSoftphoneLayoutCallType[]", [1, nil]],
      ["id", nil],
      ["name", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeSoftphoneLayoutCallType,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeSoftphoneLayoutCallType"),
    :schema_element => [
      ["infoFields", "DescribeSoftphoneLayoutInfoField[]", [1, nil]],
      ["name", "SOAP::SOAPString"],
      ["screenPopOptions", "DescribeSoftphoneScreenPopOption[]", [0, nil]],
      ["screenPopsOpenWithin", "SOAP::SOAPString", [0, 1]],
      ["sections", "DescribeSoftphoneLayoutSection[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeSoftphoneScreenPopOption,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeSoftphoneScreenPopOption"),
    :schema_element => [
      ["matchType", "SOAP::SOAPString"],
      ["screenPopData", "SOAP::SOAPString"],
      ["screenPopType", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeSoftphoneLayoutInfoField,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeSoftphoneLayoutInfoField"),
    :schema_element => [
      ["name", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeSoftphoneLayoutSection,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeSoftphoneLayoutSection"),
    :schema_element => [
      ["entityApiName", "SOAP::SOAPString"],
      ["items", "DescribeSoftphoneLayoutItem[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeSoftphoneLayoutItem,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeSoftphoneLayoutItem"),
    :schema_element => [
      ["itemApiName", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeLayoutResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeLayoutResult"),
    :schema_element => [
      ["layouts", "DescribeLayout[]", [1, nil]],
      ["recordTypeMappings", "RecordTypeMapping[]", [0, nil]],
      ["recordTypeSelectorRequired", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeLayout,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeLayout"),
    :schema_element => [
      ["buttonLayoutSection", "DescribeLayoutButtonSection", [0, 1]],
      ["detailLayoutSections", "DescribeLayoutSection[]", [0, nil]],
      ["editLayoutSections", "DescribeLayoutSection[]", [0, nil]],
      ["id", nil],
      ["relatedLists", "RelatedList[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeLayoutSection,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeLayoutSection"),
    :schema_element => [
      ["columns", "SOAP::SOAPInt"],
      ["heading", "SOAP::SOAPString"],
      ["layoutRows", "DescribeLayoutRow[]", [1, nil]],
      ["rows", "SOAP::SOAPInt"],
      ["useCollapsibleSection", "SOAP::SOAPBoolean"],
      ["useHeading", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeLayoutButtonSection,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeLayoutButtonSection"),
    :schema_element => [
      ["detailButtons", "DescribeLayoutButton[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeLayoutRow,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeLayoutRow"),
    :schema_element => [
      ["layoutItems", "DescribeLayoutItem[]", [1, nil]],
      ["numItems", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeLayoutItem,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeLayoutItem"),
    :schema_element => [
      ["editable", "SOAP::SOAPBoolean"],
      ["label", "SOAP::SOAPString"],
      ["layoutComponents", "DescribeLayoutComponent[]", [0, nil]],
      ["placeholder", "SOAP::SOAPBoolean"],
      ["required", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeLayoutButton,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeLayoutButton"),
    :schema_element => [
      ["custom", "SOAP::SOAPBoolean"],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeLayoutComponent,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeLayoutComponent"),
    :schema_element => [
      ["displayLines", "SOAP::SOAPInt"],
      ["tabOrder", "SOAP::SOAPInt"],
      ["type", "LayoutComponentType"],
      ["value", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => RecordTypeInfo,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "RecordTypeInfo"),
    :schema_element => [
      ["available", "SOAP::SOAPBoolean"],
      ["defaultRecordTypeMapping", "SOAP::SOAPBoolean"],
      ["name", "SOAP::SOAPString"],
      ["recordTypeId", nil]
    ]
  )

  EncodedRegistry.register(
    :class => RecordTypeMapping,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "RecordTypeMapping"),
    :schema_element => [
      ["available", "SOAP::SOAPBoolean"],
      ["defaultRecordTypeMapping", "SOAP::SOAPBoolean"],
      ["layoutId", nil],
      ["name", "SOAP::SOAPString"],
      ["picklistsForRecordType", "PicklistForRecordType[]", [0, nil]],
      ["recordTypeId", nil]
    ]
  )

  EncodedRegistry.register(
    :class => PicklistForRecordType,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "PicklistForRecordType"),
    :schema_element => [
      ["picklistName", "SOAP::SOAPString"],
      ["picklistValues", "PicklistEntry[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => RelatedList,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "RelatedList"),
    :schema_element => [
      ["columns", "RelatedListColumn[]", [1, nil]],
      ["custom", "SOAP::SOAPBoolean"],
      ["field", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["limitRows", "SOAP::SOAPInt"],
      ["name", "SOAP::SOAPString"],
      ["sobject", "SOAP::SOAPString"],
      ["sort", "RelatedListSort[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => RelatedListColumn,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "RelatedListColumn"),
    :schema_element => [
      ["field", "SOAP::SOAPString"],
      ["format", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => RelatedListSort,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "RelatedListSort"),
    :schema_element => [
      ["ascending", "SOAP::SOAPBoolean"],
      ["column", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => EmailFileAttachment,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "EmailFileAttachment"),
    :schema_element => [
      ["body", "SOAP::SOAPBase64", [0, 1]],
      ["contentType", "SOAP::SOAPString", [0, 1]],
      ["fileName", "SOAP::SOAPString"],
      ["inline", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Email,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "Email"),
    :schema_element => [
      ["bccSender", "SOAP::SOAPBoolean"],
      ["emailPriority", "EmailPriority"],
      ["replyTo", "SOAP::SOAPString"],
      ["saveAsActivity", "SOAP::SOAPBoolean"],
      ["senderDisplayName", "SOAP::SOAPString"],
      ["subject", "SOAP::SOAPString"],
      ["useSignature", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => MassEmailMessage,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "MassEmailMessage"),
    :schema_basetype => XSD::QName.new(NsPartnerSoapSforceCom, "Email"),
    :schema_element => [
      ["bccSender", "SOAP::SOAPBoolean"],
      ["emailPriority", "EmailPriority"],
      ["replyTo", "SOAP::SOAPString"],
      ["saveAsActivity", "SOAP::SOAPBoolean"],
      ["senderDisplayName", "SOAP::SOAPString"],
      ["subject", "SOAP::SOAPString"],
      ["useSignature", "SOAP::SOAPBoolean"],
      ["description", "SOAP::SOAPString"],
      ["targetObjectIds", "[]", [0, 250]],
      ["templateId", nil],
      ["whatIds", "[]", [0, 250]]
    ]
  )

  EncodedRegistry.register(
    :class => SingleEmailMessage,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "SingleEmailMessage"),
    :schema_basetype => XSD::QName.new(NsPartnerSoapSforceCom, "Email"),
    :schema_element => [
      ["bccSender", "SOAP::SOAPBoolean"],
      ["emailPriority", "EmailPriority"],
      ["replyTo", "SOAP::SOAPString"],
      ["saveAsActivity", "SOAP::SOAPBoolean"],
      ["senderDisplayName", "SOAP::SOAPString"],
      ["subject", "SOAP::SOAPString"],
      ["useSignature", "SOAP::SOAPBoolean"],
      ["bccAddresses", "SOAP::SOAPString[]", [0, 25]],
      ["ccAddresses", "SOAP::SOAPString[]", [0, 25]],
      ["charset", "SOAP::SOAPString"],
      ["documentAttachments", "[]", [0, nil]],
      ["htmlBody", "SOAP::SOAPString"],
      ["inReplyTo", "SOAP::SOAPString", [0, 1]],
      ["fileAttachments", "EmailFileAttachment[]", [0, nil]],
      ["orgWideEmailAddressId", nil, [0, 1]],
      ["plainTextBody", "SOAP::SOAPString"],
      ["references", "SOAP::SOAPString", [0, 1]],
      ["targetObjectId", nil],
      ["templateId", nil],
      ["toAddresses", "SOAP::SOAPString[]", [0, 100]],
      ["whatId", nil]
    ]
  )

  EncodedRegistry.register(
    :class => SendEmailResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "SendEmailResult"),
    :schema_element => [
      ["errors", "SendEmailError[]", [0, nil]],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeTabSetResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeTabSetResult"),
    :schema_element => [
      ["label", "SOAP::SOAPString"],
      ["logoUrl", "SOAP::SOAPString"],
      ["namespace", "SOAP::SOAPString", [0, 1]],
      ["selected", "SOAP::SOAPBoolean"],
      ["tabs", "DescribeTab[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeTab,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeTab"),
    :schema_element => [
      ["custom", "SOAP::SOAPBoolean"],
      ["iconUrl", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["miniIconUrl", "SOAP::SOAPString"],
      ["sobjectName", "SOAP::SOAPString"],
      ["url", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => PackageVersion,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "PackageVersion"),
    :schema_element => [
      ["majorNumber", "SOAP::SOAPInt"],
      ["minorNumber", "SOAP::SOAPInt"],
      ["namespace", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => ApiFault,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => ApiQueryFault,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ApiQueryFault"),
    :schema_basetype => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => LoginFault,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "LoginFault"),
    :schema_basetype => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidQueryLocatorFault,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "InvalidQueryLocatorFault"),
    :schema_basetype => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidNewPasswordFault,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "InvalidNewPasswordFault"),
    :schema_basetype => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidIdFault,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "InvalidIdFault"),
    :schema_basetype => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => UnexpectedErrorFault,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "UnexpectedErrorFault"),
    :schema_basetype => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidFieldFault,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "InvalidFieldFault"),
    :schema_basetype => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ApiQueryFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidSObjectFault,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "InvalidSObjectFault"),
    :schema_basetype => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ApiQueryFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => MalformedQueryFault,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "MalformedQueryFault"),
    :schema_basetype => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ApiQueryFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => MalformedSearchFault,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "MalformedSearchFault"),
    :schema_basetype => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ApiQueryFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => StatusCode,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "StatusCode")
  )

  EncodedRegistry.register(
    :class => FieldType,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "fieldType")
  )

  EncodedRegistry.register(
    :class => SoapType,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "soapType")
  )

  EncodedRegistry.register(
    :class => LayoutComponentType,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "layoutComponentType")
  )

  EncodedRegistry.register(
    :class => EmailPriority,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "EmailPriority")
  )

  EncodedRegistry.register(
    :class => DebugLevel,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DebugLevel")
  )

  EncodedRegistry.register(
    :class => ExceptionCode,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ExceptionCode")
  )

  EncodedRegistry.register(
    :class => FaultCode,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "FaultCode")
  )

  LiteralRegistry.register(
    :class => SObject,
    :schema_type => XSD::QName.new(NsSobjectPartnerSoapSforceCom, "sObject"),
    :schema_element => [
      ["type", "SOAP::SOAPString"],
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectPartnerSoapSforceCom, "Id")]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => QueryResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "QueryResult"),
    :schema_element => [
      ["done", "SOAP::SOAPBoolean"],
      ["queryLocator", nil],
      ["records", "SObject[]", [0, nil]],
      ["size", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => SearchResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "SearchResult"),
    :schema_element => [
      ["searchRecords", "SearchRecord[]", [0, nil]],
      ["sforceReserved", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchRecord,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "SearchRecord"),
    :schema_element => [
      ["record", "SObject"]
    ]
  )

  LiteralRegistry.register(
    :class => GetUpdatedResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "GetUpdatedResult"),
    :schema_element => [
      ["ids", "[]", [0, nil]],
      ["latestDateCovered", "SOAP::SOAPDateTime"],
      ["sforceReserved", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDeletedResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "GetDeletedResult"),
    :schema_element => [
      ["deletedRecords", "DeletedRecord[]", [0, nil]],
      ["earliestDateAvailable", "SOAP::SOAPDateTime"],
      ["latestDateCovered", "SOAP::SOAPDateTime"],
      ["sforceReserved", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeletedRecord,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DeletedRecord"),
    :schema_element => [
      ["deletedDate", "SOAP::SOAPDateTime"],
      ["id", nil]
    ]
  )

  LiteralRegistry.register(
    :class => GetServerTimestampResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "GetServerTimestampResult"),
    :schema_element => [
      ["timestamp", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidateSessionsResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "InvalidateSessionsResult"),
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SetPasswordResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "SetPasswordResult"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ResetPasswordResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "ResetPasswordResult"),
    :schema_element => [
      ["password", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => GetUserInfoResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "GetUserInfoResult"),
    :schema_element => [
      ["accessibilityMode", "SOAP::SOAPBoolean"],
      ["currencySymbol", "SOAP::SOAPString"],
      ["orgDefaultCurrencyIsoCode", "SOAP::SOAPString"],
      ["orgDisallowHtmlAttachments", "SOAP::SOAPBoolean"],
      ["orgHasPersonAccounts", "SOAP::SOAPBoolean"],
      ["organizationId", nil],
      ["organizationMultiCurrency", "SOAP::SOAPBoolean"],
      ["organizationName", "SOAP::SOAPString"],
      ["profileId", nil],
      ["roleId", nil],
      ["userDefaultCurrencyIsoCode", "SOAP::SOAPString"],
      ["userEmail", "SOAP::SOAPString"],
      ["userFullName", "SOAP::SOAPString"],
      ["userId", nil],
      ["userLanguage", "SOAP::SOAPString"],
      ["userLocale", "SOAP::SOAPString"],
      ["userName", "SOAP::SOAPString"],
      ["userTimeZone", "SOAP::SOAPString"],
      ["userType", "SOAP::SOAPString"],
      ["userUiSkin", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LoginResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "LoginResult"),
    :schema_element => [
      ["metadataServerUrl", "SOAP::SOAPString"],
      ["passwordExpired", "SOAP::SOAPBoolean"],
      ["sandbox", "SOAP::SOAPBoolean"],
      ["serverUrl", "SOAP::SOAPString"],
      ["sessionId", "SOAP::SOAPString"],
      ["userId", nil],
      ["userInfo", "GetUserInfoResult", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Error,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "Error"),
    :schema_element => [
      ["fields", "SOAP::SOAPString[]", [0, nil]],
      ["message", "SOAP::SOAPString"],
      ["statusCode", "StatusCode"]
    ]
  )

  LiteralRegistry.register(
    :class => SendEmailError,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "SendEmailError"),
    :schema_element => [
      ["fields", "SOAP::SOAPString[]", [0, nil]],
      ["message", "SOAP::SOAPString"],
      ["statusCode", "StatusCode"],
      ["targetObjectId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => SaveResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "SaveResult"),
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", nil],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => UpsertResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "UpsertResult"),
    :schema_element => [
      ["created", "SOAP::SOAPBoolean"],
      ["errors", "Error[]", [0, nil]],
      ["id", nil],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => MergeRequest,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "MergeRequest"),
    :schema_element => [
      ["masterRecord", "SObject"],
      ["recordToMergeIds", "[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MergeResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "MergeResult"),
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", nil],
      ["mergedRecordIds", "[]", [0, nil]],
      ["success", "SOAP::SOAPBoolean"],
      ["updatedRelatedIds", "[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessRequest,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "ProcessRequest"),
    :schema_element => [
      ["comments", "SOAP::SOAPString"],
      ["nextApproverIds", "[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessSubmitRequest,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "ProcessSubmitRequest"),
    :schema_basetype => XSD::QName.new(NsPartnerSoapSforceCom, "ProcessRequest"),
    :schema_element => [
      ["comments", "SOAP::SOAPString"],
      ["nextApproverIds", "[]", [0, nil]],
      ["objectId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessWorkitemRequest,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "ProcessWorkitemRequest"),
    :schema_basetype => XSD::QName.new(NsPartnerSoapSforceCom, "ProcessRequest"),
    :schema_element => [
      ["comments", "SOAP::SOAPString"],
      ["nextApproverIds", "[]", [0, nil]],
      ["action", "SOAP::SOAPString"],
      ["workitemId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "ProcessResult"),
    :schema_element => [
      ["actorIds", "[]", [0, nil]],
      ["entityId", nil],
      ["errors", "Error[]", [0, nil]],
      ["instanceId", nil],
      ["instanceStatus", "SOAP::SOAPString"],
      ["newWorkitemIds", "[]", [0, nil]],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DeleteResult"),
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", nil],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => UndeleteResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "UndeleteResult"),
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", nil],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => EmptyRecycleBinResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "EmptyRecycleBinResult"),
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", nil],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => LeadConvert,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "LeadConvert"),
    :schema_element => [
      ["accountId", nil],
      ["contactId", nil],
      ["convertedStatus", "SOAP::SOAPString"],
      ["doNotCreateOpportunity", "SOAP::SOAPBoolean"],
      ["leadId", nil],
      ["opportunityName", "SOAP::SOAPString"],
      ["overwriteLeadSource", "SOAP::SOAPBoolean"],
      ["ownerId", nil],
      ["sendNotificationEmail", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => LeadConvertResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "LeadConvertResult"),
    :schema_element => [
      ["accountId", nil],
      ["contactId", nil],
      ["errors", "Error[]", [0, nil]],
      ["leadId", nil],
      ["opportunityId", nil],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSObjectResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeSObjectResult"),
    :schema_element => [
      ["activateable", "SOAP::SOAPBoolean"],
      ["childRelationships", "ChildRelationship[]", [0, nil]],
      ["createable", "SOAP::SOAPBoolean"],
      ["custom", "SOAP::SOAPBoolean"],
      ["customSetting", "SOAP::SOAPBoolean"],
      ["deletable", "SOAP::SOAPBoolean"],
      ["deprecatedAndHidden", "SOAP::SOAPBoolean"],
      ["feedEnabled", "SOAP::SOAPBoolean"],
      ["fields", "Field[]", [0, nil]],
      ["keyPrefix", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["labelPlural", "SOAP::SOAPString"],
      ["layoutable", "SOAP::SOAPBoolean"],
      ["mergeable", "SOAP::SOAPBoolean"],
      ["name", "SOAP::SOAPString"],
      ["queryable", "SOAP::SOAPBoolean"],
      ["recordTypeInfos", "RecordTypeInfo[]", [0, nil]],
      ["replicateable", "SOAP::SOAPBoolean"],
      ["retrieveable", "SOAP::SOAPBoolean"],
      ["searchable", "SOAP::SOAPBoolean"],
      ["triggerable", "SOAP::SOAPBoolean", [0, 1]],
      ["undeletable", "SOAP::SOAPBoolean"],
      ["updateable", "SOAP::SOAPBoolean"],
      ["urlDetail", "SOAP::SOAPString"],
      ["urlEdit", "SOAP::SOAPString"],
      ["urlNew", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeGlobalSObjectResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeGlobalSObjectResult"),
    :schema_element => [
      ["activateable", "SOAP::SOAPBoolean"],
      ["createable", "SOAP::SOAPBoolean"],
      ["custom", "SOAP::SOAPBoolean"],
      ["customSetting", "SOAP::SOAPBoolean"],
      ["deletable", "SOAP::SOAPBoolean"],
      ["deprecatedAndHidden", "SOAP::SOAPBoolean"],
      ["feedEnabled", "SOAP::SOAPBoolean"],
      ["keyPrefix", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["labelPlural", "SOAP::SOAPString"],
      ["layoutable", "SOAP::SOAPBoolean"],
      ["mergeable", "SOAP::SOAPBoolean"],
      ["name", "SOAP::SOAPString"],
      ["queryable", "SOAP::SOAPBoolean"],
      ["replicateable", "SOAP::SOAPBoolean"],
      ["retrieveable", "SOAP::SOAPBoolean"],
      ["searchable", "SOAP::SOAPBoolean"],
      ["triggerable", "SOAP::SOAPBoolean"],
      ["undeletable", "SOAP::SOAPBoolean"],
      ["updateable", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => ChildRelationship,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "ChildRelationship"),
    :schema_element => [
      ["cascadeDelete", "SOAP::SOAPBoolean"],
      ["childSObject", "SOAP::SOAPString"],
      ["deprecatedAndHidden", "SOAP::SOAPBoolean"],
      ["field", "SOAP::SOAPString"],
      ["relationshipName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeGlobalResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeGlobalResult"),
    :schema_element => [
      ["encoding", "SOAP::SOAPString"],
      ["maxBatchSize", "SOAP::SOAPInt"],
      ["sobjects", "DescribeGlobalSObjectResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Field,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "Field"),
    :schema_element => [
      ["autoNumber", "SOAP::SOAPBoolean"],
      ["byteLength", "SOAP::SOAPInt"],
      ["calculated", "SOAP::SOAPBoolean"],
      ["calculatedFormula", "SOAP::SOAPString", [0, 1]],
      ["caseSensitive", "SOAP::SOAPBoolean"],
      ["controllerName", "SOAP::SOAPString", [0, 1]],
      ["createable", "SOAP::SOAPBoolean"],
      ["custom", "SOAP::SOAPBoolean"],
      ["defaultValueFormula", "SOAP::SOAPString", [0, 1]],
      ["defaultedOnCreate", "SOAP::SOAPBoolean"],
      ["dependentPicklist", "SOAP::SOAPBoolean", [0, 1]],
      ["deprecatedAndHidden", "SOAP::SOAPBoolean"],
      ["digits", "SOAP::SOAPInt"],
      ["externalId", "SOAP::SOAPBoolean", [0, 1]],
      ["filterable", "SOAP::SOAPBoolean"],
      ["groupable", "SOAP::SOAPBoolean"],
      ["htmlFormatted", "SOAP::SOAPBoolean", [0, 1]],
      ["idLookup", "SOAP::SOAPBoolean"],
      ["inlineHelpText", "SOAP::SOAPString", [0, 1]],
      ["label", "SOAP::SOAPString"],
      ["length", "SOAP::SOAPInt"],
      ["name", "SOAP::SOAPString"],
      ["nameField", "SOAP::SOAPBoolean"],
      ["namePointing", "SOAP::SOAPBoolean", [0, 1]],
      ["nillable", "SOAP::SOAPBoolean"],
      ["picklistValues", "PicklistEntry[]", [0, nil]],
      ["precision", "SOAP::SOAPInt"],
      ["referenceTo", "SOAP::SOAPString[]", [0, nil]],
      ["relationshipName", "SOAP::SOAPString", [0, 1]],
      ["relationshipOrder", "SOAP::SOAPInt", [0, 1]],
      ["restrictedPicklist", "SOAP::SOAPBoolean"],
      ["scale", "SOAP::SOAPInt"],
      ["soapType", "SoapType"],
      ["sortable", "SOAP::SOAPBoolean", [0, 1]],
      ["type", "FieldType"],
      ["unique", "SOAP::SOAPBoolean"],
      ["updateable", "SOAP::SOAPBoolean"],
      ["writeRequiresMasterRead", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PicklistEntry,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "PicklistEntry"),
    :schema_element => [
      ["active", "SOAP::SOAPBoolean"],
      ["defaultValue", "SOAP::SOAPBoolean"],
      ["label", "SOAP::SOAPString"],
      ["validFor", "SOAP::SOAPBase64", [0, 1]],
      ["value", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeDataCategoryGroupResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeDataCategoryGroupResult"),
    :schema_element => [
      ["categoryCount", "SOAP::SOAPInt"],
      ["description", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"],
      ["sobject", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeDataCategoryGroupStructureResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeDataCategoryGroupStructureResult"),
    :schema_element => [
      ["description", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"],
      ["sobject", "SOAP::SOAPString"],
      ["topCategories", "DataCategory[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DataCategoryGroupSobjectTypePair,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DataCategoryGroupSobjectTypePair"),
    :schema_element => [
      ["dataCategoryGroupName", "SOAP::SOAPString"],
      ["sobject", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DataCategory,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DataCategory"),
    :schema_element => [
      ["childCategories", "DataCategory[]", [0, nil]],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSoftphoneLayoutResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeSoftphoneLayoutResult"),
    :schema_element => [
      ["callTypes", "DescribeSoftphoneLayoutCallType[]", [1, nil]],
      ["id", nil],
      ["name", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSoftphoneLayoutCallType,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeSoftphoneLayoutCallType"),
    :schema_element => [
      ["infoFields", "DescribeSoftphoneLayoutInfoField[]", [1, nil]],
      ["name", "SOAP::SOAPString"],
      ["screenPopOptions", "DescribeSoftphoneScreenPopOption[]", [0, nil]],
      ["screenPopsOpenWithin", "SOAP::SOAPString", [0, 1]],
      ["sections", "DescribeSoftphoneLayoutSection[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSoftphoneScreenPopOption,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeSoftphoneScreenPopOption"),
    :schema_element => [
      ["matchType", "SOAP::SOAPString"],
      ["screenPopData", "SOAP::SOAPString"],
      ["screenPopType", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSoftphoneLayoutInfoField,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeSoftphoneLayoutInfoField"),
    :schema_element => [
      ["name", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSoftphoneLayoutSection,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeSoftphoneLayoutSection"),
    :schema_element => [
      ["entityApiName", "SOAP::SOAPString"],
      ["items", "DescribeSoftphoneLayoutItem[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSoftphoneLayoutItem,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeSoftphoneLayoutItem"),
    :schema_element => [
      ["itemApiName", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayoutResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeLayoutResult"),
    :schema_element => [
      ["layouts", "DescribeLayout[]", [1, nil]],
      ["recordTypeMappings", "RecordTypeMapping[]", [0, nil]],
      ["recordTypeSelectorRequired", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayout,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeLayout"),
    :schema_element => [
      ["buttonLayoutSection", "DescribeLayoutButtonSection", [0, 1]],
      ["detailLayoutSections", "DescribeLayoutSection[]", [0, nil]],
      ["editLayoutSections", "DescribeLayoutSection[]", [0, nil]],
      ["id", nil],
      ["relatedLists", "RelatedList[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayoutSection,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeLayoutSection"),
    :schema_element => [
      ["columns", "SOAP::SOAPInt"],
      ["heading", "SOAP::SOAPString"],
      ["layoutRows", "DescribeLayoutRow[]", [1, nil]],
      ["rows", "SOAP::SOAPInt"],
      ["useCollapsibleSection", "SOAP::SOAPBoolean"],
      ["useHeading", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayoutButtonSection,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeLayoutButtonSection"),
    :schema_element => [
      ["detailButtons", "DescribeLayoutButton[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayoutRow,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeLayoutRow"),
    :schema_element => [
      ["layoutItems", "DescribeLayoutItem[]", [1, nil]],
      ["numItems", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayoutItem,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeLayoutItem"),
    :schema_element => [
      ["editable", "SOAP::SOAPBoolean"],
      ["label", "SOAP::SOAPString"],
      ["layoutComponents", "DescribeLayoutComponent[]", [0, nil]],
      ["placeholder", "SOAP::SOAPBoolean"],
      ["required", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayoutButton,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeLayoutButton"),
    :schema_element => [
      ["custom", "SOAP::SOAPBoolean"],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayoutComponent,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeLayoutComponent"),
    :schema_element => [
      ["displayLines", "SOAP::SOAPInt"],
      ["tabOrder", "SOAP::SOAPInt"],
      ["type", "LayoutComponentType"],
      ["value", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RecordTypeInfo,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "RecordTypeInfo"),
    :schema_element => [
      ["available", "SOAP::SOAPBoolean"],
      ["defaultRecordTypeMapping", "SOAP::SOAPBoolean"],
      ["name", "SOAP::SOAPString"],
      ["recordTypeId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => RecordTypeMapping,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "RecordTypeMapping"),
    :schema_element => [
      ["available", "SOAP::SOAPBoolean"],
      ["defaultRecordTypeMapping", "SOAP::SOAPBoolean"],
      ["layoutId", nil],
      ["name", "SOAP::SOAPString"],
      ["picklistsForRecordType", "PicklistForRecordType[]", [0, nil]],
      ["recordTypeId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => PicklistForRecordType,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "PicklistForRecordType"),
    :schema_element => [
      ["picklistName", "SOAP::SOAPString"],
      ["picklistValues", "PicklistEntry[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => RelatedList,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "RelatedList"),
    :schema_element => [
      ["columns", "RelatedListColumn[]", [1, nil]],
      ["custom", "SOAP::SOAPBoolean"],
      ["field", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["limitRows", "SOAP::SOAPInt"],
      ["name", "SOAP::SOAPString"],
      ["sobject", "SOAP::SOAPString"],
      ["sort", "RelatedListSort[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => RelatedListColumn,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "RelatedListColumn"),
    :schema_element => [
      ["field", "SOAP::SOAPString"],
      ["format", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RelatedListSort,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "RelatedListSort"),
    :schema_element => [
      ["ascending", "SOAP::SOAPBoolean"],
      ["column", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => EmailFileAttachment,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "EmailFileAttachment"),
    :schema_element => [
      ["body", "SOAP::SOAPBase64", [0, 1]],
      ["contentType", "SOAP::SOAPString", [0, 1]],
      ["fileName", "SOAP::SOAPString"],
      ["inline", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Email,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "Email"),
    :schema_element => [
      ["bccSender", "SOAP::SOAPBoolean"],
      ["emailPriority", "EmailPriority"],
      ["replyTo", "SOAP::SOAPString"],
      ["saveAsActivity", "SOAP::SOAPBoolean"],
      ["senderDisplayName", "SOAP::SOAPString"],
      ["subject", "SOAP::SOAPString"],
      ["useSignature", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => MassEmailMessage,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "MassEmailMessage"),
    :schema_basetype => XSD::QName.new(NsPartnerSoapSforceCom, "Email"),
    :schema_element => [
      ["bccSender", "SOAP::SOAPBoolean"],
      ["emailPriority", "EmailPriority"],
      ["replyTo", "SOAP::SOAPString"],
      ["saveAsActivity", "SOAP::SOAPBoolean"],
      ["senderDisplayName", "SOAP::SOAPString"],
      ["subject", "SOAP::SOAPString"],
      ["useSignature", "SOAP::SOAPBoolean"],
      ["description", "SOAP::SOAPString"],
      ["targetObjectIds", "[]", [0, 250]],
      ["templateId", nil],
      ["whatIds", "[]", [0, 250]]
    ]
  )

  LiteralRegistry.register(
    :class => SingleEmailMessage,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "SingleEmailMessage"),
    :schema_basetype => XSD::QName.new(NsPartnerSoapSforceCom, "Email"),
    :schema_element => [
      ["bccSender", "SOAP::SOAPBoolean"],
      ["emailPriority", "EmailPriority"],
      ["replyTo", "SOAP::SOAPString"],
      ["saveAsActivity", "SOAP::SOAPBoolean"],
      ["senderDisplayName", "SOAP::SOAPString"],
      ["subject", "SOAP::SOAPString"],
      ["useSignature", "SOAP::SOAPBoolean"],
      ["bccAddresses", "SOAP::SOAPString[]", [0, 25]],
      ["ccAddresses", "SOAP::SOAPString[]", [0, 25]],
      ["charset", "SOAP::SOAPString"],
      ["documentAttachments", "[]", [0, nil]],
      ["htmlBody", "SOAP::SOAPString"],
      ["inReplyTo", "SOAP::SOAPString", [0, 1]],
      ["fileAttachments", "EmailFileAttachment[]", [0, nil]],
      ["orgWideEmailAddressId", nil, [0, 1]],
      ["plainTextBody", "SOAP::SOAPString"],
      ["references", "SOAP::SOAPString", [0, 1]],
      ["targetObjectId", nil],
      ["templateId", nil],
      ["toAddresses", "SOAP::SOAPString[]", [0, 100]],
      ["whatId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => SendEmailResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "SendEmailResult"),
    :schema_element => [
      ["errors", "SendEmailError[]", [0, nil]],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeTabSetResult,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeTabSetResult"),
    :schema_element => [
      ["label", "SOAP::SOAPString"],
      ["logoUrl", "SOAP::SOAPString"],
      ["namespace", "SOAP::SOAPString", [0, 1]],
      ["selected", "SOAP::SOAPBoolean"],
      ["tabs", "DescribeTab[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeTab,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DescribeTab"),
    :schema_element => [
      ["custom", "SOAP::SOAPBoolean"],
      ["iconUrl", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["miniIconUrl", "SOAP::SOAPString"],
      ["sobjectName", "SOAP::SOAPString"],
      ["url", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => PackageVersion,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "PackageVersion"),
    :schema_element => [
      ["majorNumber", "SOAP::SOAPInt"],
      ["minorNumber", "SOAP::SOAPInt"],
      ["namespace", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ApiFault,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ApiQueryFault,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ApiQueryFault"),
    :schema_basetype => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => LoginFault,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "LoginFault"),
    :schema_basetype => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidQueryLocatorFault,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "InvalidQueryLocatorFault"),
    :schema_basetype => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidNewPasswordFault,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "InvalidNewPasswordFault"),
    :schema_basetype => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidIdFault,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "InvalidIdFault"),
    :schema_basetype => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => UnexpectedErrorFault,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "UnexpectedErrorFault"),
    :schema_basetype => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidFieldFault,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "InvalidFieldFault"),
    :schema_basetype => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ApiQueryFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidSObjectFault,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "InvalidSObjectFault"),
    :schema_basetype => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ApiQueryFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => MalformedQueryFault,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "MalformedQueryFault"),
    :schema_basetype => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ApiQueryFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => MalformedSearchFault,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "MalformedSearchFault"),
    :schema_basetype => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ApiQueryFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => StatusCode,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "StatusCode")
  )

  LiteralRegistry.register(
    :class => FieldType,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "fieldType")
  )

  LiteralRegistry.register(
    :class => SoapType,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "soapType")
  )

  LiteralRegistry.register(
    :class => LayoutComponentType,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "layoutComponentType")
  )

  LiteralRegistry.register(
    :class => EmailPriority,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "EmailPriority")
  )

  LiteralRegistry.register(
    :class => DebugLevel,
    :schema_type => XSD::QName.new(NsPartnerSoapSforceCom, "DebugLevel")
  )

  LiteralRegistry.register(
    :class => ExceptionCode,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "ExceptionCode")
  )

  LiteralRegistry.register(
    :class => FaultCode,
    :schema_type => XSD::QName.new(NsFaultPartnerSoapSforceCom, "FaultCode")
  )

  LiteralRegistry.register(
    :class => Login,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "login"),
    :schema_element => [
      ["username", "SOAP::SOAPString"],
      ["password", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LoginResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "loginResponse"),
    :schema_element => [
      ["result", "LoginResult"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSObject,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "describeSObject"),
    :schema_element => [
      ["sObjectType", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSObjectResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "describeSObjectResponse"),
    :schema_element => [
      ["result", "DescribeSObjectResult"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSObjects,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "describeSObjects"),
    :schema_element => [
      ["sObjectType", "SOAP::SOAPString[]", [0, 100]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSObjectsResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "describeSObjectsResponse"),
    :schema_element => [
      ["result", "DescribeSObjectResult[]", [0, 100]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeGlobal,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "describeGlobal"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => DescribeGlobalResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "describeGlobalResponse"),
    :schema_element => [
      ["result", "DescribeGlobalResult"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeDataCategoryGroups,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "describeDataCategoryGroups"),
    :schema_element => [
      ["sObjectType", "SOAP::SOAPString[]", [0, 10]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeDataCategoryGroupsResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "describeDataCategoryGroupsResponse"),
    :schema_element => [
      ["result", "DescribeDataCategoryGroupResult[]", [0, 100]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeDataCategoryGroupStructures,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "describeDataCategoryGroupStructures"),
    :schema_element => [
      ["pairs", "DataCategoryGroupSobjectTypePair[]", [0, 100]],
      ["topCategoriesOnly", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeDataCategoryGroupStructuresResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "describeDataCategoryGroupStructuresResponse"),
    :schema_element => [
      ["result", "DescribeDataCategoryGroupStructureResult[]", [0, 100]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayout_,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "describeLayout"),
    :schema_element => [
      ["sObjectType", "SOAP::SOAPString"],
      ["recordTypeIds", "[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayoutResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "describeLayoutResponse"),
    :schema_element => [
      ["result", "DescribeLayoutResult"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSoftphoneLayout,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "describeSoftphoneLayout"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => DescribeSoftphoneLayoutResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "describeSoftphoneLayoutResponse"),
    :schema_element => [
      ["result", "DescribeSoftphoneLayoutResult"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeTabs,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "describeTabs"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => DescribeTabsResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "describeTabsResponse"),
    :schema_element => [
      ["result", "DescribeTabSetResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Create,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "create"),
    :schema_element => [
      ["sObjects", "SObject[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "createResponse"),
    :schema_element => [
      ["result", "SaveResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SendEmail,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "sendEmail"),
    :schema_element => [
      ["messages", "Email[]", [0, 10]]
    ]
  )

  LiteralRegistry.register(
    :class => SendEmailResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "sendEmailResponse"),
    :schema_element => [
      ["result", "SendEmailResult[]", [0, 10]]
    ]
  )

  LiteralRegistry.register(
    :class => Update,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "update"),
    :schema_element => [
      ["sObjects", "SObject[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "updateResponse"),
    :schema_element => [
      ["result", "SaveResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Upsert,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "upsert"),
    :schema_element => [
      ["externalIDFieldName", "SOAP::SOAPString"],
      ["sObjects", "SObject[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => UpsertResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "upsertResponse"),
    :schema_element => [
      ["result", "UpsertResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Merge,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "merge"),
    :schema_element => [
      ["request", "MergeRequest[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MergeResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "mergeResponse"),
    :schema_element => [
      ["result", "MergeResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Delete,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "delete"),
    :schema_element => [
      ["ids", "[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "deleteResponse"),
    :schema_element => [
      ["result", "DeleteResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Undelete,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "undelete"),
    :schema_element => [
      ["ids", "[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => UndeleteResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "undeleteResponse"),
    :schema_element => [
      ["result", "UndeleteResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => EmptyRecycleBin,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "emptyRecycleBin"),
    :schema_element => [
      ["ids", "[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => EmptyRecycleBinResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "emptyRecycleBinResponse"),
    :schema_element => [
      ["result", "EmptyRecycleBinResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => C_Process,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "process"),
    :schema_element => [
      ["actions", "ProcessRequest[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "processResponse"),
    :schema_element => [
      ["result", "ProcessResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Retrieve,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "retrieve"),
    :schema_element => [
      ["fieldList", "SOAP::SOAPString"],
      ["sObjectType", "SOAP::SOAPString"],
      ["ids", "[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => RetrieveResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "retrieveResponse"),
    :schema_element => [
      ["result", "SObject[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ConvertLead,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "convertLead"),
    :schema_element => [
      ["leadConverts", "LeadConvert[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ConvertLeadResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "convertLeadResponse"),
    :schema_element => [
      ["result", "LeadConvertResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetUpdated,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "getUpdated"),
    :schema_element => [
      ["sObjectType", "SOAP::SOAPString"],
      ["startDate", "SOAP::SOAPDateTime"],
      ["endDate", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => GetUpdatedResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "getUpdatedResponse"),
    :schema_element => [
      ["result", "GetUpdatedResult"]
    ]
  )

  LiteralRegistry.register(
    :class => GetDeleted,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "getDeleted"),
    :schema_element => [
      ["sObjectType", "SOAP::SOAPString"],
      ["startDate", "SOAP::SOAPDateTime"],
      ["endDate", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => GetDeletedResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "getDeletedResponse"),
    :schema_element => [
      ["result", "GetDeletedResult"]
    ]
  )

  LiteralRegistry.register(
    :class => Logout,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "logout"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => LogoutResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "logoutResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => InvalidateSessions,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "invalidateSessions"),
    :schema_element => [
      ["sessionIds", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidateSessionsResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "invalidateSessionsResponse"),
    :schema_element => [
      ["result", "InvalidateSessionsResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Query,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "query"),
    :schema_element => [
      ["queryString", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => QueryResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "queryResponse"),
    :schema_element => [
      ["result", "QueryResult"]
    ]
  )

  LiteralRegistry.register(
    :class => QueryAll,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "queryAll"),
    :schema_element => [
      ["queryString", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => QueryAllResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "queryAllResponse"),
    :schema_element => [
      ["result", "QueryResult"]
    ]
  )

  LiteralRegistry.register(
    :class => QueryMore,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "queryMore"),
    :schema_element => [
      ["queryLocator", nil]
    ]
  )

  LiteralRegistry.register(
    :class => QueryMoreResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "queryMoreResponse"),
    :schema_element => [
      ["result", "QueryResult"]
    ]
  )

  LiteralRegistry.register(
    :class => Search,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "search"),
    :schema_element => [
      ["searchString", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SearchResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "searchResponse"),
    :schema_element => [
      ["result", "SearchResult"]
    ]
  )

  LiteralRegistry.register(
    :class => GetServerTimestamp,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "getServerTimestamp"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetServerTimestampResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "getServerTimestampResponse"),
    :schema_element => [
      ["result", "GetServerTimestampResult"]
    ]
  )

  LiteralRegistry.register(
    :class => SetPassword,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "setPassword"),
    :schema_element => [
      ["userId", nil],
      ["password", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SetPasswordResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "setPasswordResponse"),
    :schema_element => [
      ["result", "SetPasswordResult"]
    ]
  )

  LiteralRegistry.register(
    :class => ResetPassword,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "resetPassword"),
    :schema_element => [
      ["userId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => ResetPasswordResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "resetPasswordResponse"),
    :schema_element => [
      ["result", "ResetPasswordResult"]
    ]
  )

  LiteralRegistry.register(
    :class => GetUserInfo,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "getUserInfo"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetUserInfoResponse,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "getUserInfoResponse"),
    :schema_element => [
      ["result", "GetUserInfoResult"]
    ]
  )

  LiteralRegistry.register(
    :class => SessionHeader,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "SessionHeader"),
    :schema_element => [
      ["sessionId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LoginScopeHeader,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "LoginScopeHeader"),
    :schema_element => [
      ["organizationId", nil],
      ["portalId", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CallOptions,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "CallOptions"),
    :schema_element => [
      ["client", "SOAP::SOAPString"],
      ["defaultNamespace", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => QueryOptions,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "QueryOptions"),
    :schema_element => [
      ["batchSize", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DebuggingHeader,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "DebuggingHeader"),
    :schema_element => [
      ["debugLevel", "DebugLevel"]
    ]
  )

  LiteralRegistry.register(
    :class => DebuggingInfo,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "DebuggingInfo"),
    :schema_element => [
      ["debugLog", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => PackageVersionHeader,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "PackageVersionHeader"),
    :schema_element => [
      ["packageVersions", "PackageVersion[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AllowFieldTruncationHeader,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "AllowFieldTruncationHeader"),
    :schema_element => [
      ["allowFieldTruncation", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DisableFeedTrackingHeader,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "DisableFeedTrackingHeader"),
    :schema_element => [
      ["disableFeedTracking", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => AllOrNoneHeader,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "AllOrNoneHeader"),
    :schema_element => [
      ["allOrNone", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => MruHeader,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "MruHeader"),
    :schema_element => [
      ["updateMru", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => EmailHeader,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "EmailHeader"),
    :schema_element => [
      ["triggerAutoResponseEmail", "SOAP::SOAPBoolean"],
      ["triggerOtherEmail", "SOAP::SOAPBoolean"],
      ["triggerUserEmail", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => AssignmentRuleHeader,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "AssignmentRuleHeader"),
    :schema_element => [
      ["assignmentRuleId", nil],
      ["useDefaultRule", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => UserTerritoryDeleteHeader,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "UserTerritoryDeleteHeader"),
    :schema_element => [
      ["transferToUserId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => LocaleOptions,
    :schema_name => XSD::QName.new(NsPartnerSoapSforceCom, "LocaleOptions"),
    :schema_element => [
      ["language", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiFault,
    :schema_name => XSD::QName.new(NsFaultPartnerSoapSforceCom, "fault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LoginFault,
    :schema_name => XSD::QName.new(NsFaultPartnerSoapSforceCom, "LoginFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidQueryLocatorFault,
    :schema_name => XSD::QName.new(NsFaultPartnerSoapSforceCom, "InvalidQueryLocatorFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidNewPasswordFault,
    :schema_name => XSD::QName.new(NsFaultPartnerSoapSforceCom, "InvalidNewPasswordFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidIdFault,
    :schema_name => XSD::QName.new(NsFaultPartnerSoapSforceCom, "InvalidIdFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => UnexpectedErrorFault,
    :schema_name => XSD::QName.new(NsFaultPartnerSoapSforceCom, "UnexpectedErrorFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidFieldFault,
    :schema_name => XSD::QName.new(NsFaultPartnerSoapSforceCom, "InvalidFieldFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidSObjectFault,
    :schema_name => XSD::QName.new(NsFaultPartnerSoapSforceCom, "InvalidSObjectFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => MalformedQueryFault,
    :schema_name => XSD::QName.new(NsFaultPartnerSoapSforceCom, "MalformedQueryFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => MalformedSearchFault,
    :schema_name => XSD::QName.new(NsFaultPartnerSoapSforceCom, "MalformedSearchFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )
end
