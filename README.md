# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [tide_chart.proto](#tide_chart.proto)
    - [TideChartCommand](#.TideChartCommand)
    - [TideChartCommentBox](#.TideChartCommentBox)
    - [TideChartCommentBoxCommand](#.TideChartCommentBoxCommand)
    - [TideChartContext](#.TideChartContext)
    - [TideChartContextChange](#.TideChartContextChange)
    - [TideChartData](#.TideChartData)
    - [TideChartFile](#.TideChartFile)
    - [TideChartFileCurrent](#.TideChartFileCurrent)
    - [TideChartFileHeader](#.TideChartFileHeader)
    - [TideChartGraph](#.TideChartGraph)
    - [TideChartGraphCommand](#.TideChartGraphCommand)
    - [TideChartGroupCommand](#.TideChartGroupCommand)
    - [TideChartHeader](#.TideChartHeader)
    - [TideChartLibrary](#.TideChartLibrary)
    - [TideChartLink](#.TideChartLink)
    - [TideChartLinkCommand](#.TideChartLinkCommand)
    - [TideChartLogEntry](#.TideChartLogEntry)
    - [TideChartMessage](#.TideChartMessage)
    - [TideChartMethod](#.TideChartMethod)
    - [TideChartMoveCommand](#.TideChartMoveCommand)
    - [TideChartNode](#.TideChartNode)
    - [TideChartNodeCommand](#.TideChartNodeCommand)
    - [TideChartNote](#.TideChartNote)
    - [TideChartNoteCommand](#.TideChartNoteCommand)
    - [TideChartPort](#.TideChartPort)
    - [TideChartPortCommand](#.TideChartPortCommand)
    - [TideChartProperty](#.TideChartProperty)
    - [TideChartPropertyCommand](#.TideChartPropertyCommand)
    - [TideChartRegion](#.TideChartRegion)
    - [TideChartRegionCommand](#.TideChartRegionCommand)
    - [TideChartSite](#.TideChartSite)
    - [TideChartSource](#.TideChartSource)
    - [TideChartWidget](#.TideChartWidget)
    - [TideChartWidgetCommand](#.TideChartWidgetCommand)
  
    - [TideChartCommandUpdateType](#.TideChartCommandUpdateType)
    - [TideChartLogLevel](#.TideChartLogLevel)
  
  
  

- [Scalar Value Types](#scalar-value-types)



<a name="tide_chart.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## tide_chart.proto



<a name=".TideChartCommand"></a>

### TideChartCommand



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| version | [string](#string) |  | unique id for the change |
| target | [string](#string) |  | graph id being targetd by the the change (used by chart level streams: working, remote) |
| group | [TideChartGroupCommand](#TideChartGroupCommand) |  |  |
| move | [TideChartMoveCommand](#TideChartMoveCommand) |  |  |
| comment | [TideChartCommentBoxCommand](#TideChartCommentBoxCommand) |  |  |
| widget | [TideChartWidgetCommand](#TideChartWidgetCommand) |  |  |
| port | [TideChartPortCommand](#TideChartPortCommand) |  |  |
| link | [TideChartLinkCommand](#TideChartLinkCommand) |  |  |
| node | [TideChartNodeCommand](#TideChartNodeCommand) |  |  |
| region | [TideChartRegionCommand](#TideChartRegionCommand) |  |  |
| graph | [TideChartGraphCommand](#TideChartGraphCommand) |  |  |
| props | [TideChartPropertyCommand](#TideChartPropertyCommand) |  |  |
| note | [TideChartNoteCommand](#TideChartNoteCommand) |  |  |






<a name=".TideChartCommentBox"></a>

### TideChartCommentBox



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | unique id for the comment box |
| region | [string](#string) |  | comment boxes can be relative to a region or to the graph |
| posX | [sint32](#sint32) |  | X position of the comment box |
| posY | [sint32](#sint32) |  | Y position of the comment box |
| width | [int32](#int32) |  | width of comment box - 0 indicates autosize to fit content |
| height | [int32](#int32) |  | height of comment box - 0 indicates autosize to fit content |
| text | [string](#string) |  | text content for the comment |
| image | [bytes](#bytes) |  | image to use for the comment |
| icon | [string](#string) |  | icon name to use for the comment |
| fontSize | [double](#double) |  | size of font to draw text |
| fontStyle | [string](#string) |  | font style to use: Light, Regular, Bold, LightItalic, RegularItalic, BoldItalic |
| alignment | [sint32](#sint32) | repeated | alignment of content within box (top/left=-1, center = 0, bottom/right=1) as an array [horziontal, vertical, paragraph] |
| color | [int32](#int32) |  | color used to draw text / icon - default is black |
| background | [int32](#int32) |  | color used to draw background - default is transparent |
| border | [int32](#int32) | repeated | style usedd to draw border as array [color (default=black), thickness (default=1), dash pattern (default=solid)] |
| isRaised | [bool](#bool) |  | flag to indicate if a drop shadow should be used |
| isReversed | [bool](#bool) |  | flag to indicate if the text requires left to right layout order |






<a name=".TideChartCommentBoxCommand"></a>

### TideChartCommentBoxCommand



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fromComment | [TideChartCommentBox](#TideChartCommentBox) |  | previous version of the comment |
| toComment | [TideChartCommentBox](#TideChartCommentBox) |  | new version of the comment |
| type | [TideChartCommandUpdateType](#TideChartCommandUpdateType) |  | type of update: add, update or remove |






<a name=".TideChartContext"></a>

### TideChartContext



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | unique identifier for the execution context |
| index | [int64](#int64) |  | next site or message index to be assigned |
| timestamp | [int64](#int64) |  | current time of the execution context |
| version | [string](#string) |  | current version of the chart being executed |
| sites | [TideChartSite](#TideChartSite) | repeated | list of all the sites in the execution context |
| messages | [TideChartMessage](#TideChartMessage) | repeated | list of all the messages in the execution context |
| global | [TideChartProperty](#TideChartProperty) | repeated | a set of properties representing global state |
| startTime | [int64](#int64) |  | timestamp execution was started |
| startIndex | [int64](#int64) |  | smallest index in the execution context (offset used for relative index) |
| active | [int64](#int64) | repeated | relative index of messages that are currently active |
| waiting | [int64](#int64) | repeated | relative index of messages that are blocking for some condition |
| paused | [int64](#int64) | repeated | relative index of sites that are paused (debugging) |
| disabled | [int64](#int64) | repeated | relative index of sites that are disabled (debugging) |
| events | [TideChartContextChange](#TideChartContextChange) | repeated | lost of context status change events (start / stop, debugging events, etc.) |
| log | [TideChartLogEntry](#TideChartLogEntry) | repeated | list of all the log entries from the execution context |






<a name=".TideChartContextChange"></a>

### TideChartContextChange



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| index | [int64](#int64) |  |  |
| timestamp | [int64](#int64) |  |  |
| type | [string](#string) |  |  |
| props | [TideChartProperty](#TideChartProperty) | repeated |  |






<a name=".TideChartData"></a>

### TideChartData



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| version | [string](#string) |  | unique id for this chart version |
| branch | [string](#string) |  | branch this version is associated with |
| source | [string](#string) |  | previous version |
| merge | [string](#string) |  | last version id on branch merging into |
| commitDate | [string](#string) |  | date version of the chart was committed |
| commitBy | [string](#string) |  | user that committed latest version |
| commitDesc | [string](#string) |  | short commit comment |
| commitNotes | [string](#string) |  | longer commit notes |
| sheets | [TideChartGraph](#TideChartGraph) | repeated | graphs contained in the chart |
| props | [TideChartProperty](#TideChartProperty) | repeated | configuration properties for the entire chart |
| notes | [TideChartNote](#TideChartNote) | repeated | note discussion for the entire chart |
| library | [TideChartLibrary](#TideChartLibrary) | repeated | source of node templates that can be added to graphs |






<a name=".TideChartFile"></a>

### TideChartFile



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | unique id for this file |
| name | [string](#string) |  | name for the file (virtual file system) |
| path | [string](#string) |  | path for the file (virtual file system) |
| origin | [string](#string) |  | shared repository for tracking remote changes |
| modifiedDate | [string](#string) |  | date the file was last modified |
| modifiedBy | [string](#string) |  | user that last modified the file |
| chart | [TideChartData](#TideChartData) |  | the last committed version of the chart |
| working | [TideChartCommand](#TideChartCommand) | repeated | uncommitted local changes |
| remote | [TideChartCommand](#TideChartCommand) | repeated | unmerged changes committed remotely |
| history | [TideChartData](#TideChartData) | repeated | previous saved versions of the chart |
| context | [TideChartContext](#TideChartContext) | repeated | saved execution context (used by chart emulation, snapshots and debugging) |






<a name=".TideChartFileCurrent"></a>

### TideChartFileCurrent
Read only the current version


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | unique id for this file |
| name | [string](#string) |  | name for the file (virtual file system) |
| path | [string](#string) |  | path for the file (virtual file system) |
| origin | [string](#string) |  | shared repository for tracking remote changes |
| modifiedDate | [string](#string) |  | date the file was last modified |
| modifiedBy | [string](#string) |  | user that last modified the file |
| chart | [TideChartData](#TideChartData) |  | the last committed version of the chart |






<a name=".TideChartFileHeader"></a>

### TideChartFileHeader
Read only the file header information


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | unique id for this file |
| name | [string](#string) |  | name for the file (virtual file system) |
| path | [string](#string) |  | path for the file (virtual file system) |
| origin | [string](#string) |  | shared repository for tracking remote changes |
| modifiedDate | [string](#string) |  | date the file was last modified |
| modifiedBy | [string](#string) |  | user that last modified the file |






<a name=".TideChartGraph"></a>

### TideChartGraph



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | unique id (global scope) for the graph |
| type | [string](#string) |  | graph type: behavior, opmode, internal |
| name | [string](#string) |  | short name for the graph (unique chart scope) |
| title | [string](#string) |  | description name for the graph |
| version | [string](#string) |  | version of last command applied to the graph |
| source | [string](#string) |  | version the graph at the last committed chart version |
| nodes | [TideChartNode](#TideChartNode) | repeated | nodes in the graph |
| links | [TideChartLink](#TideChartLink) | repeated | links in the graph |
| regions | [TideChartRegion](#TideChartRegion) | repeated | regions in the graph |
| comments | [TideChartCommentBox](#TideChartCommentBox) | repeated | comment boxes on the graph |
| widgets | [TideChartWidget](#TideChartWidget) | repeated | interactive widgets for the graph (not part of the data flow graph: test instrudements, data visualization, debugging, etc.) |
| props | [TideChartProperty](#TideChartProperty) | repeated | a set of properties shared by all nodes on the graph |
| history | [TideChartCommand](#TideChartCommand) | repeated | all the changes made from source version to current version |
| isLogging | [bool](#bool) |  | flag indicating this graph will trace messages |
| isDebugging | [bool](#bool) |  | flag indicating this graph is a debug breakpoint |
| isPaused | [bool](#bool) |  | flag indicating this graph is paused (messages are queued) |
| isDisabled | [bool](#bool) |  | flag indicating this graph is disabled (messages are dropped) |
| notes | [TideChartNote](#TideChartNote) | repeated | comments associated with this graph |
| script | [string](#string) |  | a user script of custom code for the graph (non-message based thread initialization, global exception handling) |






<a name=".TideChartGraphCommand"></a>

### TideChartGraphCommand



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fromGraph | [TideChartGraph](#TideChartGraph) |  | previous versino of the graph |
| toGraph | [TideChartGraph](#TideChartGraph) |  | new version of the graph |
| type | [TideChartCommandUpdateType](#TideChartCommandUpdateType) |  | type of update: add, update or remove |






<a name=".TideChartGroupCommand"></a>

### TideChartGroupCommand



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| commands | [TideChartCommand](#TideChartCommand) | repeated | a collection of updates that are applied atomically |






<a name=".TideChartHeader"></a>

### TideChartHeader
Read only the commit headers


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| version | [string](#string) |  | unique id for this chart version |
| branch | [string](#string) |  | branch this version is associated with |
| source | [string](#string) |  | previous version |
| merge | [string](#string) |  | last version id on branch merging into |
| commitDate | [string](#string) |  | date version of the chart was committed |
| commitBy | [string](#string) |  | user that committed latest version |
| commitDesc | [string](#string) |  | short commit comment |
| commitNotes | [string](#string) |  | longer commit notes |






<a name=".TideChartLibrary"></a>

### TideChartLibrary



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | unique id for the library |
| name | [string](#string) |  | fully qualified name for the library |
| title | [string](#string) |  | descriptive title for the library |
| origin | [string](#string) |  | repository containing referenced files |
| branch | [string](#string) |  | branch containing referenced files |
| path | [string](#string) |  | root path for files in the library |
| files | [TideChartSource](#TideChartSource) | repeated | files included in the library |
| methods | [TideChartMethod](#TideChartMethod) | repeated | definitions for methods implemented by the library |






<a name=".TideChartLink"></a>

### TideChartLink



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| outNode | [string](#string) |  | linking from node outports |
| outPort | [string](#string) |  | outport linked from |
| inNode | [string](#string) |  | linking to node inports |
| inPort | [string](#string) |  | inport linked to |
| group | [int32](#int32) |  | links can be associated into groups (usually just determins color) |
| delay | [int32](#int32) |  | automatic time delay (msec) added to messages (equivalent to routing thru a delay node) |
| filter | [string](#string) |  | a filter or conditional expression applied to messages on the link |
| isLogging | [bool](#bool) |  | flag indicating this link will trace messages |
| isDebugging | [bool](#bool) |  | flag indicating this link is a debug breakpoint |
| isPaused | [bool](#bool) |  | flag indicating this link is paused (messages are queued) |
| isDisabled | [bool](#bool) |  | flag indicating this link is disabled (messages are dropped) |






<a name=".TideChartLinkCommand"></a>

### TideChartLinkCommand



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fromLink | [TideChartLink](#TideChartLink) |  | previous version of the link |
| toLink | [TideChartLink](#TideChartLink) |  | new version of the link |
| type | [TideChartCommandUpdateType](#TideChartCommandUpdateType) |  | type of update: add, update or remove |






<a name=".TideChartLogEntry"></a>

### TideChartLogEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| index | [int64](#int64) |  | context index at the time the log entry was created |
| timestamp | [int64](#int64) |  | timestamp when the log entry was created |
| source | [int64](#int64) |  | source site that produced the log entry |
| level | [TideChartLogLevel](#TideChartLogLevel) |  | log level of the entry |
| tags | [string](#string) | repeated | tags associated with log entry used for filtering |
| message | [string](#string) |  | content of the log entry |
| refs | [int64](#int64) | repeated | log entries can reference messages by index |
| props | [TideChartProperty](#TideChartProperty) | repeated | additional properties or saved state for the log entry |






<a name=".TideChartMessage"></a>

### TideChartMessage



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| index | [int64](#int64) |  | unique sequence number for all messages and sites (execution scope) |
| timestamp | [int64](#int64) |  | timestamp when the message was routed from the source |
| origin | [int64](#int64) |  | first index of this message (messages are immutable) |
| previous | [int64](#int64) |  | previous index of this message based on message routing thru graph |
| source | [int64](#int64) |  | source producer the message came from (index for a producer site) |
| target | [int64](#int64) |  | target consumer the message is going to (index for a consumer site) |
| delayUntil | [int64](#int64) |  | timestamp when the message arrives at the target site |
| holdToken | [int64](#int64) |  | index to a producer site that will release the message to the target site (use with site filter to create conditional blocking) |
| cancelToken | [int64](#int64) |  | index to a producer site that will cancel the message (stop routing and remove from inports) |
| type | [string](#string) |  | type of message content |
| version | [int32](#int32) |  | version incremented every time the message content changes for the same origin |
| jsonContent | [string](#string) |  | string encoded message content |
| msgContent | [bytes](#bytes) |  | binary encoded message content |






<a name=".TideChartMethod"></a>

### TideChartMethod



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | unique id for the method definition |
| name | [string](#string) |  | name of the method (unique to the library) |
| extends | [string](#string) |  | method extends (customizes) the implementation of another method |
| script | [string](#string) |  | custom script that implements the node action for this method |
| inports | [TideChartPort](#TideChartPort) | repeated | definition of inports for this method |
| outports | [TideChartPort](#TideChartPort) | repeated | definition of outports for this methid |
| props | [TideChartPort](#TideChartPort) | repeated | definition of property values used by the method (uses port definition format) |






<a name=".TideChartMoveCommand"></a>

### TideChartMoveCommand



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| node | [string](#string) |  | name of node being moved |
| fromPosX | [sint32](#sint32) |  | previous X position on the chart |
| fromPosY | [sint32](#sint32) |  | previous Y position on the chart |
| toPosX | [sint32](#sint32) |  | next X position on the chart |
| toPosY | [sint32](#sint32) |  | next Y position on the chart |






<a name=".TideChartNode"></a>

### TideChartNode



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | unique (graph scope) name for this node |
| type | [string](#string) |  | node type: action, behavior, inport, outport, trigger, event, filter, router, sequence, timeline, controller, navigation, gamepad, custom |
| posX | [sint32](#sint32) |  | X position on the chart |
| posY | [sint32](#sint32) |  | Y position on the chart |
| title | [string](#string) |  | descriptive label for the name |
| icon | [string](#string) |  | name of icon (font-awesome) |
| library | [string](#string) |  | name of the library for the nodes method (libraries allow implementation to be abstracted and modular) |
| method | [string](#string) |  | name of method that implements the node&#39;s action |
| delay | [int32](#int32) |  | automatic time delay (msec) added to output messages (equivalent to routing thru a delay node) |
| inports | [TideChartPort](#TideChartPort) | repeated | node inports to connect inbound links |
| outports | [TideChartPort](#TideChartPort) | repeated | node outports to connect outbound links |
| props | [TideChartProperty](#TideChartProperty) | repeated | configuration properties for this node (combines with graph properties and region properties) |
| isLogging | [bool](#bool) |  | flag indicating this node will trace messages |
| isDebugging | [bool](#bool) |  | flag indicating this node is a debug breakpoint |
| isPaused | [bool](#bool) |  | flag indicating this node is paused (messages are queued) |
| isDisabled | [bool](#bool) |  | flag indicating this node is disabled (messages are dropped) |
| notes | [TideChartNote](#TideChartNote) | repeated | comments associated with this node |
| script | [string](#string) |  | a user script of custom code to implement the node&#39;s action, filter or mux/demux operations |






<a name=".TideChartNodeCommand"></a>

### TideChartNodeCommand



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fromNode | [TideChartNode](#TideChartNode) |  | previous version of the graph node |
| toNode | [TideChartNode](#TideChartNode) |  | new version of the graph node |
| type | [TideChartCommandUpdateType](#TideChartCommandUpdateType) |  | type of update: add, update or remove |






<a name=".TideChartNote"></a>

### TideChartNote



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | unique id for the note |
| replyTo | [string](#string) |  | reference to note this replies to |
| changeTo | [string](#string) |  | reference to note this replaces |
| content | [string](#string) |  | content of note (Markdown and :icons allowed) |
| createdBy | [string](#string) |  | user that created the note |
| createdDate | [string](#string) |  | datetime the note was created |






<a name=".TideChartNoteCommand"></a>

### TideChartNoteCommand



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| notes | [TideChartNote](#TideChartNote) | repeated | a set of notes being added or removed |
| type | [TideChartCommandUpdateType](#TideChartCommandUpdateType) |  | type of update: add, remove |
| node | [string](#string) |  | node reference (node-name) |
| region | [string](#string) |  | region reference (region-name) |
| graph | [string](#string) |  | graph reference (graph-name) |






<a name=".TideChartPort"></a>

### TideChartPort



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [string](#string) |  | type of port: inport, outport |
| name | [string](#string) |  | port name (unique to node scope) |
| ordinal | [int32](#int32) |  | position in the node&#39;s set of inports or outports |
| isDefault | [bool](#bool) |  | used by methods to indicate which ports are used for default in/out routing |
| isRequired | [bool](#bool) |  | used by methods to indicate the port must exist |
| allowed | [string](#string) | repeated | used by methods to define what value / message types are allowed to be |
| hint | [string](#string) |  | used by methods to describe how a port should be used |
| constant | [TideChartProperty](#TideChartProperty) |  | a constant value applied to the inport |
| trigger | [string](#string) |  | a trigger the inport automatically reads from |
| filter | [string](#string) |  | a filter or conditional expressions applied to messages received or sent |
| event | [string](#string) |  | an event the outport automatically writes to |
| sync | [string](#string) |  | creates a syncronizing group between ports |
| isBlocking | [bool](#bool) |  | determines if the port will block to wait for the rest of the port group |
| isQueuing | [bool](#bool) |  | determines if messages should queue while blocking or replace with latest received |






<a name=".TideChartPortCommand"></a>

### TideChartPortCommand



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fromPort | [TideChartPort](#TideChartPort) |  | previons version of the port |
| toPort | [TideChartPort](#TideChartPort) |  | new version of the port |
| type | [TideChartCommandUpdateType](#TideChartCommandUpdateType) |  | type of update: add, update or remove |






<a name=".TideChartProperty"></a>

### TideChartProperty
a recursive data type that provides configuration values for graphs, regions and nodes


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | property field name |
| type | [string](#string) |  | property value type |
| value | [string](#string) |  | property value as a string |
| props | [TideChartProperty](#TideChartProperty) | repeated | create a heirarchy of properties (repeated names form a collection) |






<a name=".TideChartPropertyCommand"></a>

### TideChartPropertyCommand



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fromProps | [TideChartProperty](#TideChartProperty) | repeated | previous values of the properties (only for included updates) |
| toProps | [TideChartProperty](#TideChartProperty) | repeated | new values of the properties (only include changes) |
| type | [TideChartCommandUpdateType](#TideChartCommandUpdateType) |  | type of update: add, update or remove |
| node | [string](#string) |  | node reference (graph-id:node-name) |
| region | [string](#string) |  | region reference (graph-id:region-name) |
| widget | [string](#string) |  | widget reference (widget-id) |
| graph | [string](#string) |  | graph reference (graph-id) |






<a name=".TideChartRegion"></a>

### TideChartRegion



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | unique (graph scope) name for this region |
| title | [string](#string) |  | a descriptive label for the group |
| nodes | [string](#string) | repeated | a collection of nodes contained within this region (nodes can be in multiple regions) |
| group | [int32](#int32) |  | regions can be associated into groups (usually just determines color) |
| scope | [string](#string) |  | an event scope used to limit (or exclude) events to route to only nodes in the region |
| props | [TideChartProperty](#TideChartProperty) | repeated | a set of properties shared by all nodes in the region |
| isLogging | [bool](#bool) |  | flag indicating this region will trace messages |
| isDebugging | [bool](#bool) |  | flag indicating this region is a debug breakpoint |
| isPaused | [bool](#bool) |  | flag indicating this region is paused (messages are queued) |
| isDisabled | [bool](#bool) |  | flag indicating this region is disabled (messages are dropped) |
| notes | [TideChartNote](#TideChartNote) | repeated | comments associated with this region |
| script | [string](#string) |  | a user script of custom code for the region (interacting with non-message based threads, scoped exception handling) |






<a name=".TideChartRegionCommand"></a>

### TideChartRegionCommand



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fromRegion | [TideChartRegion](#TideChartRegion) |  | previous version of the region |
| toRegion | [TideChartRegion](#TideChartRegion) |  | new version of the region |
| type | [TideChartCommandUpdateType](#TideChartCommandUpdateType) |  | type of update: add, update or remove |






<a name=".TideChartSite"></a>

### TideChartSite



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| index | [int64](#int64) |  | An index that uniquely identifies all message producers and consumers sites and sequences with messages |
| stack | [TideChartSite](#TideChartSite) | repeated | used to trace origin when calling into behavior nodes |
| path | [string](#string) |  | Path in global state storage for events from state changes |
| trigger | [string](#string) |  | Source that produced an event (when the source isn&#39;t a node) |
| event | [string](#string) |  | Name of event (used for event sources and targets) |
| scope | [string](#string) | repeated | Used for scoped event sites |
| filter | [string](#string) |  | A filter that can conditionally pass messages thru the site (filtered messages are dropped) |
| graph | [string](#string) |  | graph-name - graph scripts and graph nodes can generate messages |
| region | [string](#string) |  | region-name - region scripts can generate messages |
| node | [string](#string) |  | node-name - node actions and node ports an generate messages |
| port | [string](#string) |  | port-name - ports can generate and receive messages |
| local | [TideChartProperty](#TideChartProperty) | repeated | a set of properties that represents local state for the site |






<a name=".TideChartSource"></a>

### TideChartSource



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | unique id for this source file |
| name | [string](#string) |  | name of the source file |
| path | [string](#string) |  | relative path of the source file |
| modifieddDate | [string](#string) |  | date file version was modified |
| modifiedBy | [string](#string) |  | user that modified this file version |
| version | [string](#string) |  | reference to the exact version of the file |
| script | [string](#string) |  | contents of the file |






<a name=".TideChartWidget"></a>

### TideChartWidget



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | unique id for the widget |
| type | [string](#string) |  | type of widget |
| title | [string](#string) |  | description title of the widget |
| region | [string](#string) |  | comment boxes can be relative to a region or to the graph |
| posX | [sint32](#sint32) |  | X position of the comment box |
| posY | [sint32](#sint32) |  | Y position of the comment box |
| width | [int32](#int32) |  | width of comment box - 0 indicates autosize to fit content |
| height | [int32](#int32) |  | height of comment box - 0 indicates autosize to fit content |
| link | [string](#string) |  | link widget is associated with (&lt;out-node&gt;:&lt;out-port&gt;-&gt;&lt;in-node&gt;:&lt;in-port&gt;) |
| port | [string](#string) |  | port widget is associated with (&lt;node&gt;:&lt;port&gt;) |
| node | [string](#string) |  | name of node widget is associated with |
| props | [TideChartProperty](#TideChartProperty) | repeated | widgets can have configuration paremeters |






<a name=".TideChartWidgetCommand"></a>

### TideChartWidgetCommand



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fromWidget | [TideChartWidget](#TideChartWidget) |  | previous version of the widget |
| toWidget | [TideChartWidget](#TideChartWidget) |  | new version of the widget |
| type | [TideChartCommandUpdateType](#TideChartCommandUpdateType) |  | type of update: add, update or remove |





 


<a name=".TideChartCommandUpdateType"></a>

### TideChartCommandUpdateType


| Name | Number | Description |
| ---- | ------ | ----------- |
| add | 0 |  |
| remove | 1 |  |
| update | 2 |  |



<a name=".TideChartLogLevel"></a>

### TideChartLogLevel


| Name | Number | Description |
| ---- | ------ | ----------- |
| none | 0 | used for filtering to exclude all log levels |
| fatal | 1 | an error condition that cannot be recovered |
| error | 2 | a condition that should never happen |
| exception | 3 | a condition occured that needs to be handled |
| warning | 4 | a condition that might be a problem |
| info | 5 | a normal log message |
| message | 6 | a normal log message with lower level for filtering |
| debug | 7 | a message that is usually only displayed during testing |
| check | 8 | message due to assertion checks |
| verbose | 9 | the most detailed log messages |
| trace | 10 | traces message passing |
| all | 11 | used for filtering to include all log levels |


 

 

 



## Scalar Value Types

| .proto Type | Notes | C++ Type | Java Type | Python Type |
| ----------- | ----- | -------- | --------- | ----------- |
| <a name="double" /> double |  | double | double | float |
| <a name="float" /> float |  | float | float | float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long |
| <a name="bool" /> bool |  | bool | boolean | boolean |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str |

