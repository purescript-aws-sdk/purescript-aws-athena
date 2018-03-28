
module AWS.Athena.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.Athena as Athena
import AWS.Athena.Types as AthenaTypes


-- | <p>Returns the details of a single named query or a list of up to 50 queries, which you provide as an array of query ID strings. Use <a>ListNamedQueries</a> to get the list of named query IDs. If information could not be retrieved for a submitted query ID, information about the query ID submitted is listed under <a>UnprocessedNamedQueryId</a>. Named queries are different from executed queries. Use <a>BatchGetQueryExecution</a> to get details about each unique query execution, and <a>ListQueryExecutions</a> to get a list of query execution IDs.</p>
batchGetNamedQuery :: forall eff. Athena.Service -> AthenaTypes.BatchGetNamedQueryInput -> Aff (exception :: EXCEPTION | eff) AthenaTypes.BatchGetNamedQueryOutput
batchGetNamedQuery (Athena.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "batchGetNamedQuery"


-- | <p>Returns the details of a single query execution or a list of up to 50 query executions, which you provide as an array of query execution ID strings. To get a list of query execution IDs, use <a>ListQueryExecutions</a>. Query executions are different from named (saved) queries. Use <a>BatchGetNamedQuery</a> to get details about named queries.</p>
batchGetQueryExecution :: forall eff. Athena.Service -> AthenaTypes.BatchGetQueryExecutionInput -> Aff (exception :: EXCEPTION | eff) AthenaTypes.BatchGetQueryExecutionOutput
batchGetQueryExecution (Athena.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "batchGetQueryExecution"


-- | <p>Creates a named query.</p> <p>For code samples using the AWS SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>
createNamedQuery :: forall eff. Athena.Service -> AthenaTypes.CreateNamedQueryInput -> Aff (exception :: EXCEPTION | eff) AthenaTypes.CreateNamedQueryOutput
createNamedQuery (Athena.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createNamedQuery"


-- | <p>Deletes a named query.</p> <p>For code samples using the AWS SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>
deleteNamedQuery :: forall eff. Athena.Service -> AthenaTypes.DeleteNamedQueryInput -> Aff (exception :: EXCEPTION | eff) AthenaTypes.DeleteNamedQueryOutput
deleteNamedQuery (Athena.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteNamedQuery"


-- | <p>Returns information about a single query.</p>
getNamedQuery :: forall eff. Athena.Service -> AthenaTypes.GetNamedQueryInput -> Aff (exception :: EXCEPTION | eff) AthenaTypes.GetNamedQueryOutput
getNamedQuery (Athena.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getNamedQuery"


-- | <p>Returns information about a single execution of a query. Each time a query executes, information about the query execution is saved with a unique ID.</p>
getQueryExecution :: forall eff. Athena.Service -> AthenaTypes.GetQueryExecutionInput -> Aff (exception :: EXCEPTION | eff) AthenaTypes.GetQueryExecutionOutput
getQueryExecution (Athena.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getQueryExecution"


-- | <p>Returns the results of a single query execution specified by <code>QueryExecutionId</code>. This request does not execute the query but returns results. Use <a>StartQueryExecution</a> to run a query.</p>
getQueryResults :: forall eff. Athena.Service -> AthenaTypes.GetQueryResultsInput -> Aff (exception :: EXCEPTION | eff) AthenaTypes.GetQueryResultsOutput
getQueryResults (Athena.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getQueryResults"


-- | <p>Provides a list of all available query IDs.</p> <p>For code samples using the AWS SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>
listNamedQueries :: forall eff. Athena.Service -> AthenaTypes.ListNamedQueriesInput -> Aff (exception :: EXCEPTION | eff) AthenaTypes.ListNamedQueriesOutput
listNamedQueries (Athena.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listNamedQueries"


-- | <p>Provides a list of all available query execution IDs.</p> <p>For code samples using the AWS SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>
listQueryExecutions :: forall eff. Athena.Service -> AthenaTypes.ListQueryExecutionsInput -> Aff (exception :: EXCEPTION | eff) AthenaTypes.ListQueryExecutionsOutput
listQueryExecutions (Athena.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listQueryExecutions"


-- | <p>Runs (executes) the SQL query statements contained in the <code>Query</code> string.</p> <p>For code samples using the AWS SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>
startQueryExecution :: forall eff. Athena.Service -> AthenaTypes.StartQueryExecutionInput -> Aff (exception :: EXCEPTION | eff) AthenaTypes.StartQueryExecutionOutput
startQueryExecution (Athena.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "startQueryExecution"


-- | <p>Stops a query execution.</p> <p>For code samples using the AWS SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>
stopQueryExecution :: forall eff. Athena.Service -> AthenaTypes.StopQueryExecutionInput -> Aff (exception :: EXCEPTION | eff) AthenaTypes.StopQueryExecutionOutput
stopQueryExecution (Athena.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "stopQueryExecution"
