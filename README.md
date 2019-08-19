# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [tide_chart.proto](#tide_chart.proto)
    - [TideChartCommand](#.TideChartCommand)
    - [TideChartCommentBox](#.TideChartCommentBox)
    - [TideChartCommentBoxCommand](#.TideChartCommentBoxCommand)
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
| text | [string](#string) |  |  |
| image | [bytes](#bytes) |  |  |
| icon | [string](#string) |  |  |
| fontSize | [double](#double) |  | size of font to draw text |
| fontStyle | [string](#string) |  | font style to use: Light, Regular, Bold, LightItalic, RegularItalic, BoldItalic |
| alignment | [sint32](#sint32) |  | alignment of text within box (start (left):-1, middle:0, end (right):1) |
| color | [int32](#int32) |  | color used to draw text - default is black |
| background | [int32](#int32) |  | color used to draw background - default is transparent |
| border | [int32](#int32) |  | color used to draw border - default is none |
| raised | [bool](#bool) |  | flag to indicate if a drop shadow should be used |
| reversed | [bool](#bool) |  | flag to indicate if the text requires left to right layout order |






<a name=".TideChartCommentBoxCommand"></a>

### TideChartCommentBoxCommand
add, remove or update a comment box on the graph


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fromComment | [TideChartPort](#TideChartPort) |  |  |
| toComment | [TideChartPort](#TideChartPort) |  |  |
| type | [string](#string) |  |  |






<a name=".TideChartData"></a>

### TideChartData



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| version | [string](#string) |  | unique id for this chart version |
| branch | [string](#string) |  | branch this version is associated with |
| source | [string](#string) |  | previous version |
| merge | [string](#string) |  | last version id on branch merging into |
| commitDate | [string](#string) |  |  |
| commitBy | [string](#string) |  |  |
| commitDesc | [string](#string) |  | short commit comment |
| commitNotes | [string](#string) |  | longer commit notes |
| graphs | [TideChartGraph](#TideChartGraph) | repeated | graphs contained in the chart |
| props | [TideChartProperty](#TideChartProperty) | repeated | configuration properties for the entire chart |
| notes | [TideChartNote](#TideChartNote) | repeated | note discussion for the entire chart |
| library | [TideChartLibrary](#TideChartLibrary) | repeated | source of node templates that can be added to graphs |
| global | [TideChartProperty](#TideChartProperty) | repeated | global state variables shared by all graphs |






<a name=".TideChartFile"></a>

### TideChartFile



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | unique id for this file |
| name | [string](#string) |  | name for the file (virtual file system) |
| path | [string](#string) |  | path for the file (virtual file system) |
| origin | [string](#string) |  | shared repository for tracking remote changes |
| createdDate | [string](#string) |  |  |
| createdBy | [string](#string) |  |  |
| chart | [TideChartData](#TideChartData) |  | the last committed version |
| working | [TideChartCommand](#TideChartCommand) | repeated | uncommitted local changes |
| remote | [TideChartCommand](#TideChartCommand) | repeated | unmerged changes committed remotely |
| history | [TideChartData](#TideChartData) | repeated | previous version history |






<a name=".TideChartFileCurrent"></a>

### TideChartFileCurrent
Read only the current version


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | unique id for this file |
| name | [string](#string) |  | name for the file (virtual file system) |
| path | [string](#string) |  | path for the file (virtual file system) |
| origin | [string](#string) |  | shared repository for tracking remote changes |
| createdDate | [string](#string) |  |  |
| createdBy | [string](#string) |  |  |
| chart | [TideChartData](#TideChartData) |  | the last committed version |






<a name=".TideChartFileHeader"></a>

### TideChartFileHeader
Read only the file header information


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | unique id for this file |
| name | [string](#string) |  | name for the file (virtual file system) |
| path | [string](#string) |  | path for the file (virtual file system) |
| origin | [string](#string) |  | shared repository for tracking remote changes |
| createdDate | [string](#string) |  |  |
| createdBy | [string](#string) |  |  |






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
| logging | [bool](#bool) |  | flag indicating this graph will trace messages |
| debugging | [bool](#bool) |  | flag indicating this graph is a debug breakpoint |
| paused | [bool](#bool) |  | flag indicating this graph is paused (messages are queued) |
| disabled | [bool](#bool) |  | flag indicating this graph is disabled (messages are dropped) |
| notes | [TideChartNote](#TideChartNote) | repeated | comments associated with this graph |
| script | [string](#string) |  | a user script of custom code for the graph (non-message based thread initialization, global exception handling) |






<a name=".TideChartGraphCommand"></a>

### TideChartGraphCommand
adds or removes a graph from the chart


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fromGraph | [TideChartGraph](#TideChartGraph) |  |  |
| toGraph | [TideChartGraph](#TideChartGraph) |  |  |
| type | [string](#string) |  |  |






<a name=".TideChartGroupCommand"></a>

### TideChartGroupCommand



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| cmds | [TideChartCommand](#TideChartCommand) | repeated | a collection of updates that are applied atomically |






<a name=".TideChartHeader"></a>

### TideChartHeader
Read only the commit headers


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| version | [string](#string) |  | unique id for this chart version |
| branch | [string](#string) |  | branch this version is associated with |
| source | [string](#string) |  | previous version |
| merge | [string](#string) |  | last version id on branch merging into |
| commitDate | [string](#string) |  |  |
| commitBy | [string](#string) |  |  |
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
| logging | [bool](#bool) |  | flag indicating this link will trace messages |
| debugging | [bool](#bool) |  | flag indicating this link is a debug breakpoint |
| paused | [bool](#bool) |  | flag indicating this link is paused (messages are queued) |
| disabled | [bool](#bool) |  | flag indicating this link is disabled (messages are dropped) |






<a name=".TideChartLinkCommand"></a>

### TideChartLinkCommand
add, remove or update a link on the graph


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fromLink | [TideChartLink](#TideChartLink) |  |  |
| toLink | [TideChartLink](#TideChartLink) |  |  |
| type | [string](#string) |  |  |






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
| props | [TideChartPort](#TideChartPort) | repeated | definition of property values used by the method defined like a port |






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
| logging | [bool](#bool) |  | flag indicating this node will trace messages |
| debugging | [bool](#bool) |  | flag indicating this node is a debug breakpoint |
| paused | [bool](#bool) |  | flag indicating this node is paused (messages are queued) |
| disabled | [bool](#bool) |  | flag indicating this node is disabled (messages are dropped) |
| notes | [TideChartNote](#TideChartNote) | repeated | comments associated with this node |
| script | [string](#string) |  | a user script of custom code to implement the node&#39;s action, filter or mux/demux operations |






<a name=".TideChartNodeCommand"></a>

### TideChartNodeCommand



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fromNode | [TideChartNode](#TideChartNode) |  | add, remove or update a node on the graph |
| toNode | [TideChartNode](#TideChartNode) |  |  |
| type | [string](#string) |  |  |






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
| type | [string](#string) |  | type of update: add, remove |
| node | [string](#string) |  | node reference (graph-id:node-name) |
| region | [string](#string) |  | region reference (graph-id:region-name) |
| graph | [string](#string) |  | graph reference (graph-id) |






<a name=".TideChartPort"></a>

### TideChartPort



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [string](#string) |  | type of port: inport, outport |
| name | [string](#string) |  | port name (unique to node scope) |
| ordinal | [int32](#int32) |  | position in the node&#39;s set of inports or outports |
| default | [bool](#bool) |  | used by methods to indicate which ports are used for default in/out routing |
| required | [bool](#bool) |  | used by methods to indicate the port must exist |
| allowed | [string](#string) | repeated | used by methods to define what value / message types are allowed to be |
| hint | [string](#string) |  | used by methods to describe how a port should be used |
| constant | [TideChartProperty](#TideChartProperty) |  | a constant value applied to the inport |
| trigger | [string](#string) |  | a trigger the inport automatically reads from |
| filter | [string](#string) |  | a filter or conditional expressions applied to messages received or sent |
| event | [string](#string) |  | an event the outport automatically writes to |
| sync | [string](#string) |  | creates a syncronizing group between ports |
| block | [bool](#bool) |  | determines if the port will block to wait for the rest of the port group |
| queue | [bool](#bool) |  | determines if messages should queue while blocking or replace with latest received |






<a name=".TideChartPortCommand"></a>

### TideChartPortCommand
add, remove or update a port on the graph


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fromPort | [TideChartPort](#TideChartPort) |  |  |
| toPort | [TideChartPort](#TideChartPort) |  |  |
| type | [string](#string) |  |  |






<a name=".TideChartProperty"></a>

### TideChartProperty
a recursive data type that provides configuration values for graphs, regions and nodes


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| type | [string](#string) |  |  |
| value | [string](#string) |  |  |
| props | [TideChartProperty](#TideChartProperty) | repeated | create a heirarchy of properties (repeate names to make collections) |






<a name=".TideChartPropertyCommand"></a>

### TideChartPropertyCommand



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fromProps | [TideChartProperty](#TideChartProperty) | repeated | previous values of the properties (only for included updates) |
| toProps | [TideChartProperty](#TideChartProperty) | repeated | new values of the properties (only include changes) |
| type | [string](#string) |  | type of update: add, update or remove |
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
| logging | [bool](#bool) |  | flag indicating this region will trace messages |
| debugging | [bool](#bool) |  | flag indicating this region is a debug breakpoint |
| paused | [bool](#bool) |  | flag indicating this region is paused (messages are queued) |
| disabled | [bool](#bool) |  | flag indicating this region is disabled (messages are dropped) |
| notes | [TideChartNote](#TideChartNote) | repeated | comments associated with this region |
| script | [string](#string) |  | a user script of custom code for the region (interacting with non-message based threads, scoped exception handling) |






<a name=".TideChartRegionCommand"></a>

### TideChartRegionCommand
adds, remove or update a region on the graph


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fromRegion | [TideChartRegion](#TideChartRegion) |  |  |
| toRegion | [TideChartRegion](#TideChartRegion) |  |  |
| type | [string](#string) |  |  |






<a name=".TideChartSite"></a>

### TideChartSite



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| index | [int64](#int64) |  | An index that uniquely identifies all message producers and consumers sites and sequences with messages |
| stack | [TideChartSite](#TideChartSite) | repeated | used to trace origin when calling into behavior nodes |
| path | [string](#string) |  | Path in global state storage |
| trigger | [string](#string) |  | Source that produced an event (when the source isn&#39;t a node) |
| event | [string](#string) |  | Name of event (used for event sources and targets) |
| scope | [string](#string) | repeated | Used for scoped event sites |
| filter | [string](#string) |  | A filter that can conditionally pass messages thru the site (filtered messages are dropped) |
| graph | [string](#string) |  | graph-id - graph scripts and graph nodes can generate messages |
| region | [string](#string) |  | region-name - region scripts can generate messages |
| node | [string](#string) |  | node-name - node actions and node ports an generate messages |
| port | [string](#string) |  | port-name - ports can generate and receive messages |






<a name=".TideChartSource"></a>

### TideChartSource



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | unique id for this source file |
| name | [string](#string) |  | name of the source file |
| path | [string](#string) |  | relative path of the source file |
| createdDate | [string](#string) |  |  |
| createdBy | [string](#string) |  |  |
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
| link | [string](#string) |  |  |
| port | [string](#string) |  |  |
| node | [string](#string) |  |  |
| props | [TideChartProperty](#TideChartProperty) | repeated | widgets can have configuration paremeters |






<a name=".TideChartWidgetCommand"></a>

### TideChartWidgetCommand
add, remove or update a widget on the graph


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fromWidget | [TideChartPort](#TideChartPort) |  |  |
| toWidget | [TideChartPort](#TideChartPort) |  |  |
| type | [string](#string) |  |  |





 

 

 

 



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

