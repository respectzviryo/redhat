



#res = driver.describeSObject("sObjectType" => "Lead");
#
#data = res.result
#
#arrts = ["activateable",
#  "childRelationships",
#  "createable"         ,
#  "custom"              ,
#  "customSetting"        ,
#  "deletable"             ,
#  "deprecatedAndHidden"    ,
#  "feedEnabled"             ,
#  "fields"                   ,
#  "keyPrefix"                 ,
#  "label"                      ,
#  "labelPlural"                 ,
#  "layoutable"                   ,
#  "mergeable"                     ,
#  "name"                           ,
#  "queryable"                       ,
#  "recordTypeInfos"                  ,
#  "replicateable"                     ,
#  "retrieveable"                       ,
#  "searchable"                           ,
#  "triggerable"                           ,
#  "undeletable",
#  "updateable" ,
#  "urlDetail",
#  "urlEdit",
#  "urlNew"]
#arrts.each do |attr|
#  puts attr
#  puts data[attr]
#end