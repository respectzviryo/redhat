#!/usr/bin/env ruby
require 'defaultDriver.rb'

endpoint_url = ARGV.shift
obj = Soap.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   login(parameters)
#
# ARGS
#   parameters      Login - {urn:partner.soap.sforce.com}login
#
# RETURNS
#   parameters      LoginResponse - {urn:partner.soap.sforce.com}loginResponse
#
# RAISES
#   fault           LoginFault - {urn:fault.partner.soap.sforce.com}LoginFault
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#   fault           InvalidIdFault - {urn:fault.partner.soap.sforce.com}InvalidIdFault
#
parameters = nil
puts obj.login(parameters)

# SYNOPSIS
#   describeSObject(parameters)
#
# ARGS
#   parameters      DescribeSObject - {urn:partner.soap.sforce.com}describeSObject
#
# RETURNS
#   parameters      DescribeSObjectResponse - {urn:partner.soap.sforce.com}describeSObjectResponse
#
# RAISES
#   fault           InvalidSObjectFault - {urn:fault.partner.soap.sforce.com}InvalidSObjectFault
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#
parameters = nil
puts obj.describeSObject(parameters)

# SYNOPSIS
#   describeSObjects(parameters)
#
# ARGS
#   parameters      DescribeSObjects - {urn:partner.soap.sforce.com}describeSObjects
#
# RETURNS
#   parameters      DescribeSObjectsResponse - {urn:partner.soap.sforce.com}describeSObjectsResponse
#
# RAISES
#   fault           InvalidSObjectFault - {urn:fault.partner.soap.sforce.com}InvalidSObjectFault
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#
parameters = nil
puts obj.describeSObjects(parameters)

# SYNOPSIS
#   describeGlobal(parameters)
#
# ARGS
#   parameters      DescribeGlobal - {urn:partner.soap.sforce.com}describeGlobal
#
# RETURNS
#   parameters      DescribeGlobalResponse - {urn:partner.soap.sforce.com}describeGlobalResponse
#
# RAISES
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#
parameters = nil
puts obj.describeGlobal(parameters)

# SYNOPSIS
#   describeDataCategoryGroups(parameters)
#
# ARGS
#   parameters      DescribeDataCategoryGroups - {urn:partner.soap.sforce.com}describeDataCategoryGroups
#
# RETURNS
#   parameters      DescribeDataCategoryGroupsResponse - {urn:partner.soap.sforce.com}describeDataCategoryGroupsResponse
#
# RAISES
#   fault           InvalidSObjectFault - {urn:fault.partner.soap.sforce.com}InvalidSObjectFault
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#
parameters = nil
puts obj.describeDataCategoryGroups(parameters)

# SYNOPSIS
#   describeDataCategoryGroupStructures(parameters)
#
# ARGS
#   parameters      DescribeDataCategoryGroupStructures - {urn:partner.soap.sforce.com}describeDataCategoryGroupStructures
#
# RETURNS
#   parameters      DescribeDataCategoryGroupStructuresResponse - {urn:partner.soap.sforce.com}describeDataCategoryGroupStructuresResponse
#
# RAISES
#   fault           InvalidSObjectFault - {urn:fault.partner.soap.sforce.com}InvalidSObjectFault
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#
parameters = nil
puts obj.describeDataCategoryGroupStructures(parameters)

# SYNOPSIS
#   describeLayout(parameters)
#
# ARGS
#   parameters      DescribeLayout - {urn:partner.soap.sforce.com}describeLayout
#
# RETURNS
#   parameters      DescribeLayoutResponse - {urn:partner.soap.sforce.com}describeLayoutResponse
#
# RAISES
#   fault           InvalidSObjectFault - {urn:fault.partner.soap.sforce.com}InvalidSObjectFault
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#   fault           InvalidIdFault - {urn:fault.partner.soap.sforce.com}InvalidIdFault
#
parameters = nil
puts obj.describeLayout(parameters)

# SYNOPSIS
#   describeSoftphoneLayout(parameters)
#
# ARGS
#   parameters      DescribeSoftphoneLayout - {urn:partner.soap.sforce.com}describeSoftphoneLayout
#
# RETURNS
#   parameters      DescribeSoftphoneLayoutResponse - {urn:partner.soap.sforce.com}describeSoftphoneLayoutResponse
#
# RAISES
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#
parameters = nil
puts obj.describeSoftphoneLayout(parameters)

# SYNOPSIS
#   describeTabs(parameters)
#
# ARGS
#   parameters      DescribeTabs - {urn:partner.soap.sforce.com}describeTabs
#
# RETURNS
#   parameters      DescribeTabsResponse - {urn:partner.soap.sforce.com}describeTabsResponse
#
# RAISES
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#
parameters = nil
puts obj.describeTabs(parameters)

# SYNOPSIS
#   create(parameters)
#
# ARGS
#   parameters      Create - {urn:partner.soap.sforce.com}create
#
# RETURNS
#   parameters      CreateResponse - {urn:partner.soap.sforce.com}createResponse
#
# RAISES
#   fault           InvalidSObjectFault - {urn:fault.partner.soap.sforce.com}InvalidSObjectFault
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#   fault           InvalidIdFault - {urn:fault.partner.soap.sforce.com}InvalidIdFault
#   fault           InvalidFieldFault - {urn:fault.partner.soap.sforce.com}InvalidFieldFault
#
parameters = nil
puts obj.create(parameters)

# SYNOPSIS
#   update(parameters)
#
# ARGS
#   parameters      Update - {urn:partner.soap.sforce.com}update
#
# RETURNS
#   parameters      UpdateResponse - {urn:partner.soap.sforce.com}updateResponse
#
# RAISES
#   fault           InvalidSObjectFault - {urn:fault.partner.soap.sforce.com}InvalidSObjectFault
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#   fault           InvalidIdFault - {urn:fault.partner.soap.sforce.com}InvalidIdFault
#   fault           InvalidFieldFault - {urn:fault.partner.soap.sforce.com}InvalidFieldFault
#
parameters = nil
puts obj.update(parameters)

# SYNOPSIS
#   upsert(parameters)
#
# ARGS
#   parameters      Upsert - {urn:partner.soap.sforce.com}upsert
#
# RETURNS
#   parameters      UpsertResponse - {urn:partner.soap.sforce.com}upsertResponse
#
# RAISES
#   fault           InvalidSObjectFault - {urn:fault.partner.soap.sforce.com}InvalidSObjectFault
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#   fault           InvalidIdFault - {urn:fault.partner.soap.sforce.com}InvalidIdFault
#   fault           InvalidFieldFault - {urn:fault.partner.soap.sforce.com}InvalidFieldFault
#
parameters = nil
puts obj.upsert(parameters)

# SYNOPSIS
#   merge(parameters)
#
# ARGS
#   parameters      Merge - {urn:partner.soap.sforce.com}merge
#
# RETURNS
#   parameters      MergeResponse - {urn:partner.soap.sforce.com}mergeResponse
#
# RAISES
#   fault           InvalidSObjectFault - {urn:fault.partner.soap.sforce.com}InvalidSObjectFault
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#   fault           InvalidIdFault - {urn:fault.partner.soap.sforce.com}InvalidIdFault
#   fault           InvalidFieldFault - {urn:fault.partner.soap.sforce.com}InvalidFieldFault
#
parameters = nil
puts obj.merge(parameters)

# SYNOPSIS
#   delete(parameters)
#
# ARGS
#   parameters      Delete - {urn:partner.soap.sforce.com}delete
#
# RETURNS
#   parameters      DeleteResponse - {urn:partner.soap.sforce.com}deleteResponse
#
# RAISES
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#
parameters = nil
puts obj.delete(parameters)

# SYNOPSIS
#   undelete(parameters)
#
# ARGS
#   parameters      Undelete - {urn:partner.soap.sforce.com}undelete
#
# RETURNS
#   parameters      UndeleteResponse - {urn:partner.soap.sforce.com}undeleteResponse
#
# RAISES
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#
parameters = nil
puts obj.undelete(parameters)

# SYNOPSIS
#   emptyRecycleBin(parameters)
#
# ARGS
#   parameters      EmptyRecycleBin - {urn:partner.soap.sforce.com}emptyRecycleBin
#
# RETURNS
#   parameters      EmptyRecycleBinResponse - {urn:partner.soap.sforce.com}emptyRecycleBinResponse
#
# RAISES
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#
parameters = nil
puts obj.emptyRecycleBin(parameters)

# SYNOPSIS
#   retrieve(parameters)
#
# ARGS
#   parameters      Retrieve - {urn:partner.soap.sforce.com}retrieve
#
# RETURNS
#   parameters      RetrieveResponse - {urn:partner.soap.sforce.com}retrieveResponse
#
# RAISES
#   fault           InvalidSObjectFault - {urn:fault.partner.soap.sforce.com}InvalidSObjectFault
#   fault           InvalidFieldFault - {urn:fault.partner.soap.sforce.com}InvalidFieldFault
#   fault           MalformedQueryFault - {urn:fault.partner.soap.sforce.com}MalformedQueryFault
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#   fault           InvalidIdFault - {urn:fault.partner.soap.sforce.com}InvalidIdFault
#
parameters = nil
puts obj.retrieve(parameters)

# SYNOPSIS
#   process(parameters)
#
# ARGS
#   parameters      C_Process - {urn:partner.soap.sforce.com}process
#
# RETURNS
#   parameters      ProcessResponse - {urn:partner.soap.sforce.com}processResponse
#
# RAISES
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#   fault           InvalidIdFault - {urn:fault.partner.soap.sforce.com}InvalidIdFault
#
parameters = nil
puts obj.process(parameters)

# SYNOPSIS
#   convertLead(parameters)
#
# ARGS
#   parameters      ConvertLead - {urn:partner.soap.sforce.com}convertLead
#
# RETURNS
#   parameters      ConvertLeadResponse - {urn:partner.soap.sforce.com}convertLeadResponse
#
# RAISES
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#
parameters = nil
puts obj.convertLead(parameters)

# SYNOPSIS
#   logout(parameters)
#
# ARGS
#   parameters      Logout - {urn:partner.soap.sforce.com}logout
#
# RETURNS
#   parameters      LogoutResponse - {urn:partner.soap.sforce.com}logoutResponse
#
# RAISES
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#
parameters = nil
puts obj.logout(parameters)

# SYNOPSIS
#   invalidateSessions(parameters)
#
# ARGS
#   parameters      InvalidateSessions - {urn:partner.soap.sforce.com}invalidateSessions
#
# RETURNS
#   parameters      InvalidateSessionsResponse - {urn:partner.soap.sforce.com}invalidateSessionsResponse
#
# RAISES
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#
parameters = nil
puts obj.invalidateSessions(parameters)

# SYNOPSIS
#   getDeleted(parameters)
#
# ARGS
#   parameters      GetDeleted - {urn:partner.soap.sforce.com}getDeleted
#
# RETURNS
#   parameters      GetDeletedResponse - {urn:partner.soap.sforce.com}getDeletedResponse
#
# RAISES
#   fault           InvalidSObjectFault - {urn:fault.partner.soap.sforce.com}InvalidSObjectFault
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#
parameters = nil
puts obj.getDeleted(parameters)

# SYNOPSIS
#   getUpdated(parameters)
#
# ARGS
#   parameters      GetUpdated - {urn:partner.soap.sforce.com}getUpdated
#
# RETURNS
#   parameters      GetUpdatedResponse - {urn:partner.soap.sforce.com}getUpdatedResponse
#
# RAISES
#   fault           InvalidSObjectFault - {urn:fault.partner.soap.sforce.com}InvalidSObjectFault
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#
parameters = nil
puts obj.getUpdated(parameters)

# SYNOPSIS
#   query(parameters)
#
# ARGS
#   parameters      Query - {urn:partner.soap.sforce.com}query
#
# RETURNS
#   parameters      QueryResponse - {urn:partner.soap.sforce.com}queryResponse
#
# RAISES
#   fault           InvalidSObjectFault - {urn:fault.partner.soap.sforce.com}InvalidSObjectFault
#   fault           InvalidFieldFault - {urn:fault.partner.soap.sforce.com}InvalidFieldFault
#   fault           MalformedQueryFault - {urn:fault.partner.soap.sforce.com}MalformedQueryFault
#   fault           InvalidIdFault - {urn:fault.partner.soap.sforce.com}InvalidIdFault
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#   fault           InvalidQueryLocatorFault - {urn:fault.partner.soap.sforce.com}InvalidQueryLocatorFault
#
parameters = nil
puts obj.query(parameters)

# SYNOPSIS
#   queryAll(parameters)
#
# ARGS
#   parameters      QueryAll - {urn:partner.soap.sforce.com}queryAll
#
# RETURNS
#   parameters      QueryAllResponse - {urn:partner.soap.sforce.com}queryAllResponse
#
# RAISES
#   fault           InvalidSObjectFault - {urn:fault.partner.soap.sforce.com}InvalidSObjectFault
#   fault           InvalidFieldFault - {urn:fault.partner.soap.sforce.com}InvalidFieldFault
#   fault           MalformedQueryFault - {urn:fault.partner.soap.sforce.com}MalformedQueryFault
#   fault           InvalidIdFault - {urn:fault.partner.soap.sforce.com}InvalidIdFault
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#   fault           InvalidQueryLocatorFault - {urn:fault.partner.soap.sforce.com}InvalidQueryLocatorFault
#
parameters = nil
puts obj.queryAll(parameters)

# SYNOPSIS
#   queryMore(parameters)
#
# ARGS
#   parameters      QueryMore - {urn:partner.soap.sforce.com}queryMore
#
# RETURNS
#   parameters      QueryMoreResponse - {urn:partner.soap.sforce.com}queryMoreResponse
#
# RAISES
#   fault           InvalidQueryLocatorFault - {urn:fault.partner.soap.sforce.com}InvalidQueryLocatorFault
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#   fault           InvalidFieldFault - {urn:fault.partner.soap.sforce.com}InvalidFieldFault
#
parameters = nil
puts obj.queryMore(parameters)

# SYNOPSIS
#   search(parameters)
#
# ARGS
#   parameters      Search - {urn:partner.soap.sforce.com}search
#
# RETURNS
#   parameters      SearchResponse - {urn:partner.soap.sforce.com}searchResponse
#
# RAISES
#   fault           InvalidSObjectFault - {urn:fault.partner.soap.sforce.com}InvalidSObjectFault
#   fault           InvalidFieldFault - {urn:fault.partner.soap.sforce.com}InvalidFieldFault
#   fault           MalformedSearchFault - {urn:fault.partner.soap.sforce.com}MalformedSearchFault
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#
parameters = nil
puts obj.search(parameters)

# SYNOPSIS
#   getServerTimestamp(parameters)
#
# ARGS
#   parameters      GetServerTimestamp - {urn:partner.soap.sforce.com}getServerTimestamp
#
# RETURNS
#   parameters      GetServerTimestampResponse - {urn:partner.soap.sforce.com}getServerTimestampResponse
#
# RAISES
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#
parameters = nil
puts obj.getServerTimestamp(parameters)

# SYNOPSIS
#   setPassword(parameters)
#
# ARGS
#   parameters      SetPassword - {urn:partner.soap.sforce.com}setPassword
#
# RETURNS
#   parameters      SetPasswordResponse - {urn:partner.soap.sforce.com}setPasswordResponse
#
# RAISES
#   fault           InvalidIdFault - {urn:fault.partner.soap.sforce.com}InvalidIdFault
#   fault           InvalidNewPasswordFault - {urn:fault.partner.soap.sforce.com}InvalidNewPasswordFault
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#
parameters = nil
puts obj.setPassword(parameters)

# SYNOPSIS
#   resetPassword(parameters)
#
# ARGS
#   parameters      ResetPassword - {urn:partner.soap.sforce.com}resetPassword
#
# RETURNS
#   parameters      ResetPasswordResponse - {urn:partner.soap.sforce.com}resetPasswordResponse
#
# RAISES
#   fault           InvalidIdFault - {urn:fault.partner.soap.sforce.com}InvalidIdFault
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#
parameters = nil
puts obj.resetPassword(parameters)

# SYNOPSIS
#   getUserInfo(parameters)
#
# ARGS
#   parameters      GetUserInfo - {urn:partner.soap.sforce.com}getUserInfo
#
# RETURNS
#   parameters      GetUserInfoResponse - {urn:partner.soap.sforce.com}getUserInfoResponse
#
# RAISES
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#
parameters = nil
puts obj.getUserInfo(parameters)

# SYNOPSIS
#   sendEmail(parameters)
#
# ARGS
#   parameters      SendEmail - {urn:partner.soap.sforce.com}sendEmail
#
# RETURNS
#   parameters      SendEmailResponse - {urn:partner.soap.sforce.com}sendEmailResponse
#
# RAISES
#   fault           UnexpectedErrorFault - {urn:fault.partner.soap.sforce.com}UnexpectedErrorFault
#
parameters = nil
puts obj.sendEmail(parameters)


