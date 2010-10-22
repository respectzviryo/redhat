require 'default.rb'
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new

  EncodedRegistry.register(
    :class => SObject,
    :schema_ns => "urn:sobject.partner.soap.sforce.com",
    :schema_type => "sObject",
    :schema_element => [
      ["type", "SOAP::SOAPString"],
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", ["SOAP::SOAPString", XSD::QName.new("urn:sobject.partner.soap.sforce.com", "Id")]],
      ["any", [nil, XSD::QName.new("http://www.w3.org/2001/XMLSchema", "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => QueryResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "QueryResult",
    :schema_element => [
      ["done", "SOAP::SOAPBoolean"],
      ["queryLocator", "SOAP::SOAPString"],
      ["records", "SObject[]", [0, nil]],
      ["size", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => SearchResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "SearchResult",
    :schema_element => [
      ["searchRecords", "SearchRecord[]", [0, nil]],
      ["sforceReserved", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SearchRecord,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "SearchRecord",
    :schema_element => [
      ["record", "SObject"]
    ]
  )

  EncodedRegistry.register(
    :class => GetUpdatedResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "GetUpdatedResult",
    :schema_element => [
      ["ids", "SOAP::SOAPString[]", [0, nil]],
      ["latestDateCovered", "SOAP::SOAPDateTime"],
      ["sforceReserved", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetDeletedResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "GetDeletedResult",
    :schema_element => [
      ["deletedRecords", "DeletedRecord[]", [0, nil]],
      ["earliestDateAvailable", "SOAP::SOAPDateTime"],
      ["latestDateCovered", "SOAP::SOAPDateTime"],
      ["sforceReserved", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DeletedRecord,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DeletedRecord",
    :schema_element => [
      ["deletedDate", "SOAP::SOAPDateTime"],
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => GetServerTimestampResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "GetServerTimestampResult",
    :schema_element => [
      ["timestamp", "SOAP::SOAPDateTime"]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidateSessionsResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "InvalidateSessionsResult",
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => SetPasswordResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "SetPasswordResult",
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => ResetPasswordResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "ResetPasswordResult",
    :schema_element => [
      ["password", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => GetUserInfoResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "GetUserInfoResult",
    :schema_element => [
      ["accessibilityMode", "SOAP::SOAPBoolean"],
      ["currencySymbol", "SOAP::SOAPString"],
      ["orgDefaultCurrencyIsoCode", "SOAP::SOAPString"],
      ["orgDisallowHtmlAttachments", "SOAP::SOAPBoolean"],
      ["orgHasPersonAccounts", "SOAP::SOAPBoolean"],
      ["organizationId", "SOAP::SOAPString"],
      ["organizationMultiCurrency", "SOAP::SOAPBoolean"],
      ["organizationName", "SOAP::SOAPString"],
      ["profileId", "SOAP::SOAPString"],
      ["roleId", "SOAP::SOAPString"],
      ["userDefaultCurrencyIsoCode", "SOAP::SOAPString"],
      ["userEmail", "SOAP::SOAPString"],
      ["userFullName", "SOAP::SOAPString"],
      ["userId", "SOAP::SOAPString"],
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
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "LoginResult",
    :schema_element => [
      ["metadataServerUrl", "SOAP::SOAPString"],
      ["passwordExpired", "SOAP::SOAPBoolean"],
      ["sandbox", "SOAP::SOAPBoolean"],
      ["serverUrl", "SOAP::SOAPString"],
      ["sessionId", "SOAP::SOAPString"],
      ["userId", "SOAP::SOAPString"],
      ["userInfo", "GetUserInfoResult", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Error,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "Error",
    :schema_element => [
      ["fields", "SOAP::SOAPString[]", [0, nil]],
      ["message", "SOAP::SOAPString"],
      ["statusCode", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => SendEmailError,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "SendEmailError",
    :schema_element => [
      ["fields", "SOAP::SOAPString[]", [0, nil]],
      ["message", "SOAP::SOAPString"],
      ["statusCode", "SOAP::SOAPString"],
      ["targetObjectId", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => SaveResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "SaveResult",
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", "SOAP::SOAPString"],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => UpsertResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "UpsertResult",
    :schema_element => [
      ["created", "SOAP::SOAPBoolean"],
      ["errors", "Error[]", [0, nil]],
      ["id", "SOAP::SOAPString"],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => MergeRequest,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "MergeRequest",
    :schema_element => [
      ["masterRecord", "SObject"],
      ["recordToMergeIds", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MergeResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "MergeResult",
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", "SOAP::SOAPString"],
      ["mergedRecordIds", "SOAP::SOAPString[]", [0, nil]],
      ["success", "SOAP::SOAPBoolean"],
      ["updatedRelatedIds", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ProcessRequest,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "ProcessRequest",
    :schema_element => [
      ["comments", "SOAP::SOAPString"],
      ["nextApproverIds", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ProcessSubmitRequest,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "ProcessSubmitRequest",
    :schema_element => [
      ["comments", "SOAP::SOAPString"],
      ["nextApproverIds", "SOAP::SOAPString[]", [0, nil]],
      ["objectId", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => ProcessWorkitemRequest,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "ProcessWorkitemRequest",
    :schema_element => [
      ["comments", "SOAP::SOAPString"],
      ["nextApproverIds", "SOAP::SOAPString[]", [0, nil]],
      ["action", "SOAP::SOAPString"],
      ["workitemId", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => ProcessResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "ProcessResult",
    :schema_element => [
      ["actorIds", "SOAP::SOAPString[]", [0, nil]],
      ["entityId", "SOAP::SOAPString"],
      ["errors", "Error[]", [0, nil]],
      ["instanceId", "SOAP::SOAPString"],
      ["instanceStatus", "SOAP::SOAPString"],
      ["newWorkitemIds", "SOAP::SOAPString[]", [0, nil]],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => DeleteResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DeleteResult",
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", "SOAP::SOAPString"],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => UndeleteResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "UndeleteResult",
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", "SOAP::SOAPString"],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => EmptyRecycleBinResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "EmptyRecycleBinResult",
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", "SOAP::SOAPString"],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => LeadConvert,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "LeadConvert",
    :schema_element => [
      ["accountId", "SOAP::SOAPString"],
      ["contactId", "SOAP::SOAPString"],
      ["convertedStatus", "SOAP::SOAPString"],
      ["doNotCreateOpportunity", "SOAP::SOAPBoolean"],
      ["leadId", "SOAP::SOAPString"],
      ["opportunityName", "SOAP::SOAPString"],
      ["overwriteLeadSource", "SOAP::SOAPBoolean"],
      ["ownerId", "SOAP::SOAPString"],
      ["sendNotificationEmail", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => LeadConvertResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "LeadConvertResult",
    :schema_element => [
      ["accountId", "SOAP::SOAPString"],
      ["contactId", "SOAP::SOAPString"],
      ["errors", "Error[]", [0, nil]],
      ["leadId", "SOAP::SOAPString"],
      ["opportunityId", "SOAP::SOAPString"],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeSObjectResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeSObjectResult",
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
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeGlobalSObjectResult",
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
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "ChildRelationship",
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
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeGlobalResult",
    :schema_element => [
      ["encoding", "SOAP::SOAPString"],
      ["maxBatchSize", "SOAP::SOAPInt"],
      ["sobjects", "DescribeGlobalSObjectResult[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Field,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "Field",
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
      ["soapType", "SOAP::SOAPString"],
      ["sortable", "SOAP::SOAPBoolean", [0, 1]],
      ["type", "SOAP::SOAPString"],
      ["unique", "SOAP::SOAPBoolean"],
      ["updateable", "SOAP::SOAPBoolean"],
      ["writeRequiresMasterRead", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PicklistEntry,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "PicklistEntry",
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
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeDataCategoryGroupResult",
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
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeDataCategoryGroupStructureResult",
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
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DataCategoryGroupSobjectTypePair",
    :schema_element => [
      ["dataCategoryGroupName", "SOAP::SOAPString"],
      ["sobject", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DataCategory,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DataCategory",
    :schema_element => [
      ["childCategories", "DataCategory[]", [0, nil]],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeSoftphoneLayoutResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeSoftphoneLayoutResult",
    :schema_element => [
      ["callTypes", "DescribeSoftphoneLayoutCallType[]", [1, nil]],
      ["id", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeSoftphoneLayoutCallType,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeSoftphoneLayoutCallType",
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
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeSoftphoneScreenPopOption",
    :schema_element => [
      ["matchType", "SOAP::SOAPString"],
      ["screenPopData", "SOAP::SOAPString"],
      ["screenPopType", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeSoftphoneLayoutInfoField,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeSoftphoneLayoutInfoField",
    :schema_element => [
      ["name", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeSoftphoneLayoutSection,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeSoftphoneLayoutSection",
    :schema_element => [
      ["entityApiName", "SOAP::SOAPString"],
      ["items", "DescribeSoftphoneLayoutItem[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeSoftphoneLayoutItem,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeSoftphoneLayoutItem",
    :schema_element => [
      ["itemApiName", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeLayoutResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeLayoutResult",
    :schema_element => [
      ["layouts", "DescribeLayout[]", [1, nil]],
      ["recordTypeMappings", "RecordTypeMapping[]", [0, nil]],
      ["recordTypeSelectorRequired", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeLayout,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeLayout",
    :schema_element => [
      ["buttonLayoutSection", "DescribeLayoutButtonSection", [0, 1]],
      ["detailLayoutSections", "DescribeLayoutSection[]", [0, nil]],
      ["editLayoutSections", "DescribeLayoutSection[]", [0, nil]],
      ["id", "SOAP::SOAPString"],
      ["relatedLists", "RelatedList[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeLayoutSection,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeLayoutSection",
    :schema_element => [
      ["columns", "SOAP::SOAPInt"],
      ["heading", "SOAP::SOAPString"],
      ["layoutRows", "DescribeLayoutRow[]", [1, nil]],
      ["rows", "SOAP::SOAPInt"],
      ["useCollapsibleSection", "SOAP::SOAPBoolean"],
      ["useHeading", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.set(
    DescribeLayoutButtonSection,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("urn:partner.soap.sforce.com", "DescribeLayoutButton") }
  )

  EncodedRegistry.register(
    :class => DescribeLayoutRow,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeLayoutRow",
    :schema_element => [
      ["layoutItems", "DescribeLayoutItem[]", [1, nil]],
      ["numItems", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeLayoutItem,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeLayoutItem",
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
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeLayoutButton",
    :schema_element => [
      ["custom", "SOAP::SOAPBoolean"],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeLayoutComponent,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeLayoutComponent",
    :schema_element => [
      ["displayLines", "SOAP::SOAPInt"],
      ["tabOrder", "SOAP::SOAPInt"],
      ["type", "SOAP::SOAPString"],
      ["value", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => RecordTypeInfo,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "RecordTypeInfo",
    :schema_element => [
      ["available", "SOAP::SOAPBoolean"],
      ["defaultRecordTypeMapping", "SOAP::SOAPBoolean"],
      ["name", "SOAP::SOAPString"],
      ["recordTypeId", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => RecordTypeMapping,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "RecordTypeMapping",
    :schema_element => [
      ["available", "SOAP::SOAPBoolean"],
      ["defaultRecordTypeMapping", "SOAP::SOAPBoolean"],
      ["layoutId", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"],
      ["picklistsForRecordType", "PicklistForRecordType[]", [0, nil]],
      ["recordTypeId", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => PicklistForRecordType,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "PicklistForRecordType",
    :schema_element => [
      ["picklistName", "SOAP::SOAPString"],
      ["picklistValues", "PicklistEntry[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => RelatedList,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "RelatedList",
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
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "RelatedListColumn",
    :schema_element => [
      ["field", "SOAP::SOAPString"],
      ["format", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => RelatedListSort,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "RelatedListSort",
    :schema_element => [
      ["ascending", "SOAP::SOAPBoolean"],
      ["column", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => EmailFileAttachment,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "EmailFileAttachment",
    :schema_element => [
      ["body", "SOAP::SOAPBase64", [0, 1]],
      ["contentType", "SOAP::SOAPString", [0, 1]],
      ["fileName", "SOAP::SOAPString"],
      ["inline", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Email,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "Email",
    :schema_element => [
      ["bccSender", "SOAP::SOAPBoolean"],
      ["emailPriority", "SOAP::SOAPString"],
      ["replyTo", "SOAP::SOAPString"],
      ["saveAsActivity", "SOAP::SOAPBoolean"],
      ["senderDisplayName", "SOAP::SOAPString"],
      ["subject", "SOAP::SOAPString"],
      ["useSignature", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => MassEmailMessage,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "MassEmailMessage",
    :schema_element => [
      ["bccSender", "SOAP::SOAPBoolean"],
      ["emailPriority", "SOAP::SOAPString"],
      ["replyTo", "SOAP::SOAPString"],
      ["saveAsActivity", "SOAP::SOAPBoolean"],
      ["senderDisplayName", "SOAP::SOAPString"],
      ["subject", "SOAP::SOAPString"],
      ["useSignature", "SOAP::SOAPBoolean"],
      ["description", "SOAP::SOAPString"],
      ["targetObjectIds", "SOAP::SOAPString[]", [0, 250]],
      ["templateId", "SOAP::SOAPString"],
      ["whatIds", "SOAP::SOAPString[]", [0, 250]]
    ]
  )

  EncodedRegistry.register(
    :class => SingleEmailMessage,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "SingleEmailMessage",
    :schema_element => [
      ["bccSender", "SOAP::SOAPBoolean"],
      ["emailPriority", "SOAP::SOAPString"],
      ["replyTo", "SOAP::SOAPString"],
      ["saveAsActivity", "SOAP::SOAPBoolean"],
      ["senderDisplayName", "SOAP::SOAPString"],
      ["subject", "SOAP::SOAPString"],
      ["useSignature", "SOAP::SOAPBoolean"],
      ["bccAddresses", "SOAP::SOAPString[]", [0, 25]],
      ["ccAddresses", "SOAP::SOAPString[]", [0, 25]],
      ["charset", "SOAP::SOAPString"],
      ["documentAttachments", "SOAP::SOAPString[]", [0, nil]],
      ["htmlBody", "SOAP::SOAPString"],
      ["inReplyTo", "SOAP::SOAPString", [0, 1]],
      ["fileAttachments", "EmailFileAttachment[]", [0, nil]],
      ["orgWideEmailAddressId", "SOAP::SOAPString", [0, 1]],
      ["plainTextBody", "SOAP::SOAPString"],
      ["references", "SOAP::SOAPString", [0, 1]],
      ["targetObjectId", "SOAP::SOAPString"],
      ["templateId", "SOAP::SOAPString"],
      ["toAddresses", "SOAP::SOAPString[]", [0, 100]],
      ["whatId", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => SendEmailResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "SendEmailResult",
    :schema_element => [
      ["errors", "SendEmailError[]", [0, nil]],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeTabSetResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeTabSetResult",
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
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeTab",
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
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "PackageVersion",
    :schema_element => [
      ["majorNumber", "SOAP::SOAPInt"],
      ["minorNumber", "SOAP::SOAPInt"],
      ["namespace", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => ApiFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "ApiFault",
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => ApiQueryFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "ApiQueryFault",
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => LoginFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "LoginFault",
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidQueryLocatorFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "InvalidQueryLocatorFault",
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidNewPasswordFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "InvalidNewPasswordFault",
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidIdFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "InvalidIdFault",
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => UnexpectedErrorFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "UnexpectedErrorFault",
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidFieldFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "InvalidFieldFault",
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidSObjectFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "InvalidSObjectFault",
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => MalformedQueryFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "MalformedQueryFault",
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => MalformedSearchFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "MalformedSearchFault",
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => StatusCode,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "StatusCode"
  )

  EncodedRegistry.register(
    :class => FieldType,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "fieldType"
  )

  EncodedRegistry.register(
    :class => SoapType,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "soapType"
  )

  EncodedRegistry.register(
    :class => LayoutComponentType,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "layoutComponentType"
  )

  EncodedRegistry.register(
    :class => EmailPriority,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "EmailPriority"
  )

  EncodedRegistry.register(
    :class => DebugLevel,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DebugLevel"
  )

  EncodedRegistry.register(
    :class => ExceptionCode,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "ExceptionCode"
  )

  EncodedRegistry.register(
    :class => FaultCode,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "FaultCode"
  )

  LiteralRegistry.register(
    :class => SObject,
    :schema_ns => "urn:sobject.partner.soap.sforce.com",
    :schema_type => "sObject",
    :schema_qualified => false,
    :schema_element => [
      ["type", "SOAP::SOAPString"],
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", ["SOAP::SOAPString", XSD::QName.new("urn:sobject.partner.soap.sforce.com", "Id")]],
      ["any", [nil, XSD::QName.new("http://www.w3.org/2001/XMLSchema", "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => QueryResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "QueryResult",
    :schema_qualified => false,
    :schema_element => [
      ["done", "SOAP::SOAPBoolean"],
      ["queryLocator", "SOAP::SOAPString"],
      ["records", "SObject[]", [0, nil]],
      ["size", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => SearchResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "SearchResult",
    :schema_qualified => false,
    :schema_element => [
      ["searchRecords", "SearchRecord[]", [0, nil]],
      ["sforceReserved", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchRecord,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "SearchRecord",
    :schema_qualified => false,
    :schema_element => [
      ["record", "SObject"]
    ]
  )

  LiteralRegistry.register(
    :class => GetUpdatedResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "GetUpdatedResult",
    :schema_qualified => false,
    :schema_element => [
      ["ids", "SOAP::SOAPString[]", [0, nil]],
      ["latestDateCovered", "SOAP::SOAPDateTime"],
      ["sforceReserved", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDeletedResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "GetDeletedResult",
    :schema_qualified => false,
    :schema_element => [
      ["deletedRecords", "DeletedRecord[]", [0, nil]],
      ["earliestDateAvailable", "SOAP::SOAPDateTime"],
      ["latestDateCovered", "SOAP::SOAPDateTime"],
      ["sforceReserved", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeletedRecord,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DeletedRecord",
    :schema_qualified => false,
    :schema_element => [
      ["deletedDate", "SOAP::SOAPDateTime"],
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => GetServerTimestampResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "GetServerTimestampResult",
    :schema_qualified => false,
    :schema_element => [
      ["timestamp", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidateSessionsResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "InvalidateSessionsResult",
    :schema_qualified => false,
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SetPasswordResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "SetPasswordResult",
    :schema_qualified => false,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ResetPasswordResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "ResetPasswordResult",
    :schema_qualified => false,
    :schema_element => [
      ["password", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => GetUserInfoResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "GetUserInfoResult",
    :schema_qualified => false,
    :schema_element => [
      ["accessibilityMode", "SOAP::SOAPBoolean"],
      ["currencySymbol", "SOAP::SOAPString"],
      ["orgDefaultCurrencyIsoCode", "SOAP::SOAPString"],
      ["orgDisallowHtmlAttachments", "SOAP::SOAPBoolean"],
      ["orgHasPersonAccounts", "SOAP::SOAPBoolean"],
      ["organizationId", "SOAP::SOAPString"],
      ["organizationMultiCurrency", "SOAP::SOAPBoolean"],
      ["organizationName", "SOAP::SOAPString"],
      ["profileId", "SOAP::SOAPString"],
      ["roleId", "SOAP::SOAPString"],
      ["userDefaultCurrencyIsoCode", "SOAP::SOAPString"],
      ["userEmail", "SOAP::SOAPString"],
      ["userFullName", "SOAP::SOAPString"],
      ["userId", "SOAP::SOAPString"],
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
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "LoginResult",
    :schema_qualified => false,
    :schema_element => [
      ["metadataServerUrl", "SOAP::SOAPString"],
      ["passwordExpired", "SOAP::SOAPBoolean"],
      ["sandbox", "SOAP::SOAPBoolean"],
      ["serverUrl", "SOAP::SOAPString"],
      ["sessionId", "SOAP::SOAPString"],
      ["userId", "SOAP::SOAPString"],
      ["userInfo", "GetUserInfoResult", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Error,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "Error",
    :schema_qualified => false,
    :schema_element => [
      ["fields", "SOAP::SOAPString[]", [0, nil]],
      ["message", "SOAP::SOAPString"],
      ["statusCode", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SendEmailError,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "SendEmailError",
    :schema_qualified => false,
    :schema_element => [
      ["fields", "SOAP::SOAPString[]", [0, nil]],
      ["message", "SOAP::SOAPString"],
      ["statusCode", "SOAP::SOAPString"],
      ["targetObjectId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SaveResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "SaveResult",
    :schema_qualified => false,
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", "SOAP::SOAPString"],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => UpsertResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "UpsertResult",
    :schema_qualified => false,
    :schema_element => [
      ["created", "SOAP::SOAPBoolean"],
      ["errors", "Error[]", [0, nil]],
      ["id", "SOAP::SOAPString"],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => MergeRequest,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "MergeRequest",
    :schema_qualified => false,
    :schema_element => [
      ["masterRecord", "SObject"],
      ["recordToMergeIds", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MergeResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "MergeResult",
    :schema_qualified => false,
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", "SOAP::SOAPString"],
      ["mergedRecordIds", "SOAP::SOAPString[]", [0, nil]],
      ["success", "SOAP::SOAPBoolean"],
      ["updatedRelatedIds", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessRequest,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "ProcessRequest",
    :schema_qualified => false,
    :schema_element => [
      ["comments", "SOAP::SOAPString"],
      ["nextApproverIds", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessSubmitRequest,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "ProcessSubmitRequest",
    :schema_qualified => false,
    :schema_element => [
      ["comments", "SOAP::SOAPString"],
      ["nextApproverIds", "SOAP::SOAPString[]", [0, nil]],
      ["objectId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessWorkitemRequest,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "ProcessWorkitemRequest",
    :schema_qualified => false,
    :schema_element => [
      ["comments", "SOAP::SOAPString"],
      ["nextApproverIds", "SOAP::SOAPString[]", [0, nil]],
      ["action", "SOAP::SOAPString"],
      ["workitemId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "ProcessResult",
    :schema_qualified => false,
    :schema_element => [
      ["actorIds", "SOAP::SOAPString[]", [0, nil]],
      ["entityId", "SOAP::SOAPString"],
      ["errors", "Error[]", [0, nil]],
      ["instanceId", "SOAP::SOAPString"],
      ["instanceStatus", "SOAP::SOAPString"],
      ["newWorkitemIds", "SOAP::SOAPString[]", [0, nil]],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DeleteResult",
    :schema_qualified => false,
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", "SOAP::SOAPString"],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => UndeleteResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "UndeleteResult",
    :schema_qualified => false,
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", "SOAP::SOAPString"],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => EmptyRecycleBinResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "EmptyRecycleBinResult",
    :schema_qualified => false,
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", "SOAP::SOAPString"],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => LeadConvert,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "LeadConvert",
    :schema_qualified => false,
    :schema_element => [
      ["accountId", "SOAP::SOAPString"],
      ["contactId", "SOAP::SOAPString"],
      ["convertedStatus", "SOAP::SOAPString"],
      ["doNotCreateOpportunity", "SOAP::SOAPBoolean"],
      ["leadId", "SOAP::SOAPString"],
      ["opportunityName", "SOAP::SOAPString"],
      ["overwriteLeadSource", "SOAP::SOAPBoolean"],
      ["ownerId", "SOAP::SOAPString"],
      ["sendNotificationEmail", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => LeadConvertResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "LeadConvertResult",
    :schema_qualified => false,
    :schema_element => [
      ["accountId", "SOAP::SOAPString"],
      ["contactId", "SOAP::SOAPString"],
      ["errors", "Error[]", [0, nil]],
      ["leadId", "SOAP::SOAPString"],
      ["opportunityId", "SOAP::SOAPString"],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSObjectResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeSObjectResult",
    :schema_qualified => false,
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
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeGlobalSObjectResult",
    :schema_qualified => false,
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
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "ChildRelationship",
    :schema_qualified => false,
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
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeGlobalResult",
    :schema_qualified => false,
    :schema_element => [
      ["encoding", "SOAP::SOAPString"],
      ["maxBatchSize", "SOAP::SOAPInt"],
      ["sobjects", "DescribeGlobalSObjectResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Field,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "Field",
    :schema_qualified => false,
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
      ["soapType", "SOAP::SOAPString"],
      ["sortable", "SOAP::SOAPBoolean", [0, 1]],
      ["type", "SOAP::SOAPString"],
      ["unique", "SOAP::SOAPBoolean"],
      ["updateable", "SOAP::SOAPBoolean"],
      ["writeRequiresMasterRead", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PicklistEntry,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "PicklistEntry",
    :schema_qualified => false,
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
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeDataCategoryGroupResult",
    :schema_qualified => false,
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
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeDataCategoryGroupStructureResult",
    :schema_qualified => false,
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
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DataCategoryGroupSobjectTypePair",
    :schema_qualified => false,
    :schema_element => [
      ["dataCategoryGroupName", "SOAP::SOAPString"],
      ["sobject", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DataCategory,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DataCategory",
    :schema_qualified => false,
    :schema_element => [
      ["childCategories", "DataCategory[]", [0, nil]],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSoftphoneLayoutResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeSoftphoneLayoutResult",
    :schema_qualified => false,
    :schema_element => [
      ["callTypes", "DescribeSoftphoneLayoutCallType[]", [1, nil]],
      ["id", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSoftphoneLayoutCallType,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeSoftphoneLayoutCallType",
    :schema_qualified => false,
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
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeSoftphoneScreenPopOption",
    :schema_qualified => false,
    :schema_element => [
      ["matchType", "SOAP::SOAPString"],
      ["screenPopData", "SOAP::SOAPString"],
      ["screenPopType", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSoftphoneLayoutInfoField,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeSoftphoneLayoutInfoField",
    :schema_qualified => false,
    :schema_element => [
      ["name", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSoftphoneLayoutSection,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeSoftphoneLayoutSection",
    :schema_qualified => false,
    :schema_element => [
      ["entityApiName", "SOAP::SOAPString"],
      ["items", "DescribeSoftphoneLayoutItem[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSoftphoneLayoutItem,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeSoftphoneLayoutItem",
    :schema_qualified => false,
    :schema_element => [
      ["itemApiName", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayoutResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeLayoutResult",
    :schema_qualified => false,
    :schema_element => [
      ["layouts", "DescribeLayout[]", [1, nil]],
      ["recordTypeMappings", "RecordTypeMapping[]", [0, nil]],
      ["recordTypeSelectorRequired", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayout,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeLayout",
    :schema_qualified => false,
    :schema_element => [
      ["buttonLayoutSection", "DescribeLayoutButtonSection", [0, 1]],
      ["detailLayoutSections", "DescribeLayoutSection[]", [0, nil]],
      ["editLayoutSections", "DescribeLayoutSection[]", [0, nil]],
      ["id", "SOAP::SOAPString"],
      ["relatedLists", "RelatedList[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayoutSection,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeLayoutSection",
    :schema_qualified => false,
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
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeLayoutButtonSection",
    :schema_element => [
      ["detailButtons", ["DescribeLayoutButton[]", XSD::QName.new("urn:partner.soap.sforce.com", "detailButtons")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayoutRow,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeLayoutRow",
    :schema_qualified => false,
    :schema_element => [
      ["layoutItems", "DescribeLayoutItem[]", [1, nil]],
      ["numItems", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayoutItem,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeLayoutItem",
    :schema_qualified => false,
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
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeLayoutButton",
    :schema_qualified => false,
    :schema_element => [
      ["custom", "SOAP::SOAPBoolean"],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayoutComponent,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeLayoutComponent",
    :schema_qualified => false,
    :schema_element => [
      ["displayLines", "SOAP::SOAPInt"],
      ["tabOrder", "SOAP::SOAPInt"],
      ["type", "SOAP::SOAPString"],
      ["value", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RecordTypeInfo,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "RecordTypeInfo",
    :schema_qualified => false,
    :schema_element => [
      ["available", "SOAP::SOAPBoolean"],
      ["defaultRecordTypeMapping", "SOAP::SOAPBoolean"],
      ["name", "SOAP::SOAPString"],
      ["recordTypeId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RecordTypeMapping,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "RecordTypeMapping",
    :schema_qualified => false,
    :schema_element => [
      ["available", "SOAP::SOAPBoolean"],
      ["defaultRecordTypeMapping", "SOAP::SOAPBoolean"],
      ["layoutId", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"],
      ["picklistsForRecordType", "PicklistForRecordType[]", [0, nil]],
      ["recordTypeId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => PicklistForRecordType,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "PicklistForRecordType",
    :schema_qualified => false,
    :schema_element => [
      ["picklistName", "SOAP::SOAPString"],
      ["picklistValues", "PicklistEntry[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => RelatedList,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "RelatedList",
    :schema_qualified => false,
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
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "RelatedListColumn",
    :schema_qualified => false,
    :schema_element => [
      ["field", "SOAP::SOAPString"],
      ["format", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RelatedListSort,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "RelatedListSort",
    :schema_qualified => false,
    :schema_element => [
      ["ascending", "SOAP::SOAPBoolean"],
      ["column", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => EmailFileAttachment,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "EmailFileAttachment",
    :schema_qualified => false,
    :schema_element => [
      ["body", "SOAP::SOAPBase64", [0, 1]],
      ["contentType", "SOAP::SOAPString", [0, 1]],
      ["fileName", "SOAP::SOAPString"],
      ["inline", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Email,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "Email",
    :schema_qualified => false,
    :schema_element => [
      ["bccSender", "SOAP::SOAPBoolean"],
      ["emailPriority", "SOAP::SOAPString"],
      ["replyTo", "SOAP::SOAPString"],
      ["saveAsActivity", "SOAP::SOAPBoolean"],
      ["senderDisplayName", "SOAP::SOAPString"],
      ["subject", "SOAP::SOAPString"],
      ["useSignature", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => MassEmailMessage,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "MassEmailMessage",
    :schema_qualified => false,
    :schema_element => [
      ["bccSender", "SOAP::SOAPBoolean"],
      ["emailPriority", "SOAP::SOAPString"],
      ["replyTo", "SOAP::SOAPString"],
      ["saveAsActivity", "SOAP::SOAPBoolean"],
      ["senderDisplayName", "SOAP::SOAPString"],
      ["subject", "SOAP::SOAPString"],
      ["useSignature", "SOAP::SOAPBoolean"],
      ["description", "SOAP::SOAPString"],
      ["targetObjectIds", "SOAP::SOAPString[]", [0, 250]],
      ["templateId", "SOAP::SOAPString"],
      ["whatIds", "SOAP::SOAPString[]", [0, 250]]
    ]
  )

  LiteralRegistry.register(
    :class => SingleEmailMessage,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "SingleEmailMessage",
    :schema_qualified => false,
    :schema_element => [
      ["bccSender", "SOAP::SOAPBoolean"],
      ["emailPriority", "SOAP::SOAPString"],
      ["replyTo", "SOAP::SOAPString"],
      ["saveAsActivity", "SOAP::SOAPBoolean"],
      ["senderDisplayName", "SOAP::SOAPString"],
      ["subject", "SOAP::SOAPString"],
      ["useSignature", "SOAP::SOAPBoolean"],
      ["bccAddresses", "SOAP::SOAPString[]", [0, 25]],
      ["ccAddresses", "SOAP::SOAPString[]", [0, 25]],
      ["charset", "SOAP::SOAPString"],
      ["documentAttachments", "SOAP::SOAPString[]", [0, nil]],
      ["htmlBody", "SOAP::SOAPString"],
      ["inReplyTo", "SOAP::SOAPString", [0, 1]],
      ["fileAttachments", "EmailFileAttachment[]", [0, nil]],
      ["orgWideEmailAddressId", "SOAP::SOAPString", [0, 1]],
      ["plainTextBody", "SOAP::SOAPString"],
      ["references", "SOAP::SOAPString", [0, 1]],
      ["targetObjectId", "SOAP::SOAPString"],
      ["templateId", "SOAP::SOAPString"],
      ["toAddresses", "SOAP::SOAPString[]", [0, 100]],
      ["whatId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SendEmailResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "SendEmailResult",
    :schema_qualified => false,
    :schema_element => [
      ["errors", "SendEmailError[]", [0, nil]],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeTabSetResult,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeTabSetResult",
    :schema_qualified => false,
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
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DescribeTab",
    :schema_qualified => false,
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
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "PackageVersion",
    :schema_qualified => false,
    :schema_element => [
      ["majorNumber", "SOAP::SOAPInt"],
      ["minorNumber", "SOAP::SOAPInt"],
      ["namespace", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ApiFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "ApiFault",
    :schema_qualified => false,
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ApiQueryFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "ApiQueryFault",
    :schema_qualified => false,
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => LoginFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "LoginFault",
    :schema_qualified => false,
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidQueryLocatorFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "InvalidQueryLocatorFault",
    :schema_qualified => false,
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidNewPasswordFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "InvalidNewPasswordFault",
    :schema_qualified => false,
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidIdFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "InvalidIdFault",
    :schema_qualified => false,
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => UnexpectedErrorFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "UnexpectedErrorFault",
    :schema_qualified => false,
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidFieldFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "InvalidFieldFault",
    :schema_qualified => false,
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidSObjectFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "InvalidSObjectFault",
    :schema_qualified => false,
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => MalformedQueryFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "MalformedQueryFault",
    :schema_qualified => false,
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => MalformedSearchFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "MalformedSearchFault",
    :schema_qualified => false,
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => StatusCode,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "StatusCode"
  )

  LiteralRegistry.register(
    :class => FieldType,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "fieldType"
  )

  LiteralRegistry.register(
    :class => SoapType,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "soapType"
  )

  LiteralRegistry.register(
    :class => LayoutComponentType,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "layoutComponentType"
  )

  LiteralRegistry.register(
    :class => EmailPriority,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "EmailPriority"
  )

  LiteralRegistry.register(
    :class => DebugLevel,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_type => "DebugLevel"
  )

  LiteralRegistry.register(
    :class => ExceptionCode,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "ExceptionCode"
  )

  LiteralRegistry.register(
    :class => FaultCode,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_type => "FaultCode"
  )

  LiteralRegistry.register(
    :class => Login,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "login",
    :schema_qualified => true,
    :schema_element => [
      ["username", "SOAP::SOAPString"],
      ["password", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LoginResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "loginResponse",
    :schema_qualified => true,
    :schema_element => [
      ["result", "LoginResult"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSObject,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "describeSObject",
    :schema_qualified => true,
    :schema_element => [
      ["sObjectType", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSObjectResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "describeSObjectResponse",
    :schema_qualified => true,
    :schema_element => [
      ["result", "DescribeSObjectResult"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSObjects,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "describeSObjects",
    :schema_element => [
      ["sObjectType", ["SOAP::SOAPString[]", XSD::QName.new("urn:partner.soap.sforce.com", "sObjectType")], [0, 100]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSObjectsResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "describeSObjectsResponse",
    :schema_element => [
      ["result", ["DescribeSObjectResult[]", XSD::QName.new("urn:partner.soap.sforce.com", "result")], [0, 100]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeGlobal,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "describeGlobal",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => DescribeGlobalResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "describeGlobalResponse",
    :schema_qualified => true,
    :schema_element => [
      ["result", "DescribeGlobalResult"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeDataCategoryGroups,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "describeDataCategoryGroups",
    :schema_element => [
      ["sObjectType", ["SOAP::SOAPString[]", XSD::QName.new("urn:partner.soap.sforce.com", "sObjectType")], [0, 10]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeDataCategoryGroupsResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "describeDataCategoryGroupsResponse",
    :schema_element => [
      ["result", ["DescribeDataCategoryGroupResult[]", XSD::QName.new("urn:partner.soap.sforce.com", "result")], [0, 100]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeDataCategoryGroupStructures,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "describeDataCategoryGroupStructures",
    :schema_qualified => true,
    :schema_element => [
      ["pairs", "DataCategoryGroupSobjectTypePair[]", [0, 100]],
      ["topCategoriesOnly", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeDataCategoryGroupStructuresResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "describeDataCategoryGroupStructuresResponse",
    :schema_element => [
      ["result", ["DescribeDataCategoryGroupStructureResult[]", XSD::QName.new("urn:partner.soap.sforce.com", "result")], [0, 100]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayout,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "describeLayout",
    :schema_qualified => true,
    :schema_element => [
      ["sObjectType", "SOAP::SOAPString"],
      ["recordTypeIds", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayoutResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "describeLayoutResponse",
    :schema_qualified => true,
    :schema_element => [
      ["result", "DescribeLayoutResult"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSoftphoneLayout,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "describeSoftphoneLayout",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => DescribeSoftphoneLayoutResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "describeSoftphoneLayoutResponse",
    :schema_qualified => true,
    :schema_element => [
      ["result", "DescribeSoftphoneLayoutResult"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeTabs,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "describeTabs",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => DescribeTabsResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "describeTabsResponse",
    :schema_element => [
      ["result", ["DescribeTabSetResult[]", XSD::QName.new("urn:partner.soap.sforce.com", "result")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Create,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "create",
    :schema_element => [
      ["sObjects", ["SObject[]", XSD::QName.new("urn:partner.soap.sforce.com", "sObjects")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "createResponse",
    :schema_element => [
      ["result", ["SaveResult[]", XSD::QName.new("urn:partner.soap.sforce.com", "result")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SendEmail,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "sendEmail",
    :schema_element => [
      ["messages", ["Email[]", XSD::QName.new("urn:partner.soap.sforce.com", "messages")], [0, 10]]
    ]
  )

  LiteralRegistry.register(
    :class => SendEmailResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "sendEmailResponse",
    :schema_element => [
      ["result", ["SendEmailResult[]", XSD::QName.new("urn:partner.soap.sforce.com", "result")], [0, 10]]
    ]
  )

  LiteralRegistry.register(
    :class => Update,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "update",
    :schema_element => [
      ["sObjects", ["SObject[]", XSD::QName.new("urn:partner.soap.sforce.com", "sObjects")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "updateResponse",
    :schema_element => [
      ["result", ["SaveResult[]", XSD::QName.new("urn:partner.soap.sforce.com", "result")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Upsert,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "upsert",
    :schema_qualified => true,
    :schema_element => [
      ["externalIDFieldName", "SOAP::SOAPString"],
      ["sObjects", "SObject[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => UpsertResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "upsertResponse",
    :schema_element => [
      ["result", ["UpsertResult[]", XSD::QName.new("urn:partner.soap.sforce.com", "result")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Merge,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "merge",
    :schema_element => [
      ["request", ["MergeRequest[]", XSD::QName.new("urn:partner.soap.sforce.com", "request")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MergeResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "mergeResponse",
    :schema_element => [
      ["result", ["MergeResult[]", XSD::QName.new("urn:partner.soap.sforce.com", "result")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Delete,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "delete",
    :schema_element => [
      ["ids", ["SOAP::SOAPString[]", XSD::QName.new("urn:partner.soap.sforce.com", "ids")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "deleteResponse",
    :schema_element => [
      ["result", ["DeleteResult[]", XSD::QName.new("urn:partner.soap.sforce.com", "result")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Undelete,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "undelete",
    :schema_element => [
      ["ids", ["SOAP::SOAPString[]", XSD::QName.new("urn:partner.soap.sforce.com", "ids")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => UndeleteResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "undeleteResponse",
    :schema_element => [
      ["result", ["UndeleteResult[]", XSD::QName.new("urn:partner.soap.sforce.com", "result")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => EmptyRecycleBin,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "emptyRecycleBin",
    :schema_element => [
      ["ids", ["SOAP::SOAPString[]", XSD::QName.new("urn:partner.soap.sforce.com", "ids")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => EmptyRecycleBinResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "emptyRecycleBinResponse",
    :schema_element => [
      ["result", ["EmptyRecycleBinResult[]", XSD::QName.new("urn:partner.soap.sforce.com", "result")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => C_Process,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "process",
    :schema_element => [
      ["actions", ["ProcessRequest[]", XSD::QName.new("urn:partner.soap.sforce.com", "actions")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "processResponse",
    :schema_element => [
      ["result", ["ProcessResult[]", XSD::QName.new("urn:partner.soap.sforce.com", "result")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Retrieve,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "retrieve",
    :schema_qualified => true,
    :schema_element => [
      ["fieldList", "SOAP::SOAPString"],
      ["sObjectType", "SOAP::SOAPString"],
      ["ids", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => RetrieveResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "retrieveResponse",
    :schema_element => [
      ["result", ["SObject[]", XSD::QName.new("urn:partner.soap.sforce.com", "result")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ConvertLead,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "convertLead",
    :schema_element => [
      ["leadConverts", ["LeadConvert[]", XSD::QName.new("urn:partner.soap.sforce.com", "leadConverts")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ConvertLeadResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "convertLeadResponse",
    :schema_element => [
      ["result", ["LeadConvertResult[]", XSD::QName.new("urn:partner.soap.sforce.com", "result")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetUpdated,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "getUpdated",
    :schema_qualified => true,
    :schema_element => [
      ["sObjectType", "SOAP::SOAPString"],
      ["startDate", "SOAP::SOAPDateTime"],
      ["endDate", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => GetUpdatedResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "getUpdatedResponse",
    :schema_qualified => true,
    :schema_element => [
      ["result", "GetUpdatedResult"]
    ]
  )

  LiteralRegistry.register(
    :class => GetDeleted,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "getDeleted",
    :schema_qualified => true,
    :schema_element => [
      ["sObjectType", "SOAP::SOAPString"],
      ["startDate", "SOAP::SOAPDateTime"],
      ["endDate", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => GetDeletedResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "getDeletedResponse",
    :schema_qualified => true,
    :schema_element => [
      ["result", "GetDeletedResult"]
    ]
  )

  LiteralRegistry.register(
    :class => Logout,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "logout",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => LogoutResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "logoutResponse",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => InvalidateSessions,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "invalidateSessions",
    :schema_element => [
      ["sessionIds", ["SOAP::SOAPString[]", XSD::QName.new("urn:partner.soap.sforce.com", "sessionIds")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidateSessionsResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "invalidateSessionsResponse",
    :schema_element => [
      ["result", ["InvalidateSessionsResult[]", XSD::QName.new("urn:partner.soap.sforce.com", "result")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Query,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "query",
    :schema_qualified => true,
    :schema_element => [
      ["queryString", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => QueryResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "queryResponse",
    :schema_qualified => true,
    :schema_element => [
      ["result", "QueryResult"]
    ]
  )

  LiteralRegistry.register(
    :class => QueryAll,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "queryAll",
    :schema_qualified => true,
    :schema_element => [
      ["queryString", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => QueryAllResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "queryAllResponse",
    :schema_qualified => true,
    :schema_element => [
      ["result", "QueryResult"]
    ]
  )

  LiteralRegistry.register(
    :class => QueryMore,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "queryMore",
    :schema_qualified => true,
    :schema_element => [
      ["queryLocator", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => QueryMoreResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "queryMoreResponse",
    :schema_qualified => true,
    :schema_element => [
      ["result", "QueryResult"]
    ]
  )

  LiteralRegistry.register(
    :class => Search,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "search",
    :schema_qualified => true,
    :schema_element => [
      ["searchString", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SearchResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "searchResponse",
    :schema_qualified => true,
    :schema_element => [
      ["result", "SearchResult"]
    ]
  )

  LiteralRegistry.register(
    :class => GetServerTimestamp,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "getServerTimestamp",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetServerTimestampResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "getServerTimestampResponse",
    :schema_qualified => true,
    :schema_element => [
      ["result", "GetServerTimestampResult"]
    ]
  )

  LiteralRegistry.register(
    :class => SetPassword,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "setPassword",
    :schema_qualified => true,
    :schema_element => [
      ["userId", "SOAP::SOAPString"],
      ["password", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SetPasswordResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "setPasswordResponse",
    :schema_qualified => true,
    :schema_element => [
      ["result", "SetPasswordResult"]
    ]
  )

  LiteralRegistry.register(
    :class => ResetPassword,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "resetPassword",
    :schema_qualified => true,
    :schema_element => [
      ["userId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ResetPasswordResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "resetPasswordResponse",
    :schema_qualified => true,
    :schema_element => [
      ["result", "ResetPasswordResult"]
    ]
  )

  LiteralRegistry.register(
    :class => GetUserInfo,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "getUserInfo",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetUserInfoResponse,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "getUserInfoResponse",
    :schema_qualified => true,
    :schema_element => [
      ["result", "GetUserInfoResult"]
    ]
  )

  LiteralRegistry.register(
    :class => SessionHeader,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "SessionHeader",
    :schema_qualified => true,
    :schema_element => [
      ["sessionId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LoginScopeHeader,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "LoginScopeHeader",
    :schema_qualified => true,
    :schema_element => [
      ["organizationId", "SOAP::SOAPString"],
      ["portalId", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CallOptions,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "CallOptions",
    :schema_qualified => true,
    :schema_element => [
      ["client", "SOAP::SOAPString"],
      ["defaultNamespace", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => QueryOptions,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "QueryOptions",
    :schema_qualified => true,
    :schema_element => [
      ["batchSize", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DebuggingHeader,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "DebuggingHeader",
    :schema_qualified => true,
    :schema_element => [
      ["debugLevel", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DebuggingInfo,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "DebuggingInfo",
    :schema_qualified => true,
    :schema_element => [
      ["debugLog", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => PackageVersionHeader,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "PackageVersionHeader",
    :schema_element => [
      ["packageVersions", ["PackageVersion[]", XSD::QName.new("urn:partner.soap.sforce.com", "packageVersions")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AllowFieldTruncationHeader,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "AllowFieldTruncationHeader",
    :schema_qualified => true,
    :schema_element => [
      ["allowFieldTruncation", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DisableFeedTrackingHeader,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "DisableFeedTrackingHeader",
    :schema_qualified => true,
    :schema_element => [
      ["disableFeedTracking", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => AllOrNoneHeader,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "AllOrNoneHeader",
    :schema_qualified => true,
    :schema_element => [
      ["allOrNone", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => MruHeader,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "MruHeader",
    :schema_qualified => true,
    :schema_element => [
      ["updateMru", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => EmailHeader,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "EmailHeader",
    :schema_qualified => true,
    :schema_element => [
      ["triggerAutoResponseEmail", "SOAP::SOAPBoolean"],
      ["triggerOtherEmail", "SOAP::SOAPBoolean"],
      ["triggerUserEmail", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => AssignmentRuleHeader,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "AssignmentRuleHeader",
    :schema_qualified => true,
    :schema_element => [
      ["assignmentRuleId", "SOAP::SOAPString"],
      ["useDefaultRule", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => UserTerritoryDeleteHeader,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "UserTerritoryDeleteHeader",
    :schema_qualified => true,
    :schema_element => [
      ["transferToUserId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LocaleOptions,
    :schema_ns => "urn:partner.soap.sforce.com",
    :schema_name => "LocaleOptions",
    :schema_qualified => true,
    :schema_element => [
      ["language", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_name => "fault",
    :schema_qualified => true,
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LoginFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_name => "LoginFault",
    :schema_qualified => true,
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidQueryLocatorFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_name => "InvalidQueryLocatorFault",
    :schema_qualified => true,
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidNewPasswordFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_name => "InvalidNewPasswordFault",
    :schema_qualified => true,
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidIdFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_name => "InvalidIdFault",
    :schema_qualified => true,
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => UnexpectedErrorFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_name => "UnexpectedErrorFault",
    :schema_qualified => true,
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidFieldFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_name => "InvalidFieldFault",
    :schema_qualified => true,
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidSObjectFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_name => "InvalidSObjectFault",
    :schema_qualified => true,
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => MalformedQueryFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_name => "MalformedQueryFault",
    :schema_qualified => true,
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => MalformedSearchFault,
    :schema_ns => "urn:fault.partner.soap.sforce.com",
    :schema_name => "MalformedSearchFault",
    :schema_qualified => true,
    :schema_element => [
      ["exceptionCode", "SOAP::SOAPString"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )
end
