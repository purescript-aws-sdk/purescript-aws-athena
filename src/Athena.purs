

-- | <p>Amazon Athena is an interactive query service that lets you use standard SQL to analyze data directly in Amazon S3. You can point Athena at your data in Amazon S3 and run ad-hoc queries and get results in seconds. Athena is serverless, so there is no infrastructure to set up or manage. You pay only for the queries you run. Athena scales automatically—executing queries in parallel—so results are fast, even with large datasets and complex queries. For more information, see <a href="http://docs.aws.amazon.com/athena/latest/ug/what-is.html">What is Amazon Athena</a> in the <i>Amazon Athena User Guide</i>.</p> <p>For code samples using the AWS SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>
module AWS.Athena where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types


-- | <p>Returns the details of a single named query or a list of up to 50 queries, which you provide as an array of query ID strings. Use <a>ListNamedQueries</a> to get the list of named query IDs. If information could not be retrieved for a submitted query ID, information about the query ID submitted is listed under <a>UnprocessedNamedQueryId</a>. Named queries are different from executed queries. Use <a>BatchGetQueryExecution</a> to get details about each unique query execution, and <a>ListQueryExecutions</a> to get a list of query execution IDs.</p>
batchGetNamedQuery :: forall eff. BatchGetNamedQueryInput -> Aff (exception :: EXCEPTION | eff) BatchGetNamedQueryOutput
batchGetNamedQuery = Request.request service method  where
    service = Request.ServiceName "Athena"
    method = Request.MethodName "batchGetNamedQuery"


-- | <p>Returns the details of a single query execution or a list of up to 50 query executions, which you provide as an array of query execution ID strings. To get a list of query execution IDs, use <a>ListQueryExecutions</a>. Query executions are different from named (saved) queries. Use <a>BatchGetNamedQuery</a> to get details about named queries.</p>
batchGetQueryExecution :: forall eff. BatchGetQueryExecutionInput -> Aff (exception :: EXCEPTION | eff) BatchGetQueryExecutionOutput
batchGetQueryExecution = Request.request service method  where
    service = Request.ServiceName "Athena"
    method = Request.MethodName "batchGetQueryExecution"


-- | <p>Creates a named query.</p> <p>For code samples using the AWS SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>
createNamedQuery :: forall eff. CreateNamedQueryInput -> Aff (exception :: EXCEPTION | eff) CreateNamedQueryOutput
createNamedQuery = Request.request service method  where
    service = Request.ServiceName "Athena"
    method = Request.MethodName "createNamedQuery"


-- | <p>Deletes a named query.</p> <p>For code samples using the AWS SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>
deleteNamedQuery :: forall eff. DeleteNamedQueryInput -> Aff (exception :: EXCEPTION | eff) DeleteNamedQueryOutput
deleteNamedQuery = Request.request service method  where
    service = Request.ServiceName "Athena"
    method = Request.MethodName "deleteNamedQuery"


-- | <p>Returns information about a single query.</p>
getNamedQuery :: forall eff. GetNamedQueryInput -> Aff (exception :: EXCEPTION | eff) GetNamedQueryOutput
getNamedQuery = Request.request service method  where
    service = Request.ServiceName "Athena"
    method = Request.MethodName "getNamedQuery"


-- | <p>Returns information about a single execution of a query. Each time a query executes, information about the query execution is saved with a unique ID.</p>
getQueryExecution :: forall eff. GetQueryExecutionInput -> Aff (exception :: EXCEPTION | eff) GetQueryExecutionOutput
getQueryExecution = Request.request service method  where
    service = Request.ServiceName "Athena"
    method = Request.MethodName "getQueryExecution"


-- | <p>Returns the results of a single query execution specified by <code>QueryExecutionId</code>. This request does not execute the query but returns results. Use <a>StartQueryExecution</a> to run a query.</p>
getQueryResults :: forall eff. GetQueryResultsInput -> Aff (exception :: EXCEPTION | eff) GetQueryResultsOutput
getQueryResults = Request.request service method  where
    service = Request.ServiceName "Athena"
    method = Request.MethodName "getQueryResults"


-- | <p>Provides a list of all available query IDs.</p> <p>For code samples using the AWS SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>
listNamedQueries :: forall eff. ListNamedQueriesInput -> Aff (exception :: EXCEPTION | eff) ListNamedQueriesOutput
listNamedQueries = Request.request service method  where
    service = Request.ServiceName "Athena"
    method = Request.MethodName "listNamedQueries"


-- | <p>Provides a list of all available query execution IDs.</p> <p>For code samples using the AWS SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>
listQueryExecutions :: forall eff. ListQueryExecutionsInput -> Aff (exception :: EXCEPTION | eff) ListQueryExecutionsOutput
listQueryExecutions = Request.request service method  where
    service = Request.ServiceName "Athena"
    method = Request.MethodName "listQueryExecutions"


-- | <p>Runs (executes) the SQL query statements contained in the <code>Query</code> string.</p> <p>For code samples using the AWS SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>
startQueryExecution :: forall eff. StartQueryExecutionInput -> Aff (exception :: EXCEPTION | eff) StartQueryExecutionOutput
startQueryExecution = Request.request service method  where
    service = Request.ServiceName "Athena"
    method = Request.MethodName "startQueryExecution"


-- | <p>Stops a query execution.</p> <p>For code samples using the AWS SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>
stopQueryExecution :: forall eff. StopQueryExecutionInput -> Aff (exception :: EXCEPTION | eff) StopQueryExecutionOutput
stopQueryExecution = Request.request service method  where
    service = Request.ServiceName "Athena"
    method = Request.MethodName "stopQueryExecution"


newtype BatchGetNamedQueryInput = BatchGetNamedQueryInput 
  { "NamedQueryIds" :: (NamedQueryIdList)
  }
derive instance newtypeBatchGetNamedQueryInput :: Newtype BatchGetNamedQueryInput _
derive instance repGenericBatchGetNamedQueryInput :: Generic BatchGetNamedQueryInput _
instance showBatchGetNamedQueryInput :: Show BatchGetNamedQueryInput where
  show = genericShow
instance decodeBatchGetNamedQueryInput :: Decode BatchGetNamedQueryInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchGetNamedQueryInput :: Encode BatchGetNamedQueryInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchGetNamedQueryInput from required parameters
newBatchGetNamedQueryInput :: NamedQueryIdList -> BatchGetNamedQueryInput
newBatchGetNamedQueryInput _NamedQueryIds = BatchGetNamedQueryInput { "NamedQueryIds": _NamedQueryIds }

-- | Constructs BatchGetNamedQueryInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchGetNamedQueryInput' :: NamedQueryIdList -> ( { "NamedQueryIds" :: (NamedQueryIdList) } -> {"NamedQueryIds" :: (NamedQueryIdList) } ) -> BatchGetNamedQueryInput
newBatchGetNamedQueryInput' _NamedQueryIds customize = (BatchGetNamedQueryInput <<< customize) { "NamedQueryIds": _NamedQueryIds }



newtype BatchGetNamedQueryOutput = BatchGetNamedQueryOutput 
  { "NamedQueries" :: NullOrUndefined.NullOrUndefined (NamedQueryList)
  , "UnprocessedNamedQueryIds" :: NullOrUndefined.NullOrUndefined (UnprocessedNamedQueryIdList)
  }
derive instance newtypeBatchGetNamedQueryOutput :: Newtype BatchGetNamedQueryOutput _
derive instance repGenericBatchGetNamedQueryOutput :: Generic BatchGetNamedQueryOutput _
instance showBatchGetNamedQueryOutput :: Show BatchGetNamedQueryOutput where
  show = genericShow
instance decodeBatchGetNamedQueryOutput :: Decode BatchGetNamedQueryOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchGetNamedQueryOutput :: Encode BatchGetNamedQueryOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchGetNamedQueryOutput from required parameters
newBatchGetNamedQueryOutput :: BatchGetNamedQueryOutput
newBatchGetNamedQueryOutput  = BatchGetNamedQueryOutput { "NamedQueries": (NullOrUndefined Nothing), "UnprocessedNamedQueryIds": (NullOrUndefined Nothing) }

-- | Constructs BatchGetNamedQueryOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchGetNamedQueryOutput' :: ( { "NamedQueries" :: NullOrUndefined.NullOrUndefined (NamedQueryList) , "UnprocessedNamedQueryIds" :: NullOrUndefined.NullOrUndefined (UnprocessedNamedQueryIdList) } -> {"NamedQueries" :: NullOrUndefined.NullOrUndefined (NamedQueryList) , "UnprocessedNamedQueryIds" :: NullOrUndefined.NullOrUndefined (UnprocessedNamedQueryIdList) } ) -> BatchGetNamedQueryOutput
newBatchGetNamedQueryOutput'  customize = (BatchGetNamedQueryOutput <<< customize) { "NamedQueries": (NullOrUndefined Nothing), "UnprocessedNamedQueryIds": (NullOrUndefined Nothing) }



newtype BatchGetQueryExecutionInput = BatchGetQueryExecutionInput 
  { "QueryExecutionIds" :: (QueryExecutionIdList)
  }
derive instance newtypeBatchGetQueryExecutionInput :: Newtype BatchGetQueryExecutionInput _
derive instance repGenericBatchGetQueryExecutionInput :: Generic BatchGetQueryExecutionInput _
instance showBatchGetQueryExecutionInput :: Show BatchGetQueryExecutionInput where
  show = genericShow
instance decodeBatchGetQueryExecutionInput :: Decode BatchGetQueryExecutionInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchGetQueryExecutionInput :: Encode BatchGetQueryExecutionInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchGetQueryExecutionInput from required parameters
newBatchGetQueryExecutionInput :: QueryExecutionIdList -> BatchGetQueryExecutionInput
newBatchGetQueryExecutionInput _QueryExecutionIds = BatchGetQueryExecutionInput { "QueryExecutionIds": _QueryExecutionIds }

-- | Constructs BatchGetQueryExecutionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchGetQueryExecutionInput' :: QueryExecutionIdList -> ( { "QueryExecutionIds" :: (QueryExecutionIdList) } -> {"QueryExecutionIds" :: (QueryExecutionIdList) } ) -> BatchGetQueryExecutionInput
newBatchGetQueryExecutionInput' _QueryExecutionIds customize = (BatchGetQueryExecutionInput <<< customize) { "QueryExecutionIds": _QueryExecutionIds }



newtype BatchGetQueryExecutionOutput = BatchGetQueryExecutionOutput 
  { "QueryExecutions" :: NullOrUndefined.NullOrUndefined (QueryExecutionList)
  , "UnprocessedQueryExecutionIds" :: NullOrUndefined.NullOrUndefined (UnprocessedQueryExecutionIdList)
  }
derive instance newtypeBatchGetQueryExecutionOutput :: Newtype BatchGetQueryExecutionOutput _
derive instance repGenericBatchGetQueryExecutionOutput :: Generic BatchGetQueryExecutionOutput _
instance showBatchGetQueryExecutionOutput :: Show BatchGetQueryExecutionOutput where
  show = genericShow
instance decodeBatchGetQueryExecutionOutput :: Decode BatchGetQueryExecutionOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchGetQueryExecutionOutput :: Encode BatchGetQueryExecutionOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchGetQueryExecutionOutput from required parameters
newBatchGetQueryExecutionOutput :: BatchGetQueryExecutionOutput
newBatchGetQueryExecutionOutput  = BatchGetQueryExecutionOutput { "QueryExecutions": (NullOrUndefined Nothing), "UnprocessedQueryExecutionIds": (NullOrUndefined Nothing) }

-- | Constructs BatchGetQueryExecutionOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchGetQueryExecutionOutput' :: ( { "QueryExecutions" :: NullOrUndefined.NullOrUndefined (QueryExecutionList) , "UnprocessedQueryExecutionIds" :: NullOrUndefined.NullOrUndefined (UnprocessedQueryExecutionIdList) } -> {"QueryExecutions" :: NullOrUndefined.NullOrUndefined (QueryExecutionList) , "UnprocessedQueryExecutionIds" :: NullOrUndefined.NullOrUndefined (UnprocessedQueryExecutionIdList) } ) -> BatchGetQueryExecutionOutput
newBatchGetQueryExecutionOutput'  customize = (BatchGetQueryExecutionOutput <<< customize) { "QueryExecutions": (NullOrUndefined Nothing), "UnprocessedQueryExecutionIds": (NullOrUndefined Nothing) }



-- | <p>Information about the columns in a query execution result.</p>
newtype ColumnInfo = ColumnInfo 
  { "CatalogName" :: NullOrUndefined.NullOrUndefined (String)
  , "SchemaName" :: NullOrUndefined.NullOrUndefined (String)
  , "TableName" :: NullOrUndefined.NullOrUndefined (String)
  , "Name" :: (String)
  , "Label" :: NullOrUndefined.NullOrUndefined (String)
  , "Type" :: (String)
  , "Precision" :: NullOrUndefined.NullOrUndefined (Int)
  , "Scale" :: NullOrUndefined.NullOrUndefined (Int)
  , "Nullable" :: NullOrUndefined.NullOrUndefined (ColumnNullable)
  , "CaseSensitive" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeColumnInfo :: Newtype ColumnInfo _
derive instance repGenericColumnInfo :: Generic ColumnInfo _
instance showColumnInfo :: Show ColumnInfo where
  show = genericShow
instance decodeColumnInfo :: Decode ColumnInfo where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeColumnInfo :: Encode ColumnInfo where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ColumnInfo from required parameters
newColumnInfo :: String -> String -> ColumnInfo
newColumnInfo _Name _Type = ColumnInfo { "Name": _Name, "Type": _Type, "CaseSensitive": (NullOrUndefined Nothing), "CatalogName": (NullOrUndefined Nothing), "Label": (NullOrUndefined Nothing), "Nullable": (NullOrUndefined Nothing), "Precision": (NullOrUndefined Nothing), "Scale": (NullOrUndefined Nothing), "SchemaName": (NullOrUndefined Nothing), "TableName": (NullOrUndefined Nothing) }

-- | Constructs ColumnInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newColumnInfo' :: String -> String -> ( { "CatalogName" :: NullOrUndefined.NullOrUndefined (String) , "SchemaName" :: NullOrUndefined.NullOrUndefined (String) , "TableName" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: (String) , "Label" :: NullOrUndefined.NullOrUndefined (String) , "Type" :: (String) , "Precision" :: NullOrUndefined.NullOrUndefined (Int) , "Scale" :: NullOrUndefined.NullOrUndefined (Int) , "Nullable" :: NullOrUndefined.NullOrUndefined (ColumnNullable) , "CaseSensitive" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"CatalogName" :: NullOrUndefined.NullOrUndefined (String) , "SchemaName" :: NullOrUndefined.NullOrUndefined (String) , "TableName" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: (String) , "Label" :: NullOrUndefined.NullOrUndefined (String) , "Type" :: (String) , "Precision" :: NullOrUndefined.NullOrUndefined (Int) , "Scale" :: NullOrUndefined.NullOrUndefined (Int) , "Nullable" :: NullOrUndefined.NullOrUndefined (ColumnNullable) , "CaseSensitive" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> ColumnInfo
newColumnInfo' _Name _Type customize = (ColumnInfo <<< customize) { "Name": _Name, "Type": _Type, "CaseSensitive": (NullOrUndefined Nothing), "CatalogName": (NullOrUndefined Nothing), "Label": (NullOrUndefined Nothing), "Nullable": (NullOrUndefined Nothing), "Precision": (NullOrUndefined Nothing), "Scale": (NullOrUndefined Nothing), "SchemaName": (NullOrUndefined Nothing), "TableName": (NullOrUndefined Nothing) }



newtype ColumnInfoList = ColumnInfoList (Array ColumnInfo)
derive instance newtypeColumnInfoList :: Newtype ColumnInfoList _
derive instance repGenericColumnInfoList :: Generic ColumnInfoList _
instance showColumnInfoList :: Show ColumnInfoList where
  show = genericShow
instance decodeColumnInfoList :: Decode ColumnInfoList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeColumnInfoList :: Encode ColumnInfoList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ColumnNullable = ColumnNullable String
derive instance newtypeColumnNullable :: Newtype ColumnNullable _
derive instance repGenericColumnNullable :: Generic ColumnNullable _
instance showColumnNullable :: Show ColumnNullable where
  show = genericShow
instance decodeColumnNullable :: Decode ColumnNullable where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeColumnNullable :: Encode ColumnNullable where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CreateNamedQueryInput = CreateNamedQueryInput 
  { "Name" :: (NameString)
  , "Description" :: NullOrUndefined.NullOrUndefined (DescriptionString)
  , "Database" :: (DatabaseString)
  , "QueryString" :: (QueryString)
  , "ClientRequestToken" :: NullOrUndefined.NullOrUndefined (IdempotencyToken)
  }
derive instance newtypeCreateNamedQueryInput :: Newtype CreateNamedQueryInput _
derive instance repGenericCreateNamedQueryInput :: Generic CreateNamedQueryInput _
instance showCreateNamedQueryInput :: Show CreateNamedQueryInput where
  show = genericShow
instance decodeCreateNamedQueryInput :: Decode CreateNamedQueryInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateNamedQueryInput :: Encode CreateNamedQueryInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateNamedQueryInput from required parameters
newCreateNamedQueryInput :: DatabaseString -> NameString -> QueryString -> CreateNamedQueryInput
newCreateNamedQueryInput _Database _Name _QueryString = CreateNamedQueryInput { "Database": _Database, "Name": _Name, "QueryString": _QueryString, "ClientRequestToken": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing) }

-- | Constructs CreateNamedQueryInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateNamedQueryInput' :: DatabaseString -> NameString -> QueryString -> ( { "Name" :: (NameString) , "Description" :: NullOrUndefined.NullOrUndefined (DescriptionString) , "Database" :: (DatabaseString) , "QueryString" :: (QueryString) , "ClientRequestToken" :: NullOrUndefined.NullOrUndefined (IdempotencyToken) } -> {"Name" :: (NameString) , "Description" :: NullOrUndefined.NullOrUndefined (DescriptionString) , "Database" :: (DatabaseString) , "QueryString" :: (QueryString) , "ClientRequestToken" :: NullOrUndefined.NullOrUndefined (IdempotencyToken) } ) -> CreateNamedQueryInput
newCreateNamedQueryInput' _Database _Name _QueryString customize = (CreateNamedQueryInput <<< customize) { "Database": _Database, "Name": _Name, "QueryString": _QueryString, "ClientRequestToken": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing) }



newtype CreateNamedQueryOutput = CreateNamedQueryOutput 
  { "NamedQueryId" :: NullOrUndefined.NullOrUndefined (NamedQueryId)
  }
derive instance newtypeCreateNamedQueryOutput :: Newtype CreateNamedQueryOutput _
derive instance repGenericCreateNamedQueryOutput :: Generic CreateNamedQueryOutput _
instance showCreateNamedQueryOutput :: Show CreateNamedQueryOutput where
  show = genericShow
instance decodeCreateNamedQueryOutput :: Decode CreateNamedQueryOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateNamedQueryOutput :: Encode CreateNamedQueryOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateNamedQueryOutput from required parameters
newCreateNamedQueryOutput :: CreateNamedQueryOutput
newCreateNamedQueryOutput  = CreateNamedQueryOutput { "NamedQueryId": (NullOrUndefined Nothing) }

-- | Constructs CreateNamedQueryOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateNamedQueryOutput' :: ( { "NamedQueryId" :: NullOrUndefined.NullOrUndefined (NamedQueryId) } -> {"NamedQueryId" :: NullOrUndefined.NullOrUndefined (NamedQueryId) } ) -> CreateNamedQueryOutput
newCreateNamedQueryOutput'  customize = (CreateNamedQueryOutput <<< customize) { "NamedQueryId": (NullOrUndefined Nothing) }



newtype DatabaseString = DatabaseString String
derive instance newtypeDatabaseString :: Newtype DatabaseString _
derive instance repGenericDatabaseString :: Generic DatabaseString _
instance showDatabaseString :: Show DatabaseString where
  show = genericShow
instance decodeDatabaseString :: Decode DatabaseString where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDatabaseString :: Encode DatabaseString where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Date = Date Types.Timestamp
derive instance newtypeDate :: Newtype Date _
derive instance repGenericDate :: Generic Date _
instance showDate :: Show Date where
  show = genericShow
instance decodeDate :: Decode Date where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDate :: Encode Date where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>A piece of data (a field in the table).</p>
newtype Datum = Datum 
  { "VarCharValue" :: NullOrUndefined.NullOrUndefined (DatumString')
  }
derive instance newtypeDatum :: Newtype Datum _
derive instance repGenericDatum :: Generic Datum _
instance showDatum :: Show Datum where
  show = genericShow
instance decodeDatum :: Decode Datum where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDatum :: Encode Datum where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Datum from required parameters
newDatum :: Datum
newDatum  = Datum { "VarCharValue": (NullOrUndefined Nothing) }

-- | Constructs Datum's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDatum' :: ( { "VarCharValue" :: NullOrUndefined.NullOrUndefined (DatumString') } -> {"VarCharValue" :: NullOrUndefined.NullOrUndefined (DatumString') } ) -> Datum
newDatum'  customize = (Datum <<< customize) { "VarCharValue": (NullOrUndefined Nothing) }



newtype DeleteNamedQueryInput = DeleteNamedQueryInput 
  { "NamedQueryId" :: (NamedQueryId)
  }
derive instance newtypeDeleteNamedQueryInput :: Newtype DeleteNamedQueryInput _
derive instance repGenericDeleteNamedQueryInput :: Generic DeleteNamedQueryInput _
instance showDeleteNamedQueryInput :: Show DeleteNamedQueryInput where
  show = genericShow
instance decodeDeleteNamedQueryInput :: Decode DeleteNamedQueryInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteNamedQueryInput :: Encode DeleteNamedQueryInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteNamedQueryInput from required parameters
newDeleteNamedQueryInput :: NamedQueryId -> DeleteNamedQueryInput
newDeleteNamedQueryInput _NamedQueryId = DeleteNamedQueryInput { "NamedQueryId": _NamedQueryId }

-- | Constructs DeleteNamedQueryInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteNamedQueryInput' :: NamedQueryId -> ( { "NamedQueryId" :: (NamedQueryId) } -> {"NamedQueryId" :: (NamedQueryId) } ) -> DeleteNamedQueryInput
newDeleteNamedQueryInput' _NamedQueryId customize = (DeleteNamedQueryInput <<< customize) { "NamedQueryId": _NamedQueryId }



newtype DeleteNamedQueryOutput = DeleteNamedQueryOutput Types.NoArguments
derive instance newtypeDeleteNamedQueryOutput :: Newtype DeleteNamedQueryOutput _
derive instance repGenericDeleteNamedQueryOutput :: Generic DeleteNamedQueryOutput _
instance showDeleteNamedQueryOutput :: Show DeleteNamedQueryOutput where
  show = genericShow
instance decodeDeleteNamedQueryOutput :: Decode DeleteNamedQueryOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteNamedQueryOutput :: Encode DeleteNamedQueryOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DescriptionString = DescriptionString String
derive instance newtypeDescriptionString :: Newtype DescriptionString _
derive instance repGenericDescriptionString :: Generic DescriptionString _
instance showDescriptionString :: Show DescriptionString where
  show = genericShow
instance decodeDescriptionString :: Decode DescriptionString where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescriptionString :: Encode DescriptionString where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>If query results are encrypted in Amazon S3, indicates the Amazon S3 encryption option used.</p>
newtype EncryptionConfiguration = EncryptionConfiguration 
  { "EncryptionOption" :: (EncryptionOption)
  , "KmsKey" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeEncryptionConfiguration :: Newtype EncryptionConfiguration _
derive instance repGenericEncryptionConfiguration :: Generic EncryptionConfiguration _
instance showEncryptionConfiguration :: Show EncryptionConfiguration where
  show = genericShow
instance decodeEncryptionConfiguration :: Decode EncryptionConfiguration where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEncryptionConfiguration :: Encode EncryptionConfiguration where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs EncryptionConfiguration from required parameters
newEncryptionConfiguration :: EncryptionOption -> EncryptionConfiguration
newEncryptionConfiguration _EncryptionOption = EncryptionConfiguration { "EncryptionOption": _EncryptionOption, "KmsKey": (NullOrUndefined Nothing) }

-- | Constructs EncryptionConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEncryptionConfiguration' :: EncryptionOption -> ( { "EncryptionOption" :: (EncryptionOption) , "KmsKey" :: NullOrUndefined.NullOrUndefined (String) } -> {"EncryptionOption" :: (EncryptionOption) , "KmsKey" :: NullOrUndefined.NullOrUndefined (String) } ) -> EncryptionConfiguration
newEncryptionConfiguration' _EncryptionOption customize = (EncryptionConfiguration <<< customize) { "EncryptionOption": _EncryptionOption, "KmsKey": (NullOrUndefined Nothing) }



newtype EncryptionOption = EncryptionOption String
derive instance newtypeEncryptionOption :: Newtype EncryptionOption _
derive instance repGenericEncryptionOption :: Generic EncryptionOption _
instance showEncryptionOption :: Show EncryptionOption where
  show = genericShow
instance decodeEncryptionOption :: Decode EncryptionOption where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEncryptionOption :: Encode EncryptionOption where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ErrorCode = ErrorCode String
derive instance newtypeErrorCode :: Newtype ErrorCode _
derive instance repGenericErrorCode :: Generic ErrorCode _
instance showErrorCode :: Show ErrorCode where
  show = genericShow
instance decodeErrorCode :: Decode ErrorCode where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeErrorCode :: Encode ErrorCode where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where
  show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeErrorMessage :: Encode ErrorMessage where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GetNamedQueryInput = GetNamedQueryInput 
  { "NamedQueryId" :: (NamedQueryId)
  }
derive instance newtypeGetNamedQueryInput :: Newtype GetNamedQueryInput _
derive instance repGenericGetNamedQueryInput :: Generic GetNamedQueryInput _
instance showGetNamedQueryInput :: Show GetNamedQueryInput where
  show = genericShow
instance decodeGetNamedQueryInput :: Decode GetNamedQueryInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetNamedQueryInput :: Encode GetNamedQueryInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetNamedQueryInput from required parameters
newGetNamedQueryInput :: NamedQueryId -> GetNamedQueryInput
newGetNamedQueryInput _NamedQueryId = GetNamedQueryInput { "NamedQueryId": _NamedQueryId }

-- | Constructs GetNamedQueryInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetNamedQueryInput' :: NamedQueryId -> ( { "NamedQueryId" :: (NamedQueryId) } -> {"NamedQueryId" :: (NamedQueryId) } ) -> GetNamedQueryInput
newGetNamedQueryInput' _NamedQueryId customize = (GetNamedQueryInput <<< customize) { "NamedQueryId": _NamedQueryId }



newtype GetNamedQueryOutput = GetNamedQueryOutput 
  { "NamedQuery" :: NullOrUndefined.NullOrUndefined (NamedQuery)
  }
derive instance newtypeGetNamedQueryOutput :: Newtype GetNamedQueryOutput _
derive instance repGenericGetNamedQueryOutput :: Generic GetNamedQueryOutput _
instance showGetNamedQueryOutput :: Show GetNamedQueryOutput where
  show = genericShow
instance decodeGetNamedQueryOutput :: Decode GetNamedQueryOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetNamedQueryOutput :: Encode GetNamedQueryOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetNamedQueryOutput from required parameters
newGetNamedQueryOutput :: GetNamedQueryOutput
newGetNamedQueryOutput  = GetNamedQueryOutput { "NamedQuery": (NullOrUndefined Nothing) }

-- | Constructs GetNamedQueryOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetNamedQueryOutput' :: ( { "NamedQuery" :: NullOrUndefined.NullOrUndefined (NamedQuery) } -> {"NamedQuery" :: NullOrUndefined.NullOrUndefined (NamedQuery) } ) -> GetNamedQueryOutput
newGetNamedQueryOutput'  customize = (GetNamedQueryOutput <<< customize) { "NamedQuery": (NullOrUndefined Nothing) }



newtype GetQueryExecutionInput = GetQueryExecutionInput 
  { "QueryExecutionId" :: (QueryExecutionId)
  }
derive instance newtypeGetQueryExecutionInput :: Newtype GetQueryExecutionInput _
derive instance repGenericGetQueryExecutionInput :: Generic GetQueryExecutionInput _
instance showGetQueryExecutionInput :: Show GetQueryExecutionInput where
  show = genericShow
instance decodeGetQueryExecutionInput :: Decode GetQueryExecutionInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetQueryExecutionInput :: Encode GetQueryExecutionInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetQueryExecutionInput from required parameters
newGetQueryExecutionInput :: QueryExecutionId -> GetQueryExecutionInput
newGetQueryExecutionInput _QueryExecutionId = GetQueryExecutionInput { "QueryExecutionId": _QueryExecutionId }

-- | Constructs GetQueryExecutionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetQueryExecutionInput' :: QueryExecutionId -> ( { "QueryExecutionId" :: (QueryExecutionId) } -> {"QueryExecutionId" :: (QueryExecutionId) } ) -> GetQueryExecutionInput
newGetQueryExecutionInput' _QueryExecutionId customize = (GetQueryExecutionInput <<< customize) { "QueryExecutionId": _QueryExecutionId }



newtype GetQueryExecutionOutput = GetQueryExecutionOutput 
  { "QueryExecution" :: NullOrUndefined.NullOrUndefined (QueryExecution)
  }
derive instance newtypeGetQueryExecutionOutput :: Newtype GetQueryExecutionOutput _
derive instance repGenericGetQueryExecutionOutput :: Generic GetQueryExecutionOutput _
instance showGetQueryExecutionOutput :: Show GetQueryExecutionOutput where
  show = genericShow
instance decodeGetQueryExecutionOutput :: Decode GetQueryExecutionOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetQueryExecutionOutput :: Encode GetQueryExecutionOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetQueryExecutionOutput from required parameters
newGetQueryExecutionOutput :: GetQueryExecutionOutput
newGetQueryExecutionOutput  = GetQueryExecutionOutput { "QueryExecution": (NullOrUndefined Nothing) }

-- | Constructs GetQueryExecutionOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetQueryExecutionOutput' :: ( { "QueryExecution" :: NullOrUndefined.NullOrUndefined (QueryExecution) } -> {"QueryExecution" :: NullOrUndefined.NullOrUndefined (QueryExecution) } ) -> GetQueryExecutionOutput
newGetQueryExecutionOutput'  customize = (GetQueryExecutionOutput <<< customize) { "QueryExecution": (NullOrUndefined Nothing) }



newtype GetQueryResultsInput = GetQueryResultsInput 
  { "QueryExecutionId" :: (QueryExecutionId)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (Token)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxQueryResults)
  }
derive instance newtypeGetQueryResultsInput :: Newtype GetQueryResultsInput _
derive instance repGenericGetQueryResultsInput :: Generic GetQueryResultsInput _
instance showGetQueryResultsInput :: Show GetQueryResultsInput where
  show = genericShow
instance decodeGetQueryResultsInput :: Decode GetQueryResultsInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetQueryResultsInput :: Encode GetQueryResultsInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetQueryResultsInput from required parameters
newGetQueryResultsInput :: QueryExecutionId -> GetQueryResultsInput
newGetQueryResultsInput _QueryExecutionId = GetQueryResultsInput { "QueryExecutionId": _QueryExecutionId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs GetQueryResultsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetQueryResultsInput' :: QueryExecutionId -> ( { "QueryExecutionId" :: (QueryExecutionId) , "NextToken" :: NullOrUndefined.NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxQueryResults) } -> {"QueryExecutionId" :: (QueryExecutionId) , "NextToken" :: NullOrUndefined.NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxQueryResults) } ) -> GetQueryResultsInput
newGetQueryResultsInput' _QueryExecutionId customize = (GetQueryResultsInput <<< customize) { "QueryExecutionId": _QueryExecutionId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype GetQueryResultsOutput = GetQueryResultsOutput 
  { "ResultSet" :: NullOrUndefined.NullOrUndefined (ResultSet)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (Token)
  }
derive instance newtypeGetQueryResultsOutput :: Newtype GetQueryResultsOutput _
derive instance repGenericGetQueryResultsOutput :: Generic GetQueryResultsOutput _
instance showGetQueryResultsOutput :: Show GetQueryResultsOutput where
  show = genericShow
instance decodeGetQueryResultsOutput :: Decode GetQueryResultsOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetQueryResultsOutput :: Encode GetQueryResultsOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetQueryResultsOutput from required parameters
newGetQueryResultsOutput :: GetQueryResultsOutput
newGetQueryResultsOutput  = GetQueryResultsOutput { "NextToken": (NullOrUndefined Nothing), "ResultSet": (NullOrUndefined Nothing) }

-- | Constructs GetQueryResultsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetQueryResultsOutput' :: ( { "ResultSet" :: NullOrUndefined.NullOrUndefined (ResultSet) , "NextToken" :: NullOrUndefined.NullOrUndefined (Token) } -> {"ResultSet" :: NullOrUndefined.NullOrUndefined (ResultSet) , "NextToken" :: NullOrUndefined.NullOrUndefined (Token) } ) -> GetQueryResultsOutput
newGetQueryResultsOutput'  customize = (GetQueryResultsOutput <<< customize) { "NextToken": (NullOrUndefined Nothing), "ResultSet": (NullOrUndefined Nothing) }



newtype IdempotencyToken = IdempotencyToken String
derive instance newtypeIdempotencyToken :: Newtype IdempotencyToken _
derive instance repGenericIdempotencyToken :: Generic IdempotencyToken _
instance showIdempotencyToken :: Show IdempotencyToken where
  show = genericShow
instance decodeIdempotencyToken :: Decode IdempotencyToken where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeIdempotencyToken :: Encode IdempotencyToken where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Indicates a platform issue, which may be due to a transient condition or outage.</p>
newtype InternalServerException = InternalServerException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInternalServerException :: Newtype InternalServerException _
derive instance repGenericInternalServerException :: Generic InternalServerException _
instance showInternalServerException :: Show InternalServerException where
  show = genericShow
instance decodeInternalServerException :: Decode InternalServerException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInternalServerException :: Encode InternalServerException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InternalServerException from required parameters
newInternalServerException :: InternalServerException
newInternalServerException  = InternalServerException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InternalServerException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServerException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InternalServerException
newInternalServerException'  customize = (InternalServerException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>Indicates that something is wrong with the input to the request. For example, a required parameter may be missing or out of range.</p>
newtype InvalidRequestException = InvalidRequestException 
  { "AthenaErrorCode" :: NullOrUndefined.NullOrUndefined (ErrorCode)
  , "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidRequestException :: Newtype InvalidRequestException _
derive instance repGenericInvalidRequestException :: Generic InvalidRequestException _
instance showInvalidRequestException :: Show InvalidRequestException where
  show = genericShow
instance decodeInvalidRequestException :: Decode InvalidRequestException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidRequestException :: Encode InvalidRequestException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidRequestException from required parameters
newInvalidRequestException :: InvalidRequestException
newInvalidRequestException  = InvalidRequestException { "AthenaErrorCode": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidRequestException' :: ( { "AthenaErrorCode" :: NullOrUndefined.NullOrUndefined (ErrorCode) , "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"AthenaErrorCode" :: NullOrUndefined.NullOrUndefined (ErrorCode) , "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InvalidRequestException
newInvalidRequestException'  customize = (InvalidRequestException <<< customize) { "AthenaErrorCode": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }



newtype ListNamedQueriesInput = ListNamedQueriesInput 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (Token)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxNamedQueriesCount)
  }
derive instance newtypeListNamedQueriesInput :: Newtype ListNamedQueriesInput _
derive instance repGenericListNamedQueriesInput :: Generic ListNamedQueriesInput _
instance showListNamedQueriesInput :: Show ListNamedQueriesInput where
  show = genericShow
instance decodeListNamedQueriesInput :: Decode ListNamedQueriesInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListNamedQueriesInput :: Encode ListNamedQueriesInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListNamedQueriesInput from required parameters
newListNamedQueriesInput :: ListNamedQueriesInput
newListNamedQueriesInput  = ListNamedQueriesInput { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListNamedQueriesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListNamedQueriesInput' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxNamedQueriesCount) } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxNamedQueriesCount) } ) -> ListNamedQueriesInput
newListNamedQueriesInput'  customize = (ListNamedQueriesInput <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListNamedQueriesOutput = ListNamedQueriesOutput 
  { "NamedQueryIds" :: NullOrUndefined.NullOrUndefined (NamedQueryIdList)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (Token)
  }
derive instance newtypeListNamedQueriesOutput :: Newtype ListNamedQueriesOutput _
derive instance repGenericListNamedQueriesOutput :: Generic ListNamedQueriesOutput _
instance showListNamedQueriesOutput :: Show ListNamedQueriesOutput where
  show = genericShow
instance decodeListNamedQueriesOutput :: Decode ListNamedQueriesOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListNamedQueriesOutput :: Encode ListNamedQueriesOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListNamedQueriesOutput from required parameters
newListNamedQueriesOutput :: ListNamedQueriesOutput
newListNamedQueriesOutput  = ListNamedQueriesOutput { "NamedQueryIds": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListNamedQueriesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListNamedQueriesOutput' :: ( { "NamedQueryIds" :: NullOrUndefined.NullOrUndefined (NamedQueryIdList) , "NextToken" :: NullOrUndefined.NullOrUndefined (Token) } -> {"NamedQueryIds" :: NullOrUndefined.NullOrUndefined (NamedQueryIdList) , "NextToken" :: NullOrUndefined.NullOrUndefined (Token) } ) -> ListNamedQueriesOutput
newListNamedQueriesOutput'  customize = (ListNamedQueriesOutput <<< customize) { "NamedQueryIds": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListQueryExecutionsInput = ListQueryExecutionsInput 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (Token)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxQueryExecutionsCount)
  }
derive instance newtypeListQueryExecutionsInput :: Newtype ListQueryExecutionsInput _
derive instance repGenericListQueryExecutionsInput :: Generic ListQueryExecutionsInput _
instance showListQueryExecutionsInput :: Show ListQueryExecutionsInput where
  show = genericShow
instance decodeListQueryExecutionsInput :: Decode ListQueryExecutionsInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListQueryExecutionsInput :: Encode ListQueryExecutionsInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListQueryExecutionsInput from required parameters
newListQueryExecutionsInput :: ListQueryExecutionsInput
newListQueryExecutionsInput  = ListQueryExecutionsInput { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListQueryExecutionsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListQueryExecutionsInput' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxQueryExecutionsCount) } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxQueryExecutionsCount) } ) -> ListQueryExecutionsInput
newListQueryExecutionsInput'  customize = (ListQueryExecutionsInput <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListQueryExecutionsOutput = ListQueryExecutionsOutput 
  { "QueryExecutionIds" :: NullOrUndefined.NullOrUndefined (QueryExecutionIdList)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (Token)
  }
derive instance newtypeListQueryExecutionsOutput :: Newtype ListQueryExecutionsOutput _
derive instance repGenericListQueryExecutionsOutput :: Generic ListQueryExecutionsOutput _
instance showListQueryExecutionsOutput :: Show ListQueryExecutionsOutput where
  show = genericShow
instance decodeListQueryExecutionsOutput :: Decode ListQueryExecutionsOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListQueryExecutionsOutput :: Encode ListQueryExecutionsOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListQueryExecutionsOutput from required parameters
newListQueryExecutionsOutput :: ListQueryExecutionsOutput
newListQueryExecutionsOutput  = ListQueryExecutionsOutput { "NextToken": (NullOrUndefined Nothing), "QueryExecutionIds": (NullOrUndefined Nothing) }

-- | Constructs ListQueryExecutionsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListQueryExecutionsOutput' :: ( { "QueryExecutionIds" :: NullOrUndefined.NullOrUndefined (QueryExecutionIdList) , "NextToken" :: NullOrUndefined.NullOrUndefined (Token) } -> {"QueryExecutionIds" :: NullOrUndefined.NullOrUndefined (QueryExecutionIdList) , "NextToken" :: NullOrUndefined.NullOrUndefined (Token) } ) -> ListQueryExecutionsOutput
newListQueryExecutionsOutput'  customize = (ListQueryExecutionsOutput <<< customize) { "NextToken": (NullOrUndefined Nothing), "QueryExecutionIds": (NullOrUndefined Nothing) }



newtype MaxNamedQueriesCount = MaxNamedQueriesCount Int
derive instance newtypeMaxNamedQueriesCount :: Newtype MaxNamedQueriesCount _
derive instance repGenericMaxNamedQueriesCount :: Generic MaxNamedQueriesCount _
instance showMaxNamedQueriesCount :: Show MaxNamedQueriesCount where
  show = genericShow
instance decodeMaxNamedQueriesCount :: Decode MaxNamedQueriesCount where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMaxNamedQueriesCount :: Encode MaxNamedQueriesCount where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MaxQueryExecutionsCount = MaxQueryExecutionsCount Int
derive instance newtypeMaxQueryExecutionsCount :: Newtype MaxQueryExecutionsCount _
derive instance repGenericMaxQueryExecutionsCount :: Generic MaxQueryExecutionsCount _
instance showMaxQueryExecutionsCount :: Show MaxQueryExecutionsCount where
  show = genericShow
instance decodeMaxQueryExecutionsCount :: Decode MaxQueryExecutionsCount where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMaxQueryExecutionsCount :: Encode MaxQueryExecutionsCount where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MaxQueryResults = MaxQueryResults Int
derive instance newtypeMaxQueryResults :: Newtype MaxQueryResults _
derive instance repGenericMaxQueryResults :: Generic MaxQueryResults _
instance showMaxQueryResults :: Show MaxQueryResults where
  show = genericShow
instance decodeMaxQueryResults :: Decode MaxQueryResults where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMaxQueryResults :: Encode MaxQueryResults where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype NameString = NameString String
derive instance newtypeNameString :: Newtype NameString _
derive instance repGenericNameString :: Generic NameString _
instance showNameString :: Show NameString where
  show = genericShow
instance decodeNameString :: Decode NameString where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNameString :: Encode NameString where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>A query, where <code>QueryString</code> is the SQL query statements that comprise the query.</p>
newtype NamedQuery = NamedQuery 
  { "Name" :: (NameString)
  , "Description" :: NullOrUndefined.NullOrUndefined (DescriptionString)
  , "Database" :: (DatabaseString)
  , "QueryString" :: (QueryString)
  , "NamedQueryId" :: NullOrUndefined.NullOrUndefined (NamedQueryId)
  }
derive instance newtypeNamedQuery :: Newtype NamedQuery _
derive instance repGenericNamedQuery :: Generic NamedQuery _
instance showNamedQuery :: Show NamedQuery where
  show = genericShow
instance decodeNamedQuery :: Decode NamedQuery where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNamedQuery :: Encode NamedQuery where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs NamedQuery from required parameters
newNamedQuery :: DatabaseString -> NameString -> QueryString -> NamedQuery
newNamedQuery _Database _Name _QueryString = NamedQuery { "Database": _Database, "Name": _Name, "QueryString": _QueryString, "Description": (NullOrUndefined Nothing), "NamedQueryId": (NullOrUndefined Nothing) }

-- | Constructs NamedQuery's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNamedQuery' :: DatabaseString -> NameString -> QueryString -> ( { "Name" :: (NameString) , "Description" :: NullOrUndefined.NullOrUndefined (DescriptionString) , "Database" :: (DatabaseString) , "QueryString" :: (QueryString) , "NamedQueryId" :: NullOrUndefined.NullOrUndefined (NamedQueryId) } -> {"Name" :: (NameString) , "Description" :: NullOrUndefined.NullOrUndefined (DescriptionString) , "Database" :: (DatabaseString) , "QueryString" :: (QueryString) , "NamedQueryId" :: NullOrUndefined.NullOrUndefined (NamedQueryId) } ) -> NamedQuery
newNamedQuery' _Database _Name _QueryString customize = (NamedQuery <<< customize) { "Database": _Database, "Name": _Name, "QueryString": _QueryString, "Description": (NullOrUndefined Nothing), "NamedQueryId": (NullOrUndefined Nothing) }



newtype NamedQueryId = NamedQueryId String
derive instance newtypeNamedQueryId :: Newtype NamedQueryId _
derive instance repGenericNamedQueryId :: Generic NamedQueryId _
instance showNamedQueryId :: Show NamedQueryId where
  show = genericShow
instance decodeNamedQueryId :: Decode NamedQueryId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNamedQueryId :: Encode NamedQueryId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype NamedQueryIdList = NamedQueryIdList (Array NamedQueryId)
derive instance newtypeNamedQueryIdList :: Newtype NamedQueryIdList _
derive instance repGenericNamedQueryIdList :: Generic NamedQueryIdList _
instance showNamedQueryIdList :: Show NamedQueryIdList where
  show = genericShow
instance decodeNamedQueryIdList :: Decode NamedQueryIdList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNamedQueryIdList :: Encode NamedQueryIdList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype NamedQueryList = NamedQueryList (Array NamedQuery)
derive instance newtypeNamedQueryList :: Newtype NamedQueryList _
derive instance repGenericNamedQueryList :: Generic NamedQueryList _
instance showNamedQueryList :: Show NamedQueryList where
  show = genericShow
instance decodeNamedQueryList :: Decode NamedQueryList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNamedQueryList :: Encode NamedQueryList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Information about a single instance of a query execution.</p>
newtype QueryExecution = QueryExecution 
  { "QueryExecutionId" :: NullOrUndefined.NullOrUndefined (QueryExecutionId)
  , "Query" :: NullOrUndefined.NullOrUndefined (QueryString)
  , "ResultConfiguration" :: NullOrUndefined.NullOrUndefined (ResultConfiguration)
  , "QueryExecutionContext" :: NullOrUndefined.NullOrUndefined (QueryExecutionContext)
  , "Status" :: NullOrUndefined.NullOrUndefined (QueryExecutionStatus)
  , "Statistics" :: NullOrUndefined.NullOrUndefined (QueryExecutionStatistics)
  }
derive instance newtypeQueryExecution :: Newtype QueryExecution _
derive instance repGenericQueryExecution :: Generic QueryExecution _
instance showQueryExecution :: Show QueryExecution where
  show = genericShow
instance decodeQueryExecution :: Decode QueryExecution where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQueryExecution :: Encode QueryExecution where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs QueryExecution from required parameters
newQueryExecution :: QueryExecution
newQueryExecution  = QueryExecution { "Query": (NullOrUndefined Nothing), "QueryExecutionContext": (NullOrUndefined Nothing), "QueryExecutionId": (NullOrUndefined Nothing), "ResultConfiguration": (NullOrUndefined Nothing), "Statistics": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs QueryExecution's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newQueryExecution' :: ( { "QueryExecutionId" :: NullOrUndefined.NullOrUndefined (QueryExecutionId) , "Query" :: NullOrUndefined.NullOrUndefined (QueryString) , "ResultConfiguration" :: NullOrUndefined.NullOrUndefined (ResultConfiguration) , "QueryExecutionContext" :: NullOrUndefined.NullOrUndefined (QueryExecutionContext) , "Status" :: NullOrUndefined.NullOrUndefined (QueryExecutionStatus) , "Statistics" :: NullOrUndefined.NullOrUndefined (QueryExecutionStatistics) } -> {"QueryExecutionId" :: NullOrUndefined.NullOrUndefined (QueryExecutionId) , "Query" :: NullOrUndefined.NullOrUndefined (QueryString) , "ResultConfiguration" :: NullOrUndefined.NullOrUndefined (ResultConfiguration) , "QueryExecutionContext" :: NullOrUndefined.NullOrUndefined (QueryExecutionContext) , "Status" :: NullOrUndefined.NullOrUndefined (QueryExecutionStatus) , "Statistics" :: NullOrUndefined.NullOrUndefined (QueryExecutionStatistics) } ) -> QueryExecution
newQueryExecution'  customize = (QueryExecution <<< customize) { "Query": (NullOrUndefined Nothing), "QueryExecutionContext": (NullOrUndefined Nothing), "QueryExecutionId": (NullOrUndefined Nothing), "ResultConfiguration": (NullOrUndefined Nothing), "Statistics": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



-- | <p>The database in which the query execution occurs.</p>
newtype QueryExecutionContext = QueryExecutionContext 
  { "Database" :: NullOrUndefined.NullOrUndefined (DatabaseString)
  }
derive instance newtypeQueryExecutionContext :: Newtype QueryExecutionContext _
derive instance repGenericQueryExecutionContext :: Generic QueryExecutionContext _
instance showQueryExecutionContext :: Show QueryExecutionContext where
  show = genericShow
instance decodeQueryExecutionContext :: Decode QueryExecutionContext where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQueryExecutionContext :: Encode QueryExecutionContext where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs QueryExecutionContext from required parameters
newQueryExecutionContext :: QueryExecutionContext
newQueryExecutionContext  = QueryExecutionContext { "Database": (NullOrUndefined Nothing) }

-- | Constructs QueryExecutionContext's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newQueryExecutionContext' :: ( { "Database" :: NullOrUndefined.NullOrUndefined (DatabaseString) } -> {"Database" :: NullOrUndefined.NullOrUndefined (DatabaseString) } ) -> QueryExecutionContext
newQueryExecutionContext'  customize = (QueryExecutionContext <<< customize) { "Database": (NullOrUndefined Nothing) }



newtype QueryExecutionId = QueryExecutionId String
derive instance newtypeQueryExecutionId :: Newtype QueryExecutionId _
derive instance repGenericQueryExecutionId :: Generic QueryExecutionId _
instance showQueryExecutionId :: Show QueryExecutionId where
  show = genericShow
instance decodeQueryExecutionId :: Decode QueryExecutionId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQueryExecutionId :: Encode QueryExecutionId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype QueryExecutionIdList = QueryExecutionIdList (Array QueryExecutionId)
derive instance newtypeQueryExecutionIdList :: Newtype QueryExecutionIdList _
derive instance repGenericQueryExecutionIdList :: Generic QueryExecutionIdList _
instance showQueryExecutionIdList :: Show QueryExecutionIdList where
  show = genericShow
instance decodeQueryExecutionIdList :: Decode QueryExecutionIdList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQueryExecutionIdList :: Encode QueryExecutionIdList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype QueryExecutionList = QueryExecutionList (Array QueryExecution)
derive instance newtypeQueryExecutionList :: Newtype QueryExecutionList _
derive instance repGenericQueryExecutionList :: Generic QueryExecutionList _
instance showQueryExecutionList :: Show QueryExecutionList where
  show = genericShow
instance decodeQueryExecutionList :: Decode QueryExecutionList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQueryExecutionList :: Encode QueryExecutionList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype QueryExecutionState = QueryExecutionState String
derive instance newtypeQueryExecutionState :: Newtype QueryExecutionState _
derive instance repGenericQueryExecutionState :: Generic QueryExecutionState _
instance showQueryExecutionState :: Show QueryExecutionState where
  show = genericShow
instance decodeQueryExecutionState :: Decode QueryExecutionState where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQueryExecutionState :: Encode QueryExecutionState where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The amount of data scanned during the query execution and the amount of time that it took to execute.</p>
newtype QueryExecutionStatistics = QueryExecutionStatistics 
  { "EngineExecutionTimeInMillis" :: NullOrUndefined.NullOrUndefined (Number)
  , "DataScannedInBytes" :: NullOrUndefined.NullOrUndefined (Number)
  }
derive instance newtypeQueryExecutionStatistics :: Newtype QueryExecutionStatistics _
derive instance repGenericQueryExecutionStatistics :: Generic QueryExecutionStatistics _
instance showQueryExecutionStatistics :: Show QueryExecutionStatistics where
  show = genericShow
instance decodeQueryExecutionStatistics :: Decode QueryExecutionStatistics where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQueryExecutionStatistics :: Encode QueryExecutionStatistics where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs QueryExecutionStatistics from required parameters
newQueryExecutionStatistics :: QueryExecutionStatistics
newQueryExecutionStatistics  = QueryExecutionStatistics { "DataScannedInBytes": (NullOrUndefined Nothing), "EngineExecutionTimeInMillis": (NullOrUndefined Nothing) }

-- | Constructs QueryExecutionStatistics's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newQueryExecutionStatistics' :: ( { "EngineExecutionTimeInMillis" :: NullOrUndefined.NullOrUndefined (Number) , "DataScannedInBytes" :: NullOrUndefined.NullOrUndefined (Number) } -> {"EngineExecutionTimeInMillis" :: NullOrUndefined.NullOrUndefined (Number) , "DataScannedInBytes" :: NullOrUndefined.NullOrUndefined (Number) } ) -> QueryExecutionStatistics
newQueryExecutionStatistics'  customize = (QueryExecutionStatistics <<< customize) { "DataScannedInBytes": (NullOrUndefined Nothing), "EngineExecutionTimeInMillis": (NullOrUndefined Nothing) }



-- | <p>The completion date, current state, submission time, and state change reason (if applicable) for the query execution.</p>
newtype QueryExecutionStatus = QueryExecutionStatus 
  { "State" :: NullOrUndefined.NullOrUndefined (QueryExecutionState)
  , "StateChangeReason" :: NullOrUndefined.NullOrUndefined (String)
  , "SubmissionDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  , "CompletionDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  }
derive instance newtypeQueryExecutionStatus :: Newtype QueryExecutionStatus _
derive instance repGenericQueryExecutionStatus :: Generic QueryExecutionStatus _
instance showQueryExecutionStatus :: Show QueryExecutionStatus where
  show = genericShow
instance decodeQueryExecutionStatus :: Decode QueryExecutionStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQueryExecutionStatus :: Encode QueryExecutionStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs QueryExecutionStatus from required parameters
newQueryExecutionStatus :: QueryExecutionStatus
newQueryExecutionStatus  = QueryExecutionStatus { "CompletionDateTime": (NullOrUndefined Nothing), "State": (NullOrUndefined Nothing), "StateChangeReason": (NullOrUndefined Nothing), "SubmissionDateTime": (NullOrUndefined Nothing) }

-- | Constructs QueryExecutionStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newQueryExecutionStatus' :: ( { "State" :: NullOrUndefined.NullOrUndefined (QueryExecutionState) , "StateChangeReason" :: NullOrUndefined.NullOrUndefined (String) , "SubmissionDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "CompletionDateTime" :: NullOrUndefined.NullOrUndefined (Date) } -> {"State" :: NullOrUndefined.NullOrUndefined (QueryExecutionState) , "StateChangeReason" :: NullOrUndefined.NullOrUndefined (String) , "SubmissionDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "CompletionDateTime" :: NullOrUndefined.NullOrUndefined (Date) } ) -> QueryExecutionStatus
newQueryExecutionStatus'  customize = (QueryExecutionStatus <<< customize) { "CompletionDateTime": (NullOrUndefined Nothing), "State": (NullOrUndefined Nothing), "StateChangeReason": (NullOrUndefined Nothing), "SubmissionDateTime": (NullOrUndefined Nothing) }



newtype QueryString = QueryString String
derive instance newtypeQueryString :: Newtype QueryString _
derive instance repGenericQueryString :: Generic QueryString _
instance showQueryString :: Show QueryString where
  show = genericShow
instance decodeQueryString :: Decode QueryString where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQueryString :: Encode QueryString where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The location in Amazon S3 where query results are stored and the encryption option, if any, used for query results.</p>
newtype ResultConfiguration = ResultConfiguration 
  { "OutputLocation" :: (String)
  , "EncryptionConfiguration" :: NullOrUndefined.NullOrUndefined (EncryptionConfiguration)
  }
derive instance newtypeResultConfiguration :: Newtype ResultConfiguration _
derive instance repGenericResultConfiguration :: Generic ResultConfiguration _
instance showResultConfiguration :: Show ResultConfiguration where
  show = genericShow
instance decodeResultConfiguration :: Decode ResultConfiguration where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResultConfiguration :: Encode ResultConfiguration where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ResultConfiguration from required parameters
newResultConfiguration :: String -> ResultConfiguration
newResultConfiguration _OutputLocation = ResultConfiguration { "OutputLocation": _OutputLocation, "EncryptionConfiguration": (NullOrUndefined Nothing) }

-- | Constructs ResultConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResultConfiguration' :: String -> ( { "OutputLocation" :: (String) , "EncryptionConfiguration" :: NullOrUndefined.NullOrUndefined (EncryptionConfiguration) } -> {"OutputLocation" :: (String) , "EncryptionConfiguration" :: NullOrUndefined.NullOrUndefined (EncryptionConfiguration) } ) -> ResultConfiguration
newResultConfiguration' _OutputLocation customize = (ResultConfiguration <<< customize) { "OutputLocation": _OutputLocation, "EncryptionConfiguration": (NullOrUndefined Nothing) }



-- | <p>The metadata and rows that comprise a query result set. The metadata describes the column structure and data types.</p>
newtype ResultSet = ResultSet 
  { "Rows" :: NullOrUndefined.NullOrUndefined (RowList)
  , "ResultSetMetadata" :: NullOrUndefined.NullOrUndefined (ResultSetMetadata)
  }
derive instance newtypeResultSet :: Newtype ResultSet _
derive instance repGenericResultSet :: Generic ResultSet _
instance showResultSet :: Show ResultSet where
  show = genericShow
instance decodeResultSet :: Decode ResultSet where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResultSet :: Encode ResultSet where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ResultSet from required parameters
newResultSet :: ResultSet
newResultSet  = ResultSet { "ResultSetMetadata": (NullOrUndefined Nothing), "Rows": (NullOrUndefined Nothing) }

-- | Constructs ResultSet's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResultSet' :: ( { "Rows" :: NullOrUndefined.NullOrUndefined (RowList) , "ResultSetMetadata" :: NullOrUndefined.NullOrUndefined (ResultSetMetadata) } -> {"Rows" :: NullOrUndefined.NullOrUndefined (RowList) , "ResultSetMetadata" :: NullOrUndefined.NullOrUndefined (ResultSetMetadata) } ) -> ResultSet
newResultSet'  customize = (ResultSet <<< customize) { "ResultSetMetadata": (NullOrUndefined Nothing), "Rows": (NullOrUndefined Nothing) }



-- | <p>The metadata that describes the column structure and data types of a table of query results.</p>
newtype ResultSetMetadata = ResultSetMetadata 
  { "ColumnInfo" :: NullOrUndefined.NullOrUndefined (ColumnInfoList)
  }
derive instance newtypeResultSetMetadata :: Newtype ResultSetMetadata _
derive instance repGenericResultSetMetadata :: Generic ResultSetMetadata _
instance showResultSetMetadata :: Show ResultSetMetadata where
  show = genericShow
instance decodeResultSetMetadata :: Decode ResultSetMetadata where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResultSetMetadata :: Encode ResultSetMetadata where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ResultSetMetadata from required parameters
newResultSetMetadata :: ResultSetMetadata
newResultSetMetadata  = ResultSetMetadata { "ColumnInfo": (NullOrUndefined Nothing) }

-- | Constructs ResultSetMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResultSetMetadata' :: ( { "ColumnInfo" :: NullOrUndefined.NullOrUndefined (ColumnInfoList) } -> {"ColumnInfo" :: NullOrUndefined.NullOrUndefined (ColumnInfoList) } ) -> ResultSetMetadata
newResultSetMetadata'  customize = (ResultSetMetadata <<< customize) { "ColumnInfo": (NullOrUndefined Nothing) }



-- | <p>The rows that comprise a query result table.</p>
newtype Row = Row 
  { "Data" :: NullOrUndefined.NullOrUndefined (DatumList')
  }
derive instance newtypeRow :: Newtype Row _
derive instance repGenericRow :: Generic Row _
instance showRow :: Show Row where
  show = genericShow
instance decodeRow :: Decode Row where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRow :: Encode Row where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Row from required parameters
newRow :: Row
newRow  = Row { "Data": (NullOrUndefined Nothing) }

-- | Constructs Row's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRow' :: ( { "Data" :: NullOrUndefined.NullOrUndefined (DatumList') } -> {"Data" :: NullOrUndefined.NullOrUndefined (DatumList') } ) -> Row
newRow'  customize = (Row <<< customize) { "Data": (NullOrUndefined Nothing) }



newtype RowList = RowList (Array Row)
derive instance newtypeRowList :: Newtype RowList _
derive instance repGenericRowList :: Generic RowList _
instance showRowList :: Show RowList where
  show = genericShow
instance decodeRowList :: Decode RowList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRowList :: Encode RowList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype StartQueryExecutionInput = StartQueryExecutionInput 
  { "QueryString" :: (QueryString)
  , "ClientRequestToken" :: NullOrUndefined.NullOrUndefined (IdempotencyToken)
  , "QueryExecutionContext" :: NullOrUndefined.NullOrUndefined (QueryExecutionContext)
  , "ResultConfiguration" :: (ResultConfiguration)
  }
derive instance newtypeStartQueryExecutionInput :: Newtype StartQueryExecutionInput _
derive instance repGenericStartQueryExecutionInput :: Generic StartQueryExecutionInput _
instance showStartQueryExecutionInput :: Show StartQueryExecutionInput where
  show = genericShow
instance decodeStartQueryExecutionInput :: Decode StartQueryExecutionInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStartQueryExecutionInput :: Encode StartQueryExecutionInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StartQueryExecutionInput from required parameters
newStartQueryExecutionInput :: QueryString -> ResultConfiguration -> StartQueryExecutionInput
newStartQueryExecutionInput _QueryString _ResultConfiguration = StartQueryExecutionInput { "QueryString": _QueryString, "ResultConfiguration": _ResultConfiguration, "ClientRequestToken": (NullOrUndefined Nothing), "QueryExecutionContext": (NullOrUndefined Nothing) }

-- | Constructs StartQueryExecutionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartQueryExecutionInput' :: QueryString -> ResultConfiguration -> ( { "QueryString" :: (QueryString) , "ClientRequestToken" :: NullOrUndefined.NullOrUndefined (IdempotencyToken) , "QueryExecutionContext" :: NullOrUndefined.NullOrUndefined (QueryExecutionContext) , "ResultConfiguration" :: (ResultConfiguration) } -> {"QueryString" :: (QueryString) , "ClientRequestToken" :: NullOrUndefined.NullOrUndefined (IdempotencyToken) , "QueryExecutionContext" :: NullOrUndefined.NullOrUndefined (QueryExecutionContext) , "ResultConfiguration" :: (ResultConfiguration) } ) -> StartQueryExecutionInput
newStartQueryExecutionInput' _QueryString _ResultConfiguration customize = (StartQueryExecutionInput <<< customize) { "QueryString": _QueryString, "ResultConfiguration": _ResultConfiguration, "ClientRequestToken": (NullOrUndefined Nothing), "QueryExecutionContext": (NullOrUndefined Nothing) }



newtype StartQueryExecutionOutput = StartQueryExecutionOutput 
  { "QueryExecutionId" :: NullOrUndefined.NullOrUndefined (QueryExecutionId)
  }
derive instance newtypeStartQueryExecutionOutput :: Newtype StartQueryExecutionOutput _
derive instance repGenericStartQueryExecutionOutput :: Generic StartQueryExecutionOutput _
instance showStartQueryExecutionOutput :: Show StartQueryExecutionOutput where
  show = genericShow
instance decodeStartQueryExecutionOutput :: Decode StartQueryExecutionOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStartQueryExecutionOutput :: Encode StartQueryExecutionOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StartQueryExecutionOutput from required parameters
newStartQueryExecutionOutput :: StartQueryExecutionOutput
newStartQueryExecutionOutput  = StartQueryExecutionOutput { "QueryExecutionId": (NullOrUndefined Nothing) }

-- | Constructs StartQueryExecutionOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartQueryExecutionOutput' :: ( { "QueryExecutionId" :: NullOrUndefined.NullOrUndefined (QueryExecutionId) } -> {"QueryExecutionId" :: NullOrUndefined.NullOrUndefined (QueryExecutionId) } ) -> StartQueryExecutionOutput
newStartQueryExecutionOutput'  customize = (StartQueryExecutionOutput <<< customize) { "QueryExecutionId": (NullOrUndefined Nothing) }



newtype StopQueryExecutionInput = StopQueryExecutionInput 
  { "QueryExecutionId" :: (QueryExecutionId)
  }
derive instance newtypeStopQueryExecutionInput :: Newtype StopQueryExecutionInput _
derive instance repGenericStopQueryExecutionInput :: Generic StopQueryExecutionInput _
instance showStopQueryExecutionInput :: Show StopQueryExecutionInput where
  show = genericShow
instance decodeStopQueryExecutionInput :: Decode StopQueryExecutionInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStopQueryExecutionInput :: Encode StopQueryExecutionInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StopQueryExecutionInput from required parameters
newStopQueryExecutionInput :: QueryExecutionId -> StopQueryExecutionInput
newStopQueryExecutionInput _QueryExecutionId = StopQueryExecutionInput { "QueryExecutionId": _QueryExecutionId }

-- | Constructs StopQueryExecutionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopQueryExecutionInput' :: QueryExecutionId -> ( { "QueryExecutionId" :: (QueryExecutionId) } -> {"QueryExecutionId" :: (QueryExecutionId) } ) -> StopQueryExecutionInput
newStopQueryExecutionInput' _QueryExecutionId customize = (StopQueryExecutionInput <<< customize) { "QueryExecutionId": _QueryExecutionId }



newtype StopQueryExecutionOutput = StopQueryExecutionOutput Types.NoArguments
derive instance newtypeStopQueryExecutionOutput :: Newtype StopQueryExecutionOutput _
derive instance repGenericStopQueryExecutionOutput :: Generic StopQueryExecutionOutput _
instance showStopQueryExecutionOutput :: Show StopQueryExecutionOutput where
  show = genericShow
instance decodeStopQueryExecutionOutput :: Decode StopQueryExecutionOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStopQueryExecutionOutput :: Encode StopQueryExecutionOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ThrottleReason = ThrottleReason String
derive instance newtypeThrottleReason :: Newtype ThrottleReason _
derive instance repGenericThrottleReason :: Generic ThrottleReason _
instance showThrottleReason :: Show ThrottleReason where
  show = genericShow
instance decodeThrottleReason :: Decode ThrottleReason where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeThrottleReason :: Encode ThrottleReason where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Token = Token String
derive instance newtypeToken :: Newtype Token _
derive instance repGenericToken :: Generic Token _
instance showToken :: Show Token where
  show = genericShow
instance decodeToken :: Decode Token where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeToken :: Encode Token where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Indicates that the request was throttled.</p>
newtype TooManyRequestsException = TooManyRequestsException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  , "Reason" :: NullOrUndefined.NullOrUndefined (ThrottleReason)
  }
derive instance newtypeTooManyRequestsException :: Newtype TooManyRequestsException _
derive instance repGenericTooManyRequestsException :: Generic TooManyRequestsException _
instance showTooManyRequestsException :: Show TooManyRequestsException where
  show = genericShow
instance decodeTooManyRequestsException :: Decode TooManyRequestsException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTooManyRequestsException :: Encode TooManyRequestsException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TooManyRequestsException from required parameters
newTooManyRequestsException :: TooManyRequestsException
newTooManyRequestsException  = TooManyRequestsException { "Message": (NullOrUndefined Nothing), "Reason": (NullOrUndefined Nothing) }

-- | Constructs TooManyRequestsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyRequestsException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) , "Reason" :: NullOrUndefined.NullOrUndefined (ThrottleReason) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) , "Reason" :: NullOrUndefined.NullOrUndefined (ThrottleReason) } ) -> TooManyRequestsException
newTooManyRequestsException'  customize = (TooManyRequestsException <<< customize) { "Message": (NullOrUndefined Nothing), "Reason": (NullOrUndefined Nothing) }



-- | <p>Information about a named query ID that could not be processed.</p>
newtype UnprocessedNamedQueryId = UnprocessedNamedQueryId 
  { "NamedQueryId" :: NullOrUndefined.NullOrUndefined (NamedQueryId)
  , "ErrorCode" :: NullOrUndefined.NullOrUndefined (ErrorCode)
  , "ErrorMessage" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeUnprocessedNamedQueryId :: Newtype UnprocessedNamedQueryId _
derive instance repGenericUnprocessedNamedQueryId :: Generic UnprocessedNamedQueryId _
instance showUnprocessedNamedQueryId :: Show UnprocessedNamedQueryId where
  show = genericShow
instance decodeUnprocessedNamedQueryId :: Decode UnprocessedNamedQueryId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUnprocessedNamedQueryId :: Encode UnprocessedNamedQueryId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UnprocessedNamedQueryId from required parameters
newUnprocessedNamedQueryId :: UnprocessedNamedQueryId
newUnprocessedNamedQueryId  = UnprocessedNamedQueryId { "ErrorCode": (NullOrUndefined Nothing), "ErrorMessage": (NullOrUndefined Nothing), "NamedQueryId": (NullOrUndefined Nothing) }

-- | Constructs UnprocessedNamedQueryId's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnprocessedNamedQueryId' :: ( { "NamedQueryId" :: NullOrUndefined.NullOrUndefined (NamedQueryId) , "ErrorCode" :: NullOrUndefined.NullOrUndefined (ErrorCode) , "ErrorMessage" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"NamedQueryId" :: NullOrUndefined.NullOrUndefined (NamedQueryId) , "ErrorCode" :: NullOrUndefined.NullOrUndefined (ErrorCode) , "ErrorMessage" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> UnprocessedNamedQueryId
newUnprocessedNamedQueryId'  customize = (UnprocessedNamedQueryId <<< customize) { "ErrorCode": (NullOrUndefined Nothing), "ErrorMessage": (NullOrUndefined Nothing), "NamedQueryId": (NullOrUndefined Nothing) }



newtype UnprocessedNamedQueryIdList = UnprocessedNamedQueryIdList (Array UnprocessedNamedQueryId)
derive instance newtypeUnprocessedNamedQueryIdList :: Newtype UnprocessedNamedQueryIdList _
derive instance repGenericUnprocessedNamedQueryIdList :: Generic UnprocessedNamedQueryIdList _
instance showUnprocessedNamedQueryIdList :: Show UnprocessedNamedQueryIdList where
  show = genericShow
instance decodeUnprocessedNamedQueryIdList :: Decode UnprocessedNamedQueryIdList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUnprocessedNamedQueryIdList :: Encode UnprocessedNamedQueryIdList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes a query execution that failed to process.</p>
newtype UnprocessedQueryExecutionId = UnprocessedQueryExecutionId 
  { "QueryExecutionId" :: NullOrUndefined.NullOrUndefined (QueryExecutionId)
  , "ErrorCode" :: NullOrUndefined.NullOrUndefined (ErrorCode)
  , "ErrorMessage" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeUnprocessedQueryExecutionId :: Newtype UnprocessedQueryExecutionId _
derive instance repGenericUnprocessedQueryExecutionId :: Generic UnprocessedQueryExecutionId _
instance showUnprocessedQueryExecutionId :: Show UnprocessedQueryExecutionId where
  show = genericShow
instance decodeUnprocessedQueryExecutionId :: Decode UnprocessedQueryExecutionId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUnprocessedQueryExecutionId :: Encode UnprocessedQueryExecutionId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UnprocessedQueryExecutionId from required parameters
newUnprocessedQueryExecutionId :: UnprocessedQueryExecutionId
newUnprocessedQueryExecutionId  = UnprocessedQueryExecutionId { "ErrorCode": (NullOrUndefined Nothing), "ErrorMessage": (NullOrUndefined Nothing), "QueryExecutionId": (NullOrUndefined Nothing) }

-- | Constructs UnprocessedQueryExecutionId's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnprocessedQueryExecutionId' :: ( { "QueryExecutionId" :: NullOrUndefined.NullOrUndefined (QueryExecutionId) , "ErrorCode" :: NullOrUndefined.NullOrUndefined (ErrorCode) , "ErrorMessage" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"QueryExecutionId" :: NullOrUndefined.NullOrUndefined (QueryExecutionId) , "ErrorCode" :: NullOrUndefined.NullOrUndefined (ErrorCode) , "ErrorMessage" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> UnprocessedQueryExecutionId
newUnprocessedQueryExecutionId'  customize = (UnprocessedQueryExecutionId <<< customize) { "ErrorCode": (NullOrUndefined Nothing), "ErrorMessage": (NullOrUndefined Nothing), "QueryExecutionId": (NullOrUndefined Nothing) }



newtype UnprocessedQueryExecutionIdList = UnprocessedQueryExecutionIdList (Array UnprocessedQueryExecutionId)
derive instance newtypeUnprocessedQueryExecutionIdList :: Newtype UnprocessedQueryExecutionIdList _
derive instance repGenericUnprocessedQueryExecutionIdList :: Generic UnprocessedQueryExecutionIdList _
instance showUnprocessedQueryExecutionIdList :: Show UnprocessedQueryExecutionIdList where
  show = genericShow
instance decodeUnprocessedQueryExecutionIdList :: Decode UnprocessedQueryExecutionIdList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUnprocessedQueryExecutionIdList :: Encode UnprocessedQueryExecutionIdList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DatumList' = DatumList' (Array Datum)
derive instance newtypeDatumList' :: Newtype DatumList' _
derive instance repGenericDatumList' :: Generic DatumList' _
instance showDatumList' :: Show DatumList' where
  show = genericShow
instance decodeDatumList' :: Decode DatumList' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDatumList' :: Encode DatumList' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DatumString' = DatumString' String
derive instance newtypeDatumString' :: Newtype DatumString' _
derive instance repGenericDatumString' :: Generic DatumString' _
instance showDatumString' :: Show DatumString' where
  show = genericShow
instance decodeDatumString' :: Decode DatumString' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDatumString' :: Encode DatumString' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

