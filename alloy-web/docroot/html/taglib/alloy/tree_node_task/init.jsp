<%@ include file="/html/taglib/alloy/init.jsp" %>

<%
Map<String, Object> dynamicAttributes = (Map<String, Object>)request.getAttribute("alloy:tree-node-task:dynamicAttributes");
Map<String, Object> scopedAttributes = (Map<String, Object>)request.getAttribute("alloy:tree-node-task:scopedAttributes");

Map<String, Object> options = new HashMap<String, Object>();

options.putAll(scopedAttributes);
options.putAll(dynamicAttributes);

java.lang.Object _boundingBox = (java.lang.Object)request.getAttribute("alloy:tree-node-task:boundingBox");
java.lang.Object _contentBox = (java.lang.Object)request.getAttribute("alloy:tree-node-task:contentBox");
java.lang.Object _srcNode = (java.lang.Object)request.getAttribute("alloy:tree-node-task:srcNode");

boolean hasBoundingBox = GetterUtil.getBoolean(String.valueOf(_boundingBox));
boolean hasContentBox = GetterUtil.getBoolean(String.valueOf(_contentBox));
boolean hasSrcNode = GetterUtil.getBoolean(String.valueOf(_srcNode));

java.lang.Boolean _alwaysShowHitArea = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:tree-node-task:alwaysShowHitArea"), true);
java.lang.Boolean _cache = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:tree-node-task:cache"), true);
java.lang.String _checkContainerEl = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:tree-node-task:checkContainerEl"));
java.lang.String _checkEl = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:tree-node-task:checkEl"));
java.lang.String _checkName = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:tree-node-task:checkName"), "tree-node-check");
java.lang.Boolean _checked = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:tree-node-task:checked"), false);
java.util.ArrayList _children = JSONFactoryUtil.getArrayList(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:children")));
java.lang.String _container = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:tree-node-task:container"));
java.lang.Boolean _destroyed = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:tree-node-task:destroyed"), false);
java.lang.Boolean _draggable = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:tree-node-task:draggable"), true);
java.lang.Boolean _expanded = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:tree-node-task:expanded"), false);
java.lang.String _hitAreaEl = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:tree-node-task:hitAreaEl"));
java.lang.String _iconEl = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:tree-node-task:iconEl"));
java.lang.String _treenodetaskId = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:tree-node-task:treenodetaskId"));
java.util.HashMap _index = JSONFactoryUtil.getHashMap(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:index")));
java.lang.Boolean _initialized = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:tree-node-task:initialized"), false);
java.util.HashMap _io = JSONFactoryUtil.getHashMap(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:io")));
java.lang.String _label = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:tree-node-task:label"));
java.lang.String _labelEl = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:tree-node-task:labelEl"));
java.lang.Boolean _leaf = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:tree-node-task:leaf"), true);
java.lang.Boolean _loaded = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:tree-node-task:loaded"), false);
java.lang.Boolean _loading = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:tree-node-task:loading"), false);
java.lang.Object _nextSibling = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:nextSibling"));
java.lang.Object _ownerTree = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:ownerTree"));
java.lang.Object _parentNode = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:parentNode"));
java.lang.Object _prevSibling = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:prevSibling"));
java.lang.Object _afterAlwaysShowHitAreaChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterAlwaysShowHitAreaChange"));
java.lang.Object _afterCacheChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterCacheChange"));
java.lang.Object _afterCheckContainerElChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterCheckContainerElChange"));
java.lang.Object _afterCheckElChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterCheckElChange"));
java.lang.Object _afterCheckNameChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterCheckNameChange"));
java.lang.Object _afterCheckedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterCheckedChange"));
java.lang.Object _afterChildrenChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterChildrenChange"));
java.lang.Object _afterContainerChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterContainerChange"));
java.lang.Object _afterDestroy = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterDestroy"));
java.lang.Object _afterDestroyedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterDestroyedChange"));
java.lang.Object _afterDraggableChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterDraggableChange"));
java.lang.Object _afterExpandedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterExpandedChange"));
java.lang.Object _afterHitAreaElChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterHitAreaElChange"));
java.lang.Object _afterIconElChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterIconElChange"));
java.lang.Object _afterIdChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterIdChange"));
java.lang.Object _afterIndexChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterIndexChange"));
java.lang.Object _afterInit = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterInit"));
java.lang.Object _afterInitializedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterInitializedChange"));
java.lang.Object _afterIoChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterIoChange"));
java.lang.Object _afterLabelChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterLabelChange"));
java.lang.Object _afterLabelElChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterLabelElChange"));
java.lang.Object _afterLeafChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterLeafChange"));
java.lang.Object _afterLoadedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterLoadedChange"));
java.lang.Object _afterLoadingChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterLoadingChange"));
java.lang.Object _afterNextSiblingChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterNextSiblingChange"));
java.lang.Object _afterOwnerTreeChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterOwnerTreeChange"));
java.lang.Object _afterParentNodeChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterParentNodeChange"));
java.lang.Object _afterPrevSiblingChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:afterPrevSiblingChange"));
java.lang.Object _onAlwaysShowHitAreaChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onAlwaysShowHitAreaChange"));
java.lang.Object _onCacheChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onCacheChange"));
java.lang.Object _onCheckContainerElChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onCheckContainerElChange"));
java.lang.Object _onCheckElChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onCheckElChange"));
java.lang.Object _onCheckNameChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onCheckNameChange"));
java.lang.Object _onCheckedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onCheckedChange"));
java.lang.Object _onChildrenChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onChildrenChange"));
java.lang.Object _onContainerChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onContainerChange"));
java.lang.Object _onDestroy = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onDestroy"));
java.lang.Object _onDestroyedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onDestroyedChange"));
java.lang.Object _onDraggableChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onDraggableChange"));
java.lang.Object _onExpandedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onExpandedChange"));
java.lang.Object _onHitAreaElChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onHitAreaElChange"));
java.lang.Object _onIconElChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onIconElChange"));
java.lang.Object _onIdChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onIdChange"));
java.lang.Object _onIndexChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onIndexChange"));
java.lang.Object _onInit = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onInit"));
java.lang.Object _onInitializedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onInitializedChange"));
java.lang.Object _onIoChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onIoChange"));
java.lang.Object _onLabelChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onLabelChange"));
java.lang.Object _onLabelElChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onLabelElChange"));
java.lang.Object _onLeafChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onLeafChange"));
java.lang.Object _onLoadedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onLoadedChange"));
java.lang.Object _onLoadingChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onLoadingChange"));
java.lang.Object _onNextSiblingChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onNextSiblingChange"));
java.lang.Object _onOwnerTreeChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onOwnerTreeChange"));
java.lang.Object _onParentNodeChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onParentNodeChange"));
java.lang.Object _onPrevSiblingChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tree-node-task:onPrevSiblingChange"));

String uniqueId = StringPool.BLANK;

boolean useJavaScript = GetterUtil.getBoolean((Serializable)dynamicAttributes.get("useJavaScript"), true);
boolean useMarkup = GetterUtil.getBoolean((Serializable)dynamicAttributes.get("useMarkup"), true);

if (useMarkup) {
	uniqueId = MarkupUtil.getUniqueId();

	String prefix = StringPool.POUND.concat(uniqueId);

	if (!hasBoundingBox) {
		_boundingBox = prefix.concat("BoundingBox");

		options.put("boundingBox", _boundingBox);
	}

	if (!hasSrcNode && !hasContentBox) {
		_srcNode = prefix.concat("SrcNode");

		options.put("srcNode", _srcNode);
	}

	if (!hasSrcNode && hasContentBox) {
		_contentBox = prefix.concat("ContentBox");

		options.put("contentBox", _contentBox);
	}
}

_updateOptions(options, "alwaysShowHitArea", _alwaysShowHitArea);
_updateOptions(options, "cache", _cache);
_updateOptions(options, "checkContainerEl", _checkContainerEl);
_updateOptions(options, "checkEl", _checkEl);
_updateOptions(options, "checkName", _checkName);
_updateOptions(options, "checked", _checked);
_updateOptions(options, "children", _children);
_updateOptions(options, "container", _container);
_updateOptions(options, "destroyed", _destroyed);
_updateOptions(options, "draggable", _draggable);
_updateOptions(options, "expanded", _expanded);
_updateOptions(options, "hitAreaEl", _hitAreaEl);
_updateOptions(options, "iconEl", _iconEl);
_updateOptions(options, "treenodetaskId", _treenodetaskId);
_updateOptions(options, "index", _index);
_updateOptions(options, "initialized", _initialized);
_updateOptions(options, "io", _io);
_updateOptions(options, "label", _label);
_updateOptions(options, "labelEl", _labelEl);
_updateOptions(options, "leaf", _leaf);
_updateOptions(options, "loaded", _loaded);
_updateOptions(options, "loading", _loading);
_updateOptions(options, "nextSibling", _nextSibling);
_updateOptions(options, "ownerTree", _ownerTree);
_updateOptions(options, "parentNode", _parentNode);
_updateOptions(options, "prevSibling", _prevSibling);
_updateOptions(options, "afterAlwaysShowHitAreaChange", _afterAlwaysShowHitAreaChange);
_updateOptions(options, "afterCacheChange", _afterCacheChange);
_updateOptions(options, "afterCheckContainerElChange", _afterCheckContainerElChange);
_updateOptions(options, "afterCheckElChange", _afterCheckElChange);
_updateOptions(options, "afterCheckNameChange", _afterCheckNameChange);
_updateOptions(options, "afterCheckedChange", _afterCheckedChange);
_updateOptions(options, "afterChildrenChange", _afterChildrenChange);
_updateOptions(options, "afterContainerChange", _afterContainerChange);
_updateOptions(options, "afterDestroy", _afterDestroy);
_updateOptions(options, "afterDestroyedChange", _afterDestroyedChange);
_updateOptions(options, "afterDraggableChange", _afterDraggableChange);
_updateOptions(options, "afterExpandedChange", _afterExpandedChange);
_updateOptions(options, "afterHitAreaElChange", _afterHitAreaElChange);
_updateOptions(options, "afterIconElChange", _afterIconElChange);
_updateOptions(options, "afterIdChange", _afterIdChange);
_updateOptions(options, "afterIndexChange", _afterIndexChange);
_updateOptions(options, "afterInit", _afterInit);
_updateOptions(options, "afterInitializedChange", _afterInitializedChange);
_updateOptions(options, "afterIoChange", _afterIoChange);
_updateOptions(options, "afterLabelChange", _afterLabelChange);
_updateOptions(options, "afterLabelElChange", _afterLabelElChange);
_updateOptions(options, "afterLeafChange", _afterLeafChange);
_updateOptions(options, "afterLoadedChange", _afterLoadedChange);
_updateOptions(options, "afterLoadingChange", _afterLoadingChange);
_updateOptions(options, "afterNextSiblingChange", _afterNextSiblingChange);
_updateOptions(options, "afterOwnerTreeChange", _afterOwnerTreeChange);
_updateOptions(options, "afterParentNodeChange", _afterParentNodeChange);
_updateOptions(options, "afterPrevSiblingChange", _afterPrevSiblingChange);
_updateOptions(options, "onAlwaysShowHitAreaChange", _onAlwaysShowHitAreaChange);
_updateOptions(options, "onCacheChange", _onCacheChange);
_updateOptions(options, "onCheckContainerElChange", _onCheckContainerElChange);
_updateOptions(options, "onCheckElChange", _onCheckElChange);
_updateOptions(options, "onCheckNameChange", _onCheckNameChange);
_updateOptions(options, "onCheckedChange", _onCheckedChange);
_updateOptions(options, "onChildrenChange", _onChildrenChange);
_updateOptions(options, "onContainerChange", _onContainerChange);
_updateOptions(options, "onDestroy", _onDestroy);
_updateOptions(options, "onDestroyedChange", _onDestroyedChange);
_updateOptions(options, "onDraggableChange", _onDraggableChange);
_updateOptions(options, "onExpandedChange", _onExpandedChange);
_updateOptions(options, "onHitAreaElChange", _onHitAreaElChange);
_updateOptions(options, "onIconElChange", _onIconElChange);
_updateOptions(options, "onIdChange", _onIdChange);
_updateOptions(options, "onIndexChange", _onIndexChange);
_updateOptions(options, "onInit", _onInit);
_updateOptions(options, "onInitializedChange", _onInitializedChange);
_updateOptions(options, "onIoChange", _onIoChange);
_updateOptions(options, "onLabelChange", _onLabelChange);
_updateOptions(options, "onLabelElChange", _onLabelElChange);
_updateOptions(options, "onLeafChange", _onLeafChange);
_updateOptions(options, "onLoadedChange", _onLoadedChange);
_updateOptions(options, "onLoadingChange", _onLoadingChange);
_updateOptions(options, "onNextSiblingChange", _onNextSiblingChange);
_updateOptions(options, "onOwnerTreeChange", _onOwnerTreeChange);
_updateOptions(options, "onParentNodeChange", _onParentNodeChange);
_updateOptions(options, "onPrevSiblingChange", _onPrevSiblingChange);
%>

<%@ include file="init-ext.jsp" %>