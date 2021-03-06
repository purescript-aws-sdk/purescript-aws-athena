## Module AWS.Athena.Types

#### `options`

``` purescript
options :: Options
```

#### `BatchGetNamedQueryInput`

``` purescript
newtype BatchGetNamedQueryInput
  = BatchGetNamedQueryInput { "NamedQueryIds" :: NamedQueryIdList }
```

##### Instances
``` purescript
Newtype BatchGetNamedQueryInput _
Generic BatchGetNamedQueryInput _
Show BatchGetNamedQueryInput
Decode BatchGetNamedQueryInput
Encode BatchGetNamedQueryInput
```

#### `newBatchGetNamedQueryInput`

``` purescript
newBatchGetNamedQueryInput :: NamedQueryIdList -> BatchGetNamedQueryInput
```

Constructs BatchGetNamedQueryInput from required parameters

#### `newBatchGetNamedQueryInput'`

``` purescript
newBatchGetNamedQueryInput' :: NamedQueryIdList -> ({ "NamedQueryIds" :: NamedQueryIdList } -> { "NamedQueryIds" :: NamedQueryIdList }) -> BatchGetNamedQueryInput
```

Constructs BatchGetNamedQueryInput's fields from required parameters

#### `BatchGetNamedQueryOutput`

``` purescript
newtype BatchGetNamedQueryOutput
  = BatchGetNamedQueryOutput { "NamedQueries" :: Maybe (NamedQueryList), "UnprocessedNamedQueryIds" :: Maybe (UnprocessedNamedQueryIdList) }
```

##### Instances
``` purescript
Newtype BatchGetNamedQueryOutput _
Generic BatchGetNamedQueryOutput _
Show BatchGetNamedQueryOutput
Decode BatchGetNamedQueryOutput
Encode BatchGetNamedQueryOutput
```

#### `newBatchGetNamedQueryOutput`

``` purescript
newBatchGetNamedQueryOutput :: BatchGetNamedQueryOutput
```

Constructs BatchGetNamedQueryOutput from required parameters

#### `newBatchGetNamedQueryOutput'`

``` purescript
newBatchGetNamedQueryOutput' :: ({ "NamedQueries" :: Maybe (NamedQueryList), "UnprocessedNamedQueryIds" :: Maybe (UnprocessedNamedQueryIdList) } -> { "NamedQueries" :: Maybe (NamedQueryList), "UnprocessedNamedQueryIds" :: Maybe (UnprocessedNamedQueryIdList) }) -> BatchGetNamedQueryOutput
```

Constructs BatchGetNamedQueryOutput's fields from required parameters

#### `BatchGetQueryExecutionInput`

``` purescript
newtype BatchGetQueryExecutionInput
  = BatchGetQueryExecutionInput { "QueryExecutionIds" :: QueryExecutionIdList }
```

##### Instances
``` purescript
Newtype BatchGetQueryExecutionInput _
Generic BatchGetQueryExecutionInput _
Show BatchGetQueryExecutionInput
Decode BatchGetQueryExecutionInput
Encode BatchGetQueryExecutionInput
```

#### `newBatchGetQueryExecutionInput`

``` purescript
newBatchGetQueryExecutionInput :: QueryExecutionIdList -> BatchGetQueryExecutionInput
```

Constructs BatchGetQueryExecutionInput from required parameters

#### `newBatchGetQueryExecutionInput'`

``` purescript
newBatchGetQueryExecutionInput' :: QueryExecutionIdList -> ({ "QueryExecutionIds" :: QueryExecutionIdList } -> { "QueryExecutionIds" :: QueryExecutionIdList }) -> BatchGetQueryExecutionInput
```

Constructs BatchGetQueryExecutionInput's fields from required parameters

#### `BatchGetQueryExecutionOutput`

``` purescript
newtype BatchGetQueryExecutionOutput
  = BatchGetQueryExecutionOutput { "QueryExecutions" :: Maybe (QueryExecutionList), "UnprocessedQueryExecutionIds" :: Maybe (UnprocessedQueryExecutionIdList) }
```

##### Instances
``` purescript
Newtype BatchGetQueryExecutionOutput _
Generic BatchGetQueryExecutionOutput _
Show BatchGetQueryExecutionOutput
Decode BatchGetQueryExecutionOutput
Encode BatchGetQueryExecutionOutput
```

#### `newBatchGetQueryExecutionOutput`

``` purescript
newBatchGetQueryExecutionOutput :: BatchGetQueryExecutionOutput
```

Constructs BatchGetQueryExecutionOutput from required parameters

#### `newBatchGetQueryExecutionOutput'`

``` purescript
newBatchGetQueryExecutionOutput' :: ({ "QueryExecutions" :: Maybe (QueryExecutionList), "UnprocessedQueryExecutionIds" :: Maybe (UnprocessedQueryExecutionIdList) } -> { "QueryExecutions" :: Maybe (QueryExecutionList), "UnprocessedQueryExecutionIds" :: Maybe (UnprocessedQueryExecutionIdList) }) -> BatchGetQueryExecutionOutput
```

Constructs BatchGetQueryExecutionOutput's fields from required parameters

#### `ColumnInfo`

``` purescript
newtype ColumnInfo
  = ColumnInfo { "CatalogName" :: Maybe (String), "SchemaName" :: Maybe (String), "TableName" :: Maybe (String), "Name" :: String, "Label" :: Maybe (String), "Type" :: String, "Precision" :: Maybe (Int), "Scale" :: Maybe (Int), "Nullable" :: Maybe (ColumnNullable), "CaseSensitive" :: Maybe (Boolean) }
```

<p>Information about the columns in a query execution result.</p>

##### Instances
``` purescript
Newtype ColumnInfo _
Generic ColumnInfo _
Show ColumnInfo
Decode ColumnInfo
Encode ColumnInfo
```

#### `newColumnInfo`

``` purescript
newColumnInfo :: String -> String -> ColumnInfo
```

Constructs ColumnInfo from required parameters

#### `newColumnInfo'`

``` purescript
newColumnInfo' :: String -> String -> ({ "CatalogName" :: Maybe (String), "SchemaName" :: Maybe (String), "TableName" :: Maybe (String), "Name" :: String, "Label" :: Maybe (String), "Type" :: String, "Precision" :: Maybe (Int), "Scale" :: Maybe (Int), "Nullable" :: Maybe (ColumnNullable), "CaseSensitive" :: Maybe (Boolean) } -> { "CatalogName" :: Maybe (String), "SchemaName" :: Maybe (String), "TableName" :: Maybe (String), "Name" :: String, "Label" :: Maybe (String), "Type" :: String, "Precision" :: Maybe (Int), "Scale" :: Maybe (Int), "Nullable" :: Maybe (ColumnNullable), "CaseSensitive" :: Maybe (Boolean) }) -> ColumnInfo
```

Constructs ColumnInfo's fields from required parameters

#### `ColumnInfoList`

``` purescript
newtype ColumnInfoList
  = ColumnInfoList (Array ColumnInfo)
```

##### Instances
``` purescript
Newtype ColumnInfoList _
Generic ColumnInfoList _
Show ColumnInfoList
Decode ColumnInfoList
Encode ColumnInfoList
```

#### `ColumnNullable`

``` purescript
newtype ColumnNullable
  = ColumnNullable String
```

##### Instances
``` purescript
Newtype ColumnNullable _
Generic ColumnNullable _
Show ColumnNullable
Decode ColumnNullable
Encode ColumnNullable
```

#### `CreateNamedQueryInput`

``` purescript
newtype CreateNamedQueryInput
  = CreateNamedQueryInput { "Name" :: NameString, "Description" :: Maybe (DescriptionString), "Database" :: DatabaseString, "QueryString" :: QueryString, "ClientRequestToken" :: Maybe (IdempotencyToken) }
```

##### Instances
``` purescript
Newtype CreateNamedQueryInput _
Generic CreateNamedQueryInput _
Show CreateNamedQueryInput
Decode CreateNamedQueryInput
Encode CreateNamedQueryInput
```

#### `newCreateNamedQueryInput`

``` purescript
newCreateNamedQueryInput :: DatabaseString -> NameString -> QueryString -> CreateNamedQueryInput
```

Constructs CreateNamedQueryInput from required parameters

#### `newCreateNamedQueryInput'`

``` purescript
newCreateNamedQueryInput' :: DatabaseString -> NameString -> QueryString -> ({ "Name" :: NameString, "Description" :: Maybe (DescriptionString), "Database" :: DatabaseString, "QueryString" :: QueryString, "ClientRequestToken" :: Maybe (IdempotencyToken) } -> { "Name" :: NameString, "Description" :: Maybe (DescriptionString), "Database" :: DatabaseString, "QueryString" :: QueryString, "ClientRequestToken" :: Maybe (IdempotencyToken) }) -> CreateNamedQueryInput
```

Constructs CreateNamedQueryInput's fields from required parameters

#### `CreateNamedQueryOutput`

``` purescript
newtype CreateNamedQueryOutput
  = CreateNamedQueryOutput { "NamedQueryId" :: Maybe (NamedQueryId) }
```

##### Instances
``` purescript
Newtype CreateNamedQueryOutput _
Generic CreateNamedQueryOutput _
Show CreateNamedQueryOutput
Decode CreateNamedQueryOutput
Encode CreateNamedQueryOutput
```

#### `newCreateNamedQueryOutput`

``` purescript
newCreateNamedQueryOutput :: CreateNamedQueryOutput
```

Constructs CreateNamedQueryOutput from required parameters

#### `newCreateNamedQueryOutput'`

``` purescript
newCreateNamedQueryOutput' :: ({ "NamedQueryId" :: Maybe (NamedQueryId) } -> { "NamedQueryId" :: Maybe (NamedQueryId) }) -> CreateNamedQueryOutput
```

Constructs CreateNamedQueryOutput's fields from required parameters

#### `DatabaseString`

``` purescript
newtype DatabaseString
  = DatabaseString String
```

##### Instances
``` purescript
Newtype DatabaseString _
Generic DatabaseString _
Show DatabaseString
Decode DatabaseString
Encode DatabaseString
```

#### `Date`

``` purescript
newtype Date
  = Date Timestamp
```

##### Instances
``` purescript
Newtype Date _
Generic Date _
Show Date
Decode Date
Encode Date
```

#### `Datum`

``` purescript
newtype Datum
  = Datum { "VarCharValue" :: Maybe (DatumString') }
```

<p>A piece of data (a field in the table).</p>

##### Instances
``` purescript
Newtype Datum _
Generic Datum _
Show Datum
Decode Datum
Encode Datum
```

#### `newDatum`

``` purescript
newDatum :: Datum
```

Constructs Datum from required parameters

#### `newDatum'`

``` purescript
newDatum' :: ({ "VarCharValue" :: Maybe (DatumString') } -> { "VarCharValue" :: Maybe (DatumString') }) -> Datum
```

Constructs Datum's fields from required parameters

#### `DeleteNamedQueryInput`

``` purescript
newtype DeleteNamedQueryInput
  = DeleteNamedQueryInput { "NamedQueryId" :: NamedQueryId }
```

##### Instances
``` purescript
Newtype DeleteNamedQueryInput _
Generic DeleteNamedQueryInput _
Show DeleteNamedQueryInput
Decode DeleteNamedQueryInput
Encode DeleteNamedQueryInput
```

#### `newDeleteNamedQueryInput`

``` purescript
newDeleteNamedQueryInput :: NamedQueryId -> DeleteNamedQueryInput
```

Constructs DeleteNamedQueryInput from required parameters

#### `newDeleteNamedQueryInput'`

``` purescript
newDeleteNamedQueryInput' :: NamedQueryId -> ({ "NamedQueryId" :: NamedQueryId } -> { "NamedQueryId" :: NamedQueryId }) -> DeleteNamedQueryInput
```

Constructs DeleteNamedQueryInput's fields from required parameters

#### `DeleteNamedQueryOutput`

``` purescript
newtype DeleteNamedQueryOutput
  = DeleteNamedQueryOutput NoArguments
```

##### Instances
``` purescript
Newtype DeleteNamedQueryOutput _
Generic DeleteNamedQueryOutput _
Show DeleteNamedQueryOutput
Decode DeleteNamedQueryOutput
Encode DeleteNamedQueryOutput
```

#### `DescriptionString`

``` purescript
newtype DescriptionString
  = DescriptionString String
```

##### Instances
``` purescript
Newtype DescriptionString _
Generic DescriptionString _
Show DescriptionString
Decode DescriptionString
Encode DescriptionString
```

#### `EncryptionConfiguration`

``` purescript
newtype EncryptionConfiguration
  = EncryptionConfiguration { "EncryptionOption" :: EncryptionOption, "KmsKey" :: Maybe (String) }
```

<p>If query results are encrypted in Amazon S3, indicates the Amazon S3 encryption option used.</p>

##### Instances
``` purescript
Newtype EncryptionConfiguration _
Generic EncryptionConfiguration _
Show EncryptionConfiguration
Decode EncryptionConfiguration
Encode EncryptionConfiguration
```

#### `newEncryptionConfiguration`

``` purescript
newEncryptionConfiguration :: EncryptionOption -> EncryptionConfiguration
```

Constructs EncryptionConfiguration from required parameters

#### `newEncryptionConfiguration'`

``` purescript
newEncryptionConfiguration' :: EncryptionOption -> ({ "EncryptionOption" :: EncryptionOption, "KmsKey" :: Maybe (String) } -> { "EncryptionOption" :: EncryptionOption, "KmsKey" :: Maybe (String) }) -> EncryptionConfiguration
```

Constructs EncryptionConfiguration's fields from required parameters

#### `EncryptionOption`

``` purescript
newtype EncryptionOption
  = EncryptionOption String
```

##### Instances
``` purescript
Newtype EncryptionOption _
Generic EncryptionOption _
Show EncryptionOption
Decode EncryptionOption
Encode EncryptionOption
```

#### `ErrorCode`

``` purescript
newtype ErrorCode
  = ErrorCode String
```

##### Instances
``` purescript
Newtype ErrorCode _
Generic ErrorCode _
Show ErrorCode
Decode ErrorCode
Encode ErrorCode
```

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `GetNamedQueryInput`

``` purescript
newtype GetNamedQueryInput
  = GetNamedQueryInput { "NamedQueryId" :: NamedQueryId }
```

##### Instances
``` purescript
Newtype GetNamedQueryInput _
Generic GetNamedQueryInput _
Show GetNamedQueryInput
Decode GetNamedQueryInput
Encode GetNamedQueryInput
```

#### `newGetNamedQueryInput`

``` purescript
newGetNamedQueryInput :: NamedQueryId -> GetNamedQueryInput
```

Constructs GetNamedQueryInput from required parameters

#### `newGetNamedQueryInput'`

``` purescript
newGetNamedQueryInput' :: NamedQueryId -> ({ "NamedQueryId" :: NamedQueryId } -> { "NamedQueryId" :: NamedQueryId }) -> GetNamedQueryInput
```

Constructs GetNamedQueryInput's fields from required parameters

#### `GetNamedQueryOutput`

``` purescript
newtype GetNamedQueryOutput
  = GetNamedQueryOutput { "NamedQuery" :: Maybe (NamedQuery) }
```

##### Instances
``` purescript
Newtype GetNamedQueryOutput _
Generic GetNamedQueryOutput _
Show GetNamedQueryOutput
Decode GetNamedQueryOutput
Encode GetNamedQueryOutput
```

#### `newGetNamedQueryOutput`

``` purescript
newGetNamedQueryOutput :: GetNamedQueryOutput
```

Constructs GetNamedQueryOutput from required parameters

#### `newGetNamedQueryOutput'`

``` purescript
newGetNamedQueryOutput' :: ({ "NamedQuery" :: Maybe (NamedQuery) } -> { "NamedQuery" :: Maybe (NamedQuery) }) -> GetNamedQueryOutput
```

Constructs GetNamedQueryOutput's fields from required parameters

#### `GetQueryExecutionInput`

``` purescript
newtype GetQueryExecutionInput
  = GetQueryExecutionInput { "QueryExecutionId" :: QueryExecutionId }
```

##### Instances
``` purescript
Newtype GetQueryExecutionInput _
Generic GetQueryExecutionInput _
Show GetQueryExecutionInput
Decode GetQueryExecutionInput
Encode GetQueryExecutionInput
```

#### `newGetQueryExecutionInput`

``` purescript
newGetQueryExecutionInput :: QueryExecutionId -> GetQueryExecutionInput
```

Constructs GetQueryExecutionInput from required parameters

#### `newGetQueryExecutionInput'`

``` purescript
newGetQueryExecutionInput' :: QueryExecutionId -> ({ "QueryExecutionId" :: QueryExecutionId } -> { "QueryExecutionId" :: QueryExecutionId }) -> GetQueryExecutionInput
```

Constructs GetQueryExecutionInput's fields from required parameters

#### `GetQueryExecutionOutput`

``` purescript
newtype GetQueryExecutionOutput
  = GetQueryExecutionOutput { "QueryExecution" :: Maybe (QueryExecution) }
```

##### Instances
``` purescript
Newtype GetQueryExecutionOutput _
Generic GetQueryExecutionOutput _
Show GetQueryExecutionOutput
Decode GetQueryExecutionOutput
Encode GetQueryExecutionOutput
```

#### `newGetQueryExecutionOutput`

``` purescript
newGetQueryExecutionOutput :: GetQueryExecutionOutput
```

Constructs GetQueryExecutionOutput from required parameters

#### `newGetQueryExecutionOutput'`

``` purescript
newGetQueryExecutionOutput' :: ({ "QueryExecution" :: Maybe (QueryExecution) } -> { "QueryExecution" :: Maybe (QueryExecution) }) -> GetQueryExecutionOutput
```

Constructs GetQueryExecutionOutput's fields from required parameters

#### `GetQueryResultsInput`

``` purescript
newtype GetQueryResultsInput
  = GetQueryResultsInput { "QueryExecutionId" :: QueryExecutionId, "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxQueryResults) }
```

##### Instances
``` purescript
Newtype GetQueryResultsInput _
Generic GetQueryResultsInput _
Show GetQueryResultsInput
Decode GetQueryResultsInput
Encode GetQueryResultsInput
```

#### `newGetQueryResultsInput`

``` purescript
newGetQueryResultsInput :: QueryExecutionId -> GetQueryResultsInput
```

Constructs GetQueryResultsInput from required parameters

#### `newGetQueryResultsInput'`

``` purescript
newGetQueryResultsInput' :: QueryExecutionId -> ({ "QueryExecutionId" :: QueryExecutionId, "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxQueryResults) } -> { "QueryExecutionId" :: QueryExecutionId, "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxQueryResults) }) -> GetQueryResultsInput
```

Constructs GetQueryResultsInput's fields from required parameters

#### `GetQueryResultsOutput`

``` purescript
newtype GetQueryResultsOutput
  = GetQueryResultsOutput { "ResultSet" :: Maybe (ResultSet), "NextToken" :: Maybe (Token) }
```

##### Instances
``` purescript
Newtype GetQueryResultsOutput _
Generic GetQueryResultsOutput _
Show GetQueryResultsOutput
Decode GetQueryResultsOutput
Encode GetQueryResultsOutput
```

#### `newGetQueryResultsOutput`

``` purescript
newGetQueryResultsOutput :: GetQueryResultsOutput
```

Constructs GetQueryResultsOutput from required parameters

#### `newGetQueryResultsOutput'`

``` purescript
newGetQueryResultsOutput' :: ({ "ResultSet" :: Maybe (ResultSet), "NextToken" :: Maybe (Token) } -> { "ResultSet" :: Maybe (ResultSet), "NextToken" :: Maybe (Token) }) -> GetQueryResultsOutput
```

Constructs GetQueryResultsOutput's fields from required parameters

#### `IdempotencyToken`

``` purescript
newtype IdempotencyToken
  = IdempotencyToken String
```

##### Instances
``` purescript
Newtype IdempotencyToken _
Generic IdempotencyToken _
Show IdempotencyToken
Decode IdempotencyToken
Encode IdempotencyToken
```

#### `InternalServerException`

``` purescript
newtype InternalServerException
  = InternalServerException { "Message" :: Maybe (ErrorMessage) }
```

<p>Indicates a platform issue, which may be due to a transient condition or outage.</p>

##### Instances
``` purescript
Newtype InternalServerException _
Generic InternalServerException _
Show InternalServerException
Decode InternalServerException
Encode InternalServerException
```

#### `newInternalServerException`

``` purescript
newInternalServerException :: InternalServerException
```

Constructs InternalServerException from required parameters

#### `newInternalServerException'`

``` purescript
newInternalServerException' :: ({ "Message" :: Maybe (ErrorMessage) } -> { "Message" :: Maybe (ErrorMessage) }) -> InternalServerException
```

Constructs InternalServerException's fields from required parameters

#### `InvalidRequestException`

``` purescript
newtype InvalidRequestException
  = InvalidRequestException { "AthenaErrorCode" :: Maybe (ErrorCode), "Message" :: Maybe (ErrorMessage) }
```

<p>Indicates that something is wrong with the input to the request. For example, a required parameter may be missing or out of range.</p>

##### Instances
``` purescript
Newtype InvalidRequestException _
Generic InvalidRequestException _
Show InvalidRequestException
Decode InvalidRequestException
Encode InvalidRequestException
```

#### `newInvalidRequestException`

``` purescript
newInvalidRequestException :: InvalidRequestException
```

Constructs InvalidRequestException from required parameters

#### `newInvalidRequestException'`

``` purescript
newInvalidRequestException' :: ({ "AthenaErrorCode" :: Maybe (ErrorCode), "Message" :: Maybe (ErrorMessage) } -> { "AthenaErrorCode" :: Maybe (ErrorCode), "Message" :: Maybe (ErrorMessage) }) -> InvalidRequestException
```

Constructs InvalidRequestException's fields from required parameters

#### `ListNamedQueriesInput`

``` purescript
newtype ListNamedQueriesInput
  = ListNamedQueriesInput { "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxNamedQueriesCount) }
```

##### Instances
``` purescript
Newtype ListNamedQueriesInput _
Generic ListNamedQueriesInput _
Show ListNamedQueriesInput
Decode ListNamedQueriesInput
Encode ListNamedQueriesInput
```

#### `newListNamedQueriesInput`

``` purescript
newListNamedQueriesInput :: ListNamedQueriesInput
```

Constructs ListNamedQueriesInput from required parameters

#### `newListNamedQueriesInput'`

``` purescript
newListNamedQueriesInput' :: ({ "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxNamedQueriesCount) } -> { "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxNamedQueriesCount) }) -> ListNamedQueriesInput
```

Constructs ListNamedQueriesInput's fields from required parameters

#### `ListNamedQueriesOutput`

``` purescript
newtype ListNamedQueriesOutput
  = ListNamedQueriesOutput { "NamedQueryIds" :: Maybe (NamedQueryIdList), "NextToken" :: Maybe (Token) }
```

##### Instances
``` purescript
Newtype ListNamedQueriesOutput _
Generic ListNamedQueriesOutput _
Show ListNamedQueriesOutput
Decode ListNamedQueriesOutput
Encode ListNamedQueriesOutput
```

#### `newListNamedQueriesOutput`

``` purescript
newListNamedQueriesOutput :: ListNamedQueriesOutput
```

Constructs ListNamedQueriesOutput from required parameters

#### `newListNamedQueriesOutput'`

``` purescript
newListNamedQueriesOutput' :: ({ "NamedQueryIds" :: Maybe (NamedQueryIdList), "NextToken" :: Maybe (Token) } -> { "NamedQueryIds" :: Maybe (NamedQueryIdList), "NextToken" :: Maybe (Token) }) -> ListNamedQueriesOutput
```

Constructs ListNamedQueriesOutput's fields from required parameters

#### `ListQueryExecutionsInput`

``` purescript
newtype ListQueryExecutionsInput
  = ListQueryExecutionsInput { "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxQueryExecutionsCount) }
```

##### Instances
``` purescript
Newtype ListQueryExecutionsInput _
Generic ListQueryExecutionsInput _
Show ListQueryExecutionsInput
Decode ListQueryExecutionsInput
Encode ListQueryExecutionsInput
```

#### `newListQueryExecutionsInput`

``` purescript
newListQueryExecutionsInput :: ListQueryExecutionsInput
```

Constructs ListQueryExecutionsInput from required parameters

#### `newListQueryExecutionsInput'`

``` purescript
newListQueryExecutionsInput' :: ({ "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxQueryExecutionsCount) } -> { "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxQueryExecutionsCount) }) -> ListQueryExecutionsInput
```

Constructs ListQueryExecutionsInput's fields from required parameters

#### `ListQueryExecutionsOutput`

``` purescript
newtype ListQueryExecutionsOutput
  = ListQueryExecutionsOutput { "QueryExecutionIds" :: Maybe (QueryExecutionIdList), "NextToken" :: Maybe (Token) }
```

##### Instances
``` purescript
Newtype ListQueryExecutionsOutput _
Generic ListQueryExecutionsOutput _
Show ListQueryExecutionsOutput
Decode ListQueryExecutionsOutput
Encode ListQueryExecutionsOutput
```

#### `newListQueryExecutionsOutput`

``` purescript
newListQueryExecutionsOutput :: ListQueryExecutionsOutput
```

Constructs ListQueryExecutionsOutput from required parameters

#### `newListQueryExecutionsOutput'`

``` purescript
newListQueryExecutionsOutput' :: ({ "QueryExecutionIds" :: Maybe (QueryExecutionIdList), "NextToken" :: Maybe (Token) } -> { "QueryExecutionIds" :: Maybe (QueryExecutionIdList), "NextToken" :: Maybe (Token) }) -> ListQueryExecutionsOutput
```

Constructs ListQueryExecutionsOutput's fields from required parameters

#### `MaxNamedQueriesCount`

``` purescript
newtype MaxNamedQueriesCount
  = MaxNamedQueriesCount Int
```

##### Instances
``` purescript
Newtype MaxNamedQueriesCount _
Generic MaxNamedQueriesCount _
Show MaxNamedQueriesCount
Decode MaxNamedQueriesCount
Encode MaxNamedQueriesCount
```

#### `MaxQueryExecutionsCount`

``` purescript
newtype MaxQueryExecutionsCount
  = MaxQueryExecutionsCount Int
```

##### Instances
``` purescript
Newtype MaxQueryExecutionsCount _
Generic MaxQueryExecutionsCount _
Show MaxQueryExecutionsCount
Decode MaxQueryExecutionsCount
Encode MaxQueryExecutionsCount
```

#### `MaxQueryResults`

``` purescript
newtype MaxQueryResults
  = MaxQueryResults Int
```

##### Instances
``` purescript
Newtype MaxQueryResults _
Generic MaxQueryResults _
Show MaxQueryResults
Decode MaxQueryResults
Encode MaxQueryResults
```

#### `NameString`

``` purescript
newtype NameString
  = NameString String
```

##### Instances
``` purescript
Newtype NameString _
Generic NameString _
Show NameString
Decode NameString
Encode NameString
```

#### `NamedQuery`

``` purescript
newtype NamedQuery
  = NamedQuery { "Name" :: NameString, "Description" :: Maybe (DescriptionString), "Database" :: DatabaseString, "QueryString" :: QueryString, "NamedQueryId" :: Maybe (NamedQueryId) }
```

<p>A query, where <code>QueryString</code> is the SQL query statements that comprise the query.</p>

##### Instances
``` purescript
Newtype NamedQuery _
Generic NamedQuery _
Show NamedQuery
Decode NamedQuery
Encode NamedQuery
```

#### `newNamedQuery`

``` purescript
newNamedQuery :: DatabaseString -> NameString -> QueryString -> NamedQuery
```

Constructs NamedQuery from required parameters

#### `newNamedQuery'`

``` purescript
newNamedQuery' :: DatabaseString -> NameString -> QueryString -> ({ "Name" :: NameString, "Description" :: Maybe (DescriptionString), "Database" :: DatabaseString, "QueryString" :: QueryString, "NamedQueryId" :: Maybe (NamedQueryId) } -> { "Name" :: NameString, "Description" :: Maybe (DescriptionString), "Database" :: DatabaseString, "QueryString" :: QueryString, "NamedQueryId" :: Maybe (NamedQueryId) }) -> NamedQuery
```

Constructs NamedQuery's fields from required parameters

#### `NamedQueryId`

``` purescript
newtype NamedQueryId
  = NamedQueryId String
```

##### Instances
``` purescript
Newtype NamedQueryId _
Generic NamedQueryId _
Show NamedQueryId
Decode NamedQueryId
Encode NamedQueryId
```

#### `NamedQueryIdList`

``` purescript
newtype NamedQueryIdList
  = NamedQueryIdList (Array NamedQueryId)
```

##### Instances
``` purescript
Newtype NamedQueryIdList _
Generic NamedQueryIdList _
Show NamedQueryIdList
Decode NamedQueryIdList
Encode NamedQueryIdList
```

#### `NamedQueryList`

``` purescript
newtype NamedQueryList
  = NamedQueryList (Array NamedQuery)
```

##### Instances
``` purescript
Newtype NamedQueryList _
Generic NamedQueryList _
Show NamedQueryList
Decode NamedQueryList
Encode NamedQueryList
```

#### `QueryExecution`

``` purescript
newtype QueryExecution
  = QueryExecution { "QueryExecutionId" :: Maybe (QueryExecutionId), "Query" :: Maybe (QueryString), "ResultConfiguration" :: Maybe (ResultConfiguration), "QueryExecutionContext" :: Maybe (QueryExecutionContext), "Status" :: Maybe (QueryExecutionStatus), "Statistics" :: Maybe (QueryExecutionStatistics) }
```

<p>Information about a single instance of a query execution.</p>

##### Instances
``` purescript
Newtype QueryExecution _
Generic QueryExecution _
Show QueryExecution
Decode QueryExecution
Encode QueryExecution
```

#### `newQueryExecution`

``` purescript
newQueryExecution :: QueryExecution
```

Constructs QueryExecution from required parameters

#### `newQueryExecution'`

``` purescript
newQueryExecution' :: ({ "QueryExecutionId" :: Maybe (QueryExecutionId), "Query" :: Maybe (QueryString), "ResultConfiguration" :: Maybe (ResultConfiguration), "QueryExecutionContext" :: Maybe (QueryExecutionContext), "Status" :: Maybe (QueryExecutionStatus), "Statistics" :: Maybe (QueryExecutionStatistics) } -> { "QueryExecutionId" :: Maybe (QueryExecutionId), "Query" :: Maybe (QueryString), "ResultConfiguration" :: Maybe (ResultConfiguration), "QueryExecutionContext" :: Maybe (QueryExecutionContext), "Status" :: Maybe (QueryExecutionStatus), "Statistics" :: Maybe (QueryExecutionStatistics) }) -> QueryExecution
```

Constructs QueryExecution's fields from required parameters

#### `QueryExecutionContext`

``` purescript
newtype QueryExecutionContext
  = QueryExecutionContext { "Database" :: Maybe (DatabaseString) }
```

<p>The database in which the query execution occurs.</p>

##### Instances
``` purescript
Newtype QueryExecutionContext _
Generic QueryExecutionContext _
Show QueryExecutionContext
Decode QueryExecutionContext
Encode QueryExecutionContext
```

#### `newQueryExecutionContext`

``` purescript
newQueryExecutionContext :: QueryExecutionContext
```

Constructs QueryExecutionContext from required parameters

#### `newQueryExecutionContext'`

``` purescript
newQueryExecutionContext' :: ({ "Database" :: Maybe (DatabaseString) } -> { "Database" :: Maybe (DatabaseString) }) -> QueryExecutionContext
```

Constructs QueryExecutionContext's fields from required parameters

#### `QueryExecutionId`

``` purescript
newtype QueryExecutionId
  = QueryExecutionId String
```

##### Instances
``` purescript
Newtype QueryExecutionId _
Generic QueryExecutionId _
Show QueryExecutionId
Decode QueryExecutionId
Encode QueryExecutionId
```

#### `QueryExecutionIdList`

``` purescript
newtype QueryExecutionIdList
  = QueryExecutionIdList (Array QueryExecutionId)
```

##### Instances
``` purescript
Newtype QueryExecutionIdList _
Generic QueryExecutionIdList _
Show QueryExecutionIdList
Decode QueryExecutionIdList
Encode QueryExecutionIdList
```

#### `QueryExecutionList`

``` purescript
newtype QueryExecutionList
  = QueryExecutionList (Array QueryExecution)
```

##### Instances
``` purescript
Newtype QueryExecutionList _
Generic QueryExecutionList _
Show QueryExecutionList
Decode QueryExecutionList
Encode QueryExecutionList
```

#### `QueryExecutionState`

``` purescript
newtype QueryExecutionState
  = QueryExecutionState String
```

##### Instances
``` purescript
Newtype QueryExecutionState _
Generic QueryExecutionState _
Show QueryExecutionState
Decode QueryExecutionState
Encode QueryExecutionState
```

#### `QueryExecutionStatistics`

``` purescript
newtype QueryExecutionStatistics
  = QueryExecutionStatistics { "EngineExecutionTimeInMillis" :: Maybe (Number), "DataScannedInBytes" :: Maybe (Number) }
```

<p>The amount of data scanned during the query execution and the amount of time that it took to execute.</p>

##### Instances
``` purescript
Newtype QueryExecutionStatistics _
Generic QueryExecutionStatistics _
Show QueryExecutionStatistics
Decode QueryExecutionStatistics
Encode QueryExecutionStatistics
```

#### `newQueryExecutionStatistics`

``` purescript
newQueryExecutionStatistics :: QueryExecutionStatistics
```

Constructs QueryExecutionStatistics from required parameters

#### `newQueryExecutionStatistics'`

``` purescript
newQueryExecutionStatistics' :: ({ "EngineExecutionTimeInMillis" :: Maybe (Number), "DataScannedInBytes" :: Maybe (Number) } -> { "EngineExecutionTimeInMillis" :: Maybe (Number), "DataScannedInBytes" :: Maybe (Number) }) -> QueryExecutionStatistics
```

Constructs QueryExecutionStatistics's fields from required parameters

#### `QueryExecutionStatus`

``` purescript
newtype QueryExecutionStatus
  = QueryExecutionStatus { "State" :: Maybe (QueryExecutionState), "StateChangeReason" :: Maybe (String), "SubmissionDateTime" :: Maybe (Date), "CompletionDateTime" :: Maybe (Date) }
```

<p>The completion date, current state, submission time, and state change reason (if applicable) for the query execution.</p>

##### Instances
``` purescript
Newtype QueryExecutionStatus _
Generic QueryExecutionStatus _
Show QueryExecutionStatus
Decode QueryExecutionStatus
Encode QueryExecutionStatus
```

#### `newQueryExecutionStatus`

``` purescript
newQueryExecutionStatus :: QueryExecutionStatus
```

Constructs QueryExecutionStatus from required parameters

#### `newQueryExecutionStatus'`

``` purescript
newQueryExecutionStatus' :: ({ "State" :: Maybe (QueryExecutionState), "StateChangeReason" :: Maybe (String), "SubmissionDateTime" :: Maybe (Date), "CompletionDateTime" :: Maybe (Date) } -> { "State" :: Maybe (QueryExecutionState), "StateChangeReason" :: Maybe (String), "SubmissionDateTime" :: Maybe (Date), "CompletionDateTime" :: Maybe (Date) }) -> QueryExecutionStatus
```

Constructs QueryExecutionStatus's fields from required parameters

#### `QueryString`

``` purescript
newtype QueryString
  = QueryString String
```

##### Instances
``` purescript
Newtype QueryString _
Generic QueryString _
Show QueryString
Decode QueryString
Encode QueryString
```

#### `ResultConfiguration`

``` purescript
newtype ResultConfiguration
  = ResultConfiguration { "OutputLocation" :: String, "EncryptionConfiguration" :: Maybe (EncryptionConfiguration) }
```

<p>The location in Amazon S3 where query results are stored and the encryption option, if any, used for query results.</p>

##### Instances
``` purescript
Newtype ResultConfiguration _
Generic ResultConfiguration _
Show ResultConfiguration
Decode ResultConfiguration
Encode ResultConfiguration
```

#### `newResultConfiguration`

``` purescript
newResultConfiguration :: String -> ResultConfiguration
```

Constructs ResultConfiguration from required parameters

#### `newResultConfiguration'`

``` purescript
newResultConfiguration' :: String -> ({ "OutputLocation" :: String, "EncryptionConfiguration" :: Maybe (EncryptionConfiguration) } -> { "OutputLocation" :: String, "EncryptionConfiguration" :: Maybe (EncryptionConfiguration) }) -> ResultConfiguration
```

Constructs ResultConfiguration's fields from required parameters

#### `ResultSet`

``` purescript
newtype ResultSet
  = ResultSet { "Rows" :: Maybe (RowList), "ResultSetMetadata" :: Maybe (ResultSetMetadata) }
```

<p>The metadata and rows that comprise a query result set. The metadata describes the column structure and data types.</p>

##### Instances
``` purescript
Newtype ResultSet _
Generic ResultSet _
Show ResultSet
Decode ResultSet
Encode ResultSet
```

#### `newResultSet`

``` purescript
newResultSet :: ResultSet
```

Constructs ResultSet from required parameters

#### `newResultSet'`

``` purescript
newResultSet' :: ({ "Rows" :: Maybe (RowList), "ResultSetMetadata" :: Maybe (ResultSetMetadata) } -> { "Rows" :: Maybe (RowList), "ResultSetMetadata" :: Maybe (ResultSetMetadata) }) -> ResultSet
```

Constructs ResultSet's fields from required parameters

#### `ResultSetMetadata`

``` purescript
newtype ResultSetMetadata
  = ResultSetMetadata { "ColumnInfo" :: Maybe (ColumnInfoList) }
```

<p>The metadata that describes the column structure and data types of a table of query results.</p>

##### Instances
``` purescript
Newtype ResultSetMetadata _
Generic ResultSetMetadata _
Show ResultSetMetadata
Decode ResultSetMetadata
Encode ResultSetMetadata
```

#### `newResultSetMetadata`

``` purescript
newResultSetMetadata :: ResultSetMetadata
```

Constructs ResultSetMetadata from required parameters

#### `newResultSetMetadata'`

``` purescript
newResultSetMetadata' :: ({ "ColumnInfo" :: Maybe (ColumnInfoList) } -> { "ColumnInfo" :: Maybe (ColumnInfoList) }) -> ResultSetMetadata
```

Constructs ResultSetMetadata's fields from required parameters

#### `Row`

``` purescript
newtype Row
  = Row { "Data" :: Maybe (DatumList') }
```

<p>The rows that comprise a query result table.</p>

##### Instances
``` purescript
Newtype Row _
Generic Row _
Show Row
Decode Row
Encode Row
```

#### `newRow`

``` purescript
newRow :: Row
```

Constructs Row from required parameters

#### `newRow'`

``` purescript
newRow' :: ({ "Data" :: Maybe (DatumList') } -> { "Data" :: Maybe (DatumList') }) -> Row
```

Constructs Row's fields from required parameters

#### `RowList`

``` purescript
newtype RowList
  = RowList (Array Row)
```

##### Instances
``` purescript
Newtype RowList _
Generic RowList _
Show RowList
Decode RowList
Encode RowList
```

#### `StartQueryExecutionInput`

``` purescript
newtype StartQueryExecutionInput
  = StartQueryExecutionInput { "QueryString" :: QueryString, "ClientRequestToken" :: Maybe (IdempotencyToken), "QueryExecutionContext" :: Maybe (QueryExecutionContext), "ResultConfiguration" :: ResultConfiguration }
```

##### Instances
``` purescript
Newtype StartQueryExecutionInput _
Generic StartQueryExecutionInput _
Show StartQueryExecutionInput
Decode StartQueryExecutionInput
Encode StartQueryExecutionInput
```

#### `newStartQueryExecutionInput`

``` purescript
newStartQueryExecutionInput :: QueryString -> ResultConfiguration -> StartQueryExecutionInput
```

Constructs StartQueryExecutionInput from required parameters

#### `newStartQueryExecutionInput'`

``` purescript
newStartQueryExecutionInput' :: QueryString -> ResultConfiguration -> ({ "QueryString" :: QueryString, "ClientRequestToken" :: Maybe (IdempotencyToken), "QueryExecutionContext" :: Maybe (QueryExecutionContext), "ResultConfiguration" :: ResultConfiguration } -> { "QueryString" :: QueryString, "ClientRequestToken" :: Maybe (IdempotencyToken), "QueryExecutionContext" :: Maybe (QueryExecutionContext), "ResultConfiguration" :: ResultConfiguration }) -> StartQueryExecutionInput
```

Constructs StartQueryExecutionInput's fields from required parameters

#### `StartQueryExecutionOutput`

``` purescript
newtype StartQueryExecutionOutput
  = StartQueryExecutionOutput { "QueryExecutionId" :: Maybe (QueryExecutionId) }
```

##### Instances
``` purescript
Newtype StartQueryExecutionOutput _
Generic StartQueryExecutionOutput _
Show StartQueryExecutionOutput
Decode StartQueryExecutionOutput
Encode StartQueryExecutionOutput
```

#### `newStartQueryExecutionOutput`

``` purescript
newStartQueryExecutionOutput :: StartQueryExecutionOutput
```

Constructs StartQueryExecutionOutput from required parameters

#### `newStartQueryExecutionOutput'`

``` purescript
newStartQueryExecutionOutput' :: ({ "QueryExecutionId" :: Maybe (QueryExecutionId) } -> { "QueryExecutionId" :: Maybe (QueryExecutionId) }) -> StartQueryExecutionOutput
```

Constructs StartQueryExecutionOutput's fields from required parameters

#### `StopQueryExecutionInput`

``` purescript
newtype StopQueryExecutionInput
  = StopQueryExecutionInput { "QueryExecutionId" :: QueryExecutionId }
```

##### Instances
``` purescript
Newtype StopQueryExecutionInput _
Generic StopQueryExecutionInput _
Show StopQueryExecutionInput
Decode StopQueryExecutionInput
Encode StopQueryExecutionInput
```

#### `newStopQueryExecutionInput`

``` purescript
newStopQueryExecutionInput :: QueryExecutionId -> StopQueryExecutionInput
```

Constructs StopQueryExecutionInput from required parameters

#### `newStopQueryExecutionInput'`

``` purescript
newStopQueryExecutionInput' :: QueryExecutionId -> ({ "QueryExecutionId" :: QueryExecutionId } -> { "QueryExecutionId" :: QueryExecutionId }) -> StopQueryExecutionInput
```

Constructs StopQueryExecutionInput's fields from required parameters

#### `StopQueryExecutionOutput`

``` purescript
newtype StopQueryExecutionOutput
  = StopQueryExecutionOutput NoArguments
```

##### Instances
``` purescript
Newtype StopQueryExecutionOutput _
Generic StopQueryExecutionOutput _
Show StopQueryExecutionOutput
Decode StopQueryExecutionOutput
Encode StopQueryExecutionOutput
```

#### `ThrottleReason`

``` purescript
newtype ThrottleReason
  = ThrottleReason String
```

##### Instances
``` purescript
Newtype ThrottleReason _
Generic ThrottleReason _
Show ThrottleReason
Decode ThrottleReason
Encode ThrottleReason
```

#### `Token`

``` purescript
newtype Token
  = Token String
```

##### Instances
``` purescript
Newtype Token _
Generic Token _
Show Token
Decode Token
Encode Token
```

#### `TooManyRequestsException`

``` purescript
newtype TooManyRequestsException
  = TooManyRequestsException { "Message" :: Maybe (ErrorMessage), "Reason" :: Maybe (ThrottleReason) }
```

<p>Indicates that the request was throttled.</p>

##### Instances
``` purescript
Newtype TooManyRequestsException _
Generic TooManyRequestsException _
Show TooManyRequestsException
Decode TooManyRequestsException
Encode TooManyRequestsException
```

#### `newTooManyRequestsException`

``` purescript
newTooManyRequestsException :: TooManyRequestsException
```

Constructs TooManyRequestsException from required parameters

#### `newTooManyRequestsException'`

``` purescript
newTooManyRequestsException' :: ({ "Message" :: Maybe (ErrorMessage), "Reason" :: Maybe (ThrottleReason) } -> { "Message" :: Maybe (ErrorMessage), "Reason" :: Maybe (ThrottleReason) }) -> TooManyRequestsException
```

Constructs TooManyRequestsException's fields from required parameters

#### `UnprocessedNamedQueryId`

``` purescript
newtype UnprocessedNamedQueryId
  = UnprocessedNamedQueryId { "NamedQueryId" :: Maybe (NamedQueryId), "ErrorCode" :: Maybe (ErrorCode), "ErrorMessage" :: Maybe (ErrorMessage) }
```

<p>Information about a named query ID that could not be processed.</p>

##### Instances
``` purescript
Newtype UnprocessedNamedQueryId _
Generic UnprocessedNamedQueryId _
Show UnprocessedNamedQueryId
Decode UnprocessedNamedQueryId
Encode UnprocessedNamedQueryId
```

#### `newUnprocessedNamedQueryId`

``` purescript
newUnprocessedNamedQueryId :: UnprocessedNamedQueryId
```

Constructs UnprocessedNamedQueryId from required parameters

#### `newUnprocessedNamedQueryId'`

``` purescript
newUnprocessedNamedQueryId' :: ({ "NamedQueryId" :: Maybe (NamedQueryId), "ErrorCode" :: Maybe (ErrorCode), "ErrorMessage" :: Maybe (ErrorMessage) } -> { "NamedQueryId" :: Maybe (NamedQueryId), "ErrorCode" :: Maybe (ErrorCode), "ErrorMessage" :: Maybe (ErrorMessage) }) -> UnprocessedNamedQueryId
```

Constructs UnprocessedNamedQueryId's fields from required parameters

#### `UnprocessedNamedQueryIdList`

``` purescript
newtype UnprocessedNamedQueryIdList
  = UnprocessedNamedQueryIdList (Array UnprocessedNamedQueryId)
```

##### Instances
``` purescript
Newtype UnprocessedNamedQueryIdList _
Generic UnprocessedNamedQueryIdList _
Show UnprocessedNamedQueryIdList
Decode UnprocessedNamedQueryIdList
Encode UnprocessedNamedQueryIdList
```

#### `UnprocessedQueryExecutionId`

``` purescript
newtype UnprocessedQueryExecutionId
  = UnprocessedQueryExecutionId { "QueryExecutionId" :: Maybe (QueryExecutionId), "ErrorCode" :: Maybe (ErrorCode), "ErrorMessage" :: Maybe (ErrorMessage) }
```

<p>Describes a query execution that failed to process.</p>

##### Instances
``` purescript
Newtype UnprocessedQueryExecutionId _
Generic UnprocessedQueryExecutionId _
Show UnprocessedQueryExecutionId
Decode UnprocessedQueryExecutionId
Encode UnprocessedQueryExecutionId
```

#### `newUnprocessedQueryExecutionId`

``` purescript
newUnprocessedQueryExecutionId :: UnprocessedQueryExecutionId
```

Constructs UnprocessedQueryExecutionId from required parameters

#### `newUnprocessedQueryExecutionId'`

``` purescript
newUnprocessedQueryExecutionId' :: ({ "QueryExecutionId" :: Maybe (QueryExecutionId), "ErrorCode" :: Maybe (ErrorCode), "ErrorMessage" :: Maybe (ErrorMessage) } -> { "QueryExecutionId" :: Maybe (QueryExecutionId), "ErrorCode" :: Maybe (ErrorCode), "ErrorMessage" :: Maybe (ErrorMessage) }) -> UnprocessedQueryExecutionId
```

Constructs UnprocessedQueryExecutionId's fields from required parameters

#### `UnprocessedQueryExecutionIdList`

``` purescript
newtype UnprocessedQueryExecutionIdList
  = UnprocessedQueryExecutionIdList (Array UnprocessedQueryExecutionId)
```

##### Instances
``` purescript
Newtype UnprocessedQueryExecutionIdList _
Generic UnprocessedQueryExecutionIdList _
Show UnprocessedQueryExecutionIdList
Decode UnprocessedQueryExecutionIdList
Encode UnprocessedQueryExecutionIdList
```

#### `DatumList'`

``` purescript
newtype DatumList'
  = DatumList' (Array Datum)
```

##### Instances
``` purescript
Newtype DatumList' _
Generic DatumList' _
Show DatumList'
Decode DatumList'
Encode DatumList'
```

#### `DatumString'`

``` purescript
newtype DatumString'
  = DatumString' String
```

##### Instances
``` purescript
Newtype DatumString' _
Generic DatumString' _
Show DatumString'
Decode DatumString'
Encode DatumString'
```


