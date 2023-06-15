# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [x/provider/types/genesis.proto](#x/provider/types/genesis.proto)
    - [GenesisState](#furychain.fury.provider.GenesisState)
  
- [x/provider/types/query.proto](#x/provider/types/query.proto)
    - [Query](#furychain.fury.provider.Query)
  
- [x/provider/types/query_dsource.proto](#x/provider/types/query_dsource.proto)
    - [DataSourceInfoReq](#furychain.fury.provider.DataSourceInfoReq)
    - [DataSourceInfoRes](#furychain.fury.provider.DataSourceInfoRes)
    - [ListDataSourcesReq](#furychain.fury.provider.ListDataSourcesReq)
    - [ListDataSourcesRes](#furychain.fury.provider.ListDataSourcesRes)
  
- [x/provider/types/query_oscript.proto](#x/provider/types/query_oscript.proto)
    - [ListOracleScriptsReq](#furychain.fury.provider.ListOracleScriptsReq)
    - [ListOracleScriptsRes](#furychain.fury.provider.ListOracleScriptsRes)
    - [MinFeesReq](#furychain.fury.provider.MinFeesReq)
    - [MinFeesRes](#furychain.fury.provider.MinFeesRes)
    - [OracleScriptInfoReq](#furychain.fury.provider.OracleScriptInfoReq)
    - [OracleScriptInfoRes](#furychain.fury.provider.OracleScriptInfoRes)
  
- [x/provider/types/query_tcase.proto](#x/provider/types/query_tcase.proto)
    - [ListTestCasesReq](#furychain.fury.provider.ListTestCasesReq)
    - [ListTestCasesRes](#furychain.fury.provider.ListTestCasesRes)
    - [TestCaseInfoReq](#furychain.fury.provider.TestCaseInfoReq)
    - [TestCaseInfoRes](#furychain.fury.provider.TestCaseInfoRes)
  
- [x/provider/types/tx.proto](#x/provider/types/tx.proto)
    - [Msg](#furychain.fury.provider.Msg)
  
- [x/provider/types/tx_dsource.proto](#x/provider/types/tx_dsource.proto)
    - [MsgCreateAIDataSource](#furychain.fury.provider.MsgCreateAIDataSource)
    - [MsgCreateAIDataSourceRes](#furychain.fury.provider.MsgCreateAIDataSourceRes)
    - [MsgEditAIDataSource](#furychain.fury.provider.MsgEditAIDataSource)
    - [MsgEditAIDataSourceRes](#furychain.fury.provider.MsgEditAIDataSourceRes)
  
- [x/provider/types/tx_oscript.proto](#x/provider/types/tx_oscript.proto)
    - [MsgCreateOracleScript](#furychain.fury.provider.MsgCreateOracleScript)
    - [MsgCreateOracleScriptRes](#furychain.fury.provider.MsgCreateOracleScriptRes)
    - [MsgEditOracleScript](#furychain.fury.provider.MsgEditOracleScript)
    - [MsgEditOracleScriptRes](#furychain.fury.provider.MsgEditOracleScriptRes)
  
- [x/provider/types/tx_tcase.proto](#x/provider/types/tx_tcase.proto)
    - [MsgCreateTestCase](#furychain.fury.provider.MsgCreateTestCase)
    - [MsgCreateTestCaseRes](#furychain.fury.provider.MsgCreateTestCaseRes)
    - [MsgEditTestCase](#furychain.fury.provider.MsgEditTestCase)
    - [MsgEditTestCaseRes](#furychain.fury.provider.MsgEditTestCaseRes)
  
- [x/provider/types/types_ds.proto](#x/provider/types/types_ds.proto)
    - [AIDataSource](#furychain.fury.provider.AIDataSource)
  
- [x/provider/types/types_os.proto](#x/provider/types/types_os.proto)
    - [OracleScript](#furychain.fury.provider.OracleScript)
  
- [x/provider/types/types_tc.proto](#x/provider/types/types_tc.proto)
    - [TestCase](#furychain.fury.provider.TestCase)
  
- [Scalar Value Types](#scalar-value-types)



<a name="x/provider/types/genesis.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## x/provider/types/genesis.proto



<a name="furychain.fury.provider.GenesisState"></a>

### GenesisState
GenesisState defines the capability module&#39;s genesis state.


| Field         | Type                                                  | Label    | Description |
| ------------- | ----------------------------------------------------- | -------- | ----------- |
| AIDataSources | [AIDataSource](#furychain.fury.provider.AIDataSource) | repeated |             |
| OracleScripts | [OracleScript](#furychain.fury.provider.OracleScript) | repeated |             |
| TestCases     | [TestCase](#furychain.fury.provider.TestCase)         | repeated |             |





 

 

 

 



<a name="x/provider/types/query.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## x/provider/types/query.proto


 

 

 


<a name="furychain.fury.provider.Query"></a>

### Query
Query provides defines the gRPC querier service

| Method Name       | Request Type                                                          | Response Type                                                         | Description                                       |
| ----------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | ------------------------------------------------- |
| DataSourceInfo    | [DataSourceInfoReq](#furychain.fury.provider.DataSourceInfoReq)       | [DataSourceInfoRes](#furychain.fury.provider.DataSourceInfoRes)       | DataSourceInfo gets the data source meta data     |
| ListDataSources   | [ListDataSourcesReq](#furychain.fury.provider.ListDataSourcesReq)     | [ListDataSourcesRes](#furychain.fury.provider.ListDataSourcesRes)     | ListDataSources gets the list of data sources     |
| OracleScriptInfo  | [OracleScriptInfoReq](#furychain.fury.provider.OracleScriptInfoReq)   | [OracleScriptInfoRes](#furychain.fury.provider.OracleScriptInfoRes)   | OracleScriptInfo gets the oracle script meta data |
| ListOracleScripts | [ListOracleScriptsReq](#furychain.fury.provider.ListOracleScriptsReq) | [ListOracleScriptsRes](#furychain.fury.provider.ListOracleScriptsRes) | ListOracleScripts gets the list of oracle scripts |
| TestCaseInfo      | [TestCaseInfoReq](#furychain.fury.provider.TestCaseInfoReq)           | [TestCaseInfoRes](#furychain.fury.provider.TestCaseInfoRes)           | TestCaseInfo gets the test case meta data         |
| ListTestCases     | [ListTestCasesReq](#furychain.fury.provider.ListTestCasesReq)         | [ListTestCasesRes](#furychain.fury.provider.ListTestCasesRes)         | ListTestCases gets the list of test cases         |
| QueryMinFees      | [MinFeesReq](#furychain.fury.provider.MinFeesReq)                     | [MinFeesRes](#furychain.fury.provider.MinFeesRes)                     | QueryMinFees gets the min fees of oracle script   |

 



<a name="x/provider/types/query_dsource.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## x/provider/types/query_dsource.proto



<a name="furychain.fury.provider.DataSourceInfoReq"></a>

### DataSourceInfoReq
DataSourceInfoReq is the request type for the Query/DataSourceInfo RPC method


| Field | Type              | Label | Description                                     |
| ----- | ----------------- | ----- | ----------------------------------------------- |
| name  | [string](#string) |       | address is the address of the contract to query |






<a name="furychain.fury.provider.DataSourceInfoRes"></a>

### DataSourceInfoRes
DataSourceInfoRes is the response type for the Query/DataSourceInfo RPC method


| Field       | Type                                                  | Label    | Description                                                                     |
| ----------- | ----------------------------------------------------- | -------- | ------------------------------------------------------------------------------- |
| name        | [string](#string)                                     |          |                                                                                 |
| owner       | [bytes](#bytes)                                       |          | Owner is the address who is allowed to make further changes to the data source. |
| contract    | [string](#string)                                     |          |                                                                                 |
| description | [string](#string)                                     |          |                                                                                 |
| fees        | [cosmos.base.v1beta1.Coin](#cosmos.base.v1beta1.Coin) | repeated |                                                                                 |






<a name="furychain.fury.provider.ListDataSourcesReq"></a>

### ListDataSourcesReq
ListDataSourcesReq is the request type for the Query/ListDataSources RPC method


| Field | Type              | Label | Description |
| ----- | ----------------- | ----- | ----------- |
| name  | [string](#string) |       |             |
| page  | [int64](#int64)   |       |             |
| limit | [int64](#int64)   |       |             |






<a name="furychain.fury.provider.ListDataSourcesRes"></a>

### ListDataSourcesRes
ListDataSourcesRes is the response type for the Query/ListDataSources RPC method


| Field         | Type                                                  | Label    | Description |
| ------------- | ----------------------------------------------------- | -------- | ----------- |
| AIDataSources | [AIDataSource](#furychain.fury.provider.AIDataSource) | repeated |             |
| count         | [int64](#int64)                                       |          |             |





 

 

 

 



<a name="x/provider/types/query_oscript.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## x/provider/types/query_oscript.proto



<a name="furychain.fury.provider.ListOracleScriptsReq"></a>

### ListOracleScriptsReq
ListOracleScriptsReq is the request type for the Query/ListOracleScripts RPC method


| Field | Type              | Label | Description |
| ----- | ----------------- | ----- | ----------- |
| name  | [string](#string) |       |             |
| page  | [int64](#int64)   |       |             |
| limit | [int64](#int64)   |       |             |






<a name="furychain.fury.provider.ListOracleScriptsRes"></a>

### ListOracleScriptsRes
ListOracleScriptsRes is the response type for the Query/ListOracleScripts RPC method


| Field         | Type                                                  | Label    | Description |
| ------------- | ----------------------------------------------------- | -------- | ----------- |
| OracleScripts | [OracleScript](#furychain.fury.provider.OracleScript) | repeated |             |
| count         | [int64](#int64)                                       |          |             |






<a name="furychain.fury.provider.MinFeesReq"></a>

### MinFeesReq
ListOracleScriptsReq is the request type for the Query/ListOracleScripts RPC method


| Field            | Type              | Label | Description |
| ---------------- | ----------------- | ----- | ----------- |
| OracleScriptName | [string](#string) |       |             |
| ValNum           | [int64](#int64)   |       |             |






<a name="furychain.fury.provider.MinFeesRes"></a>

### MinFeesRes
ListOracleScriptsRes is the response type for the Query/ListOracleScripts RPC method


| Field   | Type              | Label | Description |
| ------- | ----------------- | ----- | ----------- |
| minFees | [string](#string) |       |             |






<a name="furychain.fury.provider.OracleScriptInfoReq"></a>

### OracleScriptInfoReq
OracleScriptInfoReq is the request type for the Query/OracleScriptInfo RPC method


| Field | Type              | Label | Description                                     |
| ----- | ----------------- | ----- | ----------------------------------------------- |
| name  | [string](#string) |       | address is the address of the contract to query |






<a name="furychain.fury.provider.OracleScriptInfoRes"></a>

### OracleScriptInfoRes
OracleScriptInfoRes is the response type for the Query/OracleScriptInfo RPC method


| Field       | Type                                                  | Label    | Description                                                                       |
| ----------- | ----------------------------------------------------- | -------- | --------------------------------------------------------------------------------- |
| name        | [string](#string)                                     |          |                                                                                   |
| owner       | [bytes](#bytes)                                       |          | Owner is the address who is allowed to make further changes to the oracle script. |
| contract    | [string](#string)                                     |          |                                                                                   |
| description | [string](#string)                                     |          |                                                                                   |
| fees        | [cosmos.base.v1beta1.Coin](#cosmos.base.v1beta1.Coin) | repeated |                                                                                   |
| d_sources   | [string](#string)                                     | repeated |                                                                                   |
| t_cases     | [string](#string)                                     | repeated |                                                                                   |





 

 

 

 



<a name="x/provider/types/query_tcase.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## x/provider/types/query_tcase.proto



<a name="furychain.fury.provider.ListTestCasesReq"></a>

### ListTestCasesReq
ListTestCasesReq is the request type for the Query/ListTestCases RPC method


| Field | Type              | Label | Description |
| ----- | ----------------- | ----- | ----------- |
| name  | [string](#string) |       |             |
| page  | [int64](#int64)   |       |             |
| limit | [int64](#int64)   |       |             |






<a name="furychain.fury.provider.ListTestCasesRes"></a>

### ListTestCasesRes
ListTestCasesRes is the response type for the Query/ListTestCases RPC method


| Field     | Type                                          | Label    | Description |
| --------- | --------------------------------------------- | -------- | ----------- |
| TestCases | [TestCase](#furychain.fury.provider.TestCase) | repeated |             |
| count     | [int64](#int64)                               |          |             |






<a name="furychain.fury.provider.TestCaseInfoReq"></a>

### TestCaseInfoReq
TestCaseInfoReq is the request type for the Query/TestCaseInfo RPC method


| Field | Type              | Label | Description                                     |
| ----- | ----------------- | ----- | ----------------------------------------------- |
| name  | [string](#string) |       | address is the address of the contract to query |






<a name="furychain.fury.provider.TestCaseInfoRes"></a>

### TestCaseInfoRes
TestCaseInfoRes is the response type for the Query/TestCaseInfo RPC method


| Field       | Type                                                  | Label    | Description                                                                   |
| ----------- | ----------------------------------------------------- | -------- | ----------------------------------------------------------------------------- |
| name        | [string](#string)                                     |          |                                                                               |
| owner       | [bytes](#bytes)                                       |          | Owner is the address who is allowed to make further changes to the test case. |
| contract    | [string](#string)                                     |          |                                                                               |
| description | [string](#string)                                     |          |                                                                               |
| fees        | [cosmos.base.v1beta1.Coin](#cosmos.base.v1beta1.Coin) | repeated |                                                                               |





 

 

 

 



<a name="x/provider/types/tx.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## x/provider/types/tx.proto


 

 

 


<a name="furychain.fury.provider.Msg"></a>

### Msg
Msg defines the provider Msg service.

| Method Name        | Request Type                                                            | Response Type                                                                 | Description                    |
| ------------------ | ----------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ------------------------------ |
| CreateAIDataSource | [MsgCreateAIDataSource](#furychain.fury.provider.MsgCreateAIDataSource) | [MsgCreateAIDataSourceRes](#furychain.fury.provider.MsgCreateAIDataSourceRes) | Create a new data source       |
| EditAIDataSource   | [MsgEditAIDataSource](#furychain.fury.provider.MsgEditAIDataSource)     | [MsgEditAIDataSourceRes](#furychain.fury.provider.MsgEditAIDataSourceRes)     | Edit an existing data source   |
| CreateOracleScript | [MsgCreateOracleScript](#furychain.fury.provider.MsgCreateOracleScript) | [MsgCreateOracleScriptRes](#furychain.fury.provider.MsgCreateOracleScriptRes) | Create a new oracle script     |
| EditOracleScript   | [MsgEditOracleScript](#furychain.fury.provider.MsgEditOracleScript)     | [MsgEditOracleScriptRes](#furychain.fury.provider.MsgEditOracleScriptRes)     | Edit an existing oracle script |
| CreateTestCase     | [MsgCreateTestCase](#furychain.fury.provider.MsgCreateTestCase)         | [MsgCreateTestCaseRes](#furychain.fury.provider.MsgCreateTestCaseRes)         | Create a new test case         |
| EditTestCase       | [MsgEditTestCase](#furychain.fury.provider.MsgEditTestCase)             | [MsgEditTestCaseRes](#furychain.fury.provider.MsgEditTestCaseRes)             | Edit an existing test case     |

 



<a name="x/provider/types/tx_dsource.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## x/provider/types/tx_dsource.proto



<a name="furychain.fury.provider.MsgCreateAIDataSource"></a>

### MsgCreateAIDataSource
MsgCreateAIDataSource submit data source metadata onto Furychain


| Field       | Type              | Label | Description                                                                     |
| ----------- | ----------------- | ----- | ------------------------------------------------------------------------------- |
| name        | [string](#string) |       |                                                                                 |
| description | [string](#string) |       |                                                                                 |
| contract    | [string](#string) |       |                                                                                 |
| owner       | [bytes](#bytes)   |       | Owner is the address who is allowed to make further changes to the data source. |
| fees        | [string](#string) |       |                                                                                 |






<a name="furychain.fury.provider.MsgCreateAIDataSourceRes"></a>

### MsgCreateAIDataSourceRes
MsgCreateAIDataSourceRes returns store result data.


| Field       | Type              | Label | Description                                                                     |
| ----------- | ----------------- | ----- | ------------------------------------------------------------------------------- |
| name        | [string](#string) |       |                                                                                 |
| description | [string](#string) |       |                                                                                 |
| contract    | [string](#string) |       |                                                                                 |
| owner       | [bytes](#bytes)   |       | Owner is the address who is allowed to make further changes to the data source. |
| fees        | [string](#string) |       |                                                                                 |






<a name="furychain.fury.provider.MsgEditAIDataSource"></a>

### MsgEditAIDataSource
MsgEditAIDataSource edit data source metadata onto Furychain


| Field       | Type              | Label | Description                                                                     |
| ----------- | ----------------- | ----- | ------------------------------------------------------------------------------- |
| old_name    | [string](#string) |       |                                                                                 |
| new_name    | [string](#string) |       |                                                                                 |
| description | [string](#string) |       |                                                                                 |
| contract    | [string](#string) |       |                                                                                 |
| owner       | [bytes](#bytes)   |       | Owner is the address who is allowed to make further changes to the data source. |
| fees        | [string](#string) |       |                                                                                 |






<a name="furychain.fury.provider.MsgEditAIDataSourceRes"></a>

### MsgEditAIDataSourceRes
MsgEditAIDataSourceRes returns edit result data.


| Field       | Type              | Label | Description                                                                     |
| ----------- | ----------------- | ----- | ------------------------------------------------------------------------------- |
| name        | [string](#string) |       |                                                                                 |
| description | [string](#string) |       |                                                                                 |
| contract    | [string](#string) |       |                                                                                 |
| owner       | [bytes](#bytes)   |       | Owner is the address who is allowed to make further changes to the data source. |
| fees        | [string](#string) |       |                                                                                 |





 

 

 

 



<a name="x/provider/types/tx_oscript.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## x/provider/types/tx_oscript.proto



<a name="furychain.fury.provider.MsgCreateOracleScript"></a>

### MsgCreateOracleScript
MsgCreateOracleScript submit oracle script metadata onto Furychain


| Field        | Type              | Label    | Description                                                                       |
| ------------ | ----------------- | -------- | --------------------------------------------------------------------------------- |
| name         | [string](#string) |          |                                                                                   |
| description  | [string](#string) |          |                                                                                   |
| contract     | [string](#string) |          |                                                                                   |
| owner        | [bytes](#bytes)   |          | Owner is the address who is allowed to make further changes to the oracle script. |
| fees         | [string](#string) |          |                                                                                   |
| data_sources | [string](#string) | repeated |                                                                                   |
| test_cases   | [string](#string) | repeated |                                                                                   |






<a name="furychain.fury.provider.MsgCreateOracleScriptRes"></a>

### MsgCreateOracleScriptRes
MsgCreateOracleScriptRes returns store result data.


| Field        | Type              | Label    | Description                                                                       |
| ------------ | ----------------- | -------- | --------------------------------------------------------------------------------- |
| name         | [string](#string) |          |                                                                                   |
| description  | [string](#string) |          |                                                                                   |
| contract     | [string](#string) |          |                                                                                   |
| owner        | [bytes](#bytes)   |          | Owner is the address who is allowed to make further changes to the oracle script. |
| fees         | [string](#string) |          |                                                                                   |
| data_sources | [string](#string) | repeated |                                                                                   |
| test_cases   | [string](#string) | repeated |                                                                                   |






<a name="furychain.fury.provider.MsgEditOracleScript"></a>

### MsgEditOracleScript
MsgEditOracleScript edit oracle script metadata onto Furychain


| Field        | Type              | Label    | Description                                                                       |
| ------------ | ----------------- | -------- | --------------------------------------------------------------------------------- |
| old_name     | [string](#string) |          |                                                                                   |
| new_name     | [string](#string) |          |                                                                                   |
| description  | [string](#string) |          |                                                                                   |
| contract     | [string](#string) |          |                                                                                   |
| owner        | [bytes](#bytes)   |          | Owner is the address who is allowed to make further changes to the oracle script. |
| fees         | [string](#string) |          |                                                                                   |
| data_sources | [string](#string) | repeated |                                                                                   |
| test_cases   | [string](#string) | repeated |                                                                                   |






<a name="furychain.fury.provider.MsgEditOracleScriptRes"></a>

### MsgEditOracleScriptRes
MsgEditOracleScriptRes returns edit result data.


| Field        | Type              | Label    | Description                                                                       |
| ------------ | ----------------- | -------- | --------------------------------------------------------------------------------- |
| name         | [string](#string) |          |                                                                                   |
| description  | [string](#string) |          |                                                                                   |
| contract     | [string](#string) |          |                                                                                   |
| owner        | [bytes](#bytes)   |          | Owner is the address who is allowed to make further changes to the oracle script. |
| fees         | [string](#string) |          |                                                                                   |
| data_sources | [string](#string) | repeated |                                                                                   |
| test_cases   | [string](#string) | repeated |                                                                                   |





 

 

 

 



<a name="x/provider/types/tx_tcase.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## x/provider/types/tx_tcase.proto



<a name="furychain.fury.provider.MsgCreateTestCase"></a>

### MsgCreateTestCase
MsgCreateTestCase submit test case metadata onto Furychain


| Field       | Type              | Label | Description                                                                   |
| ----------- | ----------------- | ----- | ----------------------------------------------------------------------------- |
| name        | [string](#string) |       |                                                                               |
| description | [string](#string) |       |                                                                               |
| contract    | [string](#string) |       |                                                                               |
| owner       | [bytes](#bytes)   |       | Owner is the address who is allowed to make further changes to the test case. |
| fees        | [string](#string) |       |                                                                               |






<a name="furychain.fury.provider.MsgCreateTestCaseRes"></a>

### MsgCreateTestCaseRes
MsgCreateTestCaseRes returns store result data.


| Field       | Type              | Label | Description                                                                   |
| ----------- | ----------------- | ----- | ----------------------------------------------------------------------------- |
| name        | [string](#string) |       |                                                                               |
| description | [string](#string) |       |                                                                               |
| contract    | [string](#string) |       |                                                                               |
| owner       | [bytes](#bytes)   |       | Owner is the address who is allowed to make further changes to the test case. |
| fees        | [string](#string) |       |                                                                               |






<a name="furychain.fury.provider.MsgEditTestCase"></a>

### MsgEditTestCase
MsgEditTestCase edit test case metadata onto Furychain


| Field       | Type              | Label | Description                                                                   |
| ----------- | ----------------- | ----- | ----------------------------------------------------------------------------- |
| old_name    | [string](#string) |       |                                                                               |
| new_name    | [string](#string) |       |                                                                               |
| description | [string](#string) |       |                                                                               |
| contract    | [string](#string) |       |                                                                               |
| owner       | [bytes](#bytes)   |       | Owner is the address who is allowed to make further changes to the test case. |
| fees        | [string](#string) |       |                                                                               |






<a name="furychain.fury.provider.MsgEditTestCaseRes"></a>

### MsgEditTestCaseRes
MsgEditTestCaseRes returns edit result data.


| Field       | Type              | Label | Description                                                                   |
| ----------- | ----------------- | ----- | ----------------------------------------------------------------------------- |
| name        | [string](#string) |       |                                                                               |
| description | [string](#string) |       |                                                                               |
| contract    | [string](#string) |       |                                                                               |
| owner       | [bytes](#bytes)   |       | Owner is the address who is allowed to make further changes to the test case. |
| fees        | [string](#string) |       |                                                                               |





 

 

 

 



<a name="x/provider/types/types_ds.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## x/provider/types/types_ds.proto



<a name="furychain.fury.provider.AIDataSource"></a>

### AIDataSource



| Field       | Type                                                  | Label    | Description                                                                     |
| ----------- | ----------------------------------------------------- | -------- | ------------------------------------------------------------------------------- |
| name        | [string](#string)                                     |          |                                                                                 |
| contract    | [string](#string)                                     |          |                                                                                 |
| owner       | [bytes](#bytes)                                       |          | Owner is the address who is allowed to make further changes to the data source. |
| description | [string](#string)                                     |          |                                                                                 |
| fees        | [cosmos.base.v1beta1.Coin](#cosmos.base.v1beta1.Coin) | repeated |                                                                                 |





 

 

 

 



<a name="x/provider/types/types_os.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## x/provider/types/types_os.proto



<a name="furychain.fury.provider.OracleScript"></a>

### OracleScript



| Field        | Type                                                  | Label    | Description                                                                     |
| ------------ | ----------------------------------------------------- | -------- | ------------------------------------------------------------------------------- |
| name         | [string](#string)                                     |          |                                                                                 |
| contract     | [string](#string)                                     |          |                                                                                 |
| owner        | [bytes](#bytes)                                       |          | Owner is the address who is allowed to make further changes to the data source. |
| description  | [string](#string)                                     |          |                                                                                 |
| minimum_fees | [cosmos.base.v1beta1.Coin](#cosmos.base.v1beta1.Coin) | repeated |                                                                                 |
| d_sources    | [string](#string)                                     | repeated |                                                                                 |
| t_cases      | [string](#string)                                     | repeated |                                                                                 |





 

 

 

 



<a name="x/provider/types/types_tc.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## x/provider/types/types_tc.proto



<a name="furychain.fury.provider.TestCase"></a>

### TestCase



| Field       | Type                                                  | Label    | Description                                                                     |
| ----------- | ----------------------------------------------------- | -------- | ------------------------------------------------------------------------------- |
| name        | [string](#string)                                     |          |                                                                                 |
| contract    | [string](#string)                                     |          |                                                                                 |
| owner       | [bytes](#bytes)                                       |          | Owner is the address who is allowed to make further changes to the data source. |
| description | [string](#string)                                     |          |                                                                                 |
| fees        | [cosmos.base.v1beta1.Coin](#cosmos.base.v1beta1.Coin) | repeated |                                                                                 |





 

 

 

 



## Scalar Value Types

| .proto Type                    | Notes                                                                                                                                           | C++    | Java       | Python      | Go      | C#         | PHP            | Ruby                           |
| ------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------- | ------ | ---------- | ----------- | ------- | ---------- | -------------- | ------------------------------ |
| <a name="double" /> double     |                                                                                                                                                 | double | double     | float       | float64 | double     | float          | Float                          |
| <a name="float" /> float       |                                                                                                                                                 | float  | float      | float       | float32 | float      | float          | Float                          |
| <a name="int32" /> int32       | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32  | int        | int         | int32   | int        | integer        | Bignum or Fixnum (as required) |
| <a name="int64" /> int64       | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64  | long       | int/long    | int64   | long       | integer/string | Bignum                         |
| <a name="uint32" /> uint32     | Uses variable-length encoding.                                                                                                                  | uint32 | int        | int/long    | uint32  | uint       | integer        | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64     | Uses variable-length encoding.                                                                                                                  | uint64 | long       | int/long    | uint64  | ulong      | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32     | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s.                            | int32  | int        | int         | int32   | int        | integer        | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64     | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s.                            | int64  | long       | int/long    | int64   | long       | integer/string | Bignum                         |
| <a name="fixed32" /> fixed32   | Always four bytes. More efficient than uint32 if values are often greater than 2^28.                                                            | uint32 | int        | int         | uint32  | uint       | integer        | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64   | Always eight bytes. More efficient than uint64 if values are often greater than 2^56.                                                           | uint64 | long       | int/long    | uint64  | ulong      | integer/string | Bignum                         |
| <a name="sfixed32" /> sfixed32 | Always four bytes.                                                                                                                              | int32  | int        | int         | int32   | int        | integer        | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes.                                                                                                                             | int64  | long       | int/long    | int64   | long       | integer/string | Bignum                         |
| <a name="bool" /> bool         |                                                                                                                                                 | bool   | boolean    | boolean     | bool    | bool       | boolean        | TrueClass/FalseClass           |
| <a name="string" /> string     | A string must always contain UTF-8 encoded or 7-bit ASCII text.                                                                                 | string | String     | str/unicode | string  | string     | string         | String (UTF-8)                 |
| <a name="bytes" /> bytes       | May contain any arbitrary sequence of bytes.                                                                                                    | string | ByteString | str         | []byte  | ByteString | string         | String (ASCII-8BIT)            |

