require 'xsd/qname'

# {urn:sobject.partner.soap.sforce.com}sObject
class SObject
  attr_accessor :type
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(type = nil, fieldsToNull = [], id = nil)
    @type = type
    @fieldsToNull = fieldsToNull
    @id = id
    @__xmlele_any = nil
  end
end

# {urn:partner.soap.sforce.com}QueryResult
class QueryResult
  attr_accessor :done
  attr_accessor :queryLocator
  attr_accessor :records
  attr_accessor :size

  def initialize(done = nil, queryLocator = nil, records = [], size = nil)
    @done = done
    @queryLocator = queryLocator
    @records = records
    @size = size
  end
end

# {urn:partner.soap.sforce.com}SearchResult
class SearchResult
  attr_accessor :searchRecords
  attr_accessor :sforceReserved

  def initialize(searchRecords = [], sforceReserved = nil)
    @searchRecords = searchRecords
    @sforceReserved = sforceReserved
  end
end

# {urn:partner.soap.sforce.com}SearchRecord
class SearchRecord
  attr_accessor :record

  def initialize(record = nil)
    @record = record
  end
end

# {urn:partner.soap.sforce.com}GetUpdatedResult
class GetUpdatedResult
  attr_accessor :ids
  attr_accessor :latestDateCovered
  attr_accessor :sforceReserved

  def initialize(ids = [], latestDateCovered = nil, sforceReserved = nil)
    @ids = ids
    @latestDateCovered = latestDateCovered
    @sforceReserved = sforceReserved
  end
end

# {urn:partner.soap.sforce.com}GetDeletedResult
class GetDeletedResult
  attr_accessor :deletedRecords
  attr_accessor :earliestDateAvailable
  attr_accessor :latestDateCovered
  attr_accessor :sforceReserved

  def initialize(deletedRecords = [], earliestDateAvailable = nil, latestDateCovered = nil, sforceReserved = nil)
    @deletedRecords = deletedRecords
    @earliestDateAvailable = earliestDateAvailable
    @latestDateCovered = latestDateCovered
    @sforceReserved = sforceReserved
  end
end

# {urn:partner.soap.sforce.com}DeletedRecord
class DeletedRecord
  attr_accessor :deletedDate
  attr_accessor :id

  def initialize(deletedDate = nil, id = nil)
    @deletedDate = deletedDate
    @id = id
  end
end

# {urn:partner.soap.sforce.com}GetServerTimestampResult
class GetServerTimestampResult
  attr_accessor :timestamp

  def initialize(timestamp = nil)
    @timestamp = timestamp
  end
end

# {urn:partner.soap.sforce.com}InvalidateSessionsResult
class InvalidateSessionsResult
  attr_accessor :errors
  attr_accessor :success

  def initialize(errors = [], success = nil)
    @errors = errors
    @success = success
  end
end

# {urn:partner.soap.sforce.com}SetPasswordResult
class SetPasswordResult
  def initialize
  end
end

# {urn:partner.soap.sforce.com}ResetPasswordResult
class ResetPasswordResult
  attr_accessor :password

  def initialize(password = nil)
    @password = password
  end
end

# {urn:partner.soap.sforce.com}GetUserInfoResult
class GetUserInfoResult
  attr_accessor :accessibilityMode
  attr_accessor :currencySymbol
  attr_accessor :orgDefaultCurrencyIsoCode
  attr_accessor :orgDisallowHtmlAttachments
  attr_accessor :orgHasPersonAccounts
  attr_accessor :organizationId
  attr_accessor :organizationMultiCurrency
  attr_accessor :organizationName
  attr_accessor :profileId
  attr_accessor :roleId
  attr_accessor :userDefaultCurrencyIsoCode
  attr_accessor :userEmail
  attr_accessor :userFullName
  attr_accessor :userId
  attr_accessor :userLanguage
  attr_accessor :userLocale
  attr_accessor :userName
  attr_accessor :userTimeZone
  attr_accessor :userType
  attr_accessor :userUiSkin

  def initialize(accessibilityMode = nil, currencySymbol = nil, orgDefaultCurrencyIsoCode = nil, orgDisallowHtmlAttachments = nil, orgHasPersonAccounts = nil, organizationId = nil, organizationMultiCurrency = nil, organizationName = nil, profileId = nil, roleId = nil, userDefaultCurrencyIsoCode = nil, userEmail = nil, userFullName = nil, userId = nil, userLanguage = nil, userLocale = nil, userName = nil, userTimeZone = nil, userType = nil, userUiSkin = nil)
    @accessibilityMode = accessibilityMode
    @currencySymbol = currencySymbol
    @orgDefaultCurrencyIsoCode = orgDefaultCurrencyIsoCode
    @orgDisallowHtmlAttachments = orgDisallowHtmlAttachments
    @orgHasPersonAccounts = orgHasPersonAccounts
    @organizationId = organizationId
    @organizationMultiCurrency = organizationMultiCurrency
    @organizationName = organizationName
    @profileId = profileId
    @roleId = roleId
    @userDefaultCurrencyIsoCode = userDefaultCurrencyIsoCode
    @userEmail = userEmail
    @userFullName = userFullName
    @userId = userId
    @userLanguage = userLanguage
    @userLocale = userLocale
    @userName = userName
    @userTimeZone = userTimeZone
    @userType = userType
    @userUiSkin = userUiSkin
  end
end

# {urn:partner.soap.sforce.com}LoginResult
class LoginResult
  attr_accessor :metadataServerUrl
  attr_accessor :passwordExpired
  attr_accessor :sandbox
  attr_accessor :serverUrl
  attr_accessor :sessionId
  attr_accessor :userId
  attr_accessor :userInfo

  def initialize(metadataServerUrl = nil, passwordExpired = nil, sandbox = nil, serverUrl = nil, sessionId = nil, userId = nil, userInfo = nil)
    @metadataServerUrl = metadataServerUrl
    @passwordExpired = passwordExpired
    @sandbox = sandbox
    @serverUrl = serverUrl
    @sessionId = sessionId
    @userId = userId
    @userInfo = userInfo
  end
end

# {urn:partner.soap.sforce.com}Error
class Error
  attr_accessor :fields
  attr_accessor :message
  attr_accessor :statusCode

  def initialize(fields = [], message = nil, statusCode = nil)
    @fields = fields
    @message = message
    @statusCode = statusCode
  end
end

# {urn:partner.soap.sforce.com}SendEmailError
class SendEmailError
  attr_accessor :fields
  attr_accessor :message
  attr_accessor :statusCode
  attr_accessor :targetObjectId

  def initialize(fields = [], message = nil, statusCode = nil, targetObjectId = nil)
    @fields = fields
    @message = message
    @statusCode = statusCode
    @targetObjectId = targetObjectId
  end
end

# {urn:partner.soap.sforce.com}SaveResult
class SaveResult
  attr_accessor :errors
  attr_accessor :id
  attr_accessor :success

  def initialize(errors = [], id = nil, success = nil)
    @errors = errors
    @id = id
    @success = success
  end
end

# {urn:partner.soap.sforce.com}UpsertResult
class UpsertResult
  attr_accessor :created
  attr_accessor :errors
  attr_accessor :id
  attr_accessor :success

  def initialize(created = nil, errors = [], id = nil, success = nil)
    @created = created
    @errors = errors
    @id = id
    @success = success
  end
end

# {urn:partner.soap.sforce.com}MergeRequest
class MergeRequest
  attr_accessor :masterRecord
  attr_accessor :recordToMergeIds

  def initialize(masterRecord = nil, recordToMergeIds = [])
    @masterRecord = masterRecord
    @recordToMergeIds = recordToMergeIds
  end
end

# {urn:partner.soap.sforce.com}MergeResult
class MergeResult
  attr_accessor :errors
  attr_accessor :id
  attr_accessor :mergedRecordIds
  attr_accessor :success
  attr_accessor :updatedRelatedIds

  def initialize(errors = [], id = nil, mergedRecordIds = [], success = nil, updatedRelatedIds = [])
    @errors = errors
    @id = id
    @mergedRecordIds = mergedRecordIds
    @success = success
    @updatedRelatedIds = updatedRelatedIds
  end
end

# {urn:partner.soap.sforce.com}ProcessRequest
class ProcessRequest
  attr_accessor :comments
  attr_accessor :nextApproverIds

  def initialize(comments = nil, nextApproverIds = [])
    @comments = comments
    @nextApproverIds = nextApproverIds
  end
end

# {urn:partner.soap.sforce.com}ProcessSubmitRequest
class ProcessSubmitRequest < ProcessRequest
  attr_accessor :comments
  attr_accessor :nextApproverIds
  attr_accessor :objectId

  def initialize(comments = nil, nextApproverIds = [], objectId = nil)
    @comments = comments
    @nextApproverIds = nextApproverIds
    @objectId = objectId
  end
end

# {urn:partner.soap.sforce.com}ProcessWorkitemRequest
class ProcessWorkitemRequest < ProcessRequest
  attr_accessor :comments
  attr_accessor :nextApproverIds
  attr_accessor :action
  attr_accessor :workitemId

  def initialize(comments = nil, nextApproverIds = [], action = nil, workitemId = nil)
    @comments = comments
    @nextApproverIds = nextApproverIds
    @action = action
    @workitemId = workitemId
  end
end

# {urn:partner.soap.sforce.com}ProcessResult
class ProcessResult
  attr_accessor :actorIds
  attr_accessor :entityId
  attr_accessor :errors
  attr_accessor :instanceId
  attr_accessor :instanceStatus
  attr_accessor :newWorkitemIds
  attr_accessor :success

  def initialize(actorIds = [], entityId = nil, errors = [], instanceId = nil, instanceStatus = nil, newWorkitemIds = [], success = nil)
    @actorIds = actorIds
    @entityId = entityId
    @errors = errors
    @instanceId = instanceId
    @instanceStatus = instanceStatus
    @newWorkitemIds = newWorkitemIds
    @success = success
  end
end

# {urn:partner.soap.sforce.com}DeleteResult
class DeleteResult
  attr_accessor :errors
  attr_accessor :id
  attr_accessor :success

  def initialize(errors = [], id = nil, success = nil)
    @errors = errors
    @id = id
    @success = success
  end
end

# {urn:partner.soap.sforce.com}UndeleteResult
class UndeleteResult
  attr_accessor :errors
  attr_accessor :id
  attr_accessor :success

  def initialize(errors = [], id = nil, success = nil)
    @errors = errors
    @id = id
    @success = success
  end
end

# {urn:partner.soap.sforce.com}EmptyRecycleBinResult
class EmptyRecycleBinResult
  attr_accessor :errors
  attr_accessor :id
  attr_accessor :success

  def initialize(errors = [], id = nil, success = nil)
    @errors = errors
    @id = id
    @success = success
  end
end

# {urn:partner.soap.sforce.com}LeadConvert
class LeadConvert
  attr_accessor :accountId
  attr_accessor :contactId
  attr_accessor :convertedStatus
  attr_accessor :doNotCreateOpportunity
  attr_accessor :leadId
  attr_accessor :opportunityName
  attr_accessor :overwriteLeadSource
  attr_accessor :ownerId
  attr_accessor :sendNotificationEmail

  def initialize(accountId = nil, contactId = nil, convertedStatus = nil, doNotCreateOpportunity = nil, leadId = nil, opportunityName = nil, overwriteLeadSource = nil, ownerId = nil, sendNotificationEmail = nil)
    @accountId = accountId
    @contactId = contactId
    @convertedStatus = convertedStatus
    @doNotCreateOpportunity = doNotCreateOpportunity
    @leadId = leadId
    @opportunityName = opportunityName
    @overwriteLeadSource = overwriteLeadSource
    @ownerId = ownerId
    @sendNotificationEmail = sendNotificationEmail
  end
end

# {urn:partner.soap.sforce.com}LeadConvertResult
class LeadConvertResult
  attr_accessor :accountId
  attr_accessor :contactId
  attr_accessor :errors
  attr_accessor :leadId
  attr_accessor :opportunityId
  attr_accessor :success

  def initialize(accountId = nil, contactId = nil, errors = [], leadId = nil, opportunityId = nil, success = nil)
    @accountId = accountId
    @contactId = contactId
    @errors = errors
    @leadId = leadId
    @opportunityId = opportunityId
    @success = success
  end
end

# {urn:partner.soap.sforce.com}DescribeSObjectResult
class DescribeSObjectResult
  attr_accessor :activateable
  attr_accessor :childRelationships
  attr_accessor :createable
  attr_accessor :custom
  attr_accessor :customSetting
  attr_accessor :deletable
  attr_accessor :deprecatedAndHidden
  attr_accessor :feedEnabled
  attr_accessor :fields
  attr_accessor :keyPrefix
  attr_accessor :label
  attr_accessor :labelPlural
  attr_accessor :layoutable
  attr_accessor :mergeable
  attr_accessor :name
  attr_accessor :queryable
  attr_accessor :recordTypeInfos
  attr_accessor :replicateable
  attr_accessor :retrieveable
  attr_accessor :searchable
  attr_accessor :triggerable
  attr_accessor :undeletable
  attr_accessor :updateable
  attr_accessor :urlDetail
  attr_accessor :urlEdit
  attr_accessor :urlNew

  def initialize(activateable = nil, childRelationships = [], createable = nil, custom = nil, customSetting = nil, deletable = nil, deprecatedAndHidden = nil, feedEnabled = nil, fields = [], keyPrefix = nil, label = nil, labelPlural = nil, layoutable = nil, mergeable = nil, name = nil, queryable = nil, recordTypeInfos = [], replicateable = nil, retrieveable = nil, searchable = nil, triggerable = nil, undeletable = nil, updateable = nil, urlDetail = nil, urlEdit = nil, urlNew = nil)
    @activateable = activateable
    @childRelationships = childRelationships
    @createable = createable
    @custom = custom
    @customSetting = customSetting
    @deletable = deletable
    @deprecatedAndHidden = deprecatedAndHidden
    @feedEnabled = feedEnabled
    @fields = fields
    @keyPrefix = keyPrefix
    @label = label
    @labelPlural = labelPlural
    @layoutable = layoutable
    @mergeable = mergeable
    @name = name
    @queryable = queryable
    @recordTypeInfos = recordTypeInfos
    @replicateable = replicateable
    @retrieveable = retrieveable
    @searchable = searchable
    @triggerable = triggerable
    @undeletable = undeletable
    @updateable = updateable
    @urlDetail = urlDetail
    @urlEdit = urlEdit
    @urlNew = urlNew
  end

end

# {urn:partner.soap.sforce.com}DescribeGlobalSObjectResult
class DescribeGlobalSObjectResult
  attr_accessor :activateable
  attr_accessor :createable
  attr_accessor :custom
  attr_accessor :customSetting
  attr_accessor :deletable
  attr_accessor :deprecatedAndHidden
  attr_accessor :feedEnabled
  attr_accessor :keyPrefix
  attr_accessor :label
  attr_accessor :labelPlural
  attr_accessor :layoutable
  attr_accessor :mergeable
  attr_accessor :name
  attr_accessor :queryable
  attr_accessor :replicateable
  attr_accessor :retrieveable
  attr_accessor :searchable
  attr_accessor :triggerable
  attr_accessor :undeletable
  attr_accessor :updateable

  def initialize(activateable = nil, createable = nil, custom = nil, customSetting = nil, deletable = nil, deprecatedAndHidden = nil, feedEnabled = nil, keyPrefix = nil, label = nil, labelPlural = nil, layoutable = nil, mergeable = nil, name = nil, queryable = nil, replicateable = nil, retrieveable = nil, searchable = nil, triggerable = nil, undeletable = nil, updateable = nil)
    @activateable = activateable
    @createable = createable
    @custom = custom
    @customSetting = customSetting
    @deletable = deletable
    @deprecatedAndHidden = deprecatedAndHidden
    @feedEnabled = feedEnabled
    @keyPrefix = keyPrefix
    @label = label
    @labelPlural = labelPlural
    @layoutable = layoutable
    @mergeable = mergeable
    @name = name
    @queryable = queryable
    @replicateable = replicateable
    @retrieveable = retrieveable
    @searchable = searchable
    @triggerable = triggerable
    @undeletable = undeletable
    @updateable = updateable
  end
end

# {urn:partner.soap.sforce.com}ChildRelationship
class ChildRelationship
  attr_accessor :cascadeDelete
  attr_accessor :childSObject
  attr_accessor :deprecatedAndHidden
  attr_accessor :field
  attr_accessor :relationshipName

  def initialize(cascadeDelete = nil, childSObject = nil, deprecatedAndHidden = nil, field = nil, relationshipName = nil)
    @cascadeDelete = cascadeDelete
    @childSObject = childSObject
    @deprecatedAndHidden = deprecatedAndHidden
    @field = field
    @relationshipName = relationshipName
  end
end

# {urn:partner.soap.sforce.com}DescribeGlobalResult
class DescribeGlobalResult
  attr_accessor :encoding
  attr_accessor :maxBatchSize
  attr_accessor :sobjects

  def initialize(encoding = nil, maxBatchSize = nil, sobjects = [])
    @encoding = encoding
    @maxBatchSize = maxBatchSize
    @sobjects = sobjects
  end
end

# {urn:partner.soap.sforce.com}Field
class Field
  attr_accessor :autoNumber
  attr_accessor :byteLength
  attr_accessor :calculated
  attr_accessor :calculatedFormula
  attr_accessor :caseSensitive
  attr_accessor :controllerName
  attr_accessor :createable
  attr_accessor :custom
  attr_accessor :defaultValueFormula
  attr_accessor :defaultedOnCreate
  attr_accessor :dependentPicklist
  attr_accessor :deprecatedAndHidden
  attr_accessor :digits
  attr_accessor :externalId
  attr_accessor :filterable
  attr_accessor :groupable
  attr_accessor :htmlFormatted
  attr_accessor :idLookup
  attr_accessor :inlineHelpText
  attr_accessor :label
  attr_accessor :length
  attr_accessor :name
  attr_accessor :nameField
  attr_accessor :namePointing
  attr_accessor :nillable
  attr_accessor :picklistValues
  attr_accessor :precision
  attr_accessor :referenceTo
  attr_accessor :relationshipName
  attr_accessor :relationshipOrder
  attr_accessor :restrictedPicklist
  attr_accessor :scale
  attr_accessor :soapType
  attr_accessor :sortable
  attr_accessor :type
  attr_accessor :unique
  attr_accessor :updateable
  attr_accessor :writeRequiresMasterRead

  def initialize(autoNumber = nil, byteLength = nil, calculated = nil, calculatedFormula = nil, caseSensitive = nil, controllerName = nil, createable = nil, custom = nil, defaultValueFormula = nil, defaultedOnCreate = nil, dependentPicklist = nil, deprecatedAndHidden = nil, digits = nil, externalId = nil, filterable = nil, groupable = nil, htmlFormatted = nil, idLookup = nil, inlineHelpText = nil, label = nil, length = nil, name = nil, nameField = nil, namePointing = nil, nillable = nil, picklistValues = [], precision = nil, referenceTo = [], relationshipName = nil, relationshipOrder = nil, restrictedPicklist = nil, scale = nil, soapType = nil, sortable = nil, type = nil, unique = nil, updateable = nil, writeRequiresMasterRead = nil)
    @autoNumber = autoNumber
    @byteLength = byteLength
    @calculated = calculated
    @calculatedFormula = calculatedFormula
    @caseSensitive = caseSensitive
    @controllerName = controllerName
    @createable = createable
    @custom = custom
    @defaultValueFormula = defaultValueFormula
    @defaultedOnCreate = defaultedOnCreate
    @dependentPicklist = dependentPicklist
    @deprecatedAndHidden = deprecatedAndHidden
    @digits = digits
    @externalId = externalId
    @filterable = filterable
    @groupable = groupable
    @htmlFormatted = htmlFormatted
    @idLookup = idLookup
    @inlineHelpText = inlineHelpText
    @label = label
    @length = length
    @name = name
    @nameField = nameField
    @namePointing = namePointing
    @nillable = nillable
    @picklistValues = picklistValues
    @precision = precision
    @referenceTo = referenceTo
    @relationshipName = relationshipName
    @relationshipOrder = relationshipOrder
    @restrictedPicklist = restrictedPicklist
    @scale = scale
    @soapType = soapType
    @sortable = sortable
    @type = type
    @unique = unique
    @updateable = updateable
    @writeRequiresMasterRead = writeRequiresMasterRead
  end
end

# {urn:partner.soap.sforce.com}PicklistEntry
class PicklistEntry
  attr_accessor :active
  attr_accessor :defaultValue
  attr_accessor :label
  attr_accessor :validFor
  attr_accessor :value

  def initialize(active = nil, defaultValue = nil, label = nil, validFor = nil, value = nil)
    @active = active
    @defaultValue = defaultValue
    @label = label
    @validFor = validFor
    @value = value
  end
end

# {urn:partner.soap.sforce.com}DescribeDataCategoryGroupResult
class DescribeDataCategoryGroupResult
  attr_accessor :categoryCount
  attr_accessor :description
  attr_accessor :label
  attr_accessor :name
  attr_accessor :sobject

  def initialize(categoryCount = nil, description = nil, label = nil, name = nil, sobject = nil)
    @categoryCount = categoryCount
    @description = description
    @label = label
    @name = name
    @sobject = sobject
  end
end

# {urn:partner.soap.sforce.com}DescribeDataCategoryGroupStructureResult
class DescribeDataCategoryGroupStructureResult
  attr_accessor :description
  attr_accessor :label
  attr_accessor :name
  attr_accessor :sobject
  attr_accessor :topCategories

  def initialize(description = nil, label = nil, name = nil, sobject = nil, topCategories = [])
    @description = description
    @label = label
    @name = name
    @sobject = sobject
    @topCategories = topCategories
  end
end

# {urn:partner.soap.sforce.com}DataCategoryGroupSobjectTypePair
class DataCategoryGroupSobjectTypePair
  attr_accessor :dataCategoryGroupName
  attr_accessor :sobject

  def initialize(dataCategoryGroupName = nil, sobject = nil)
    @dataCategoryGroupName = dataCategoryGroupName
    @sobject = sobject
  end
end

# {urn:partner.soap.sforce.com}DataCategory
class DataCategory
  attr_accessor :childCategories
  attr_accessor :label
  attr_accessor :name

  def initialize(childCategories = [], label = nil, name = nil)
    @childCategories = childCategories
    @label = label
    @name = name
  end
end

# {urn:partner.soap.sforce.com}DescribeSoftphoneLayoutResult
class DescribeSoftphoneLayoutResult
  attr_accessor :callTypes
  attr_accessor :id
  attr_accessor :name

  def initialize(callTypes = [], id = nil, name = nil)
    @callTypes = callTypes
    @id = id
    @name = name
  end
end

# {urn:partner.soap.sforce.com}DescribeSoftphoneLayoutCallType
class DescribeSoftphoneLayoutCallType
  attr_accessor :infoFields
  attr_accessor :name
  attr_accessor :screenPopOptions
  attr_accessor :screenPopsOpenWithin
  attr_accessor :sections

  def initialize(infoFields = [], name = nil, screenPopOptions = [], screenPopsOpenWithin = nil, sections = [])
    @infoFields = infoFields
    @name = name
    @screenPopOptions = screenPopOptions
    @screenPopsOpenWithin = screenPopsOpenWithin
    @sections = sections
  end
end

# {urn:partner.soap.sforce.com}DescribeSoftphoneScreenPopOption
class DescribeSoftphoneScreenPopOption
  attr_accessor :matchType
  attr_accessor :screenPopData
  attr_accessor :screenPopType

  def initialize(matchType = nil, screenPopData = nil, screenPopType = nil)
    @matchType = matchType
    @screenPopData = screenPopData
    @screenPopType = screenPopType
  end
end

# {urn:partner.soap.sforce.com}DescribeSoftphoneLayoutInfoField
class DescribeSoftphoneLayoutInfoField
  attr_accessor :name

  def initialize(name = nil)
    @name = name
  end
end

# {urn:partner.soap.sforce.com}DescribeSoftphoneLayoutSection
class DescribeSoftphoneLayoutSection
  attr_accessor :entityApiName
  attr_accessor :items

  def initialize(entityApiName = nil, items = [])
    @entityApiName = entityApiName
    @items = items
  end
end

# {urn:partner.soap.sforce.com}DescribeSoftphoneLayoutItem
class DescribeSoftphoneLayoutItem
  attr_accessor :itemApiName

  def initialize(itemApiName = nil)
    @itemApiName = itemApiName
  end
end

# {urn:partner.soap.sforce.com}DescribeLayoutResult
class DescribeLayoutResult
  attr_accessor :layouts
  attr_accessor :recordTypeMappings
  attr_accessor :recordTypeSelectorRequired

  def initialize(layouts = [], recordTypeMappings = [], recordTypeSelectorRequired = nil)
    @layouts = layouts
    @recordTypeMappings = recordTypeMappings
    @recordTypeSelectorRequired = recordTypeSelectorRequired
  end
end

# {urn:partner.soap.sforce.com}DescribeLayout
class DescribeLayout
  attr_accessor :buttonLayoutSection
  attr_accessor :detailLayoutSections
  attr_accessor :editLayoutSections
  attr_accessor :id
  attr_accessor :relatedLists

  def initialize(buttonLayoutSection = nil, detailLayoutSections = [], editLayoutSections = [], id = nil, relatedLists = [])
    @buttonLayoutSection = buttonLayoutSection
    @detailLayoutSections = detailLayoutSections
    @editLayoutSections = editLayoutSections
    @id = id
    @relatedLists = relatedLists
  end
end

# {urn:partner.soap.sforce.com}DescribeLayoutSection
class DescribeLayoutSection
  attr_accessor :columns
  attr_accessor :heading
  attr_accessor :layoutRows
  attr_accessor :rows
  attr_accessor :useCollapsibleSection
  attr_accessor :useHeading

  def initialize(columns = nil, heading = nil, layoutRows = [], rows = nil, useCollapsibleSection = nil, useHeading = nil)
    @columns = columns
    @heading = heading
    @layoutRows = layoutRows
    @rows = rows
    @useCollapsibleSection = useCollapsibleSection
    @useHeading = useHeading
  end
end

# {urn:partner.soap.sforce.com}DescribeLayoutButtonSection
class DescribeLayoutButtonSection < ::Array
end

# {urn:partner.soap.sforce.com}DescribeLayoutRow
class DescribeLayoutRow
  attr_accessor :layoutItems
  attr_accessor :numItems

  def initialize(layoutItems = [], numItems = nil)
    @layoutItems = layoutItems
    @numItems = numItems
  end
end

# {urn:partner.soap.sforce.com}DescribeLayoutItem
class DescribeLayoutItem
  attr_accessor :editable
  attr_accessor :label
  attr_accessor :layoutComponents
  attr_accessor :placeholder
  attr_accessor :required

  def initialize(editable = nil, label = nil, layoutComponents = [], placeholder = nil, required = nil)
    @editable = editable
    @label = label
    @layoutComponents = layoutComponents
    @placeholder = placeholder
    @required = required
  end
end

# {urn:partner.soap.sforce.com}DescribeLayoutButton
class DescribeLayoutButton
  attr_accessor :custom
  attr_accessor :label
  attr_accessor :name

  def initialize(custom = nil, label = nil, name = nil)
    @custom = custom
    @label = label
    @name = name
  end
end

# {urn:partner.soap.sforce.com}DescribeLayoutComponent
class DescribeLayoutComponent
  attr_accessor :displayLines
  attr_accessor :tabOrder
  attr_accessor :type
  attr_accessor :value

  def initialize(displayLines = nil, tabOrder = nil, type = nil, value = nil)
    @displayLines = displayLines
    @tabOrder = tabOrder
    @type = type
    @value = value
  end
end

# {urn:partner.soap.sforce.com}RecordTypeInfo
class RecordTypeInfo
  attr_accessor :available
  attr_accessor :defaultRecordTypeMapping
  attr_accessor :name
  attr_accessor :recordTypeId

  def initialize(available = nil, defaultRecordTypeMapping = nil, name = nil, recordTypeId = nil)
    @available = available
    @defaultRecordTypeMapping = defaultRecordTypeMapping
    @name = name
    @recordTypeId = recordTypeId
  end
end

# {urn:partner.soap.sforce.com}RecordTypeMapping
class RecordTypeMapping
  attr_accessor :available
  attr_accessor :defaultRecordTypeMapping
  attr_accessor :layoutId
  attr_accessor :name
  attr_accessor :picklistsForRecordType
  attr_accessor :recordTypeId

  def initialize(available = nil, defaultRecordTypeMapping = nil, layoutId = nil, name = nil, picklistsForRecordType = [], recordTypeId = nil)
    @available = available
    @defaultRecordTypeMapping = defaultRecordTypeMapping
    @layoutId = layoutId
    @name = name
    @picklistsForRecordType = picklistsForRecordType
    @recordTypeId = recordTypeId
  end
end

# {urn:partner.soap.sforce.com}PicklistForRecordType
class PicklistForRecordType
  attr_accessor :picklistName
  attr_accessor :picklistValues

  def initialize(picklistName = nil, picklistValues = [])
    @picklistName = picklistName
    @picklistValues = picklistValues
  end
end

# {urn:partner.soap.sforce.com}RelatedList
class RelatedList
  attr_accessor :columns
  attr_accessor :custom
  attr_accessor :field
  attr_accessor :label
  attr_accessor :limitRows
  attr_accessor :name
  attr_accessor :sobject
  attr_accessor :sort

  def initialize(columns = [], custom = nil, field = nil, label = nil, limitRows = nil, name = nil, sobject = nil, sort = [])
    @columns = columns
    @custom = custom
    @field = field
    @label = label
    @limitRows = limitRows
    @name = name
    @sobject = sobject
    @sort = sort
  end
end

# {urn:partner.soap.sforce.com}RelatedListColumn
class RelatedListColumn
  attr_accessor :field
  attr_accessor :format
  attr_accessor :label
  attr_accessor :name

  def initialize(field = nil, format = nil, label = nil, name = nil)
    @field = field
    @format = format
    @label = label
    @name = name
  end
end

# {urn:partner.soap.sforce.com}RelatedListSort
class RelatedListSort
  attr_accessor :ascending
  attr_accessor :column

  def initialize(ascending = nil, column = nil)
    @ascending = ascending
    @column = column
  end
end

# {urn:partner.soap.sforce.com}EmailFileAttachment
class EmailFileAttachment
  attr_accessor :body
  attr_accessor :contentType
  attr_accessor :fileName
  attr_accessor :inline

  def initialize(body = nil, contentType = nil, fileName = nil, inline = nil)
    @body = body
    @contentType = contentType
    @fileName = fileName
    @inline = inline
  end
end

# {urn:partner.soap.sforce.com}Email
class Email
  attr_accessor :bccSender
  attr_accessor :emailPriority
  attr_accessor :replyTo
  attr_accessor :saveAsActivity
  attr_accessor :senderDisplayName
  attr_accessor :subject
  attr_accessor :useSignature

  def initialize(bccSender = nil, emailPriority = nil, replyTo = nil, saveAsActivity = nil, senderDisplayName = nil, subject = nil, useSignature = nil)
    @bccSender = bccSender
    @emailPriority = emailPriority
    @replyTo = replyTo
    @saveAsActivity = saveAsActivity
    @senderDisplayName = senderDisplayName
    @subject = subject
    @useSignature = useSignature
  end
end

# {urn:partner.soap.sforce.com}MassEmailMessage
class MassEmailMessage < Email
  attr_accessor :bccSender
  attr_accessor :emailPriority
  attr_accessor :replyTo
  attr_accessor :saveAsActivity
  attr_accessor :senderDisplayName
  attr_accessor :subject
  attr_accessor :useSignature
  attr_accessor :description
  attr_accessor :targetObjectIds
  attr_accessor :templateId
  attr_accessor :whatIds

  def initialize(bccSender = nil, emailPriority = nil, replyTo = nil, saveAsActivity = nil, senderDisplayName = nil, subject = nil, useSignature = nil, description = nil, targetObjectIds = [], templateId = nil, whatIds = [])
    @bccSender = bccSender
    @emailPriority = emailPriority
    @replyTo = replyTo
    @saveAsActivity = saveAsActivity
    @senderDisplayName = senderDisplayName
    @subject = subject
    @useSignature = useSignature
    @description = description
    @targetObjectIds = targetObjectIds
    @templateId = templateId
    @whatIds = whatIds
  end
end

# {urn:partner.soap.sforce.com}SingleEmailMessage
class SingleEmailMessage < Email
  attr_accessor :bccSender
  attr_accessor :emailPriority
  attr_accessor :replyTo
  attr_accessor :saveAsActivity
  attr_accessor :senderDisplayName
  attr_accessor :subject
  attr_accessor :useSignature
  attr_accessor :bccAddresses
  attr_accessor :ccAddresses
  attr_accessor :charset
  attr_accessor :documentAttachments
  attr_accessor :htmlBody
  attr_accessor :inReplyTo
  attr_accessor :fileAttachments
  attr_accessor :orgWideEmailAddressId
  attr_accessor :plainTextBody
  attr_accessor :references
  attr_accessor :targetObjectId
  attr_accessor :templateId
  attr_accessor :toAddresses
  attr_accessor :whatId

  def initialize(bccSender = nil, emailPriority = nil, replyTo = nil, saveAsActivity = nil, senderDisplayName = nil, subject = nil, useSignature = nil, bccAddresses = [], ccAddresses = [], charset = nil, documentAttachments = [], htmlBody = nil, inReplyTo = nil, fileAttachments = [], orgWideEmailAddressId = nil, plainTextBody = nil, references = nil, targetObjectId = nil, templateId = nil, toAddresses = [], whatId = nil)
    @bccSender = bccSender
    @emailPriority = emailPriority
    @replyTo = replyTo
    @saveAsActivity = saveAsActivity
    @senderDisplayName = senderDisplayName
    @subject = subject
    @useSignature = useSignature
    @bccAddresses = bccAddresses
    @ccAddresses = ccAddresses
    @charset = charset
    @documentAttachments = documentAttachments
    @htmlBody = htmlBody
    @inReplyTo = inReplyTo
    @fileAttachments = fileAttachments
    @orgWideEmailAddressId = orgWideEmailAddressId
    @plainTextBody = plainTextBody
    @references = references
    @targetObjectId = targetObjectId
    @templateId = templateId
    @toAddresses = toAddresses
    @whatId = whatId
  end
end

# {urn:partner.soap.sforce.com}SendEmailResult
class SendEmailResult
  attr_accessor :errors
  attr_accessor :success

  def initialize(errors = [], success = nil)
    @errors = errors
    @success = success
  end
end

# {urn:partner.soap.sforce.com}DescribeTabSetResult
class DescribeTabSetResult
  attr_accessor :label
  attr_accessor :logoUrl
  attr_accessor :namespace
  attr_accessor :selected
  attr_accessor :tabs

  def initialize(label = nil, logoUrl = nil, namespace = nil, selected = nil, tabs = [])
    @label = label
    @logoUrl = logoUrl
    @namespace = namespace
    @selected = selected
    @tabs = tabs
  end
end

# {urn:partner.soap.sforce.com}DescribeTab
class DescribeTab
  attr_accessor :custom
  attr_accessor :iconUrl
  attr_accessor :label
  attr_accessor :miniIconUrl
  attr_accessor :sobjectName
  attr_accessor :url

  def initialize(custom = nil, iconUrl = nil, label = nil, miniIconUrl = nil, sobjectName = nil, url = nil)
    @custom = custom
    @iconUrl = iconUrl
    @label = label
    @miniIconUrl = miniIconUrl
    @sobjectName = sobjectName
    @url = url
  end
end

# {urn:partner.soap.sforce.com}PackageVersion
class PackageVersion
  attr_accessor :majorNumber
  attr_accessor :minorNumber
  attr_accessor :namespace

  def initialize(majorNumber = nil, minorNumber = nil, namespace = nil)
    @majorNumber = majorNumber
    @minorNumber = minorNumber
    @namespace = namespace
  end
end

# {urn:fault.partner.soap.sforce.com}ApiFault
class ApiFault
  attr_accessor :exceptionCode
  attr_accessor :exceptionMessage

  def initialize(exceptionCode = nil, exceptionMessage = nil)
    @exceptionCode = exceptionCode
    @exceptionMessage = exceptionMessage
  end
end

# {urn:fault.partner.soap.sforce.com}ApiQueryFault
class ApiQueryFault < ApiFault
  attr_accessor :exceptionCode
  attr_accessor :exceptionMessage
  attr_accessor :row
  attr_accessor :column

  def initialize(exceptionCode = nil, exceptionMessage = nil, row = nil, column = nil)
    @exceptionCode = exceptionCode
    @exceptionMessage = exceptionMessage
    @row = row
    @column = column
  end
end

# {urn:fault.partner.soap.sforce.com}InvalidFieldFault
class InvalidFieldFault < ::StandardError
  attr_accessor :exceptionCode
  attr_accessor :exceptionMessage
  attr_accessor :row
  attr_accessor :column

  def initialize(exceptionCode = nil, exceptionMessage = nil, row = nil, column = nil)
    @exceptionCode = exceptionCode
    @exceptionMessage = exceptionMessage
    @row = row
    @column = column
  end
end

# {urn:fault.partner.soap.sforce.com}InvalidSObjectFault
class InvalidSObjectFault < ::StandardError
  attr_accessor :exceptionCode
  attr_accessor :exceptionMessage
  attr_accessor :row
  attr_accessor :column

  def initialize(exceptionCode = nil, exceptionMessage = nil, row = nil, column = nil)
    @exceptionCode = exceptionCode
    @exceptionMessage = exceptionMessage
    @row = row
    @column = column
  end
end

# {urn:fault.partner.soap.sforce.com}MalformedQueryFault
class MalformedQueryFault < ::StandardError
  attr_accessor :exceptionCode
  attr_accessor :exceptionMessage
  attr_accessor :row
  attr_accessor :column

  def initialize(exceptionCode = nil, exceptionMessage = nil, row = nil, column = nil)
    @exceptionCode = exceptionCode
    @exceptionMessage = exceptionMessage
    @row = row
    @column = column
  end
end

# {urn:fault.partner.soap.sforce.com}MalformedSearchFault
class MalformedSearchFault < ::StandardError
  attr_accessor :exceptionCode
  attr_accessor :exceptionMessage
  attr_accessor :row
  attr_accessor :column

  def initialize(exceptionCode = nil, exceptionMessage = nil, row = nil, column = nil)
    @exceptionCode = exceptionCode
    @exceptionMessage = exceptionMessage
    @row = row
    @column = column
  end
end

# {urn:fault.partner.soap.sforce.com}LoginFault
class LoginFault < ::StandardError
  attr_accessor :exceptionCode
  attr_accessor :exceptionMessage

  def initialize(exceptionCode = nil, exceptionMessage = nil)
    @exceptionCode = exceptionCode
    @exceptionMessage = exceptionMessage
  end
end

# {urn:fault.partner.soap.sforce.com}InvalidQueryLocatorFault
class InvalidQueryLocatorFault < ::StandardError
  attr_accessor :exceptionCode
  attr_accessor :exceptionMessage

  def initialize(exceptionCode = nil, exceptionMessage = nil)
    @exceptionCode = exceptionCode
    @exceptionMessage = exceptionMessage
  end
end

# {urn:fault.partner.soap.sforce.com}InvalidNewPasswordFault
class InvalidNewPasswordFault < ::StandardError
  attr_accessor :exceptionCode
  attr_accessor :exceptionMessage

  def initialize(exceptionCode = nil, exceptionMessage = nil)
    @exceptionCode = exceptionCode
    @exceptionMessage = exceptionMessage
  end
end

# {urn:fault.partner.soap.sforce.com}InvalidIdFault
class InvalidIdFault < ::StandardError
  attr_accessor :exceptionCode
  attr_accessor :exceptionMessage

  def initialize(exceptionCode = nil, exceptionMessage = nil)
    @exceptionCode = exceptionCode
    @exceptionMessage = exceptionMessage
  end
end

# {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
class UnexpectedErrorFault < ::StandardError
  attr_accessor :exceptionCode
  attr_accessor :exceptionMessage

  def initialize(exceptionCode = nil, exceptionMessage = nil)
    @exceptionCode = exceptionCode
    @exceptionMessage = exceptionMessage
  end
end

# {urn:partner.soap.sforce.com}StatusCode
class StatusCode < ::String
  ALL_OR_NONE_OPERATION_ROLLED_BACK = StatusCode.new("ALL_OR_NONE_OPERATION_ROLLED_BACK")
  ALREADY_IN_PROCESS = StatusCode.new("ALREADY_IN_PROCESS")
  ASSIGNEE_TYPE_REQUIRED = StatusCode.new("ASSIGNEE_TYPE_REQUIRED")
  BAD_CUSTOM_ENTITY_PARENT_DOMAIN = StatusCode.new("BAD_CUSTOM_ENTITY_PARENT_DOMAIN")
  BCC_NOT_ALLOWED_IF_BCC_COMPLIANCE_ENABLED = StatusCode.new("BCC_NOT_ALLOWED_IF_BCC_COMPLIANCE_ENABLED")
  CANNOT_CASCADE_PRODUCT_ACTIVE = StatusCode.new("CANNOT_CASCADE_PRODUCT_ACTIVE")
  CANNOT_CHANGE_FIELD_TYPE_OF_APEX_REFERENCED_FIELD = StatusCode.new("CANNOT_CHANGE_FIELD_TYPE_OF_APEX_REFERENCED_FIELD")
  CANNOT_CREATE_ANOTHER_MANAGED_PACKAGE = StatusCode.new("CANNOT_CREATE_ANOTHER_MANAGED_PACKAGE")
  CANNOT_DEACTIVATE_DIVISION = StatusCode.new("CANNOT_DEACTIVATE_DIVISION")
  CANNOT_DELETE_LAST_DATED_CONVERSION_RATE = StatusCode.new("CANNOT_DELETE_LAST_DATED_CONVERSION_RATE")
  CANNOT_DELETE_MANAGED_OBJECT = StatusCode.new("CANNOT_DELETE_MANAGED_OBJECT")
  CANNOT_DISABLE_LAST_ADMIN = StatusCode.new("CANNOT_DISABLE_LAST_ADMIN")
  CANNOT_ENABLE_IP_RESTRICT_REQUESTS = StatusCode.new("CANNOT_ENABLE_IP_RESTRICT_REQUESTS")
  CANNOT_INSERT_UPDATE_ACTIVATE_ENTITY = StatusCode.new("CANNOT_INSERT_UPDATE_ACTIVATE_ENTITY")
  CANNOT_MODIFY_MANAGED_OBJECT = StatusCode.new("CANNOT_MODIFY_MANAGED_OBJECT")
  CANNOT_RENAME_APEX_REFERENCED_FIELD = StatusCode.new("CANNOT_RENAME_APEX_REFERENCED_FIELD")
  CANNOT_RENAME_APEX_REFERENCED_OBJECT = StatusCode.new("CANNOT_RENAME_APEX_REFERENCED_OBJECT")
  CANNOT_REPARENT_RECORD = StatusCode.new("CANNOT_REPARENT_RECORD")
  CANNOT_UPDATE_CONVERTED_LEAD = StatusCode.new("CANNOT_UPDATE_CONVERTED_LEAD")
  CANT_DISABLE_CORP_CURRENCY = StatusCode.new("CANT_DISABLE_CORP_CURRENCY")
  CANT_UNSET_CORP_CURRENCY = StatusCode.new("CANT_UNSET_CORP_CURRENCY")
  CHILD_SHARE_FAILS_PARENT = StatusCode.new("CHILD_SHARE_FAILS_PARENT")
  CIRCULAR_DEPENDENCY = StatusCode.new("CIRCULAR_DEPENDENCY")
  COMMUNITY_NOT_ACCESSIBLE = StatusCode.new("COMMUNITY_NOT_ACCESSIBLE")
  CUSTOM_CLOB_FIELD_LIMIT_EXCEEDED = StatusCode.new("CUSTOM_CLOB_FIELD_LIMIT_EXCEEDED")
  CUSTOM_ENTITY_OR_FIELD_LIMIT = StatusCode.new("CUSTOM_ENTITY_OR_FIELD_LIMIT")
  CUSTOM_FIELD_INDEX_LIMIT_EXCEEDED = StatusCode.new("CUSTOM_FIELD_INDEX_LIMIT_EXCEEDED")
  CUSTOM_INDEX_EXISTS = StatusCode.new("CUSTOM_INDEX_EXISTS")
  CUSTOM_LINK_LIMIT_EXCEEDED = StatusCode.new("CUSTOM_LINK_LIMIT_EXCEEDED")
  CUSTOM_TAB_LIMIT_EXCEEDED = StatusCode.new("CUSTOM_TAB_LIMIT_EXCEEDED")
  DELETE_FAILED = StatusCode.new("DELETE_FAILED")
  DELETE_REQUIRED_ON_CASCADE = StatusCode.new("DELETE_REQUIRED_ON_CASCADE")
  DEPENDENCY_EXISTS = StatusCode.new("DEPENDENCY_EXISTS")
  DUPLICATE_CASE_SOLUTION = StatusCode.new("DUPLICATE_CASE_SOLUTION")
  DUPLICATE_COMM_NICKNAME = StatusCode.new("DUPLICATE_COMM_NICKNAME")
  DUPLICATE_CUSTOM_ENTITY_DEFINITION = StatusCode.new("DUPLICATE_CUSTOM_ENTITY_DEFINITION")
  DUPLICATE_CUSTOM_TAB_MOTIF = StatusCode.new("DUPLICATE_CUSTOM_TAB_MOTIF")
  DUPLICATE_DEVELOPER_NAME = StatusCode.new("DUPLICATE_DEVELOPER_NAME")
  DUPLICATE_EXTERNAL_ID = StatusCode.new("DUPLICATE_EXTERNAL_ID")
  DUPLICATE_MASTER_LABEL = StatusCode.new("DUPLICATE_MASTER_LABEL")
  DUPLICATE_SENDER_DISPLAY_NAME = StatusCode.new("DUPLICATE_SENDER_DISPLAY_NAME")
  DUPLICATE_USERNAME = StatusCode.new("DUPLICATE_USERNAME")
  DUPLICATE_VALUE = StatusCode.new("DUPLICATE_VALUE")
  EMAIL_NOT_PROCESSED_DUE_TO_PRIOR_ERROR = StatusCode.new("EMAIL_NOT_PROCESSED_DUE_TO_PRIOR_ERROR")
  EMPTY_SCONTROL_FILE_NAME = StatusCode.new("EMPTY_SCONTROL_FILE_NAME")
  ENTITY_FAILED_IFLASTMODIFIED_ON_UPDATE = StatusCode.new("ENTITY_FAILED_IFLASTMODIFIED_ON_UPDATE")
  ENTITY_IS_ARCHIVED = StatusCode.new("ENTITY_IS_ARCHIVED")
  ENTITY_IS_DELETED = StatusCode.new("ENTITY_IS_DELETED")
  ENTITY_IS_LOCKED = StatusCode.new("ENTITY_IS_LOCKED")
  ERROR_IN_MAILER = StatusCode.new("ERROR_IN_MAILER")
  FAILED_ACTIVATION = StatusCode.new("FAILED_ACTIVATION")
  FIELD_CUSTOM_VALIDATION_EXCEPTION = StatusCode.new("FIELD_CUSTOM_VALIDATION_EXCEPTION")
  FIELD_FILTER_VALIDATION_EXCEPTION = StatusCode.new("FIELD_FILTER_VALIDATION_EXCEPTION")
  FIELD_INTEGRITY_EXCEPTION = StatusCode.new("FIELD_INTEGRITY_EXCEPTION")
  FILTERED_LOOKUP_LIMIT_EXCEEDED = StatusCode.new("FILTERED_LOOKUP_LIMIT_EXCEEDED")
  HTML_FILE_UPLOAD_NOT_ALLOWED = StatusCode.new("HTML_FILE_UPLOAD_NOT_ALLOWED")
  IMAGE_TOO_LARGE = StatusCode.new("IMAGE_TOO_LARGE")
  INACTIVE_OWNER_OR_USER = StatusCode.new("INACTIVE_OWNER_OR_USER")
  INSUFFICIENT_ACCESS_ON_CROSS_REFERENCE_ENTITY = StatusCode.new("INSUFFICIENT_ACCESS_ON_CROSS_REFERENCE_ENTITY")
  INSUFFICIENT_ACCESS_OR_READONLY = StatusCode.new("INSUFFICIENT_ACCESS_OR_READONLY")
  INVALID_ACCESS_LEVEL = StatusCode.new("INVALID_ACCESS_LEVEL")
  INVALID_ARGUMENT_TYPE = StatusCode.new("INVALID_ARGUMENT_TYPE")
  INVALID_ASSIGNEE_TYPE = StatusCode.new("INVALID_ASSIGNEE_TYPE")
  INVALID_ASSIGNMENT_RULE = StatusCode.new("INVALID_ASSIGNMENT_RULE")
  INVALID_BATCH_OPERATION = StatusCode.new("INVALID_BATCH_OPERATION")
  INVALID_CONTENT_TYPE = StatusCode.new("INVALID_CONTENT_TYPE")
  INVALID_CREDIT_CARD_INFO = StatusCode.new("INVALID_CREDIT_CARD_INFO")
  INVALID_CROSS_REFERENCE_KEY = StatusCode.new("INVALID_CROSS_REFERENCE_KEY")
  INVALID_CROSS_REFERENCE_TYPE_FOR_FIELD = StatusCode.new("INVALID_CROSS_REFERENCE_TYPE_FOR_FIELD")
  INVALID_CURRENCY_CONV_RATE = StatusCode.new("INVALID_CURRENCY_CONV_RATE")
  INVALID_CURRENCY_CORP_RATE = StatusCode.new("INVALID_CURRENCY_CORP_RATE")
  INVALID_CURRENCY_ISO = StatusCode.new("INVALID_CURRENCY_ISO")
  INVALID_DATA_URI = StatusCode.new("INVALID_DATA_URI")
  INVALID_EMAIL_ADDRESS = StatusCode.new("INVALID_EMAIL_ADDRESS")
  INVALID_EMPTY_KEY_OWNER = StatusCode.new("INVALID_EMPTY_KEY_OWNER")
  INVALID_FIELD = StatusCode.new("INVALID_FIELD")
  INVALID_FIELD_FOR_INSERT_UPDATE = StatusCode.new("INVALID_FIELD_FOR_INSERT_UPDATE")
  INVALID_FIELD_WHEN_USING_TEMPLATE = StatusCode.new("INVALID_FIELD_WHEN_USING_TEMPLATE")
  INVALID_FILTER_ACTION = StatusCode.new("INVALID_FILTER_ACTION")
  INVALID_GOOGLE_DOCS_URL = StatusCode.new("INVALID_GOOGLE_DOCS_URL")
  INVALID_ID_FIELD = StatusCode.new("INVALID_ID_FIELD")
  INVALID_INET_ADDRESS = StatusCode.new("INVALID_INET_ADDRESS")
  INVALID_LINEITEM_CLONE_STATE = StatusCode.new("INVALID_LINEITEM_CLONE_STATE")
  INVALID_MASTER_OR_TRANSLATED_SOLUTION = StatusCode.new("INVALID_MASTER_OR_TRANSLATED_SOLUTION")
  INVALID_MESSAGE_ID_REFERENCE = StatusCode.new("INVALID_MESSAGE_ID_REFERENCE")
  INVALID_OPERATION = StatusCode.new("INVALID_OPERATION")
  INVALID_OPERATOR = StatusCode.new("INVALID_OPERATOR")
  INVALID_OR_NULL_FOR_RESTRICTED_PICKLIST = StatusCode.new("INVALID_OR_NULL_FOR_RESTRICTED_PICKLIST")
  INVALID_PARTNER_NETWORK_STATUS = StatusCode.new("INVALID_PARTNER_NETWORK_STATUS")
  INVALID_PERSON_ACCOUNT_OPERATION = StatusCode.new("INVALID_PERSON_ACCOUNT_OPERATION")
  INVALID_READ_ONLY_USER_DML = StatusCode.new("INVALID_READ_ONLY_USER_DML")
  INVALID_SAVE_AS_ACTIVITY_FLAG = StatusCode.new("INVALID_SAVE_AS_ACTIVITY_FLAG")
  INVALID_SESSION_ID = StatusCode.new("INVALID_SESSION_ID")
  INVALID_SETUP_OWNER = StatusCode.new("INVALID_SETUP_OWNER")
  INVALID_STATUS = StatusCode.new("INVALID_STATUS")
  INVALID_TYPE = StatusCode.new("INVALID_TYPE")
  INVALID_TYPE_FOR_OPERATION = StatusCode.new("INVALID_TYPE_FOR_OPERATION")
  INVALID_TYPE_ON_FIELD_IN_RECORD = StatusCode.new("INVALID_TYPE_ON_FIELD_IN_RECORD")
  IP_RANGE_LIMIT_EXCEEDED = StatusCode.new("IP_RANGE_LIMIT_EXCEEDED")
  LICENSE_LIMIT_EXCEEDED = StatusCode.new("LICENSE_LIMIT_EXCEEDED")
  LIGHT_PORTAL_USER_EXCEPTION = StatusCode.new("LIGHT_PORTAL_USER_EXCEPTION")
  LIMIT_EXCEEDED = StatusCode.new("LIMIT_EXCEEDED")
  MALFORMED_ID = StatusCode.new("MALFORMED_ID")
  MANAGER_NOT_DEFINED = StatusCode.new("MANAGER_NOT_DEFINED")
  MASSMAIL_RETRY_LIMIT_EXCEEDED = StatusCode.new("MASSMAIL_RETRY_LIMIT_EXCEEDED")
  MASS_MAIL_LIMIT_EXCEEDED = StatusCode.new("MASS_MAIL_LIMIT_EXCEEDED")
  MAXIMUM_CCEMAILS_EXCEEDED = StatusCode.new("MAXIMUM_CCEMAILS_EXCEEDED")
  MAXIMUM_DASHBOARD_COMPONENTS_EXCEEDED = StatusCode.new("MAXIMUM_DASHBOARD_COMPONENTS_EXCEEDED")
  MAXIMUM_HIERARCHY_LEVELS_REACHED = StatusCode.new("MAXIMUM_HIERARCHY_LEVELS_REACHED")
  MAXIMUM_SIZE_OF_ATTACHMENT = StatusCode.new("MAXIMUM_SIZE_OF_ATTACHMENT")
  MAXIMUM_SIZE_OF_DOCUMENT = StatusCode.new("MAXIMUM_SIZE_OF_DOCUMENT")
  MAX_ACTIONS_PER_RULE_EXCEEDED = StatusCode.new("MAX_ACTIONS_PER_RULE_EXCEEDED")
  MAX_ACTIVE_RULES_EXCEEDED = StatusCode.new("MAX_ACTIVE_RULES_EXCEEDED")
  MAX_APPROVAL_STEPS_EXCEEDED = StatusCode.new("MAX_APPROVAL_STEPS_EXCEEDED")
  MAX_FORMULAS_PER_RULE_EXCEEDED = StatusCode.new("MAX_FORMULAS_PER_RULE_EXCEEDED")
  MAX_RULES_EXCEEDED = StatusCode.new("MAX_RULES_EXCEEDED")
  MAX_RULE_ENTRIES_EXCEEDED = StatusCode.new("MAX_RULE_ENTRIES_EXCEEDED")
  MAX_TASK_DESCRIPTION_EXCEEEDED = StatusCode.new("MAX_TASK_DESCRIPTION_EXCEEEDED")
  MAX_TM_RULES_EXCEEDED = StatusCode.new("MAX_TM_RULES_EXCEEDED")
  MAX_TM_RULE_ITEMS_EXCEEDED = StatusCode.new("MAX_TM_RULE_ITEMS_EXCEEDED")
  MERGE_FAILED = StatusCode.new("MERGE_FAILED")
  MISSING_ARGUMENT = StatusCode.new("MISSING_ARGUMENT")
  MIXED_DML_OPERATION = StatusCode.new("MIXED_DML_OPERATION")
  NONUNIQUE_SHIPPING_ADDRESS = StatusCode.new("NONUNIQUE_SHIPPING_ADDRESS")
  NO_APPLICABLE_PROCESS = StatusCode.new("NO_APPLICABLE_PROCESS")
  NO_ATTACHMENT_PERMISSION = StatusCode.new("NO_ATTACHMENT_PERMISSION")
  NO_INACTIVE_DIVISION_MEMBERS = StatusCode.new("NO_INACTIVE_DIVISION_MEMBERS")
  NO_MASS_MAIL_PERMISSION = StatusCode.new("NO_MASS_MAIL_PERMISSION")
  NUMBER_OUTSIDE_VALID_RANGE = StatusCode.new("NUMBER_OUTSIDE_VALID_RANGE")
  NUM_HISTORY_FIELDS_BY_SOBJECT_EXCEEDED = StatusCode.new("NUM_HISTORY_FIELDS_BY_SOBJECT_EXCEEDED")
  OPTED_OUT_OF_MASS_MAIL = StatusCode.new("OPTED_OUT_OF_MASS_MAIL")
  OP_WITH_INVALID_USER_TYPE_EXCEPTION = StatusCode.new("OP_WITH_INVALID_USER_TYPE_EXCEPTION")
  PACKAGE_LICENSE_REQUIRED = StatusCode.new("PACKAGE_LICENSE_REQUIRED")
  PORTAL_USER_ALREADY_EXISTS_FOR_CONTACT = StatusCode.new("PORTAL_USER_ALREADY_EXISTS_FOR_CONTACT")
  PRIVATE_CONTACT_ON_ASSET = StatusCode.new("PRIVATE_CONTACT_ON_ASSET")
  RECORD_IN_USE_BY_WORKFLOW = StatusCode.new("RECORD_IN_USE_BY_WORKFLOW")
  REQUEST_RUNNING_TOO_LONG = StatusCode.new("REQUEST_RUNNING_TOO_LONG")
  REQUIRED_FEATURE_MISSING = StatusCode.new("REQUIRED_FEATURE_MISSING")
  REQUIRED_FIELD_MISSING = StatusCode.new("REQUIRED_FIELD_MISSING")
  SELF_REFERENCE_FROM_TRIGGER = StatusCode.new("SELF_REFERENCE_FROM_TRIGGER")
  SHARE_NEEDED_FOR_CHILD_OWNER = StatusCode.new("SHARE_NEEDED_FOR_CHILD_OWNER")
  SINGLE_EMAIL_LIMIT_EXCEEDED = StatusCode.new("SINGLE_EMAIL_LIMIT_EXCEEDED")
  STANDARD_PRICE_NOT_DEFINED = StatusCode.new("STANDARD_PRICE_NOT_DEFINED")
  STORAGE_LIMIT_EXCEEDED = StatusCode.new("STORAGE_LIMIT_EXCEEDED")
  STRING_TOO_LONG = StatusCode.new("STRING_TOO_LONG")
  TABSET_LIMIT_EXCEEDED = StatusCode.new("TABSET_LIMIT_EXCEEDED")
  TEMPLATE_NOT_ACTIVE = StatusCode.new("TEMPLATE_NOT_ACTIVE")
  TERRITORY_REALIGN_IN_PROGRESS = StatusCode.new("TERRITORY_REALIGN_IN_PROGRESS")
  TEXT_DATA_OUTSIDE_SUPPORTED_CHARSET = StatusCode.new("TEXT_DATA_OUTSIDE_SUPPORTED_CHARSET")
  TOO_MANY_APEX_REQUESTS = StatusCode.new("TOO_MANY_APEX_REQUESTS")
  TOO_MANY_ENUM_VALUE = StatusCode.new("TOO_MANY_ENUM_VALUE")
  TRANSFER_REQUIRES_READ = StatusCode.new("TRANSFER_REQUIRES_READ")
  UNABLE_TO_LOCK_ROW = StatusCode.new("UNABLE_TO_LOCK_ROW")
  UNAVAILABLE_RECORDTYPE_EXCEPTION = StatusCode.new("UNAVAILABLE_RECORDTYPE_EXCEPTION")
  UNDELETE_FAILED = StatusCode.new("UNDELETE_FAILED")
  UNKNOWN_EXCEPTION = StatusCode.new("UNKNOWN_EXCEPTION")
  UNSPECIFIED_EMAIL_ADDRESS = StatusCode.new("UNSPECIFIED_EMAIL_ADDRESS")
  UNSUPPORTED_APEX_TRIGGER_OPERATON = StatusCode.new("UNSUPPORTED_APEX_TRIGGER_OPERATON")
  UNVERIFIED_SENDER_ADDRESS = StatusCode.new("UNVERIFIED_SENDER_ADDRESS")
  USER_OWNS_PORTAL_ACCOUNT_EXCEPTION = StatusCode.new("USER_OWNS_PORTAL_ACCOUNT_EXCEPTION")
  USER_WITH_APEX_SHARES_EXCEPTION = StatusCode.new("USER_WITH_APEX_SHARES_EXCEPTION")
  WEBLINK_SIZE_LIMIT_EXCEEDED = StatusCode.new("WEBLINK_SIZE_LIMIT_EXCEEDED")
  WRONG_CONTROLLER_TYPE = StatusCode.new("WRONG_CONTROLLER_TYPE")
end

# {urn:partner.soap.sforce.com}fieldType
class FieldType < ::String
  AnyType = FieldType.new("anyType")
  Base64 = FieldType.new("base64")
  Boolean = FieldType.new("boolean")
  C_String = FieldType.new("string")
  C_Time = FieldType.new("time")
  Combobox = FieldType.new("combobox")
  Currency = FieldType.new("currency")
  Datacategorygroupreference = FieldType.new("datacategorygroupreference")
  Date = FieldType.new("date")
  Datetime = FieldType.new("datetime")
  Double = FieldType.new("double")
  Email = FieldType.new("email")
  Encryptedstring = FieldType.new("encryptedstring")
  Id = FieldType.new("id")
  Int = FieldType.new("int")
  Multipicklist = FieldType.new("multipicklist")
  Percent = FieldType.new("percent")
  Phone = FieldType.new("phone")
  Picklist = FieldType.new("picklist")
  Reference = FieldType.new("reference")
  Textarea = FieldType.new("textarea")
  Url = FieldType.new("url")
end

# {urn:partner.soap.sforce.com}soapType
class SoapType < ::String
  TnsID = SoapType.new("tns:ID")
  XsdAnyType = SoapType.new("xsd:anyType")
  XsdBase64Binary = SoapType.new("xsd:base64Binary")
  XsdBoolean = SoapType.new("xsd:boolean")
  XsdDate = SoapType.new("xsd:date")
  XsdDateTime = SoapType.new("xsd:dateTime")
  XsdDouble = SoapType.new("xsd:double")
  XsdInt = SoapType.new("xsd:int")
  XsdString = SoapType.new("xsd:string")
  XsdTime = SoapType.new("xsd:time")
end

# {urn:partner.soap.sforce.com}layoutComponentType
class LayoutComponentType < ::String
  EmptySpace = LayoutComponentType.new("EmptySpace")
  Field = LayoutComponentType.new("Field")
  SControl = LayoutComponentType.new("SControl")
  Separator = LayoutComponentType.new("Separator")
end

# {urn:partner.soap.sforce.com}EmailPriority
class EmailPriority < ::String
  High = EmailPriority.new("High")
  Highest = EmailPriority.new("Highest")
  Low = EmailPriority.new("Low")
  Lowest = EmailPriority.new("Lowest")
  Normal = EmailPriority.new("Normal")
end

# {urn:partner.soap.sforce.com}DebugLevel
class DebugLevel < ::String
  Db = DebugLevel.new("Db")
  DebugOnly = DebugLevel.new("DebugOnly")
  None = DebugLevel.new("None")
end

# {urn:fault.partner.soap.sforce.com}ExceptionCode
class ExceptionCode < ::String
  API_CURRENTLY_DISABLED = ExceptionCode.new("API_CURRENTLY_DISABLED")
  API_DISABLED_FOR_ORG = ExceptionCode.new("API_DISABLED_FOR_ORG")
  CANT_ADD_STANDADRD_PORTAL_USER_TO_TERRITORY = ExceptionCode.new("CANT_ADD_STANDADRD_PORTAL_USER_TO_TERRITORY")
  CANT_ADD_STANDARD_PORTAL_USER_TO_TERRITORY = ExceptionCode.new("CANT_ADD_STANDARD_PORTAL_USER_TO_TERRITORY")
  CIRCULAR_OBJECT_GRAPH = ExceptionCode.new("CIRCULAR_OBJECT_GRAPH")
  CLIENT_NOT_ACCESSIBLE_FOR_USER = ExceptionCode.new("CLIENT_NOT_ACCESSIBLE_FOR_USER")
  CLIENT_REQUIRE_UPDATE_FOR_USER = ExceptionCode.new("CLIENT_REQUIRE_UPDATE_FOR_USER")
  CUSTOM_METADATA_LIMIT_EXCEEDED = ExceptionCode.new("CUSTOM_METADATA_LIMIT_EXCEEDED")
  DUPLICATE_VALUE = ExceptionCode.new("DUPLICATE_VALUE")
  EMAIL_BATCH_SIZE_LIMIT_EXCEEDED = ExceptionCode.new("EMAIL_BATCH_SIZE_LIMIT_EXCEEDED")
  EMAIL_TO_CASE_INVALID_ROUTING = ExceptionCode.new("EMAIL_TO_CASE_INVALID_ROUTING")
  EMAIL_TO_CASE_LIMIT_EXCEEDED = ExceptionCode.new("EMAIL_TO_CASE_LIMIT_EXCEEDED")
  EMAIL_TO_CASE_NOT_ENABLED = ExceptionCode.new("EMAIL_TO_CASE_NOT_ENABLED")
  EXCEEDED_ID_LIMIT = ExceptionCode.new("EXCEEDED_ID_LIMIT")
  EXCEEDED_LEAD_CONVERT_LIMIT = ExceptionCode.new("EXCEEDED_LEAD_CONVERT_LIMIT")
  EXCEEDED_MAX_SIZE_REQUEST = ExceptionCode.new("EXCEEDED_MAX_SIZE_REQUEST")
  EXCEEDED_MAX_TYPES_LIMIT = ExceptionCode.new("EXCEEDED_MAX_TYPES_LIMIT")
  EXCEEDED_QUOTA = ExceptionCode.new("EXCEEDED_QUOTA")
  FUNCTIONALITY_NOT_ENABLED = ExceptionCode.new("FUNCTIONALITY_NOT_ENABLED")
  FUNCTIONALITY_TEMPORARILY_UNAVAILABLE = ExceptionCode.new("FUNCTIONALITY_TEMPORARILY_UNAVAILABLE")
  INACTIVE_OWNER_OR_USER = ExceptionCode.new("INACTIVE_OWNER_OR_USER")
  INACTIVE_PORTAL = ExceptionCode.new("INACTIVE_PORTAL")
  INSUFFICIENT_ACCESS = ExceptionCode.new("INSUFFICIENT_ACCESS")
  INVALID_ASSIGNMENT_RULE = ExceptionCode.new("INVALID_ASSIGNMENT_RULE")
  INVALID_BATCH_SIZE = ExceptionCode.new("INVALID_BATCH_SIZE")
  INVALID_CLIENT = ExceptionCode.new("INVALID_CLIENT")
  INVALID_CROSS_REFERENCE_KEY = ExceptionCode.new("INVALID_CROSS_REFERENCE_KEY")
  INVALID_FIELD = ExceptionCode.new("INVALID_FIELD")
  INVALID_FILTER_LANGUAGE = ExceptionCode.new("INVALID_FILTER_LANGUAGE")
  INVALID_FILTER_VALUE = ExceptionCode.new("INVALID_FILTER_VALUE")
  INVALID_ID_FIELD = ExceptionCode.new("INVALID_ID_FIELD")
  INVALID_LOCALE_LANGUAGE = ExceptionCode.new("INVALID_LOCALE_LANGUAGE")
  INVALID_LOCATOR = ExceptionCode.new("INVALID_LOCATOR")
  INVALID_LOGIN = ExceptionCode.new("INVALID_LOGIN")
  INVALID_NEW_PASSWORD = ExceptionCode.new("INVALID_NEW_PASSWORD")
  INVALID_OPERATION = ExceptionCode.new("INVALID_OPERATION")
  INVALID_OPERATION_WITH_EXPIRED_PASSWORD = ExceptionCode.new("INVALID_OPERATION_WITH_EXPIRED_PASSWORD")
  INVALID_QUERY_FILTER_OPERATOR = ExceptionCode.new("INVALID_QUERY_FILTER_OPERATOR")
  INVALID_QUERY_LOCATOR = ExceptionCode.new("INVALID_QUERY_LOCATOR")
  INVALID_QUERY_SCOPE = ExceptionCode.new("INVALID_QUERY_SCOPE")
  INVALID_REPLICATION_DATE = ExceptionCode.new("INVALID_REPLICATION_DATE")
  INVALID_SEARCH = ExceptionCode.new("INVALID_SEARCH")
  INVALID_SEARCH_SCOPE = ExceptionCode.new("INVALID_SEARCH_SCOPE")
  INVALID_SESSION_ID = ExceptionCode.new("INVALID_SESSION_ID")
  INVALID_SOAP_HEADER = ExceptionCode.new("INVALID_SOAP_HEADER")
  INVALID_SSO_GATEWAY_URL = ExceptionCode.new("INVALID_SSO_GATEWAY_URL")
  INVALID_TYPE = ExceptionCode.new("INVALID_TYPE")
  INVALID_TYPE_FOR_OPERATION = ExceptionCode.new("INVALID_TYPE_FOR_OPERATION")
  JSON_PARSER_ERROR = ExceptionCode.new("JSON_PARSER_ERROR")
  LIMIT_EXCEEDED = ExceptionCode.new("LIMIT_EXCEEDED")
  LOGIN_CHALLENGE_ISSUED = ExceptionCode.new("LOGIN_CHALLENGE_ISSUED")
  LOGIN_CHALLENGE_PENDING = ExceptionCode.new("LOGIN_CHALLENGE_PENDING")
  LOGIN_DURING_RESTRICTED_DOMAIN = ExceptionCode.new("LOGIN_DURING_RESTRICTED_DOMAIN")
  LOGIN_DURING_RESTRICTED_TIME = ExceptionCode.new("LOGIN_DURING_RESTRICTED_TIME")
  LOGIN_MUST_USE_SECURITY_TOKEN = ExceptionCode.new("LOGIN_MUST_USE_SECURITY_TOKEN")
  MALFORMED_ID = ExceptionCode.new("MALFORMED_ID")
  MALFORMED_QUERY = ExceptionCode.new("MALFORMED_QUERY")
  MALFORMED_SEARCH = ExceptionCode.new("MALFORMED_SEARCH")
  MISSING_ARGUMENT = ExceptionCode.new("MISSING_ARGUMENT")
  NOT_MODIFIED = ExceptionCode.new("NOT_MODIFIED")
  NO_SOFTPHONE_LAYOUT = ExceptionCode.new("NO_SOFTPHONE_LAYOUT")
  NUMBER_OUTSIDE_VALID_RANGE = ExceptionCode.new("NUMBER_OUTSIDE_VALID_RANGE")
  OPERATION_TOO_LARGE = ExceptionCode.new("OPERATION_TOO_LARGE")
  ORG_IN_MAINTENANCE = ExceptionCode.new("ORG_IN_MAINTENANCE")
  ORG_IS_DOT_ORG = ExceptionCode.new("ORG_IS_DOT_ORG")
  ORG_LOCKED = ExceptionCode.new("ORG_LOCKED")
  ORG_NOT_OWNED_BY_INSTANCE = ExceptionCode.new("ORG_NOT_OWNED_BY_INSTANCE")
  PASSWORD_LOCKOUT = ExceptionCode.new("PASSWORD_LOCKOUT")
  PORTAL_NO_ACCESS = ExceptionCode.new("PORTAL_NO_ACCESS")
  QUERY_TIMEOUT = ExceptionCode.new("QUERY_TIMEOUT")
  QUERY_TOO_COMPLICATED = ExceptionCode.new("QUERY_TOO_COMPLICATED")
  REQUEST_LIMIT_EXCEEDED = ExceptionCode.new("REQUEST_LIMIT_EXCEEDED")
  REQUEST_RUNNING_TOO_LONG = ExceptionCode.new("REQUEST_RUNNING_TOO_LONG")
  SERVER_UNAVAILABLE = ExceptionCode.new("SERVER_UNAVAILABLE")
  SSO_SERVICE_DOWN = ExceptionCode.new("SSO_SERVICE_DOWN")
  TOO_MANY_APEX_REQUESTS = ExceptionCode.new("TOO_MANY_APEX_REQUESTS")
  TRIAL_EXPIRED = ExceptionCode.new("TRIAL_EXPIRED")
  UNKNOWN_EXCEPTION = ExceptionCode.new("UNKNOWN_EXCEPTION")
  UNSUPPORTED_API_VERSION = ExceptionCode.new("UNSUPPORTED_API_VERSION")
  UNSUPPORTED_CLIENT = ExceptionCode.new("UNSUPPORTED_CLIENT")
  UNSUPPORTED_MEDIA_TYPE = ExceptionCode.new("UNSUPPORTED_MEDIA_TYPE")
  XML_PARSER_ERROR = ExceptionCode.new("XML_PARSER_ERROR")
end

# {urn:fault.partner.soap.sforce.com}FaultCode
class FaultCode < ::String
  FnsAPI_CURRENTLY_DISABLED = FaultCode.new("fns:API_CURRENTLY_DISABLED")
  FnsAPI_DISABLED_FOR_ORG = FaultCode.new("fns:API_DISABLED_FOR_ORG")
  FnsCANT_ADD_STANDADRD_PORTAL_USER_TO_TERRITORY = FaultCode.new("fns:CANT_ADD_STANDADRD_PORTAL_USER_TO_TERRITORY")
  FnsCANT_ADD_STANDARD_PORTAL_USER_TO_TERRITORY = FaultCode.new("fns:CANT_ADD_STANDARD_PORTAL_USER_TO_TERRITORY")
  FnsCIRCULAR_OBJECT_GRAPH = FaultCode.new("fns:CIRCULAR_OBJECT_GRAPH")
  FnsCLIENT_NOT_ACCESSIBLE_FOR_USER = FaultCode.new("fns:CLIENT_NOT_ACCESSIBLE_FOR_USER")
  FnsCLIENT_REQUIRE_UPDATE_FOR_USER = FaultCode.new("fns:CLIENT_REQUIRE_UPDATE_FOR_USER")
  FnsCUSTOM_METADATA_LIMIT_EXCEEDED = FaultCode.new("fns:CUSTOM_METADATA_LIMIT_EXCEEDED")
  FnsDUPLICATE_VALUE = FaultCode.new("fns:DUPLICATE_VALUE")
  FnsEMAIL_BATCH_SIZE_LIMIT_EXCEEDED = FaultCode.new("fns:EMAIL_BATCH_SIZE_LIMIT_EXCEEDED")
  FnsEMAIL_TO_CASE_INVALID_ROUTING = FaultCode.new("fns:EMAIL_TO_CASE_INVALID_ROUTING")
  FnsEMAIL_TO_CASE_LIMIT_EXCEEDED = FaultCode.new("fns:EMAIL_TO_CASE_LIMIT_EXCEEDED")
  FnsEMAIL_TO_CASE_NOT_ENABLED = FaultCode.new("fns:EMAIL_TO_CASE_NOT_ENABLED")
  FnsEXCEEDED_ID_LIMIT = FaultCode.new("fns:EXCEEDED_ID_LIMIT")
  FnsEXCEEDED_LEAD_CONVERT_LIMIT = FaultCode.new("fns:EXCEEDED_LEAD_CONVERT_LIMIT")
  FnsEXCEEDED_MAX_SIZE_REQUEST = FaultCode.new("fns:EXCEEDED_MAX_SIZE_REQUEST")
  FnsEXCEEDED_MAX_TYPES_LIMIT = FaultCode.new("fns:EXCEEDED_MAX_TYPES_LIMIT")
  FnsEXCEEDED_QUOTA = FaultCode.new("fns:EXCEEDED_QUOTA")
  FnsFUNCTIONALITY_NOT_ENABLED = FaultCode.new("fns:FUNCTIONALITY_NOT_ENABLED")
  FnsFUNCTIONALITY_TEMPORARILY_UNAVAILABLE = FaultCode.new("fns:FUNCTIONALITY_TEMPORARILY_UNAVAILABLE")
  FnsINACTIVE_OWNER_OR_USER = FaultCode.new("fns:INACTIVE_OWNER_OR_USER")
  FnsINACTIVE_PORTAL = FaultCode.new("fns:INACTIVE_PORTAL")
  FnsINSUFFICIENT_ACCESS = FaultCode.new("fns:INSUFFICIENT_ACCESS")
  FnsINVALID_ASSIGNMENT_RULE = FaultCode.new("fns:INVALID_ASSIGNMENT_RULE")
  FnsINVALID_BATCH_SIZE = FaultCode.new("fns:INVALID_BATCH_SIZE")
  FnsINVALID_CLIENT = FaultCode.new("fns:INVALID_CLIENT")
  FnsINVALID_CROSS_REFERENCE_KEY = FaultCode.new("fns:INVALID_CROSS_REFERENCE_KEY")
  FnsINVALID_FIELD = FaultCode.new("fns:INVALID_FIELD")
  FnsINVALID_FILTER_LANGUAGE = FaultCode.new("fns:INVALID_FILTER_LANGUAGE")
  FnsINVALID_FILTER_VALUE = FaultCode.new("fns:INVALID_FILTER_VALUE")
  FnsINVALID_ID_FIELD = FaultCode.new("fns:INVALID_ID_FIELD")
  FnsINVALID_LOCALE_LANGUAGE = FaultCode.new("fns:INVALID_LOCALE_LANGUAGE")
  FnsINVALID_LOCATOR = FaultCode.new("fns:INVALID_LOCATOR")
  FnsINVALID_LOGIN = FaultCode.new("fns:INVALID_LOGIN")
  FnsINVALID_NEW_PASSWORD = FaultCode.new("fns:INVALID_NEW_PASSWORD")
  FnsINVALID_OPERATION = FaultCode.new("fns:INVALID_OPERATION")
  FnsINVALID_OPERATION_WITH_EXPIRED_PASSWORD = FaultCode.new("fns:INVALID_OPERATION_WITH_EXPIRED_PASSWORD")
  FnsINVALID_QUERY_FILTER_OPERATOR = FaultCode.new("fns:INVALID_QUERY_FILTER_OPERATOR")
  FnsINVALID_QUERY_LOCATOR = FaultCode.new("fns:INVALID_QUERY_LOCATOR")
  FnsINVALID_QUERY_SCOPE = FaultCode.new("fns:INVALID_QUERY_SCOPE")
  FnsINVALID_REPLICATION_DATE = FaultCode.new("fns:INVALID_REPLICATION_DATE")
  FnsINVALID_SEARCH = FaultCode.new("fns:INVALID_SEARCH")
  FnsINVALID_SEARCH_SCOPE = FaultCode.new("fns:INVALID_SEARCH_SCOPE")
  FnsINVALID_SESSION_ID = FaultCode.new("fns:INVALID_SESSION_ID")
  FnsINVALID_SOAP_HEADER = FaultCode.new("fns:INVALID_SOAP_HEADER")
  FnsINVALID_SSO_GATEWAY_URL = FaultCode.new("fns:INVALID_SSO_GATEWAY_URL")
  FnsINVALID_TYPE = FaultCode.new("fns:INVALID_TYPE")
  FnsINVALID_TYPE_FOR_OPERATION = FaultCode.new("fns:INVALID_TYPE_FOR_OPERATION")
  FnsJSON_PARSER_ERROR = FaultCode.new("fns:JSON_PARSER_ERROR")
  FnsLIMIT_EXCEEDED = FaultCode.new("fns:LIMIT_EXCEEDED")
  FnsLOGIN_CHALLENGE_ISSUED = FaultCode.new("fns:LOGIN_CHALLENGE_ISSUED")
  FnsLOGIN_CHALLENGE_PENDING = FaultCode.new("fns:LOGIN_CHALLENGE_PENDING")
  FnsLOGIN_DURING_RESTRICTED_DOMAIN = FaultCode.new("fns:LOGIN_DURING_RESTRICTED_DOMAIN")
  FnsLOGIN_DURING_RESTRICTED_TIME = FaultCode.new("fns:LOGIN_DURING_RESTRICTED_TIME")
  FnsLOGIN_MUST_USE_SECURITY_TOKEN = FaultCode.new("fns:LOGIN_MUST_USE_SECURITY_TOKEN")
  FnsMALFORMED_ID = FaultCode.new("fns:MALFORMED_ID")
  FnsMALFORMED_QUERY = FaultCode.new("fns:MALFORMED_QUERY")
  FnsMALFORMED_SEARCH = FaultCode.new("fns:MALFORMED_SEARCH")
  FnsMISSING_ARGUMENT = FaultCode.new("fns:MISSING_ARGUMENT")
  FnsNOT_MODIFIED = FaultCode.new("fns:NOT_MODIFIED")
  FnsNO_SOFTPHONE_LAYOUT = FaultCode.new("fns:NO_SOFTPHONE_LAYOUT")
  FnsNUMBER_OUTSIDE_VALID_RANGE = FaultCode.new("fns:NUMBER_OUTSIDE_VALID_RANGE")
  FnsOPERATION_TOO_LARGE = FaultCode.new("fns:OPERATION_TOO_LARGE")
  FnsORG_IN_MAINTENANCE = FaultCode.new("fns:ORG_IN_MAINTENANCE")
  FnsORG_IS_DOT_ORG = FaultCode.new("fns:ORG_IS_DOT_ORG")
  FnsORG_LOCKED = FaultCode.new("fns:ORG_LOCKED")
  FnsORG_NOT_OWNED_BY_INSTANCE = FaultCode.new("fns:ORG_NOT_OWNED_BY_INSTANCE")
  FnsPASSWORD_LOCKOUT = FaultCode.new("fns:PASSWORD_LOCKOUT")
  FnsPORTAL_NO_ACCESS = FaultCode.new("fns:PORTAL_NO_ACCESS")
  FnsQUERY_TIMEOUT = FaultCode.new("fns:QUERY_TIMEOUT")
  FnsQUERY_TOO_COMPLICATED = FaultCode.new("fns:QUERY_TOO_COMPLICATED")
  FnsREQUEST_LIMIT_EXCEEDED = FaultCode.new("fns:REQUEST_LIMIT_EXCEEDED")
  FnsREQUEST_RUNNING_TOO_LONG = FaultCode.new("fns:REQUEST_RUNNING_TOO_LONG")
  FnsSERVER_UNAVAILABLE = FaultCode.new("fns:SERVER_UNAVAILABLE")
  FnsSSO_SERVICE_DOWN = FaultCode.new("fns:SSO_SERVICE_DOWN")
  FnsTOO_MANY_APEX_REQUESTS = FaultCode.new("fns:TOO_MANY_APEX_REQUESTS")
  FnsTRIAL_EXPIRED = FaultCode.new("fns:TRIAL_EXPIRED")
  FnsUNKNOWN_EXCEPTION = FaultCode.new("fns:UNKNOWN_EXCEPTION")
  FnsUNSUPPORTED_API_VERSION = FaultCode.new("fns:UNSUPPORTED_API_VERSION")
  FnsUNSUPPORTED_CLIENT = FaultCode.new("fns:UNSUPPORTED_CLIENT")
  FnsUNSUPPORTED_MEDIA_TYPE = FaultCode.new("fns:UNSUPPORTED_MEDIA_TYPE")
  FnsXML_PARSER_ERROR = FaultCode.new("fns:XML_PARSER_ERROR")
end

# {urn:partner.soap.sforce.com}login
class Login
  attr_accessor :username
  attr_accessor :password

  def initialize(username = nil, password = nil)
    @username = username
    @password = password
  end
end

# {urn:partner.soap.sforce.com}loginResponse
class LoginResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:partner.soap.sforce.com}describeSObject
class DescribeSObject
  attr_accessor :sObjectType

  def initialize(sObjectType = nil)
    @sObjectType = sObjectType
  end
end

# {urn:partner.soap.sforce.com}describeSObjectResponse
class DescribeSObjectResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:partner.soap.sforce.com}describeSObjects
class DescribeSObjects < ::Array
end

# {urn:partner.soap.sforce.com}describeSObjectsResponse
class DescribeSObjectsResponse < ::Array
end

# {urn:partner.soap.sforce.com}describeGlobal
class DescribeGlobal
  def initialize
  end
end

# {urn:partner.soap.sforce.com}describeGlobalResponse
class DescribeGlobalResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:partner.soap.sforce.com}describeDataCategoryGroups
class DescribeDataCategoryGroups < ::Array
end

# {urn:partner.soap.sforce.com}describeDataCategoryGroupsResponse
class DescribeDataCategoryGroupsResponse < ::Array
end

# {urn:partner.soap.sforce.com}describeDataCategoryGroupStructures
class DescribeDataCategoryGroupStructures
  attr_accessor :pairs
  attr_accessor :topCategoriesOnly

  def initialize(pairs = [], topCategoriesOnly = nil)
    @pairs = pairs
    @topCategoriesOnly = topCategoriesOnly
  end
end

# {urn:partner.soap.sforce.com}describeDataCategoryGroupStructuresResponse
class DescribeDataCategoryGroupStructuresResponse < ::Array
end

# {urn:partner.soap.sforce.com}describeLayout
class DescribeLayout
  attr_accessor :sObjectType
  attr_accessor :recordTypeIds

  def initialize(sObjectType = nil, recordTypeIds = [])
    @sObjectType = sObjectType
    @recordTypeIds = recordTypeIds
  end
end

# {urn:partner.soap.sforce.com}describeLayoutResponse
class DescribeLayoutResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:partner.soap.sforce.com}describeSoftphoneLayout
class DescribeSoftphoneLayout
  def initialize
  end
end

# {urn:partner.soap.sforce.com}describeSoftphoneLayoutResponse
class DescribeSoftphoneLayoutResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:partner.soap.sforce.com}describeTabs
class DescribeTabs
  def initialize
  end
end

# {urn:partner.soap.sforce.com}describeTabsResponse
class DescribeTabsResponse < ::Array
end

# {urn:partner.soap.sforce.com}create
class Create < ::Array
end

# {urn:partner.soap.sforce.com}createResponse
class CreateResponse < ::Array
end

# {urn:partner.soap.sforce.com}sendEmail
class SendEmail < ::Array
end

# {urn:partner.soap.sforce.com}sendEmailResponse
class SendEmailResponse < ::Array
end

# {urn:partner.soap.sforce.com}update
class Update < ::Array
end

# {urn:partner.soap.sforce.com}updateResponse
class UpdateResponse < ::Array
end

# {urn:partner.soap.sforce.com}upsert
class Upsert
  attr_accessor :externalIDFieldName
  attr_accessor :sObjects

  def initialize(externalIDFieldName = nil, sObjects = [])
    @externalIDFieldName = externalIDFieldName
    @sObjects = sObjects
  end
end

# {urn:partner.soap.sforce.com}upsertResponse
class UpsertResponse < ::Array
end

# {urn:partner.soap.sforce.com}merge
class Merge < ::Array
end

# {urn:partner.soap.sforce.com}mergeResponse
class MergeResponse < ::Array
end

# {urn:partner.soap.sforce.com}delete
class Delete < ::Array
end

# {urn:partner.soap.sforce.com}deleteResponse
class DeleteResponse < ::Array
end

# {urn:partner.soap.sforce.com}undelete
class Undelete < ::Array
end

# {urn:partner.soap.sforce.com}undeleteResponse
class UndeleteResponse < ::Array
end

# {urn:partner.soap.sforce.com}emptyRecycleBin
class EmptyRecycleBin < ::Array
end

# {urn:partner.soap.sforce.com}emptyRecycleBinResponse
class EmptyRecycleBinResponse < ::Array
end

# {urn:partner.soap.sforce.com}process
class C_Process < ::Array
end

# {urn:partner.soap.sforce.com}processResponse
class ProcessResponse < ::Array
end

# {urn:partner.soap.sforce.com}retrieve
class Retrieve
  attr_accessor :fieldList
  attr_accessor :sObjectType
  attr_accessor :ids

  def initialize(fieldList = nil, sObjectType = nil, ids = [])
    @fieldList = fieldList
    @sObjectType = sObjectType
    @ids = ids
  end
end

# {urn:partner.soap.sforce.com}retrieveResponse
class RetrieveResponse < ::Array
end

# {urn:partner.soap.sforce.com}convertLead
class ConvertLead < ::Array
end

# {urn:partner.soap.sforce.com}convertLeadResponse
class ConvertLeadResponse < ::Array
end

# {urn:partner.soap.sforce.com}getUpdated
class GetUpdated
  attr_accessor :sObjectType
  attr_accessor :startDate
  attr_accessor :endDate

  def initialize(sObjectType = nil, startDate = nil, endDate = nil)
    @sObjectType = sObjectType
    @startDate = startDate
    @endDate = endDate
  end
end

# {urn:partner.soap.sforce.com}getUpdatedResponse
class GetUpdatedResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:partner.soap.sforce.com}getDeleted
class GetDeleted
  attr_accessor :sObjectType
  attr_accessor :startDate
  attr_accessor :endDate

  def initialize(sObjectType = nil, startDate = nil, endDate = nil)
    @sObjectType = sObjectType
    @startDate = startDate
    @endDate = endDate
  end
end

# {urn:partner.soap.sforce.com}getDeletedResponse
class GetDeletedResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:partner.soap.sforce.com}logout
class Logout
  def initialize
  end
end

# {urn:partner.soap.sforce.com}logoutResponse
class LogoutResponse
  def initialize
  end
end

# {urn:partner.soap.sforce.com}invalidateSessions
class InvalidateSessions < ::Array
end

# {urn:partner.soap.sforce.com}invalidateSessionsResponse
class InvalidateSessionsResponse < ::Array
end

# {urn:partner.soap.sforce.com}query
class Query
  attr_accessor :queryString

  def initialize(queryString = nil)
    @queryString = queryString
  end
end

# {urn:partner.soap.sforce.com}queryResponse
class QueryResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:partner.soap.sforce.com}queryAll
class QueryAll
  attr_accessor :queryString

  def initialize(queryString = nil)
    @queryString = queryString
  end
end

# {urn:partner.soap.sforce.com}queryAllResponse
class QueryAllResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:partner.soap.sforce.com}queryMore
class QueryMore
  attr_accessor :queryLocator

  def initialize(queryLocator = nil)
    @queryLocator = queryLocator
  end
end

# {urn:partner.soap.sforce.com}queryMoreResponse
class QueryMoreResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:partner.soap.sforce.com}search
class Search
  attr_accessor :searchString

  def initialize(searchString = nil)
    @searchString = searchString
  end
end

# {urn:partner.soap.sforce.com}searchResponse
class SearchResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:partner.soap.sforce.com}getServerTimestamp
class GetServerTimestamp
  def initialize
  end
end

# {urn:partner.soap.sforce.com}getServerTimestampResponse
class GetServerTimestampResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:partner.soap.sforce.com}setPassword
class SetPassword
  attr_accessor :userId
  attr_accessor :password

  def initialize(userId = nil, password = nil)
    @userId = userId
    @password = password
  end
end

# {urn:partner.soap.sforce.com}setPasswordResponse
class SetPasswordResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:partner.soap.sforce.com}resetPassword
class ResetPassword
  attr_accessor :userId

  def initialize(userId = nil)
    @userId = userId
  end
end

# {urn:partner.soap.sforce.com}resetPasswordResponse
class ResetPasswordResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:partner.soap.sforce.com}getUserInfo
class GetUserInfo
  def initialize
  end
end

# {urn:partner.soap.sforce.com}getUserInfoResponse
class GetUserInfoResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:partner.soap.sforce.com}SessionHeader
class SessionHeader
  attr_accessor :sessionId

  def initialize(sessionId = nil)
    @sessionId = sessionId
  end
end

# {urn:partner.soap.sforce.com}LoginScopeHeader
class LoginScopeHeader
  attr_accessor :organizationId
  attr_accessor :portalId

  def initialize(organizationId = nil, portalId = nil)
    @organizationId = organizationId
    @portalId = portalId
  end
end

# {urn:partner.soap.sforce.com}CallOptions
class CallOptions
  attr_accessor :client
  attr_accessor :defaultNamespace

  def initialize(client = nil, defaultNamespace = nil)
    @client = client
    @defaultNamespace = defaultNamespace
  end
end

# {urn:partner.soap.sforce.com}QueryOptions
class QueryOptions
  attr_accessor :batchSize

  def initialize(batchSize = nil)
    @batchSize = batchSize
  end
end

# {urn:partner.soap.sforce.com}DebuggingHeader
class DebuggingHeader
  attr_accessor :debugLevel

  def initialize(debugLevel = nil)
    @debugLevel = debugLevel
  end
end

# {urn:partner.soap.sforce.com}DebuggingInfo
class DebuggingInfo
  attr_accessor :debugLog

  def initialize(debugLog = nil)
    @debugLog = debugLog
  end
end

# {urn:partner.soap.sforce.com}PackageVersionHeader
class PackageVersionHeader < ::Array
end

# {urn:partner.soap.sforce.com}AllowFieldTruncationHeader
class AllowFieldTruncationHeader
  attr_accessor :allowFieldTruncation

  def initialize(allowFieldTruncation = nil)
    @allowFieldTruncation = allowFieldTruncation
  end
end

# {urn:partner.soap.sforce.com}DisableFeedTrackingHeader
class DisableFeedTrackingHeader
  attr_accessor :disableFeedTracking

  def initialize(disableFeedTracking = nil)
    @disableFeedTracking = disableFeedTracking
  end
end

# {urn:partner.soap.sforce.com}AllOrNoneHeader
class AllOrNoneHeader
  attr_accessor :allOrNone

  def initialize(allOrNone = nil)
    @allOrNone = allOrNone
  end
end

# {urn:partner.soap.sforce.com}MruHeader
class MruHeader
  attr_accessor :updateMru

  def initialize(updateMru = nil)
    @updateMru = updateMru
  end
end

# {urn:partner.soap.sforce.com}EmailHeader
class EmailHeader
  attr_accessor :triggerAutoResponseEmail
  attr_accessor :triggerOtherEmail
  attr_accessor :triggerUserEmail

  def initialize(triggerAutoResponseEmail = nil, triggerOtherEmail = nil, triggerUserEmail = nil)
    @triggerAutoResponseEmail = triggerAutoResponseEmail
    @triggerOtherEmail = triggerOtherEmail
    @triggerUserEmail = triggerUserEmail
  end
end

# {urn:partner.soap.sforce.com}AssignmentRuleHeader
class AssignmentRuleHeader
  attr_accessor :assignmentRuleId
  attr_accessor :useDefaultRule

  def initialize(assignmentRuleId = nil, useDefaultRule = nil)
    @assignmentRuleId = assignmentRuleId
    @useDefaultRule = useDefaultRule
  end
end

# {urn:partner.soap.sforce.com}UserTerritoryDeleteHeader
class UserTerritoryDeleteHeader
  attr_accessor :transferToUserId

  def initialize(transferToUserId = nil)
    @transferToUserId = transferToUserId
  end
end

# {urn:partner.soap.sforce.com}LocaleOptions
class LocaleOptions
  attr_accessor :language

  def initialize(language = nil)
    @language = language
  end
end
