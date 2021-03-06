///
//  Generated code. Do not modify.
//  source: tide_chart.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const TideChartCommandUpdateType$json = const {
  '1': 'TideChartCommandUpdateType',
  '2': const [
    const {'1': 'add', '2': 0},
    const {'1': 'remove', '2': 1},
    const {'1': 'update', '2': 2},
  ],
};

const TideChartLogLevel$json = const {
  '1': 'TideChartLogLevel',
  '2': const [
    const {'1': 'none', '2': 0},
    const {'1': 'fatal', '2': 1},
    const {'1': 'error', '2': 2},
    const {'1': 'exception', '2': 3},
    const {'1': 'warning', '2': 4},
    const {'1': 'info', '2': 5},
    const {'1': 'message', '2': 6},
    const {'1': 'debug', '2': 7},
    const {'1': 'check', '2': 8},
    const {'1': 'verbose', '2': 9},
    const {'1': 'trace', '2': 10},
    const {'1': 'all', '2': 11},
  ],
};

const TideChartProperty$json = const {
  '1': 'TideChartProperty',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'boolValue', '3': 2, '4': 1, '5': 8, '9': 0, '10': 'boolValue'},
    const {'1': 'strValue', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'strValue'},
    const {'1': 'longValue', '3': 4, '4': 1, '5': 18, '9': 0, '10': 'longValue'},
    const {'1': 'doubleValue', '3': 5, '4': 1, '5': 1, '9': 0, '10': 'doubleValue'},
    const {'1': 'props', '3': 6, '4': 3, '5': 11, '6': '.TideChartProperty', '10': 'props'},
  ],
  '8': const [
    const {'1': 'value'},
  ],
};

const TideChartCommentBox$json = const {
  '1': 'TideChartCommentBox',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'region', '3': 2, '4': 1, '5': 9, '10': 'region'},
    const {'1': 'posX', '3': 3, '4': 1, '5': 17, '10': 'posX'},
    const {'1': 'posY', '3': 4, '4': 1, '5': 17, '10': 'posY'},
    const {'1': 'width', '3': 5, '4': 1, '5': 5, '10': 'width'},
    const {'1': 'height', '3': 6, '4': 1, '5': 5, '10': 'height'},
    const {'1': 'text', '3': 7, '4': 1, '5': 9, '9': 0, '10': 'text'},
    const {'1': 'image', '3': 8, '4': 1, '5': 12, '9': 0, '10': 'image'},
    const {'1': 'icon', '3': 9, '4': 1, '5': 9, '9': 0, '10': 'icon'},
    const {'1': 'fontSize', '3': 10, '4': 1, '5': 1, '10': 'fontSize'},
    const {'1': 'fontStyle', '3': 11, '4': 1, '5': 9, '10': 'fontStyle'},
    const {'1': 'alignment', '3': 12, '4': 3, '5': 17, '10': 'alignment'},
    const {'1': 'color', '3': 13, '4': 1, '5': 5, '10': 'color'},
    const {'1': 'background', '3': 14, '4': 1, '5': 5, '10': 'background'},
    const {'1': 'border', '3': 15, '4': 3, '5': 5, '10': 'border'},
    const {'1': 'isRaised', '3': 16, '4': 1, '5': 8, '10': 'isRaised'},
    const {'1': 'isReversed', '3': 17, '4': 1, '5': 8, '10': 'isReversed'},
  ],
  '8': const [
    const {'1': 'content'},
  ],
};

const TideChartWidget$json = const {
  '1': 'TideChartWidget',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'icon', '3': 4, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'region', '3': 5, '4': 1, '5': 9, '10': 'region'},
    const {'1': 'posX', '3': 6, '4': 1, '5': 17, '10': 'posX'},
    const {'1': 'posY', '3': 7, '4': 1, '5': 17, '10': 'posY'},
    const {'1': 'width', '3': 8, '4': 1, '5': 5, '10': 'width'},
    const {'1': 'height', '3': 9, '4': 1, '5': 5, '10': 'height'},
    const {'1': 'link', '3': 10, '4': 1, '5': 9, '9': 0, '10': 'link'},
    const {'1': 'port', '3': 11, '4': 1, '5': 9, '9': 0, '10': 'port'},
    const {'1': 'node', '3': 12, '4': 1, '5': 9, '9': 0, '10': 'node'},
    const {'1': 'props', '3': 13, '4': 3, '5': 11, '6': '.TideChartProperty', '10': 'props'},
    const {'1': 'isLogging', '3': 16, '4': 1, '5': 8, '10': 'isLogging'},
    const {'1': 'isDebugging', '3': 17, '4': 1, '5': 8, '10': 'isDebugging'},
    const {'1': 'isPaused', '3': 18, '4': 1, '5': 8, '10': 'isPaused'},
    const {'1': 'isDisabled', '3': 19, '4': 1, '5': 8, '10': 'isDisabled'},
    const {'1': 'settings', '3': 22, '4': 3, '5': 11, '6': '.TideChartProperty', '10': 'settings'},
    const {'1': 'resources', '3': 23, '4': 3, '5': 11, '6': '.TideChartSource', '10': 'resources'},
    const {'1': 'internal', '3': 24, '4': 3, '5': 11, '6': '.TideChartGraph', '10': 'internal'},
  ],
  '8': const [
    const {'1': 'target'},
  ],
};

const TideChartPort$json = const {
  '1': 'TideChartPort',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'node', '3': 2, '4': 1, '5': 9, '10': 'node'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'ordinal', '3': 4, '4': 1, '5': 5, '10': 'ordinal'},
    const {'1': 'isDefault', '3': 5, '4': 1, '5': 8, '10': 'isDefault'},
    const {'1': 'isRequired', '3': 6, '4': 1, '5': 8, '10': 'isRequired'},
    const {'1': 'allowed', '3': 7, '4': 3, '5': 9, '10': 'allowed'},
    const {'1': 'hint', '3': 8, '4': 1, '5': 9, '10': 'hint'},
    const {'1': 'value', '3': 9, '4': 1, '5': 9, '10': 'value'},
    const {'1': 'trigger', '3': 10, '4': 1, '5': 9, '10': 'trigger'},
    const {'1': 'link', '3': 11, '4': 1, '5': 9, '10': 'link'},
    const {'1': 'event', '3': 12, '4': 1, '5': 9, '10': 'event'},
    const {'1': 'syncGroup', '3': 13, '4': 1, '5': 9, '10': 'syncGroup'},
    const {'1': 'isBlocking', '3': 14, '4': 1, '5': 8, '10': 'isBlocking'},
    const {'1': 'isQueuing', '3': 15, '4': 1, '5': 8, '10': 'isQueuing'},
    const {'1': 'filter', '3': 16, '4': 1, '5': 9, '10': 'filter'},
  ],
};

const TideChartLink$json = const {
  '1': 'TideChartLink',
  '2': const [
    const {'1': 'outNode', '3': 1, '4': 1, '5': 9, '10': 'outNode'},
    const {'1': 'outPort', '3': 2, '4': 1, '5': 9, '10': 'outPort'},
    const {'1': 'inNode', '3': 3, '4': 1, '5': 9, '10': 'inNode'},
    const {'1': 'inPort', '3': 4, '4': 1, '5': 9, '10': 'inPort'},
    const {'1': 'group', '3': 5, '4': 1, '5': 5, '10': 'group'},
    const {'1': 'delay', '3': 6, '4': 1, '5': 5, '10': 'delay'},
    const {'1': 'link', '3': 7, '4': 1, '5': 9, '10': 'link'},
    const {'1': 'isLogging', '3': 16, '4': 1, '5': 8, '10': 'isLogging'},
    const {'1': 'isDebugging', '3': 17, '4': 1, '5': 8, '10': 'isDebugging'},
    const {'1': 'isPaused', '3': 18, '4': 1, '5': 8, '10': 'isPaused'},
    const {'1': 'isDisabled', '3': 19, '4': 1, '5': 8, '10': 'isDisabled'},
  ],
};

const TideChartNote$json = const {
  '1': 'TideChartNote',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'replyTo', '3': 2, '4': 1, '5': 9, '10': 'replyTo'},
    const {'1': 'changeTo', '3': 3, '4': 1, '5': 9, '10': 'changeTo'},
    const {'1': 'content', '3': 4, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'createdBy', '3': 5, '4': 1, '5': 9, '10': 'createdBy'},
    const {'1': 'createdDate', '3': 6, '4': 1, '5': 9, '10': 'createdDate'},
  ],
};

const TideChartNode$json = const {
  '1': 'TideChartNode',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'posX', '3': 3, '4': 1, '5': 17, '10': 'posX'},
    const {'1': 'posY', '3': 4, '4': 1, '5': 17, '10': 'posY'},
    const {'1': 'title', '3': 5, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'icon', '3': 6, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'library', '3': 7, '4': 1, '5': 9, '10': 'library'},
    const {'1': 'method', '3': 8, '4': 1, '5': 9, '10': 'method'},
    const {'1': 'delay', '3': 9, '4': 1, '5': 5, '10': 'delay'},
    const {'1': 'inports', '3': 10, '4': 3, '5': 11, '6': '.TideChartPort', '10': 'inports'},
    const {'1': 'outports', '3': 11, '4': 3, '5': 11, '6': '.TideChartPort', '10': 'outports'},
    const {'1': 'props', '3': 12, '4': 3, '5': 11, '6': '.TideChartProperty', '10': 'props'},
    const {'1': 'widget', '3': 13, '4': 1, '5': 9, '10': 'widget'},
    const {'1': 'isLogging', '3': 16, '4': 1, '5': 8, '10': 'isLogging'},
    const {'1': 'isDebugging', '3': 17, '4': 1, '5': 8, '10': 'isDebugging'},
    const {'1': 'isPaused', '3': 18, '4': 1, '5': 8, '10': 'isPaused'},
    const {'1': 'isDisabled', '3': 19, '4': 1, '5': 8, '10': 'isDisabled'},
    const {'1': 'notes', '3': 20, '4': 3, '5': 11, '6': '.TideChartNote', '10': 'notes'},
    const {'1': 'script', '3': 21, '4': 1, '5': 9, '10': 'script'},
    const {'1': 'settings', '3': 22, '4': 3, '5': 11, '6': '.TideChartProperty', '10': 'settings'},
    const {'1': 'resources', '3': 23, '4': 3, '5': 11, '6': '.TideChartSource', '10': 'resources'},
    const {'1': 'internal', '3': 24, '4': 3, '5': 11, '6': '.TideChartGraph', '10': 'internal'},
  ],
};

const TideChartRegion$json = const {
  '1': 'TideChartRegion',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'nodes', '3': 3, '4': 3, '5': 9, '10': 'nodes'},
    const {'1': 'group', '3': 4, '4': 1, '5': 5, '10': 'group'},
    const {'1': 'scope', '3': 5, '4': 1, '5': 9, '10': 'scope'},
    const {'1': 'props', '3': 6, '4': 3, '5': 11, '6': '.TideChartProperty', '10': 'props'},
    const {'1': 'isLogging', '3': 16, '4': 1, '5': 8, '10': 'isLogging'},
    const {'1': 'isDebugging', '3': 17, '4': 1, '5': 8, '10': 'isDebugging'},
    const {'1': 'isPaused', '3': 18, '4': 1, '5': 8, '10': 'isPaused'},
    const {'1': 'isDisabled', '3': 19, '4': 1, '5': 8, '10': 'isDisabled'},
    const {'1': 'notes', '3': 20, '4': 3, '5': 11, '6': '.TideChartNote', '10': 'notes'},
    const {'1': 'script', '3': 21, '4': 1, '5': 9, '10': 'script'},
    const {'1': 'settings', '3': 22, '4': 3, '5': 11, '6': '.TideChartProperty', '10': 'settings'},
  ],
};

const TideChartGraph$json = const {
  '1': 'TideChartGraph',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'title', '3': 4, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'icon', '3': 5, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'version', '3': 6, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'source', '3': 7, '4': 1, '5': 9, '10': 'source'},
    const {'1': 'nodes', '3': 8, '4': 3, '5': 11, '6': '.TideChartNode', '10': 'nodes'},
    const {'1': 'links', '3': 9, '4': 3, '5': 11, '6': '.TideChartLink', '10': 'links'},
    const {'1': 'regions', '3': 10, '4': 3, '5': 11, '6': '.TideChartRegion', '10': 'regions'},
    const {'1': 'comments', '3': 11, '4': 3, '5': 11, '6': '.TideChartCommentBox', '10': 'comments'},
    const {'1': 'widgets', '3': 12, '4': 3, '5': 11, '6': '.TideChartWidget', '10': 'widgets'},
    const {'1': 'props', '3': 13, '4': 3, '5': 11, '6': '.TideChartProperty', '10': 'props'},
    const {'1': 'history', '3': 14, '4': 3, '5': 11, '6': '.TideChartCommand', '10': 'history'},
    const {'1': 'isLogging', '3': 16, '4': 1, '5': 8, '10': 'isLogging'},
    const {'1': 'isDebugging', '3': 17, '4': 1, '5': 8, '10': 'isDebugging'},
    const {'1': 'isPaused', '3': 18, '4': 1, '5': 8, '10': 'isPaused'},
    const {'1': 'isDisabled', '3': 19, '4': 1, '5': 8, '10': 'isDisabled'},
    const {'1': 'notes', '3': 20, '4': 3, '5': 11, '6': '.TideChartNote', '10': 'notes'},
    const {'1': 'script', '3': 21, '4': 1, '5': 9, '10': 'script'},
    const {'1': 'settings', '3': 22, '4': 3, '5': 11, '6': '.TideChartProperty', '10': 'settings'},
  ],
};

const TideChartCommand$json = const {
  '1': 'TideChartCommand',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'target', '3': 2, '4': 1, '5': 9, '10': 'target'},
    const {'1': 'group', '3': 3, '4': 1, '5': 11, '6': '.TideChartGroupCommand', '9': 0, '10': 'group'},
    const {'1': 'move', '3': 4, '4': 1, '5': 11, '6': '.TideChartMoveCommand', '9': 0, '10': 'move'},
    const {'1': 'comment', '3': 5, '4': 1, '5': 11, '6': '.TideChartCommentBoxCommand', '9': 0, '10': 'comment'},
    const {'1': 'widget', '3': 6, '4': 1, '5': 11, '6': '.TideChartWidgetCommand', '9': 0, '10': 'widget'},
    const {'1': 'port', '3': 7, '4': 1, '5': 11, '6': '.TideChartPortCommand', '9': 0, '10': 'port'},
    const {'1': 'link', '3': 8, '4': 1, '5': 11, '6': '.TideChartLinkCommand', '9': 0, '10': 'link'},
    const {'1': 'node', '3': 9, '4': 1, '5': 11, '6': '.TideChartNodeCommand', '9': 0, '10': 'node'},
    const {'1': 'region', '3': 10, '4': 1, '5': 11, '6': '.TideChartRegionCommand', '9': 0, '10': 'region'},
    const {'1': 'graph', '3': 11, '4': 1, '5': 11, '6': '.TideChartGraphCommand', '9': 0, '10': 'graph'},
    const {'1': 'props', '3': 12, '4': 1, '5': 11, '6': '.TideChartPropertyCommand', '9': 0, '10': 'props'},
    const {'1': 'note', '3': 13, '4': 1, '5': 11, '6': '.TideChartNoteCommand', '9': 0, '10': 'note'},
    const {'1': 'isLocked', '3': 16, '4': 1, '5': 8, '10': 'isLocked'},
  ],
  '8': const [
    const {'1': 'command'},
  ],
};

const TideChartGroupCommand$json = const {
  '1': 'TideChartGroupCommand',
  '2': const [
    const {'1': 'commands', '3': 1, '4': 3, '5': 11, '6': '.TideChartCommand', '10': 'commands'},
  ],
};

const TideChartMoveCommand$json = const {
  '1': 'TideChartMoveCommand',
  '2': const [
    const {'1': 'node', '3': 1, '4': 1, '5': 9, '10': 'node'},
    const {'1': 'fromPosX', '3': 2, '4': 1, '5': 17, '10': 'fromPosX'},
    const {'1': 'fromPosY', '3': 3, '4': 1, '5': 17, '10': 'fromPosY'},
    const {'1': 'toPosX', '3': 4, '4': 1, '5': 17, '10': 'toPosX'},
    const {'1': 'toPosY', '3': 5, '4': 1, '5': 17, '10': 'toPosY'},
  ],
};

const TideChartCommentBoxCommand$json = const {
  '1': 'TideChartCommentBoxCommand',
  '2': const [
    const {'1': 'fromComment', '3': 1, '4': 1, '5': 11, '6': '.TideChartCommentBox', '10': 'fromComment'},
    const {'1': 'toComment', '3': 2, '4': 1, '5': 11, '6': '.TideChartCommentBox', '10': 'toComment'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.TideChartCommandUpdateType', '10': 'type'},
  ],
};

const TideChartWidgetCommand$json = const {
  '1': 'TideChartWidgetCommand',
  '2': const [
    const {'1': 'fromWidget', '3': 1, '4': 1, '5': 11, '6': '.TideChartWidget', '10': 'fromWidget'},
    const {'1': 'toWidget', '3': 2, '4': 1, '5': 11, '6': '.TideChartWidget', '10': 'toWidget'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.TideChartCommandUpdateType', '10': 'type'},
  ],
};

const TideChartPortCommand$json = const {
  '1': 'TideChartPortCommand',
  '2': const [
    const {'1': 'fromPort', '3': 1, '4': 1, '5': 11, '6': '.TideChartPort', '10': 'fromPort'},
    const {'1': 'toPort', '3': 2, '4': 1, '5': 11, '6': '.TideChartPort', '10': 'toPort'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.TideChartCommandUpdateType', '10': 'type'},
  ],
};

const TideChartLinkCommand$json = const {
  '1': 'TideChartLinkCommand',
  '2': const [
    const {'1': 'fromLink', '3': 1, '4': 1, '5': 11, '6': '.TideChartLink', '10': 'fromLink'},
    const {'1': 'toLink', '3': 2, '4': 1, '5': 11, '6': '.TideChartLink', '10': 'toLink'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.TideChartCommandUpdateType', '10': 'type'},
  ],
};

const TideChartNodeCommand$json = const {
  '1': 'TideChartNodeCommand',
  '2': const [
    const {'1': 'fromNode', '3': 1, '4': 1, '5': 11, '6': '.TideChartNode', '10': 'fromNode'},
    const {'1': 'toNode', '3': 2, '4': 1, '5': 11, '6': '.TideChartNode', '10': 'toNode'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.TideChartCommandUpdateType', '10': 'type'},
  ],
};

const TideChartRegionCommand$json = const {
  '1': 'TideChartRegionCommand',
  '2': const [
    const {'1': 'fromRegion', '3': 1, '4': 1, '5': 11, '6': '.TideChartRegion', '10': 'fromRegion'},
    const {'1': 'toRegion', '3': 2, '4': 1, '5': 11, '6': '.TideChartRegion', '10': 'toRegion'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.TideChartCommandUpdateType', '10': 'type'},
  ],
};

const TideChartGraphCommand$json = const {
  '1': 'TideChartGraphCommand',
  '2': const [
    const {'1': 'fromGraph', '3': 1, '4': 1, '5': 11, '6': '.TideChartGraph', '10': 'fromGraph'},
    const {'1': 'toGraph', '3': 2, '4': 1, '5': 11, '6': '.TideChartGraph', '10': 'toGraph'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.TideChartCommandUpdateType', '10': 'type'},
  ],
};

const TideChartPropertyCommand$json = const {
  '1': 'TideChartPropertyCommand',
  '2': const [
    const {'1': 'fromProps', '3': 1, '4': 3, '5': 11, '6': '.TideChartProperty', '10': 'fromProps'},
    const {'1': 'toProps', '3': 2, '4': 3, '5': 11, '6': '.TideChartProperty', '10': 'toProps'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.TideChartCommandUpdateType', '10': 'type'},
    const {'1': 'node', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'node'},
    const {'1': 'region', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'region'},
    const {'1': 'widget', '3': 7, '4': 1, '5': 9, '9': 0, '10': 'widget'},
    const {'1': 'graph', '3': 8, '4': 1, '5': 9, '9': 0, '10': 'graph'},
  ],
  '8': const [
    const {'1': 'target'},
  ],
};

const TideChartNoteCommand$json = const {
  '1': 'TideChartNoteCommand',
  '2': const [
    const {'1': 'notes', '3': 1, '4': 3, '5': 11, '6': '.TideChartNote', '10': 'notes'},
    const {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.TideChartCommandUpdateType', '10': 'type'},
    const {'1': 'node', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'node'},
    const {'1': 'region', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'region'},
    const {'1': 'graph', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'graph'},
  ],
  '8': const [
    const {'1': 'target'},
  ],
};

const TideChartSource$json = const {
  '1': 'TideChartSource',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'path', '3': 3, '4': 1, '5': 9, '10': 'path'},
    const {'1': 'modifiedDate', '3': 5, '4': 1, '5': 9, '10': 'modifiedDate'},
    const {'1': 'modifiedBy', '3': 6, '4': 1, '5': 9, '10': 'modifiedBy'},
    const {'1': 'version', '3': 7, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'size', '3': 8, '4': 1, '5': 5, '10': 'size'},
    const {'1': 'script', '3': 9, '4': 1, '5': 9, '9': 0, '10': 'script'},
    const {'1': 'chart', '3': 10, '4': 1, '5': 11, '6': '.TideChartData', '9': 0, '10': 'chart'},
    const {'1': 'data', '3': 11, '4': 1, '5': 12, '9': 0, '10': 'data'},
  ],
  '8': const [
    const {'1': 'content'},
  ],
};

const TideChartLibrary$json = const {
  '1': 'TideChartLibrary',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'origin', '3': 10, '4': 1, '5': 9, '10': 'origin'},
    const {'1': 'branch', '3': 11, '4': 1, '5': 9, '10': 'branch'},
    const {'1': 'path', '3': 12, '4': 1, '5': 9, '10': 'path'},
    const {'1': 'files', '3': 14, '4': 3, '5': 11, '6': '.TideChartSource', '10': 'files'},
    const {'1': 'methods', '3': 15, '4': 1, '5': 11, '6': '.TideChartGraph', '10': 'methods'},
    const {'1': 'settings', '3': 16, '4': 3, '5': 11, '6': '.TideChartProperty', '10': 'settings'},
  ],
};

const TideChartSite$json = const {
  '1': 'TideChartSite',
  '2': const [
    const {'1': 'index', '3': 1, '4': 1, '5': 3, '10': 'index'},
    const {'1': 'stack', '3': 2, '4': 3, '5': 11, '6': '.TideChartSite', '10': 'stack'},
    const {'1': 'path', '3': 3, '4': 1, '5': 9, '10': 'path'},
    const {'1': 'trigger', '3': 4, '4': 1, '5': 9, '10': 'trigger'},
    const {'1': 'event', '3': 5, '4': 1, '5': 9, '10': 'event'},
    const {'1': 'scope', '3': 6, '4': 3, '5': 9, '10': 'scope'},
    const {'1': 'filter', '3': 7, '4': 1, '5': 9, '10': 'filter'},
    const {'1': 'graph', '3': 8, '4': 1, '5': 9, '10': 'graph'},
    const {'1': 'region', '3': 9, '4': 1, '5': 9, '10': 'region'},
    const {'1': 'node', '3': 10, '4': 1, '5': 9, '10': 'node'},
    const {'1': 'port', '3': 11, '4': 1, '5': 9, '10': 'port'},
    const {'1': 'local', '3': 12, '4': 3, '5': 11, '6': '.TideChartProperty', '10': 'local'},
  ],
};

const TideChartMessage$json = const {
  '1': 'TideChartMessage',
  '2': const [
    const {'1': 'index', '3': 1, '4': 1, '5': 3, '10': 'index'},
    const {'1': 'timestamp', '3': 2, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'origin', '3': 4, '4': 1, '5': 3, '10': 'origin'},
    const {'1': 'previous', '3': 5, '4': 1, '5': 3, '10': 'previous'},
    const {'1': 'source', '3': 7, '4': 1, '5': 3, '10': 'source'},
    const {'1': 'target', '3': 8, '4': 1, '5': 3, '10': 'target'},
    const {'1': 'delayUntil', '3': 9, '4': 1, '5': 3, '10': 'delayUntil'},
    const {'1': 'holdToken', '3': 10, '4': 1, '5': 3, '10': 'holdToken'},
    const {'1': 'cancelToken', '3': 11, '4': 1, '5': 3, '10': 'cancelToken'},
    const {'1': 'type', '3': 12, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'version', '3': 13, '4': 1, '5': 5, '10': 'version'},
    const {'1': 'jsonContent', '3': 14, '4': 1, '5': 9, '9': 0, '10': 'jsonContent'},
    const {'1': 'msgContent', '3': 15, '4': 1, '5': 12, '9': 0, '10': 'msgContent'},
  ],
  '8': const [
    const {'1': 'content'},
  ],
};

const TideChartContextChange$json = const {
  '1': 'TideChartContextChange',
  '2': const [
    const {'1': 'index', '3': 1, '4': 1, '5': 3, '10': 'index'},
    const {'1': 'timestamp', '3': 2, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'type', '3': 3, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'props', '3': 4, '4': 3, '5': 11, '6': '.TideChartProperty', '10': 'props'},
  ],
};

const TideChartLogEntry$json = const {
  '1': 'TideChartLogEntry',
  '2': const [
    const {'1': 'index', '3': 1, '4': 1, '5': 3, '10': 'index'},
    const {'1': 'timestamp', '3': 2, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'source', '3': 3, '4': 1, '5': 3, '10': 'source'},
    const {'1': 'level', '3': 4, '4': 1, '5': 14, '6': '.TideChartLogLevel', '10': 'level'},
    const {'1': 'tags', '3': 5, '4': 3, '5': 9, '10': 'tags'},
    const {'1': 'message', '3': 6, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'refs', '3': 7, '4': 3, '5': 3, '10': 'refs'},
    const {'1': 'props', '3': 8, '4': 3, '5': 11, '6': '.TideChartProperty', '10': 'props'},
  ],
};

const TideChartContext$json = const {
  '1': 'TideChartContext',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'index', '3': 2, '4': 1, '5': 3, '10': 'index'},
    const {'1': 'timestamp', '3': 3, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'version', '3': 4, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'sites', '3': 5, '4': 3, '5': 11, '6': '.TideChartSite', '10': 'sites'},
    const {'1': 'messages', '3': 6, '4': 3, '5': 11, '6': '.TideChartMessage', '10': 'messages'},
    const {'1': 'global', '3': 7, '4': 3, '5': 11, '6': '.TideChartProperty', '10': 'global'},
    const {'1': 'startTime', '3': 8, '4': 1, '5': 3, '10': 'startTime'},
    const {'1': 'startIndex', '3': 9, '4': 1, '5': 3, '10': 'startIndex'},
    const {'1': 'active', '3': 10, '4': 3, '5': 3, '10': 'active'},
    const {'1': 'waiting', '3': 11, '4': 3, '5': 3, '10': 'waiting'},
    const {'1': 'paused', '3': 12, '4': 3, '5': 3, '10': 'paused'},
    const {'1': 'disabled', '3': 13, '4': 3, '5': 3, '10': 'disabled'},
    const {'1': 'events', '3': 14, '4': 3, '5': 11, '6': '.TideChartContextChange', '10': 'events'},
    const {'1': 'log', '3': 15, '4': 3, '5': 11, '6': '.TideChartLogEntry', '10': 'log'},
  ],
};

const TideChartData$json = const {
  '1': 'TideChartData',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'branch', '3': 2, '4': 1, '5': 9, '10': 'branch'},
    const {'1': 'source', '3': 3, '4': 1, '5': 9, '10': 'source'},
    const {'1': 'merge', '3': 4, '4': 1, '5': 9, '10': 'merge'},
    const {'1': 'origin', '3': 13, '4': 1, '5': 9, '10': 'origin'},
    const {'1': 'commitDate', '3': 5, '4': 1, '5': 9, '10': 'commitDate'},
    const {'1': 'commitBy', '3': 6, '4': 1, '5': 9, '10': 'commitBy'},
    const {'1': 'commitDesc', '3': 7, '4': 1, '5': 9, '10': 'commitDesc'},
    const {'1': 'commitNotes', '3': 8, '4': 1, '5': 9, '10': 'commitNotes'},
    const {'1': 'sheets', '3': 9, '4': 3, '5': 11, '6': '.TideChartGraph', '10': 'sheets'},
    const {'1': 'props', '3': 10, '4': 3, '5': 11, '6': '.TideChartProperty', '10': 'props'},
    const {'1': 'notes', '3': 11, '4': 3, '5': 11, '6': '.TideChartNote', '10': 'notes'},
    const {'1': 'library', '3': 12, '4': 3, '5': 11, '6': '.TideChartLibrary', '10': 'library'},
    const {'1': 'settings', '3': 22, '4': 3, '5': 11, '6': '.TideChartProperty', '10': 'settings'},
    const {'1': 'imports', '3': 23, '4': 3, '5': 11, '6': '.TideChartSource', '10': 'imports'},
  ],
};

const TideChartHeader$json = const {
  '1': 'TideChartHeader',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'branch', '3': 2, '4': 1, '5': 9, '10': 'branch'},
    const {'1': 'source', '3': 3, '4': 1, '5': 9, '10': 'source'},
    const {'1': 'merge', '3': 4, '4': 1, '5': 9, '10': 'merge'},
    const {'1': 'commitDate', '3': 5, '4': 1, '5': 9, '10': 'commitDate'},
    const {'1': 'commitBy', '3': 6, '4': 1, '5': 9, '10': 'commitBy'},
    const {'1': 'commitDesc', '3': 7, '4': 1, '5': 9, '10': 'commitDesc'},
    const {'1': 'commitNotes', '3': 8, '4': 1, '5': 9, '10': 'commitNotes'},
  ],
};

const TideChartFile$json = const {
  '1': 'TideChartFile',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'path', '3': 3, '4': 1, '5': 9, '10': 'path'},
    const {'1': 'origin', '3': 4, '4': 1, '5': 9, '10': 'origin'},
    const {'1': 'modifiedDate', '3': 5, '4': 1, '5': 9, '10': 'modifiedDate'},
    const {'1': 'modifiedBy', '3': 6, '4': 1, '5': 9, '10': 'modifiedBy'},
    const {'1': 'chart', '3': 7, '4': 1, '5': 11, '6': '.TideChartData', '10': 'chart'},
    const {'1': 'working', '3': 8, '4': 3, '5': 11, '6': '.TideChartCommand', '10': 'working'},
    const {'1': 'remote', '3': 9, '4': 3, '5': 11, '6': '.TideChartCommand', '10': 'remote'},
    const {'1': 'history', '3': 10, '4': 3, '5': 11, '6': '.TideChartData', '10': 'history'},
    const {'1': 'context', '3': 11, '4': 3, '5': 11, '6': '.TideChartContext', '10': 'context'},
  ],
};

const TideChartFileHeader$json = const {
  '1': 'TideChartFileHeader',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'path', '3': 3, '4': 1, '5': 9, '10': 'path'},
    const {'1': 'origin', '3': 4, '4': 1, '5': 9, '10': 'origin'},
    const {'1': 'modifiedDate', '3': 5, '4': 1, '5': 9, '10': 'modifiedDate'},
    const {'1': 'modifiedBy', '3': 6, '4': 1, '5': 9, '10': 'modifiedBy'},
  ],
};

const TideChartFileCurrent$json = const {
  '1': 'TideChartFileCurrent',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'path', '3': 3, '4': 1, '5': 9, '10': 'path'},
    const {'1': 'origin', '3': 4, '4': 1, '5': 9, '10': 'origin'},
    const {'1': 'modifiedDate', '3': 5, '4': 1, '5': 9, '10': 'modifiedDate'},
    const {'1': 'modifiedBy', '3': 6, '4': 1, '5': 9, '10': 'modifiedBy'},
    const {'1': 'chart', '3': 7, '4': 1, '5': 11, '6': '.TideChartData', '10': 'chart'},
  ],
};

