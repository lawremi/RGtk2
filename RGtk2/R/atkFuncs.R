
atkActionGetType <-
function()
{
  

  w <- .RGtkCall("S_atk_action_get_type")

  return(w)
} 


atkActionGetLocalizedName <-
function(object, i)
{
  checkPtrType(object, "AtkAction")
  i <- as.integer(i)

  w <- .RGtkCall("S_atk_action_get_localized_name", object, i)

  return(w)
} 


atkActionDoAction <-
function(object, i)
{
  checkPtrType(object, "AtkAction")
  i <- as.integer(i)

  w <- .RGtkCall("S_atk_action_do_action", object, i)

  return(w)
} 


atkActionGetNActions <-
function(object)
{
  checkPtrType(object, "AtkAction")

  w <- .RGtkCall("S_atk_action_get_n_actions", object)

  return(w)
} 


atkActionGetDescription <-
function(object, i)
{
  checkPtrType(object, "AtkAction")
  i <- as.integer(i)

  w <- .RGtkCall("S_atk_action_get_description", object, i)

  return(w)
} 


atkActionGetName <-
function(object, i)
{
  checkPtrType(object, "AtkAction")
  i <- as.integer(i)

  w <- .RGtkCall("S_atk_action_get_name", object, i)

  return(w)
} 


atkActionGetKeybinding <-
function(object, i)
{
  checkPtrType(object, "AtkAction")
  i <- as.integer(i)

  w <- .RGtkCall("S_atk_action_get_keybinding", object, i)

  return(w)
} 


atkActionSetDescription <-
function(object, i, desc)
{
  checkPtrType(object, "AtkAction")
  i <- as.integer(i)
  desc <- as.character(desc)

  w <- .RGtkCall("S_atk_action_set_description", object, i, desc)

  return(w)
} 


atkComponentGetType <-
function()
{
  

  w <- .RGtkCall("S_atk_component_get_type")

  return(w)
} 


atkComponentContains <-
function(object, x, y, coord.type)
{
  checkPtrType(object, "AtkComponent")
  x <- as.integer(x)
  y <- as.integer(y)
  

  w <- .RGtkCall("S_atk_component_contains", object, x, y, coord.type)

  return(w)
} 


atkComponentRefAccessibleAtPoint <-
function(object, x, y, coord.type)
{
  checkPtrType(object, "AtkComponent")
  x <- as.integer(x)
  y <- as.integer(y)
  

  w <- .RGtkCall("S_atk_component_ref_accessible_at_point", object, x, y, coord.type)

  return(w)
} 


atkComponentGetExtents <-
function(object, coord.type)
{
  checkPtrType(object, "AtkComponent")
  

  w <- .RGtkCall("S_atk_component_get_extents", object, coord.type)

  return(invisible(w))
} 


atkComponentGetPosition <-
function(object, coord.type)
{
  checkPtrType(object, "AtkComponent")
  

  w <- .RGtkCall("S_atk_component_get_position", object, coord.type)

  return(invisible(w))
} 


atkComponentGetSize <-
function(object)
{
  checkPtrType(object, "AtkComponent")

  w <- .RGtkCall("S_atk_component_get_size", object)

  return(invisible(w))
} 


atkComponentGrabFocus <-
function(object)
{
  checkPtrType(object, "AtkComponent")

  w <- .RGtkCall("S_atk_component_grab_focus", object)

  return(w)
} 


atkComponentRemoveFocusHandler <-
function(object, handler.id)
{
  checkPtrType(object, "AtkComponent")
  handler.id <- as.numeric(handler.id)

  w <- .RGtkCall("S_atk_component_remove_focus_handler", object, handler.id)

  return(invisible(w))
} 


atkComponentSetExtents <-
function(object, x, y, width, height, coord.type)
{
  checkPtrType(object, "AtkComponent")
  x <- as.integer(x)
  y <- as.integer(y)
  width <- as.integer(width)
  height <- as.integer(height)
  

  w <- .RGtkCall("S_atk_component_set_extents", object, x, y, width, height, coord.type)

  return(w)
} 


atkComponentSetPosition <-
function(object, x, y, coord.type)
{
  checkPtrType(object, "AtkComponent")
  x <- as.integer(x)
  y <- as.integer(y)
  

  w <- .RGtkCall("S_atk_component_set_position", object, x, y, coord.type)

  return(w)
} 


atkComponentSetSize <-
function(object, width, height)
{
  checkPtrType(object, "AtkComponent")
  width <- as.integer(width)
  height <- as.integer(height)

  w <- .RGtkCall("S_atk_component_set_size", object, width, height)

  return(w)
} 


atkComponentGetLayer <-
function(object)
{
  checkPtrType(object, "AtkComponent")

  w <- .RGtkCall("S_atk_component_get_layer", object)

  return(w)
} 


atkComponentGetMdiZorder <-
function(object)
{
  checkPtrType(object, "AtkComponent")

  w <- .RGtkCall("S_atk_component_get_mdi_zorder", object)

  return(w)
} 


atkDocumentGetType <-
function()
{
  

  w <- .RGtkCall("S_atk_document_get_type")

  return(w)
} 


atkDocumentGetDocumentType <-
function(object)
{
  checkPtrType(object, "AtkDocument")

  w <- .RGtkCall("S_atk_document_get_document_type", object)

  return(w)
} 


atkDocumentGetDocument <-
function(object)
{
  checkPtrType(object, "AtkDocument")

  w <- .RGtkCall("S_atk_document_get_document", object)

  return(w)
} 


atkEditableTextGetType <-
function()
{
  

  w <- .RGtkCall("S_atk_editable_text_get_type")

  return(w)
} 


atkEditableTextSetRunAttributes <-
function(object, attrib.set, start.offset, end.offset)
{
  checkPtrType(object, "AtkEditableText")
  attrib.set <- as.AtkAttributeSet(attrib.set)
  start.offset <- as.integer(start.offset)
  end.offset <- as.integer(end.offset)

  w <- .RGtkCall("S_atk_editable_text_set_run_attributes", object, attrib.set, start.offset, end.offset)

  return(w)
} 


atkEditableTextSetTextContents <-
function(object, string)
{
  checkPtrType(object, "AtkEditableText")
  string <- as.character(string)

  w <- .RGtkCall("S_atk_editable_text_set_text_contents", object, string)

  return(invisible(w))
} 


atkEditableTextInsertText <-
function(object, string, position)
{
  checkPtrType(object, "AtkEditableText")
  string <- as.character(string)
  position <- as.list(as.integer(position))

  w <- .RGtkCall("S_atk_editable_text_insert_text", object, string, position)

  return(w)
} 


atkEditableTextCopyText <-
function(object, start.pos, end.pos)
{
  checkPtrType(object, "AtkEditableText")
  start.pos <- as.integer(start.pos)
  end.pos <- as.integer(end.pos)

  w <- .RGtkCall("S_atk_editable_text_copy_text", object, start.pos, end.pos)

  return(invisible(w))
} 


atkEditableTextCutText <-
function(object, start.pos, end.pos)
{
  checkPtrType(object, "AtkEditableText")
  start.pos <- as.integer(start.pos)
  end.pos <- as.integer(end.pos)

  w <- .RGtkCall("S_atk_editable_text_cut_text", object, start.pos, end.pos)

  return(invisible(w))
} 


atkEditableTextDeleteText <-
function(object, start.pos, end.pos)
{
  checkPtrType(object, "AtkEditableText")
  start.pos <- as.integer(start.pos)
  end.pos <- as.integer(end.pos)

  w <- .RGtkCall("S_atk_editable_text_delete_text", object, start.pos, end.pos)

  return(invisible(w))
} 


atkEditableTextPasteText <-
function(object, position)
{
  checkPtrType(object, "AtkEditableText")
  position <- as.integer(position)

  w <- .RGtkCall("S_atk_editable_text_paste_text", object, position)

  return(invisible(w))
} 


atkGObjectAccessibleGetType <-
function()
{
  

  w <- .RGtkCall("S_atk_gobject_accessible_get_type")

  return(w)
} 


atkGObjectAccessibleForObject <-
function(obj)
{
  checkPtrType(obj, "GObject")

  w <- .RGtkCall("S_atk_gobject_accessible_for_object", obj)

  return(w)
} 


atkGObjectAccessibleGetObject <-
function(object)
{
  checkPtrType(object, "AtkGObjectAccessible")

  w <- .RGtkCall("S_atk_gobject_accessible_get_object", object)

  return(w)
} 


atkHyperlinkGetType <-
function()
{
  

  w <- .RGtkCall("S_atk_hyperlink_get_type")

  return(w)
} 


atkHyperlinkGetUri <-
function(object, i)
{
  checkPtrType(object, "AtkHyperlink")
  i <- as.integer(i)

  w <- .RGtkCall("S_atk_hyperlink_get_uri", object, i)

  return(w)
} 


atkHyperlinkGetObject <-
function(object, i)
{
  checkPtrType(object, "AtkHyperlink")
  i <- as.integer(i)

  w <- .RGtkCall("S_atk_hyperlink_get_object", object, i)

  return(w)
} 


atkHyperlinkGetEndIndex <-
function(object)
{
  checkPtrType(object, "AtkHyperlink")

  w <- .RGtkCall("S_atk_hyperlink_get_end_index", object)

  return(w)
} 


atkHyperlinkGetStartIndex <-
function(object)
{
  checkPtrType(object, "AtkHyperlink")

  w <- .RGtkCall("S_atk_hyperlink_get_start_index", object)

  return(w)
} 


atkHyperlinkIsValid <-
function(object)
{
  checkPtrType(object, "AtkHyperlink")

  w <- .RGtkCall("S_atk_hyperlink_is_valid", object)

  return(w)
} 


atkHyperlinkGetNAnchors <-
function(object)
{
  checkPtrType(object, "AtkHyperlink")

  w <- .RGtkCall("S_atk_hyperlink_get_n_anchors", object)

  return(w)
} 


atkHyperlinkIsInline <-
function(object)
{
  checkPtrType(object, "AtkHyperlink")

  w <- .RGtkCall("S_atk_hyperlink_is_inline", object)

  return(w)
} 


atkHyperlinkIsSelectedLink <-
function(object)
{
  checkPtrType(object, "AtkHyperlink")

  w <- .RGtkCall("S_atk_hyperlink_is_selected_link", object)

  return(w)
} 


atkHypertextGetType <-
function()
{
  

  w <- .RGtkCall("S_atk_hypertext_get_type")

  return(w)
} 


atkHypertextGetLink <-
function(object, link.index)
{
  checkPtrType(object, "AtkHypertext")
  link.index <- as.integer(link.index)

  w <- .RGtkCall("S_atk_hypertext_get_link", object, link.index)

  return(w)
} 


atkHypertextGetNLinks <-
function(object)
{
  checkPtrType(object, "AtkHypertext")

  w <- .RGtkCall("S_atk_hypertext_get_n_links", object)

  return(w)
} 


atkHypertextGetLinkIndex <-
function(object, char.index)
{
  checkPtrType(object, "AtkHypertext")
  char.index <- as.integer(char.index)

  w <- .RGtkCall("S_atk_hypertext_get_link_index", object, char.index)

  return(w)
} 


atkImageGetType <-
function()
{
  

  w <- .RGtkCall("S_atk_image_get_type")

  return(w)
} 


atkImageGetImageDescription <-
function(object)
{
  checkPtrType(object, "AtkImage")

  w <- .RGtkCall("S_atk_image_get_image_description", object)

  return(w)
} 


atkImageGetImageSize <-
function(object)
{
  checkPtrType(object, "AtkImage")

  w <- .RGtkCall("S_atk_image_get_image_size", object)

  return(invisible(w))
} 


atkImageSetImageDescription <-
function(object, description)
{
  checkPtrType(object, "AtkImage")
  description <- as.character(description)

  w <- .RGtkCall("S_atk_image_set_image_description", object, description)

  return(w)
} 


atkImageGetImagePosition <-
function(object, coord.type)
{
  checkPtrType(object, "AtkImage")
  

  w <- .RGtkCall("S_atk_image_get_image_position", object, coord.type)

  return(invisible(w))
} 


atkNoOpObjectFactoryGetType <-
function()
{
  

  w <- .RGtkCall("S_atk_no_op_object_factory_get_type")

  return(w)
} 


atkNoOpObjectFactoryNew <-
function()
{
  

  w <- .RGtkCall("S_atk_no_op_object_factory_new")

  return(w)
} 


atkNoOpObjectGetType <-
function()
{
  

  w <- .RGtkCall("S_atk_no_op_object_get_type")

  return(w)
} 


atkNoOpObjectNew <-
function(obj)
{
  checkPtrType(obj, "GObject")

  w <- .RGtkCall("S_atk_no_op_object_new", obj)

  return(w)
} 


atkObjectFactoryGetType <-
function()
{
  

  w <- .RGtkCall("S_atk_object_factory_get_type")

  return(w)
} 


atkObjectFactoryCreateAccessible <-
function(object, obj)
{
  checkPtrType(object, "AtkObjectFactory")
  checkPtrType(obj, "GObject")

  w <- .RGtkCall("S_atk_object_factory_create_accessible", object, obj)

  return(w)
} 


atkObjectFactoryInvalidate <-
function(object)
{
  checkPtrType(object, "AtkObjectFactory")

  w <- .RGtkCall("S_atk_object_factory_invalidate", object)

  return(invisible(w))
} 


atkObjectFactoryGetAccessibleType <-
function(object)
{
  checkPtrType(object, "AtkObjectFactory")

  w <- .RGtkCall("S_atk_object_factory_get_accessible_type", object)

  return(w)
} 


atkObjectGetType <-
function()
{
  

  w <- .RGtkCall("S_atk_object_get_type")

  return(w)
} 


atkImplementorGetType <-
function()
{
  

  w <- .RGtkCall("S_atk_implementor_get_type")

  return(w)
} 


atkImplementorRefAccessible <-
function(object)
{
  checkPtrType(object, "AtkImplementor")

  w <- .RGtkCall("S_atk_implementor_ref_accessible", object)

  return(w)
} 


atkObjectGetName <-
function(object)
{
  checkPtrType(object, "AtkObject")

  w <- .RGtkCall("S_atk_object_get_name", object)

  return(w)
} 


atkObjectGetDescription <-
function(object)
{
  checkPtrType(object, "AtkObject")

  w <- .RGtkCall("S_atk_object_get_description", object)

  return(w)
} 


atkObjectGetParent <-
function(object)
{
  checkPtrType(object, "AtkObject")

  w <- .RGtkCall("S_atk_object_get_parent", object)

  return(w)
} 


atkObjectGetNAccessibleChildren <-
function(object)
{
  checkPtrType(object, "AtkObject")

  w <- .RGtkCall("S_atk_object_get_n_accessible_children", object)

  return(w)
} 


atkObjectRefAccessibleChild <-
function(object, i)
{
  checkPtrType(object, "AtkObject")
  i <- as.integer(i)

  w <- .RGtkCall("S_atk_object_ref_accessible_child", object, i)

  return(w)
} 


atkObjectRefRelationSet <-
function(object)
{
  checkPtrType(object, "AtkObject")

  w <- .RGtkCall("S_atk_object_ref_relation_set", object)

  return(w)
} 


atkObjectGetRole <-
function(object)
{
  checkPtrType(object, "AtkObject")

  w <- .RGtkCall("S_atk_object_get_role", object)

  return(w)
} 


atkObjectGetLayer <-
function(object)
{
  checkPtrType(object, "AtkObject")

  w <- .RGtkCall("S_atk_object_get_layer", object)

  return(w)
} 


atkObjectGetMdiZorder <-
function(object)
{
  checkPtrType(object, "AtkObject")

  w <- .RGtkCall("S_atk_object_get_mdi_zorder", object)

  return(w)
} 


atkObjectRefStateSet <-
function(object)
{
  checkPtrType(object, "AtkObject")

  w <- .RGtkCall("S_atk_object_ref_state_set", object)

  return(w)
} 


atkObjectGetIndexInParent <-
function(object)
{
  checkPtrType(object, "AtkObject")

  w <- .RGtkCall("S_atk_object_get_index_in_parent", object)

  return(w)
} 


atkObjectSetName <-
function(object, name)
{
  checkPtrType(object, "AtkObject")
  name <- as.character(name)

  w <- .RGtkCall("S_atk_object_set_name", object, name)

  return(invisible(w))
} 


atkObjectSetDescription <-
function(object, description)
{
  checkPtrType(object, "AtkObject")
  description <- as.character(description)

  w <- .RGtkCall("S_atk_object_set_description", object, description)

  return(invisible(w))
} 


atkObjectSetParent <-
function(object, parent)
{
  checkPtrType(object, "AtkObject")
  checkPtrType(parent, "AtkObject")

  w <- .RGtkCall("S_atk_object_set_parent", object, parent)

  return(invisible(w))
} 


atkObjectSetRole <-
function(object, role)
{
  checkPtrType(object, "AtkObject")
  

  w <- .RGtkCall("S_atk_object_set_role", object, role)

  return(invisible(w))
} 


atkObjectRemovePropertyChangeHandler <-
function(object, handler.id)
{
  checkPtrType(object, "AtkObject")
  handler.id <- as.numeric(handler.id)

  w <- .RGtkCall("S_atk_object_remove_property_change_handler", object, handler.id)

  return(invisible(w))
} 


atkObjectNotifyStateChange <-
function(object, state, value)
{
  checkPtrType(object, "AtkObject")
  state <- as.numeric(state)
  value <- as.logical(value)

  w <- .RGtkCall("S_atk_object_notify_state_change", object, state, value)

  return(invisible(w))
} 


atkRegistryGetType <-
function()
{
  

  w <- .RGtkCall("S_atk_registry_get_type")

  return(w)
} 


atkRegistrySetFactoryType <-
function(object, type, factory.type)
{
  checkPtrType(object, "AtkRegistry")
  type <- as.GType(type)
  factory.type <- as.GType(factory.type)

  w <- .RGtkCall("S_atk_registry_set_factory_type", object, type, factory.type)

  return(invisible(w))
} 


atkRegistryGetFactoryType <-
function(object, type)
{
  checkPtrType(object, "AtkRegistry")
  type <- as.GType(type)

  w <- .RGtkCall("S_atk_registry_get_factory_type", object, type)

  return(w)
} 


atkRegistryGetFactory <-
function(object, type)
{
  checkPtrType(object, "AtkRegistry")
  type <- as.GType(type)

  w <- .RGtkCall("S_atk_registry_get_factory", object, type)

  return(w)
} 


atkGetDefaultRegistry <-
function()
{
  

  w <- .RGtkCall("S_atk_get_default_registry")

  return(w)
} 


atkRelationGetType <-
function()
{
  

  w <- .RGtkCall("S_atk_relation_get_type")

  return(w)
} 


atkRelationTypeRegister <-
function(name)
{
  name <- as.character(name)

  w <- .RGtkCall("S_atk_relation_type_register", name)

  return(w)
} 


atkRelationTypeGetName <-
function(type)
{
  

  w <- .RGtkCall("S_atk_relation_type_get_name", type)

  return(w)
} 


atkRelationTypeForName <-
function(name)
{
  name <- as.character(name)

  w <- .RGtkCall("S_atk_relation_type_for_name", name)

  return(w)
} 


atkRelationNew <-
function(targets, relationship)
{
  targets <- lapply(targets, function(x) { checkPtrType(x, "AtkObject"); x })
  

  w <- .RGtkCall("S_atk_relation_new", targets, relationship)

  return(w)
} 


atkRelationGetRelationType <-
function(object)
{
  checkPtrType(object, "AtkRelation")

  w <- .RGtkCall("S_atk_relation_get_relation_type", object)

  return(w)
} 


atkRelationGetTarget <-
function(object)
{
  checkPtrType(object, "AtkRelation")

  w <- .RGtkCall("S_atk_relation_get_target", object)

  return(w)
} 


atkRelationAddTarget <-
function(object, target)
{
  checkPtrType(object, "AtkRelation")
  checkPtrType(target, "AtkObject")

  w <- .RGtkCall("S_atk_relation_add_target", object, target)

  return(invisible(w))
} 


atkRelationSetGetType <-
function()
{
  

  w <- .RGtkCall("S_atk_relation_set_get_type")

  return(w)
} 


atkRelationSetNew <-
function()
{
  

  w <- .RGtkCall("S_atk_relation_set_new")

  return(w)
} 


atkRelationSetContains <-
function(object, relationship)
{
  checkPtrType(object, "AtkRelationSet")
  

  w <- .RGtkCall("S_atk_relation_set_contains", object, relationship)

  return(w)
} 


atkRelationSetRemove <-
function(object, relation)
{
  checkPtrType(object, "AtkRelationSet")
  checkPtrType(relation, "AtkRelation")

  w <- .RGtkCall("S_atk_relation_set_remove", object, relation)

  return(invisible(w))
} 


atkRelationSetAdd <-
function(object, relation)
{
  checkPtrType(object, "AtkRelationSet")
  checkPtrType(relation, "AtkRelation")

  w <- .RGtkCall("S_atk_relation_set_add", object, relation)

  return(invisible(w))
} 


atkRelationSetGetNRelations <-
function(object)
{
  checkPtrType(object, "AtkRelationSet")

  w <- .RGtkCall("S_atk_relation_set_get_n_relations", object)

  return(w)
} 


atkRelationSetGetRelation <-
function(object, i)
{
  checkPtrType(object, "AtkRelationSet")
  i <- as.integer(i)

  w <- .RGtkCall("S_atk_relation_set_get_relation", object, i)

  return(w)
} 


atkRelationSetGetRelationByType <-
function(object, relationship)
{
  checkPtrType(object, "AtkRelationSet")
  

  w <- .RGtkCall("S_atk_relation_set_get_relation_by_type", object, relationship)

  return(w)
} 


atkRelationSetAddRelationByType <-
function(object, relationship, target)
{
  checkPtrType(object, "AtkRelationSet")
  
  checkPtrType(target, "AtkObject")

  w <- .RGtkCall("S_atk_relation_set_add_relation_by_type", object, relationship, target)

  return(invisible(w))
} 


atkSelectionGetType <-
function()
{
  

  w <- .RGtkCall("S_atk_selection_get_type")

  return(w)
} 


atkSelectionAddSelection <-
function(object, i)
{
  checkPtrType(object, "AtkSelection")
  i <- as.integer(i)

  w <- .RGtkCall("S_atk_selection_add_selection", object, i)

  return(w)
} 


atkSelectionClearSelection <-
function(object)
{
  checkPtrType(object, "AtkSelection")

  w <- .RGtkCall("S_atk_selection_clear_selection", object)

  return(w)
} 


atkSelectionRefSelection <-
function(object, i)
{
  checkPtrType(object, "AtkSelection")
  i <- as.integer(i)

  w <- .RGtkCall("S_atk_selection_ref_selection", object, i)

  return(w)
} 


atkSelectionGetSelectionCount <-
function(object)
{
  checkPtrType(object, "AtkSelection")

  w <- .RGtkCall("S_atk_selection_get_selection_count", object)

  return(w)
} 


atkSelectionIsChildSelected <-
function(object, i)
{
  checkPtrType(object, "AtkSelection")
  i <- as.integer(i)

  w <- .RGtkCall("S_atk_selection_is_child_selected", object, i)

  return(w)
} 


atkSelectionRemoveSelection <-
function(object, i)
{
  checkPtrType(object, "AtkSelection")
  i <- as.integer(i)

  w <- .RGtkCall("S_atk_selection_remove_selection", object, i)

  return(w)
} 


atkSelectionSelectAllSelection <-
function(object)
{
  checkPtrType(object, "AtkSelection")

  w <- .RGtkCall("S_atk_selection_select_all_selection", object)

  return(w)
} 


atkStateTypeRegister <-
function(name)
{
  name <- as.character(name)

  w <- .RGtkCall("S_atk_state_type_register", name)

  return(w)
} 


atkStateTypeGetName <-
function(type)
{
  

  w <- .RGtkCall("S_atk_state_type_get_name", type)

  return(w)
} 


atkStateTypeForName <-
function(name)
{
  name <- as.character(name)

  w <- .RGtkCall("S_atk_state_type_for_name", name)

  return(w)
} 


atkStateSetGetType <-
function()
{
  

  w <- .RGtkCall("S_atk_state_set_get_type")

  return(w)
} 


atkStateSetNew <-
function()
{
  

  w <- .RGtkCall("S_atk_state_set_new")

  return(w)
} 


atkStateSetIsEmpty <-
function(object)
{
  checkPtrType(object, "AtkStateSet")

  w <- .RGtkCall("S_atk_state_set_is_empty", object)

  return(w)
} 


atkStateSetAddState <-
function(object, type)
{
  checkPtrType(object, "AtkStateSet")
  

  w <- .RGtkCall("S_atk_state_set_add_state", object, type)

  return(w)
} 


atkStateSetAddStates <-
function(object, types)
{
  checkPtrType(object, "AtkStateSet")
  types <- as.list(types)

  w <- .RGtkCall("S_atk_state_set_add_states", object, types)

  return(w)
} 


atkStateSetClearStates <-
function(object)
{
  checkPtrType(object, "AtkStateSet")

  w <- .RGtkCall("S_atk_state_set_clear_states", object)

  return(invisible(w))
} 


atkStateSetContainsState <-
function(object, type)
{
  checkPtrType(object, "AtkStateSet")
  

  w <- .RGtkCall("S_atk_state_set_contains_state", object, type)

  return(w)
} 


atkStateSetContainsStates <-
function(object, types, n.types)
{
  checkPtrType(object, "AtkStateSet")
  
  n.types <- as.integer(n.types)

  w <- .RGtkCall("S_atk_state_set_contains_states", object, types, n.types)

  return(w)
} 


atkStateSetRemoveState <-
function(object, type)
{
  checkPtrType(object, "AtkStateSet")
  

  w <- .RGtkCall("S_atk_state_set_remove_state", object, type)

  return(w)
} 


atkStateSetAndSets <-
function(object, compare.set)
{
  checkPtrType(object, "AtkStateSet")
  checkPtrType(compare.set, "AtkStateSet")

  w <- .RGtkCall("S_atk_state_set_and_sets", object, compare.set)

  return(w)
} 


atkStateSetOrSets <-
function(object, compare.set)
{
  checkPtrType(object, "AtkStateSet")
  checkPtrType(compare.set, "AtkStateSet")

  w <- .RGtkCall("S_atk_state_set_or_sets", object, compare.set)

  return(w)
} 


atkStateSetXorSets <-
function(object, compare.set)
{
  checkPtrType(object, "AtkStateSet")
  checkPtrType(compare.set, "AtkStateSet")

  w <- .RGtkCall("S_atk_state_set_xor_sets", object, compare.set)

  return(w)
} 


atkStreamableContentGetType <-
function()
{
  

  w <- .RGtkCall("S_atk_streamable_content_get_type")

  return(w)
} 


atkStreamableContentGetNMimeTypes <-
function(object)
{
  checkPtrType(object, "AtkStreamableContent")

  w <- .RGtkCall("S_atk_streamable_content_get_n_mime_types", object)

  return(w)
} 


atkStreamableContentGetMimeType <-
function(object, i)
{
  checkPtrType(object, "AtkStreamableContent")
  i <- as.integer(i)

  w <- .RGtkCall("S_atk_streamable_content_get_mime_type", object, i)

  return(w)
} 


atkStreamableContentGetStream <-
function(object, mime.type)
{
  checkPtrType(object, "AtkStreamableContent")
  mime.type <- as.character(mime.type)

  w <- .RGtkCall("S_atk_streamable_content_get_stream", object, mime.type)

  return(w)
} 


atkTableGetType <-
function()
{
  

  w <- .RGtkCall("S_atk_table_get_type")

  return(w)
} 


atkTableRefAt <-
function(object, row, column)
{
  checkPtrType(object, "AtkTable")
  row <- as.integer(row)
  column <- as.integer(column)

  w <- .RGtkCall("S_atk_table_ref_at", object, row, column)

  return(w)
} 


atkTableGetIndexAt <-
function(object, row, column)
{
  checkPtrType(object, "AtkTable")
  row <- as.integer(row)
  column <- as.integer(column)

  w <- .RGtkCall("S_atk_table_get_index_at", object, row, column)

  return(w)
} 


atkTableGetColumnAtIndex <-
function(object, index)
{
  checkPtrType(object, "AtkTable")
  index <- as.integer(index)

  w <- .RGtkCall("S_atk_table_get_column_at_index", object, index)

  return(w)
} 


atkTableGetRowAtIndex <-
function(object, index)
{
  checkPtrType(object, "AtkTable")
  index <- as.integer(index)

  w <- .RGtkCall("S_atk_table_get_row_at_index", object, index)

  return(w)
} 


atkTableGetNColumns <-
function(object)
{
  checkPtrType(object, "AtkTable")

  w <- .RGtkCall("S_atk_table_get_n_columns", object)

  return(w)
} 


atkTableGetNRows <-
function(object)
{
  checkPtrType(object, "AtkTable")

  w <- .RGtkCall("S_atk_table_get_n_rows", object)

  return(w)
} 


atkTableGetColumnExtentAt <-
function(object, row, column)
{
  checkPtrType(object, "AtkTable")
  row <- as.integer(row)
  column <- as.integer(column)

  w <- .RGtkCall("S_atk_table_get_column_extent_at", object, row, column)

  return(w)
} 


atkTableGetRowExtentAt <-
function(object, row, column)
{
  checkPtrType(object, "AtkTable")
  row <- as.integer(row)
  column <- as.integer(column)

  w <- .RGtkCall("S_atk_table_get_row_extent_at", object, row, column)

  return(w)
} 


atkTableGetCaption <-
function(object)
{
  checkPtrType(object, "AtkTable")

  w <- .RGtkCall("S_atk_table_get_caption", object)

  return(w)
} 


atkTableGetColumnDescription <-
function(object, column)
{
  checkPtrType(object, "AtkTable")
  column <- as.integer(column)

  w <- .RGtkCall("S_atk_table_get_column_description", object, column)

  return(w)
} 


atkTableGetColumnHeader <-
function(object, column)
{
  checkPtrType(object, "AtkTable")
  column <- as.integer(column)

  w <- .RGtkCall("S_atk_table_get_column_header", object, column)

  return(w)
} 


atkTableGetRowDescription <-
function(object, row)
{
  checkPtrType(object, "AtkTable")
  row <- as.integer(row)

  w <- .RGtkCall("S_atk_table_get_row_description", object, row)

  return(w)
} 


atkTableGetRowHeader <-
function(object, row)
{
  checkPtrType(object, "AtkTable")
  row <- as.integer(row)

  w <- .RGtkCall("S_atk_table_get_row_header", object, row)

  return(w)
} 


atkTableGetSummary <-
function(object)
{
  checkPtrType(object, "AtkTable")

  w <- .RGtkCall("S_atk_table_get_summary", object)

  return(w)
} 


atkTableSetCaption <-
function(object, caption)
{
  checkPtrType(object, "AtkTable")
  checkPtrType(caption, "AtkObject")

  w <- .RGtkCall("S_atk_table_set_caption", object, caption)

  return(invisible(w))
} 


atkTableSetColumnDescription <-
function(object, column, description)
{
  checkPtrType(object, "AtkTable")
  column <- as.integer(column)
  description <- as.character(description)

  w <- .RGtkCall("S_atk_table_set_column_description", object, column, description)

  return(invisible(w))
} 


atkTableSetColumnHeader <-
function(object, column, header)
{
  checkPtrType(object, "AtkTable")
  column <- as.integer(column)
  checkPtrType(header, "AtkObject")

  w <- .RGtkCall("S_atk_table_set_column_header", object, column, header)

  return(invisible(w))
} 


atkTableSetRowDescription <-
function(object, row, description)
{
  checkPtrType(object, "AtkTable")
  row <- as.integer(row)
  description <- as.character(description)

  w <- .RGtkCall("S_atk_table_set_row_description", object, row, description)

  return(invisible(w))
} 


atkTableSetRowHeader <-
function(object, row, header)
{
  checkPtrType(object, "AtkTable")
  row <- as.integer(row)
  checkPtrType(header, "AtkObject")

  w <- .RGtkCall("S_atk_table_set_row_header", object, row, header)

  return(invisible(w))
} 


atkTableSetSummary <-
function(object, accessible)
{
  checkPtrType(object, "AtkTable")
  checkPtrType(accessible, "AtkObject")

  w <- .RGtkCall("S_atk_table_set_summary", object, accessible)

  return(invisible(w))
} 


atkTableGetSelectedColumns <-
function(object)
{
  checkPtrType(object, "AtkTable")

  w <- .RGtkCall("S_atk_table_get_selected_columns", object)

  return(w)
} 


atkTableGetSelectedRows <-
function(object)
{
  checkPtrType(object, "AtkTable")

  w <- .RGtkCall("S_atk_table_get_selected_rows", object)

  return(w)
} 


atkTableIsColumnSelected <-
function(object, column)
{
  checkPtrType(object, "AtkTable")
  column <- as.integer(column)

  w <- .RGtkCall("S_atk_table_is_column_selected", object, column)

  return(w)
} 


atkTableIsRowSelected <-
function(object, row)
{
  checkPtrType(object, "AtkTable")
  row <- as.integer(row)

  w <- .RGtkCall("S_atk_table_is_row_selected", object, row)

  return(w)
} 


atkTableIsSelected <-
function(object, row, column)
{
  checkPtrType(object, "AtkTable")
  row <- as.integer(row)
  column <- as.integer(column)

  w <- .RGtkCall("S_atk_table_is_selected", object, row, column)

  return(w)
} 


atkTableAddRowSelection <-
function(object, row)
{
  checkPtrType(object, "AtkTable")
  row <- as.integer(row)

  w <- .RGtkCall("S_atk_table_add_row_selection", object, row)

  return(w)
} 


atkTableRemoveRowSelection <-
function(object, row)
{
  checkPtrType(object, "AtkTable")
  row <- as.integer(row)

  w <- .RGtkCall("S_atk_table_remove_row_selection", object, row)

  return(w)
} 


atkTableAddColumnSelection <-
function(object, column)
{
  checkPtrType(object, "AtkTable")
  column <- as.integer(column)

  w <- .RGtkCall("S_atk_table_add_column_selection", object, column)

  return(w)
} 


atkTableRemoveColumnSelection <-
function(object, column)
{
  checkPtrType(object, "AtkTable")
  column <- as.integer(column)

  w <- .RGtkCall("S_atk_table_remove_column_selection", object, column)

  return(w)
} 


atkTextGetType <-
function()
{
  

  w <- .RGtkCall("S_atk_text_get_type")

  return(w)
} 


atkTextGetText <-
function(object, start.offset, end.offset)
{
  checkPtrType(object, "AtkText")
  start.offset <- as.integer(start.offset)
  end.offset <- as.integer(end.offset)

  w <- .RGtkCall("S_atk_text_get_text", object, start.offset, end.offset)

  return(w)
} 


atkTextGetCharacterAtOffset <-
function(object, offset)
{
  checkPtrType(object, "AtkText")
  offset <- as.integer(offset)

  w <- .RGtkCall("S_atk_text_get_character_at_offset", object, offset)

  return(w)
} 


atkTextGetTextAfterOffset <-
function(object, offset, boundary.type)
{
  checkPtrType(object, "AtkText")
  offset <- as.integer(offset)
  

  w <- .RGtkCall("S_atk_text_get_text_after_offset", object, offset, boundary.type)

  return(w)
} 


atkTextGetTextAtOffset <-
function(object, offset, boundary.type)
{
  checkPtrType(object, "AtkText")
  offset <- as.integer(offset)
  

  w <- .RGtkCall("S_atk_text_get_text_at_offset", object, offset, boundary.type)

  return(w)
} 


atkTextGetTextBeforeOffset <-
function(object, offset, boundary.type)
{
  checkPtrType(object, "AtkText")
  offset <- as.integer(offset)
  

  w <- .RGtkCall("S_atk_text_get_text_before_offset", object, offset, boundary.type)

  return(w)
} 


atkTextGetCaretOffset <-
function(object)
{
  checkPtrType(object, "AtkText")

  w <- .RGtkCall("S_atk_text_get_caret_offset", object)

  return(w)
} 


atkTextGetRangeExtents <-
function(object, start.offset, end.offset, coord.type)
{
  checkPtrType(object, "AtkText")
  start.offset <- as.integer(start.offset)
  end.offset <- as.integer(end.offset)
  

  w <- .RGtkCall("S_atk_text_get_range_extents", object, start.offset, end.offset, coord.type)

  return(w)
} 


atkTextGetBoundedRanges <-
function(object, rect, coord.type, x.clip.type, y.clip.type)
{
  checkPtrType(object, "AtkText")
  rect <- as.AtkTextRectangle(rect)
  
  
  

  w <- .RGtkCall("S_atk_text_get_bounded_ranges", object, rect, coord.type, x.clip.type, y.clip.type)

  return(w)
} 


atkTextGetCharacterExtents <-
function(object, offset, coords)
{
  checkPtrType(object, "AtkText")
  offset <- as.integer(offset)
  

  w <- .RGtkCall("S_atk_text_get_character_extents", object, offset, coords)

  return(invisible(w))
} 


atkTextGetRunAttributes <-
function(object, offset)
{
  checkPtrType(object, "AtkText")
  offset <- as.integer(offset)

  w <- .RGtkCall("S_atk_text_get_run_attributes", object, offset)

  return(w)
} 


atkTextGetDefaultAttributes <-
function(object)
{
  checkPtrType(object, "AtkText")

  w <- .RGtkCall("S_atk_text_get_default_attributes", object)

  return(w)
} 


atkTextGetCharacterCount <-
function(object)
{
  checkPtrType(object, "AtkText")

  w <- .RGtkCall("S_atk_text_get_character_count", object)

  return(w)
} 


atkTextGetOffsetAtPoint <-
function(object, x, y, coords)
{
  checkPtrType(object, "AtkText")
  x <- as.integer(x)
  y <- as.integer(y)
  

  w <- .RGtkCall("S_atk_text_get_offset_at_point", object, x, y, coords)

  return(w)
} 


atkTextGetNSelections <-
function(object)
{
  checkPtrType(object, "AtkText")

  w <- .RGtkCall("S_atk_text_get_n_selections", object)

  return(w)
} 


atkTextGetSelection <-
function(object, selection.num)
{
  checkPtrType(object, "AtkText")
  selection.num <- as.integer(selection.num)

  w <- .RGtkCall("S_atk_text_get_selection", object, selection.num)

  return(w)
} 


atkTextAddSelection <-
function(object, start.offset, end.offset)
{
  checkPtrType(object, "AtkText")
  start.offset <- as.integer(start.offset)
  end.offset <- as.integer(end.offset)

  w <- .RGtkCall("S_atk_text_add_selection", object, start.offset, end.offset)

  return(w)
} 


atkTextRemoveSelection <-
function(object, selection.num)
{
  checkPtrType(object, "AtkText")
  selection.num <- as.integer(selection.num)

  w <- .RGtkCall("S_atk_text_remove_selection", object, selection.num)

  return(w)
} 


atkTextSetSelection <-
function(object, selection.num, start.offset, end.offset)
{
  checkPtrType(object, "AtkText")
  selection.num <- as.integer(selection.num)
  start.offset <- as.integer(start.offset)
  end.offset <- as.integer(end.offset)

  w <- .RGtkCall("S_atk_text_set_selection", object, selection.num, start.offset, end.offset)

  return(w)
} 


atkTextSetCaretOffset <-
function(object, offset)
{
  checkPtrType(object, "AtkText")
  offset <- as.integer(offset)

  w <- .RGtkCall("S_atk_text_set_caret_offset", object, offset)

  return(w)
} 


atkTextAttributeRegister <-
function(name)
{
  name <- as.character(name)

  w <- .RGtkCall("S_atk_text_attribute_register", name)

  return(w)
} 


atkTextAttributeGetName <-
function(attr)
{
  

  w <- .RGtkCall("S_atk_text_attribute_get_name", attr)

  return(w)
} 


atkTextAttributeForName <-
function(name)
{
  name <- as.character(name)

  w <- .RGtkCall("S_atk_text_attribute_for_name", name)

  return(w)
} 


atkTextAttributeGetValue <-
function(attr, index)
{
  
  index <- as.integer(index)

  w <- .RGtkCall("S_atk_text_attribute_get_value", attr, index)

  return(w)
} 


atkUtilGetType <-
function()
{
  

  w <- .RGtkCall("S_atk_util_get_type")

  return(w)
} 


atkRemoveFocusTracker <-
function(tracker.id)
{
  tracker.id <- as.numeric(tracker.id)

  w <- .RGtkCall("S_atk_remove_focus_tracker", tracker.id)

  return(w)
} 


atkFocusTrackerNotify <-
function(object)
{
  checkPtrType(object, "AtkObject")

  w <- .RGtkCall("S_atk_focus_tracker_notify", object)

  return(w)
} 


atkRemoveGlobalEventListener <-
function(listener.id)
{
  listener.id <- as.numeric(listener.id)

  w <- .RGtkCall("S_atk_remove_global_event_listener", listener.id)

  return(w)
} 


atkAddKeyEventListener <-
function(listener, data)
{
  listener <- as.function(listener)
  

  w <- .RGtkCall("S_atk_add_key_event_listener", listener, data)

  return(w)
} 


atkRemoveKeyEventListener <-
function(listener.id)
{
  listener.id <- as.numeric(listener.id)

  w <- .RGtkCall("S_atk_remove_key_event_listener", listener.id)

  return(w)
} 


atkGetRoot <-
function()
{
  

  w <- .RGtkCall("S_atk_get_root")

  return(w)
} 


atkGetFocusObject <-
function()
{
  

  w <- .RGtkCall("S_atk_get_focus_object")

  return(w)
} 


atkGetToolkitName <-
function()
{
  

  w <- .RGtkCall("S_atk_get_toolkit_name")

  return(w)
} 


atkGetToolkitVersion <-
function()
{
  

  w <- .RGtkCall("S_atk_get_toolkit_version")

  return(w)
} 


atkValueGetType <-
function()
{
  

  w <- .RGtkCall("S_atk_value_get_type")

  return(w)
} 


atkValueGetCurrentValue <-
function(object)
{
  checkPtrType(object, "AtkValue")

  w <- .RGtkCall("S_atk_value_get_current_value", object)

  return(w)
} 


atkValueGetMaximumValue <-
function(object)
{
  checkPtrType(object, "AtkValue")

  w <- .RGtkCall("S_atk_value_get_maximum_value", object)

  return(w)
} 


atkValueGetMinimumValue <-
function(object)
{
  checkPtrType(object, "AtkValue")

  w <- .RGtkCall("S_atk_value_get_minimum_value", object)

  return(w)
} 


atkValueSetCurrentValue <-
function(object, value)
{
  checkPtrType(object, "AtkValue")
  

  w <- .RGtkCall("S_atk_value_set_current_value", object, value)

  return(w)
} 


atkRoleGetName <-
function(role)
{
  

  w <- .RGtkCall("S_atk_role_get_name", role)

  return(w)
} 


atkRoleForName <-
function(name)
{
  name <- as.character(name)

  w <- .RGtkCall("S_atk_role_for_name", name)

  return(w)
} 


atkRoleRegister <-
function(name)
{
  name <- as.character(name)

  w <- .RGtkCall("S_atk_role_register", name)

  return(w)
} 


atkObjectInitialize <-
function(object, data)
{
  checkPtrType(object, "AtkObject")
  

  w <- .RGtkCall("S_atk_object_initialize", object, data)

  return(invisible(w))
} 


atkObjectAddRelationship <-
function(object, relationship, target)
{
  checkPtrType(object, "AtkObject")
  
  checkPtrType(target, "AtkObject")

  w <- .RGtkCall("S_atk_object_add_relationship", object, relationship, target)

  return(w)
} 


atkObjectRemoveRelationship <-
function(object, relationship, target)
{
  checkPtrType(object, "AtkObject")
  
  checkPtrType(target, "AtkObject")

  w <- .RGtkCall("S_atk_object_remove_relationship", object, relationship, target)

  return(w)
} 


atkRoleGetLocalizedName <-
function(role)
{
  

  w <- .RGtkCall("S_atk_role_get_localized_name", role)

  return(w)
} 


atkDocumentGetLocale <-
function(object)
{
  checkPtrType(object, "AtkDocument")

  w <- .RGtkCall("S_atk_document_get_locale", object)

  return(w)
} 


atkDocumentGetAttributes <-
function(object)
{
  checkPtrType(object, "AtkDocument")

  w <- .RGtkCall("S_atk_document_get_attributes", object)

  return(w)
} 


atkDocumentGetAttributeValue <-
function(object, attribute.name)
{
  checkPtrType(object, "AtkDocument")
  attribute.name <- as.character(attribute.name)

  w <- .RGtkCall("S_atk_document_get_attribute_value", object, attribute.name)

  return(w)
} 


atkDocumentSetAttributeValue <-
function(object, attribute.name, attribute.value)
{
  checkPtrType(object, "AtkDocument")
  attribute.name <- as.character(attribute.name)
  attribute.value <- as.character(attribute.value)

  w <- .RGtkCall("S_atk_document_set_attribute_value", object, attribute.name, attribute.value)

  return(w)
} 


atkComponentGetAlpha <-
function(object)
{
  checkPtrType(object, "AtkComponent")

  w <- .RGtkCall("S_atk_component_get_alpha", object)

  return(w)
} 


atkImageGetImageLocale <-
function(object)
{
  checkPtrType(object, "AtkImage")

  w <- .RGtkCall("S_atk_image_get_image_locale", object)

  return(w)
} 


atkObjectGetAttributes <-
function(object)
{
  checkPtrType(object, "AtkObject")

  w <- .RGtkCall("S_atk_object_get_attributes", object)

  return(w)
} 

