## Module AWS.Athena.Requests

#### `batchGetNamedQuery`

``` purescript
batchGetNamedQuery :: forall eff. Service -> BatchGetNamedQueryInput -> Aff (exception :: EXCEPTION | eff) BatchGetNamedQueryOutput
```

<p>Returns the details of a single named query or a list of up to 50 queries, which you provide as an array of query ID strings. Use <a>ListNamedQueries</a> to get the list of named query IDs. If information could not be retrieved for a submitted query ID, information about the query ID submitted is listed under <a>UnprocessedNamedQueryId</a>. Named queries are different from executed queries. Use <a>BatchGetQueryExecution</a> to get details about each unique query execution, and <a>ListQueryExecutions</a> to get a list of query execution IDs.</p>

#### `batchGetQueryExecution`

``` purescript
batchGetQueryExecution :: forall eff. Service -> BatchGetQueryExecutionInput -> Aff (exception :: EXCEPTION | eff) BatchGetQueryExecutionOutput
```

<p>Returns the details of a single query execution or a list of up to 50 query executions, which you provide as an array of query execution ID strings. To get a list of query execution IDs, use <a>ListQueryExecutions</a>. Query executions are different from named (saved) queries. Use <a>BatchGetNamedQuery</a> to get details about named queries.</p>

#### `createNamedQuery`

``` purescript
createNamedQuery :: forall eff. Service -> CreateNamedQueryInput -> Aff (exception :: EXCEPTION | eff) CreateNamedQueryOutput
```

<p>Creates a named query.</p> <p>For code samples using the AWS SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>

#### `deleteNamedQuery`

``` purescript
deleteNamedQuery :: forall eff. Service -> DeleteNamedQueryInput -> Aff (exception :: EXCEPTION | eff) DeleteNamedQueryOutput
```

<p>Deletes a named query.</p> <p>For code samples using the AWS SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>

#### `getNamedQuery`

``` purescript
getNamedQuery :: forall eff. Service -> GetNamedQueryInput -> Aff (exception :: EXCEPTION | eff) GetNamedQueryOutput
```

<p>Returns information about a single query.</p>

#### `getQueryExecution`

``` purescript
getQueryExecution :: forall eff. Service -> GetQueryExecutionInput -> Aff (exception :: EXCEPTION | eff) GetQueryExecutionOutput
```

<p>Returns information about a single execution of a query. Each time a query executes, information about the query execution is saved with a unique ID.</p>

#### `getQueryResults`

``` purescript
getQueryResults :: forall eff. Service -> GetQueryResultsInput -> Aff (exception :: EXCEPTION | eff) GetQueryResultsOutput
```

<p>Returns the results of a single query execution specified by <code>QueryExecutionId</code>. This request does not execute the query but returns results. Use <a>StartQueryExecution</a> to run a query.</p>

#### `listNamedQueries`

``` purescript
listNamedQueries :: forall eff. Service -> ListNamedQueriesInput -> Aff (exception :: EXCEPTION | eff) ListNamedQueriesOutput
```

<p>Provides a list of all available query IDs.</p> <p>For code samples using the AWS SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>

#### `listQueryExecutions`

``` purescript
listQueryExecutions :: forall eff. Service -> ListQueryExecutionsInput -> Aff (exception :: EXCEPTION | eff) ListQueryExecutionsOutput
```

<p>Provides a list of all available query execution IDs.</p> <p>For code samples using the AWS SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>

#### `startQueryExecution`

``` purescript
startQueryExecution :: forall eff. Service -> StartQueryExecutionInput -> Aff (exception :: EXCEPTION | eff) StartQueryExecutionOutput
```

<p>Runs (executes) the SQL query statements contained in the <code>Query</code> string.</p> <p>For code samples using the AWS SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>

#### `stopQueryExecution`

``` purescript
stopQueryExecution :: forall eff. Service -> StopQueryExecutionInput -> Aff (exception :: EXCEPTION | eff) StopQueryExecutionOutput
```

<p>Stops a query execution.</p> <p>For code samples using the AWS SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>


