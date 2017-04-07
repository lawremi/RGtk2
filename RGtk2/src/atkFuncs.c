#include <RGtk2/gobject.h>
#include <RGtk2/atk.h>

#include "atkFuncs.h"


USER_OBJECT_
S_atk_action_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = atk_action_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_action_get_localized_name(USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkAction* object = ATK_ACTION(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  const gchar* ans;

  ans = atk_action_get_localized_name(object, i);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_action_do_action(USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkAction* object = ATK_ACTION(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  gboolean ans;

  ans = atk_action_do_action(object, i);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_action_get_n_actions(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkAction* object = ATK_ACTION(getPtrValue(s_object));

  gint ans;

  ans = atk_action_get_n_actions(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_action_get_description(USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkAction* object = ATK_ACTION(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  const gchar* ans;

  ans = atk_action_get_description(object, i);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_action_get_name(USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkAction* object = ATK_ACTION(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  const gchar* ans;

  ans = atk_action_get_name(object, i);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_action_get_keybinding(USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkAction* object = ATK_ACTION(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  const gchar* ans;

  ans = atk_action_get_keybinding(object, i);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_action_set_description(USER_OBJECT_ s_object, USER_OBJECT_ s_i, USER_OBJECT_ s_desc)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkAction* object = ATK_ACTION(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));
  const gchar* desc = ((const gchar*)asCString(s_desc));

  gboolean ans;

  ans = atk_action_set_description(object, i, desc);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_component_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = atk_component_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_component_contains(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_coord_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  AtkCoordType coord_type = ((AtkCoordType)asCEnum(s_coord_type, ATK_TYPE_COORD_TYPE));

  gboolean ans;

  ans = atk_component_contains(object, x, y, coord_type);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_component_ref_accessible_at_point(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_coord_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  AtkCoordType coord_type = ((AtkCoordType)asCEnum(s_coord_type, ATK_TYPE_COORD_TYPE));

  AtkObject* ans;

  ans = atk_component_ref_accessible_at_point(object, x, y, coord_type);

  _result = toRPointerWithRef(ans, "AtkObject");

  return(_result);
}
 

USER_OBJECT_
S_atk_component_get_extents(USER_OBJECT_ s_object, USER_OBJECT_ s_coord_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));
  AtkCoordType coord_type = ((AtkCoordType)asCEnum(s_coord_type, ATK_TYPE_COORD_TYPE));

  gint x;
  gint y;
  gint width;
  gint height;

  atk_component_get_extents(object, &x, &y, &width, &height, coord_type);


  _result = retByVal(PROTECT(_result), "x", PROTECT(asRInteger(x)), "y", PROTECT(asRInteger(y)), "width", PROTECT(asRInteger(width)), "height", PROTECT(asRInteger(height)), NULL);
  UNPROTECT(5);
  ;
  ;
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_atk_component_get_position(USER_OBJECT_ s_object, USER_OBJECT_ s_coord_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));
  AtkCoordType coord_type = ((AtkCoordType)asCEnum(s_coord_type, ATK_TYPE_COORD_TYPE));

  gint x;
  gint y;

  atk_component_get_position(object, &x, &y, coord_type);


  _result = retByVal(PROTECT(_result), "x", PROTECT(asRInteger(x)), "y", PROTECT(asRInteger(y)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_atk_component_get_size(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));

  gint width;
  gint height;

  atk_component_get_size(object, &width, &height);


  _result = retByVal(PROTECT(_result), "width", PROTECT(asRInteger(width)), "height", PROTECT(asRInteger(height)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_atk_component_grab_focus(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));

  gboolean ans;

  ans = atk_component_grab_focus(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_component_remove_focus_handler(USER_OBJECT_ s_object, USER_OBJECT_ s_handler_id)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));
  guint handler_id = ((guint)asCNumeric(s_handler_id));


  atk_component_remove_focus_handler(object, handler_id);


  return(_result);
}
 

USER_OBJECT_
S_atk_component_set_extents(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_coord_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));
  AtkCoordType coord_type = ((AtkCoordType)asCEnum(s_coord_type, ATK_TYPE_COORD_TYPE));

  gboolean ans;

  ans = atk_component_set_extents(object, x, y, width, height, coord_type);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_component_set_position(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_coord_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  AtkCoordType coord_type = ((AtkCoordType)asCEnum(s_coord_type, ATK_TYPE_COORD_TYPE));

  gboolean ans;

  ans = atk_component_set_position(object, x, y, coord_type);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_component_set_size(USER_OBJECT_ s_object, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));

  gboolean ans;

  ans = atk_component_set_size(object, width, height);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_component_get_layer(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));

  AtkLayer ans;

  ans = atk_component_get_layer(object);

  _result = asREnum(ans, ATK_TYPE_LAYER);

  return(_result);
}
 

USER_OBJECT_
S_atk_component_get_mdi_zorder(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));

  gint ans;

  ans = atk_component_get_mdi_zorder(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_document_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = atk_document_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_document_get_document_type(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkDocument* object = ATK_DOCUMENT(getPtrValue(s_object));

  const gchar* ans;

  ans = atk_document_get_document_type(object);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_document_get_document(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkDocument* object = ATK_DOCUMENT(getPtrValue(s_object));

  gpointer ans;

  ans = atk_document_get_document(object);

  _result = ans;

  return(_result);
}
 

USER_OBJECT_
S_atk_editable_text_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = atk_editable_text_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_editable_text_set_run_attributes(USER_OBJECT_ s_object, USER_OBJECT_ s_attrib_set, USER_OBJECT_ s_start_offset, USER_OBJECT_ s_end_offset)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkEditableText* object = ATK_EDITABLE_TEXT(getPtrValue(s_object));
  AtkAttributeSet* attrib_set = asCAtkAttributeSet(s_attrib_set);
  gint start_offset = ((gint)asCInteger(s_start_offset));
  gint end_offset = ((gint)asCInteger(s_end_offset));

  gboolean ans;

  ans = atk_editable_text_set_run_attributes(object, attrib_set, start_offset, end_offset);

  _result = asRLogical(ans);
    CLEANUP(atk_attribute_set_free, ((AtkAttributeSet*)attrib_set));;

  return(_result);
}
 

USER_OBJECT_
S_atk_editable_text_set_text_contents(USER_OBJECT_ s_object, USER_OBJECT_ s_string)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkEditableText* object = ATK_EDITABLE_TEXT(getPtrValue(s_object));
  const gchar* string = ((const gchar*)asCString(s_string));


  atk_editable_text_set_text_contents(object, string);


  return(_result);
}
 

USER_OBJECT_
S_atk_editable_text_copy_text(USER_OBJECT_ s_object, USER_OBJECT_ s_start_pos, USER_OBJECT_ s_end_pos)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkEditableText* object = ATK_EDITABLE_TEXT(getPtrValue(s_object));
  gint start_pos = ((gint)asCInteger(s_start_pos));
  gint end_pos = ((gint)asCInteger(s_end_pos));


  atk_editable_text_copy_text(object, start_pos, end_pos);


  return(_result);
}
 

USER_OBJECT_
S_atk_editable_text_cut_text(USER_OBJECT_ s_object, USER_OBJECT_ s_start_pos, USER_OBJECT_ s_end_pos)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkEditableText* object = ATK_EDITABLE_TEXT(getPtrValue(s_object));
  gint start_pos = ((gint)asCInteger(s_start_pos));
  gint end_pos = ((gint)asCInteger(s_end_pos));


  atk_editable_text_cut_text(object, start_pos, end_pos);


  return(_result);
}
 

USER_OBJECT_
S_atk_editable_text_delete_text(USER_OBJECT_ s_object, USER_OBJECT_ s_start_pos, USER_OBJECT_ s_end_pos)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkEditableText* object = ATK_EDITABLE_TEXT(getPtrValue(s_object));
  gint start_pos = ((gint)asCInteger(s_start_pos));
  gint end_pos = ((gint)asCInteger(s_end_pos));


  atk_editable_text_delete_text(object, start_pos, end_pos);


  return(_result);
}
 

USER_OBJECT_
S_atk_editable_text_paste_text(USER_OBJECT_ s_object, USER_OBJECT_ s_position)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkEditableText* object = ATK_EDITABLE_TEXT(getPtrValue(s_object));
  gint position = ((gint)asCInteger(s_position));


  atk_editable_text_paste_text(object, position);


  return(_result);
}
 

USER_OBJECT_
S_atk_gobject_accessible_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = atk_gobject_accessible_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_gobject_accessible_for_object(USER_OBJECT_ s_obj)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GObject* obj = G_OBJECT(getPtrValue(s_obj));

  AtkObject* ans;

  ans = atk_gobject_accessible_for_object(obj);

  _result = toRPointerWithRef(ans, "AtkObject");

  return(_result);
}
 

USER_OBJECT_
S_atk_gobject_accessible_get_object(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkGObjectAccessible* object = ATK_GOBJECT_ACCESSIBLE(getPtrValue(s_object));

  GObject* ans;

  ans = atk_gobject_accessible_get_object(object);

  _result = toRPointerWithRef(ans, "GObject");

  return(_result);
}
 

USER_OBJECT_
S_atk_hyperlink_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = atk_hyperlink_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_hyperlink_get_uri(USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkHyperlink* object = ATK_HYPERLINK(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  gchar* ans;

  ans = atk_hyperlink_get_uri(object, i);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;

  return(_result);
}
 

USER_OBJECT_
S_atk_hyperlink_get_object(USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkHyperlink* object = ATK_HYPERLINK(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  AtkObject* ans;

  ans = atk_hyperlink_get_object(object, i);

  _result = toRPointerWithRef(ans, "AtkObject");

  return(_result);
}
 

USER_OBJECT_
S_atk_hyperlink_get_end_index(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkHyperlink* object = ATK_HYPERLINK(getPtrValue(s_object));

  gint ans;

  ans = atk_hyperlink_get_end_index(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_hyperlink_get_start_index(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkHyperlink* object = ATK_HYPERLINK(getPtrValue(s_object));

  gint ans;

  ans = atk_hyperlink_get_start_index(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_hyperlink_is_valid(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkHyperlink* object = ATK_HYPERLINK(getPtrValue(s_object));

  gboolean ans;

  ans = atk_hyperlink_is_valid(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_hyperlink_get_n_anchors(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkHyperlink* object = ATK_HYPERLINK(getPtrValue(s_object));

  gint ans;

  ans = atk_hyperlink_get_n_anchors(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_hyperlink_is_inline(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkHyperlink* object = ATK_HYPERLINK(getPtrValue(s_object));

  gboolean ans;

  ans = atk_hyperlink_is_inline(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_hyperlink_is_selected_link(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkHyperlink* object = ATK_HYPERLINK(getPtrValue(s_object));

  gboolean ans;

  ans = atk_hyperlink_is_selected_link(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_hypertext_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = atk_hypertext_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_hypertext_get_link(USER_OBJECT_ s_object, USER_OBJECT_ s_link_index)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkHypertext* object = ATK_HYPERTEXT(getPtrValue(s_object));
  gint link_index = ((gint)asCInteger(s_link_index));

  AtkHyperlink* ans;

  ans = atk_hypertext_get_link(object, link_index);

  _result = toRPointerWithRef(ans, "AtkHyperlink");

  return(_result);
}
 

USER_OBJECT_
S_atk_hypertext_get_n_links(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkHypertext* object = ATK_HYPERTEXT(getPtrValue(s_object));

  gint ans;

  ans = atk_hypertext_get_n_links(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_hypertext_get_link_index(USER_OBJECT_ s_object, USER_OBJECT_ s_char_index)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkHypertext* object = ATK_HYPERTEXT(getPtrValue(s_object));
  gint char_index = ((gint)asCInteger(s_char_index));

  gint ans;

  ans = atk_hypertext_get_link_index(object, char_index);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_image_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = atk_image_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_image_get_image_description(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkImage* object = ATK_IMAGE(getPtrValue(s_object));

  const gchar* ans;

  ans = atk_image_get_image_description(object);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_image_get_image_size(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkImage* object = ATK_IMAGE(getPtrValue(s_object));

  gint width;
  gint height;

  atk_image_get_image_size(object, &width, &height);


  _result = retByVal(PROTECT(_result), "width", PROTECT(asRInteger(width)), "height", PROTECT(asRInteger(height)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_atk_image_set_image_description(USER_OBJECT_ s_object, USER_OBJECT_ s_description)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkImage* object = ATK_IMAGE(getPtrValue(s_object));
  const gchar* description = ((const gchar*)asCString(s_description));

  gboolean ans;

  ans = atk_image_set_image_description(object, description);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_image_get_image_position(USER_OBJECT_ s_object, USER_OBJECT_ s_coord_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkImage* object = ATK_IMAGE(getPtrValue(s_object));
  AtkCoordType coord_type = ((AtkCoordType)asCEnum(s_coord_type, ATK_TYPE_COORD_TYPE));

  gint x;
  gint y;

  atk_image_get_image_position(object, &x, &y, coord_type);


  _result = retByVal(PROTECT(_result), "x", PROTECT(asRInteger(x)), "y", PROTECT(asRInteger(y)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_atk_no_op_object_factory_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = atk_no_op_object_factory_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_no_op_object_factory_new(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  AtkObjectFactory* ans;

  ans = atk_no_op_object_factory_new();

  _result = toRPointerWithFinalizer(ans, "AtkObjectFactory", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_atk_no_op_object_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = atk_no_op_object_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_no_op_object_new(USER_OBJECT_ s_obj)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GObject* obj = G_OBJECT(getPtrValue(s_obj));

  AtkObject* ans;

  ans = atk_no_op_object_new(obj);

  _result = toRPointerWithFinalizer(ans, "AtkObject", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_atk_object_factory_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = atk_object_factory_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_object_factory_create_accessible(USER_OBJECT_ s_object, USER_OBJECT_ s_obj)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectFactory* object = ATK_OBJECT_FACTORY(getPtrValue(s_object));
  GObject* obj = G_OBJECT(getPtrValue(s_obj));

  AtkObject* ans;

  ans = atk_object_factory_create_accessible(object, obj);

  _result = toRPointerWithRef(ans, "AtkObject");

  return(_result);
}
 

USER_OBJECT_
S_atk_object_factory_invalidate(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectFactory* object = ATK_OBJECT_FACTORY(getPtrValue(s_object));


  atk_object_factory_invalidate(object);


  return(_result);
}
 

USER_OBJECT_
S_atk_object_factory_get_accessible_type(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectFactory* object = ATK_OBJECT_FACTORY(getPtrValue(s_object));

  GType ans;

  ans = atk_object_factory_get_accessible_type(object);

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_object_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = atk_object_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_implementor_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = atk_implementor_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_implementor_ref_accessible(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkImplementor* object = ATK_IMPLEMENTOR(getPtrValue(s_object));

  AtkObject* ans;

  ans = atk_implementor_ref_accessible(object);

  _result = toRPointerWithRef(ans, "AtkObject");

  return(_result);
}
 

USER_OBJECT_
S_atk_object_get_name(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));

  const gchar* ans;

  ans = atk_object_get_name(object);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_object_get_description(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));

  const gchar* ans;

  ans = atk_object_get_description(object);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_object_get_parent(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));

  AtkObject* ans;

  ans = atk_object_get_parent(object);

  _result = toRPointerWithRef(ans, "AtkObject");

  return(_result);
}
 

USER_OBJECT_
S_atk_object_get_n_accessible_children(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));

  gint ans;

  ans = atk_object_get_n_accessible_children(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_object_ref_accessible_child(USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  AtkObject* ans;

  ans = atk_object_ref_accessible_child(object, i);

  _result = toRPointerWithRef(ans, "AtkObject");

  return(_result);
}
 

USER_OBJECT_
S_atk_object_ref_relation_set(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));

  AtkRelationSet* ans;

  ans = atk_object_ref_relation_set(object);

  _result = toRPointerWithRef(ans, "AtkRelationSet");

  return(_result);
}
 

USER_OBJECT_
S_atk_object_get_role(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));

  AtkRole ans;

  ans = atk_object_get_role(object);

  _result = asREnum(ans, ATK_TYPE_ROLE);

  return(_result);
}
 

USER_OBJECT_
S_atk_object_get_layer(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));

  AtkLayer ans;

  ans = atk_object_get_layer(object);

  _result = asREnum(ans, ATK_TYPE_LAYER);

  return(_result);
}
 

USER_OBJECT_
S_atk_object_get_mdi_zorder(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));

  gint ans;

  ans = atk_object_get_mdi_zorder(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_object_ref_state_set(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));

  AtkStateSet* ans;

  ans = atk_object_ref_state_set(object);

  _result = toRPointerWithRef(ans, "AtkStateSet");

  return(_result);
}
 

USER_OBJECT_
S_atk_object_get_index_in_parent(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));

  gint ans;

  ans = atk_object_get_index_in_parent(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_object_set_name(USER_OBJECT_ s_object, USER_OBJECT_ s_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));
  const gchar* name = ((const gchar*)asCString(s_name));


  atk_object_set_name(object, name);


  return(_result);
}
 

USER_OBJECT_
S_atk_object_set_description(USER_OBJECT_ s_object, USER_OBJECT_ s_description)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));
  const gchar* description = ((const gchar*)asCString(s_description));


  atk_object_set_description(object, description);


  return(_result);
}
 

USER_OBJECT_
S_atk_object_set_parent(USER_OBJECT_ s_object, USER_OBJECT_ s_parent)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));
  AtkObject* parent = ATK_OBJECT(getPtrValue(s_parent));


  atk_object_set_parent(object, parent);


  return(_result);
}
 

USER_OBJECT_
S_atk_object_set_role(USER_OBJECT_ s_object, USER_OBJECT_ s_role)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));
  AtkRole role = ((AtkRole)asCEnum(s_role, ATK_TYPE_ROLE));


  atk_object_set_role(object, role);


  return(_result);
}
 

USER_OBJECT_
S_atk_object_remove_property_change_handler(USER_OBJECT_ s_object, USER_OBJECT_ s_handler_id)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));
  guint handler_id = ((guint)asCNumeric(s_handler_id));


  atk_object_remove_property_change_handler(object, handler_id);


  return(_result);
}
 

USER_OBJECT_
S_atk_object_notify_state_change(USER_OBJECT_ s_object, USER_OBJECT_ s_state, USER_OBJECT_ s_value)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));
  AtkState state = ((AtkState)asCNumeric(s_state));
  gboolean value = ((gboolean)asCLogical(s_value));


  atk_object_notify_state_change(object, state, value);


  return(_result);
}
 

USER_OBJECT_
S_atk_registry_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = atk_registry_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_registry_set_factory_type(USER_OBJECT_ s_object, USER_OBJECT_ s_type, USER_OBJECT_ s_factory_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkRegistry* object = ATK_REGISTRY(getPtrValue(s_object));
  GType type = ((GType)asCGType(s_type));
  GType factory_type = ((GType)asCGType(s_factory_type));


  atk_registry_set_factory_type(object, type, factory_type);


  return(_result);
}
 

USER_OBJECT_
S_atk_registry_get_factory_type(USER_OBJECT_ s_object, USER_OBJECT_ s_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkRegistry* object = ATK_REGISTRY(getPtrValue(s_object));
  GType type = ((GType)asCGType(s_type));

  GType ans;

  ans = atk_registry_get_factory_type(object, type);

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_registry_get_factory(USER_OBJECT_ s_object, USER_OBJECT_ s_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkRegistry* object = ATK_REGISTRY(getPtrValue(s_object));
  GType type = ((GType)asCGType(s_type));

  AtkObjectFactory* ans;

  ans = atk_registry_get_factory(object, type);

  _result = toRPointerWithRef(ans, "AtkObjectFactory");

  return(_result);
}
 

USER_OBJECT_
S_atk_get_default_registry(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  AtkRegistry* ans;

  ans = atk_get_default_registry();

  _result = toRPointerWithRef(ans, "AtkRegistry");

  return(_result);
}
 

USER_OBJECT_
S_atk_relation_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = atk_relation_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_relation_type_register(USER_OBJECT_ s_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const gchar* name = ((const gchar*)asCString(s_name));

  AtkRelationType ans;

  ans = atk_relation_type_register(name);

  _result = asREnum(ans, ATK_TYPE_RELATION_TYPE);

  return(_result);
}
 

USER_OBJECT_
S_atk_relation_type_get_name(USER_OBJECT_ s_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkRelationType type = ((AtkRelationType)asCEnum(s_type, ATK_TYPE_RELATION_TYPE));

  const gchar* ans;

  ans = atk_relation_type_get_name(type);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_relation_type_for_name(USER_OBJECT_ s_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const gchar* name = ((const gchar*)asCString(s_name));

  AtkRelationType ans;

  ans = atk_relation_type_for_name(name);

  _result = asREnum(ans, ATK_TYPE_RELATION_TYPE);

  return(_result);
}
 

USER_OBJECT_
S_atk_relation_new(USER_OBJECT_ s_targets, USER_OBJECT_ s_relationship)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObject** targets = ((AtkObject**)asCArray(s_targets, AtkObject*, getPtrValue));
  gint n_targets = ((gint)GET_LENGTH(s_targets));
  AtkRelationType relationship = ((AtkRelationType)asCEnum(s_relationship, ATK_TYPE_RELATION_TYPE));

  AtkRelation* ans;

  ans = atk_relation_new(targets, n_targets, relationship);

  _result = toRPointerWithFinalizer(ans, "AtkRelation", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_atk_relation_get_relation_type(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkRelation* object = ATK_RELATION(getPtrValue(s_object));

  AtkRelationType ans;

  ans = atk_relation_get_relation_type(object);

  _result = asREnum(ans, ATK_TYPE_RELATION_TYPE);

  return(_result);
}
 

USER_OBJECT_
S_atk_relation_get_target(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkRelation* object = ATK_RELATION(getPtrValue(s_object));

  GPtrArray* ans;

  ans = atk_relation_get_target(object);

  _result = toRPointer(ans, "GPtrArray");

  return(_result);
}
 

USER_OBJECT_
S_atk_relation_add_target(USER_OBJECT_ s_object, USER_OBJECT_ s_target)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkRelation* object = ATK_RELATION(getPtrValue(s_object));
  AtkObject* target = ATK_OBJECT(getPtrValue(s_target));


  atk_relation_add_target(object, target);


  return(_result);
}
 

USER_OBJECT_
S_atk_relation_set_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = atk_relation_set_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_relation_set_new(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  AtkRelationSet* ans;

  ans = atk_relation_set_new();

  _result = toRPointerWithFinalizer(ans, "AtkRelationSet", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_atk_relation_set_contains(USER_OBJECT_ s_object, USER_OBJECT_ s_relationship)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkRelationSet* object = ATK_RELATION_SET(getPtrValue(s_object));
  AtkRelationType relationship = ((AtkRelationType)asCEnum(s_relationship, ATK_TYPE_RELATION_TYPE));

  gboolean ans;

  ans = atk_relation_set_contains(object, relationship);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_relation_set_remove(USER_OBJECT_ s_object, USER_OBJECT_ s_relation)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkRelationSet* object = ATK_RELATION_SET(getPtrValue(s_object));
  AtkRelation* relation = ATK_RELATION(getPtrValue(s_relation));


  atk_relation_set_remove(object, relation);


  return(_result);
}
 

USER_OBJECT_
S_atk_relation_set_add(USER_OBJECT_ s_object, USER_OBJECT_ s_relation)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkRelationSet* object = ATK_RELATION_SET(getPtrValue(s_object));
  AtkRelation* relation = ATK_RELATION(getPtrValue(s_relation));


  atk_relation_set_add(object, relation);


  return(_result);
}
 

USER_OBJECT_
S_atk_relation_set_get_n_relations(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkRelationSet* object = ATK_RELATION_SET(getPtrValue(s_object));

  gint ans;

  ans = atk_relation_set_get_n_relations(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_relation_set_get_relation(USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkRelationSet* object = ATK_RELATION_SET(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  AtkRelation* ans;

  ans = atk_relation_set_get_relation(object, i);

  _result = toRPointerWithRef(ans, "AtkRelation");

  return(_result);
}
 

USER_OBJECT_
S_atk_relation_set_get_relation_by_type(USER_OBJECT_ s_object, USER_OBJECT_ s_relationship)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkRelationSet* object = ATK_RELATION_SET(getPtrValue(s_object));
  AtkRelationType relationship = ((AtkRelationType)asCEnum(s_relationship, ATK_TYPE_RELATION_TYPE));

  AtkRelation* ans;

  ans = atk_relation_set_get_relation_by_type(object, relationship);

  _result = toRPointerWithRef(ans, "AtkRelation");

  return(_result);
}
 

USER_OBJECT_
S_atk_relation_set_add_relation_by_type(USER_OBJECT_ s_object, USER_OBJECT_ s_relationship, USER_OBJECT_ s_target)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkRelationSet* object = ATK_RELATION_SET(getPtrValue(s_object));
  AtkRelationType relationship = ((AtkRelationType)asCEnum(s_relationship, ATK_TYPE_RELATION_TYPE));
  AtkObject* target = ATK_OBJECT(getPtrValue(s_target));


  atk_relation_set_add_relation_by_type(object, relationship, target);


  return(_result);
}
 

USER_OBJECT_
S_atk_selection_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = atk_selection_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_selection_add_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkSelection* object = ATK_SELECTION(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  gboolean ans;

  ans = atk_selection_add_selection(object, i);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_selection_clear_selection(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkSelection* object = ATK_SELECTION(getPtrValue(s_object));

  gboolean ans;

  ans = atk_selection_clear_selection(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_selection_ref_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkSelection* object = ATK_SELECTION(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  AtkObject* ans;

  ans = atk_selection_ref_selection(object, i);

  _result = toRPointerWithRef(ans, "AtkObject");

  return(_result);
}
 

USER_OBJECT_
S_atk_selection_get_selection_count(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkSelection* object = ATK_SELECTION(getPtrValue(s_object));

  gint ans;

  ans = atk_selection_get_selection_count(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_selection_is_child_selected(USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkSelection* object = ATK_SELECTION(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  gboolean ans;

  ans = atk_selection_is_child_selected(object, i);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_selection_remove_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkSelection* object = ATK_SELECTION(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  gboolean ans;

  ans = atk_selection_remove_selection(object, i);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_selection_select_all_selection(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkSelection* object = ATK_SELECTION(getPtrValue(s_object));

  gboolean ans;

  ans = atk_selection_select_all_selection(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_state_type_register(USER_OBJECT_ s_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const gchar* name = ((const gchar*)asCString(s_name));

  AtkStateType ans;

  ans = atk_state_type_register(name);

  _result = asREnum(ans, ATK_TYPE_STATE_TYPE);

  return(_result);
}
 

USER_OBJECT_
S_atk_state_type_get_name(USER_OBJECT_ s_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkStateType type = ((AtkStateType)asCEnum(s_type, ATK_TYPE_STATE_TYPE));

  const gchar* ans;

  ans = atk_state_type_get_name(type);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_state_type_for_name(USER_OBJECT_ s_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const gchar* name = ((const gchar*)asCString(s_name));

  AtkStateType ans;

  ans = atk_state_type_for_name(name);

  _result = asREnum(ans, ATK_TYPE_STATE_TYPE);

  return(_result);
}
 

USER_OBJECT_
S_atk_state_set_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = atk_state_set_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_state_set_new(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  AtkStateSet* ans;

  ans = atk_state_set_new();

  _result = toRPointerWithFinalizer(ans, "AtkStateSet", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_atk_state_set_is_empty(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkStateSet* object = ATK_STATE_SET(getPtrValue(s_object));

  gboolean ans;

  ans = atk_state_set_is_empty(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_state_set_add_state(USER_OBJECT_ s_object, USER_OBJECT_ s_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkStateSet* object = ATK_STATE_SET(getPtrValue(s_object));
  AtkStateType type = ((AtkStateType)asCEnum(s_type, ATK_TYPE_STATE_TYPE));

  gboolean ans;

  ans = atk_state_set_add_state(object, type);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_state_set_add_states(USER_OBJECT_ s_object, USER_OBJECT_ s_types)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkStateSet* object = ATK_STATE_SET(getPtrValue(s_object));
  AtkStateType* types = ((AtkStateType*)asCEnumArray(s_types, AtkStateType, ATK_TYPE_STATE_TYPE));
  gint n_types = ((gint)GET_LENGTH(s_types));


  atk_state_set_add_states(object, types, n_types);


  return(_result);
}
 

USER_OBJECT_
S_atk_state_set_clear_states(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkStateSet* object = ATK_STATE_SET(getPtrValue(s_object));


  atk_state_set_clear_states(object);


  return(_result);
}
 

USER_OBJECT_
S_atk_state_set_contains_state(USER_OBJECT_ s_object, USER_OBJECT_ s_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkStateSet* object = ATK_STATE_SET(getPtrValue(s_object));
  AtkStateType type = ((AtkStateType)asCEnum(s_type, ATK_TYPE_STATE_TYPE));

  gboolean ans;

  ans = atk_state_set_contains_state(object, type);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_state_set_contains_states(USER_OBJECT_ s_object, USER_OBJECT_ s_types)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkStateSet* object = ATK_STATE_SET(getPtrValue(s_object));
  AtkStateType* types = ((AtkStateType*)asCEnumArray(s_types, AtkStateType, ATK_TYPE_STATE_TYPE));
  gint n_types = ((gint)GET_LENGTH(s_types));

  gboolean ans;

  ans = atk_state_set_contains_states(object, types, n_types);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_state_set_remove_state(USER_OBJECT_ s_object, USER_OBJECT_ s_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkStateSet* object = ATK_STATE_SET(getPtrValue(s_object));
  AtkStateType type = ((AtkStateType)asCEnum(s_type, ATK_TYPE_STATE_TYPE));

  gboolean ans;

  ans = atk_state_set_remove_state(object, type);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_state_set_and_sets(USER_OBJECT_ s_object, USER_OBJECT_ s_compare_set)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkStateSet* object = ATK_STATE_SET(getPtrValue(s_object));
  AtkStateSet* compare_set = ATK_STATE_SET(getPtrValue(s_compare_set));

  AtkStateSet* ans;

  ans = atk_state_set_and_sets(object, compare_set);

  _result = toRPointerWithFinalizer(ans, "AtkStateSet", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_atk_state_set_or_sets(USER_OBJECT_ s_object, USER_OBJECT_ s_compare_set)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkStateSet* object = ATK_STATE_SET(getPtrValue(s_object));
  AtkStateSet* compare_set = ATK_STATE_SET(getPtrValue(s_compare_set));

  AtkStateSet* ans;

  ans = atk_state_set_or_sets(object, compare_set);

  _result = toRPointerWithFinalizer(ans, "AtkStateSet", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_atk_state_set_xor_sets(USER_OBJECT_ s_object, USER_OBJECT_ s_compare_set)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkStateSet* object = ATK_STATE_SET(getPtrValue(s_object));
  AtkStateSet* compare_set = ATK_STATE_SET(getPtrValue(s_compare_set));

  AtkStateSet* ans;

  ans = atk_state_set_xor_sets(object, compare_set);

  _result = toRPointerWithFinalizer(ans, "AtkStateSet", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_atk_streamable_content_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = atk_streamable_content_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_streamable_content_get_n_mime_types(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkStreamableContent* object = ATK_STREAMABLE_CONTENT(getPtrValue(s_object));

  gint ans;

  ans = atk_streamable_content_get_n_mime_types(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_streamable_content_get_mime_type(USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkStreamableContent* object = ATK_STREAMABLE_CONTENT(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  const gchar* ans;

  ans = atk_streamable_content_get_mime_type(object, i);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_streamable_content_get_stream(USER_OBJECT_ s_object, USER_OBJECT_ s_mime_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkStreamableContent* object = ATK_STREAMABLE_CONTENT(getPtrValue(s_object));
  const gchar* mime_type = ((const gchar*)asCString(s_mime_type));

  GIOChannel* ans;

  ans = atk_streamable_content_get_stream(object, mime_type);

  _result = toRPointer(ans, "GIOChannel");

  return(_result);
}
 

USER_OBJECT_
S_atk_table_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = atk_table_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_table_ref_at(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));
  gint column = ((gint)asCInteger(s_column));

  AtkObject* ans;

  ans = atk_table_ref_at(object, row, column);

  _result = toRPointerWithRef(ans, "AtkObject");

  return(_result);
}
 

USER_OBJECT_
S_atk_table_get_index_at(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));
  gint column = ((gint)asCInteger(s_column));

  gint ans;

  ans = atk_table_get_index_at(object, row, column);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_table_get_column_at_index(USER_OBJECT_ s_object, USER_OBJECT_ s_index)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint index = ((gint)asCInteger(s_index));

  gint ans;

  ans = atk_table_get_column_at_index(object, index);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_table_get_row_at_index(USER_OBJECT_ s_object, USER_OBJECT_ s_index)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint index = ((gint)asCInteger(s_index));

  gint ans;

  ans = atk_table_get_row_at_index(object, index);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_table_get_n_columns(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));

  gint ans;

  ans = atk_table_get_n_columns(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_table_get_n_rows(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));

  gint ans;

  ans = atk_table_get_n_rows(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_table_get_column_extent_at(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));
  gint column = ((gint)asCInteger(s_column));

  gint ans;

  ans = atk_table_get_column_extent_at(object, row, column);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_table_get_row_extent_at(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));
  gint column = ((gint)asCInteger(s_column));

  gint ans;

  ans = atk_table_get_row_extent_at(object, row, column);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_table_get_caption(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));

  AtkObject* ans;

  ans = atk_table_get_caption(object);

  _result = toRPointerWithRef(ans, "AtkObject");

  return(_result);
}
 

USER_OBJECT_
S_atk_table_get_column_description(USER_OBJECT_ s_object, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint column = ((gint)asCInteger(s_column));

  const gchar* ans;

  ans = atk_table_get_column_description(object, column);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_table_get_column_header(USER_OBJECT_ s_object, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint column = ((gint)asCInteger(s_column));

  AtkObject* ans;

  ans = atk_table_get_column_header(object, column);

  _result = toRPointerWithRef(ans, "AtkObject");

  return(_result);
}
 

USER_OBJECT_
S_atk_table_get_row_description(USER_OBJECT_ s_object, USER_OBJECT_ s_row)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));

  const gchar* ans;

  ans = atk_table_get_row_description(object, row);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_table_get_row_header(USER_OBJECT_ s_object, USER_OBJECT_ s_row)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));

  AtkObject* ans;

  ans = atk_table_get_row_header(object, row);

  _result = toRPointerWithRef(ans, "AtkObject");

  return(_result);
}
 

USER_OBJECT_
S_atk_table_get_summary(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));

  AtkObject* ans;

  ans = atk_table_get_summary(object);

  _result = toRPointerWithRef(ans, "AtkObject");

  return(_result);
}
 

USER_OBJECT_
S_atk_table_set_caption(USER_OBJECT_ s_object, USER_OBJECT_ s_caption)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  AtkObject* caption = ATK_OBJECT(getPtrValue(s_caption));


  atk_table_set_caption(object, caption);


  return(_result);
}
 

USER_OBJECT_
S_atk_table_set_column_description(USER_OBJECT_ s_object, USER_OBJECT_ s_column, USER_OBJECT_ s_description)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint column = ((gint)asCInteger(s_column));
  const gchar* description = ((const gchar*)asCString(s_description));


  atk_table_set_column_description(object, column, description);


  return(_result);
}
 

USER_OBJECT_
S_atk_table_set_column_header(USER_OBJECT_ s_object, USER_OBJECT_ s_column, USER_OBJECT_ s_header)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint column = ((gint)asCInteger(s_column));
  AtkObject* header = ATK_OBJECT(getPtrValue(s_header));


  atk_table_set_column_header(object, column, header);


  return(_result);
}
 

USER_OBJECT_
S_atk_table_set_row_description(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_description)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));
  const gchar* description = ((const gchar*)asCString(s_description));


  atk_table_set_row_description(object, row, description);


  return(_result);
}
 

USER_OBJECT_
S_atk_table_set_row_header(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_header)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));
  AtkObject* header = ATK_OBJECT(getPtrValue(s_header));


  atk_table_set_row_header(object, row, header);


  return(_result);
}
 

USER_OBJECT_
S_atk_table_set_summary(USER_OBJECT_ s_object, USER_OBJECT_ s_accessible)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  AtkObject* accessible = ATK_OBJECT(getPtrValue(s_accessible));


  atk_table_set_summary(object, accessible);


  return(_result);
}
 

USER_OBJECT_
S_atk_table_get_selected_columns(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));

  gint ans;
  gint* selected = NULL;

  ans = atk_table_get_selected_columns(object, &selected);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "selected", PROTECT(asRIntegerArrayWithSize(selected, ans)), NULL);
  UNPROTECT(2);
    CLEANUP(g_free, selected);;

  return(_result);
}
 

USER_OBJECT_
S_atk_table_get_selected_rows(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));

  gint ans;
  gint* selected = NULL;

  ans = atk_table_get_selected_rows(object, &selected);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "selected", PROTECT(asRIntegerArrayWithSize(selected, ans)), NULL);
  UNPROTECT(2);
    CLEANUP(g_free, selected);;

  return(_result);
}
 

USER_OBJECT_
S_atk_table_is_column_selected(USER_OBJECT_ s_object, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint column = ((gint)asCInteger(s_column));

  gboolean ans;

  ans = atk_table_is_column_selected(object, column);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_table_is_row_selected(USER_OBJECT_ s_object, USER_OBJECT_ s_row)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));

  gboolean ans;

  ans = atk_table_is_row_selected(object, row);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_table_is_selected(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));
  gint column = ((gint)asCInteger(s_column));

  gboolean ans;

  ans = atk_table_is_selected(object, row, column);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_table_add_row_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_row)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));

  gboolean ans;

  ans = atk_table_add_row_selection(object, row);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_table_remove_row_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_row)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));

  gboolean ans;

  ans = atk_table_remove_row_selection(object, row);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_table_add_column_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint column = ((gint)asCInteger(s_column));

  gboolean ans;

  ans = atk_table_add_column_selection(object, column);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_table_remove_column_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint column = ((gint)asCInteger(s_column));

  gboolean ans;

  ans = atk_table_remove_column_selection(object, column);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_text_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = atk_text_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_text_get_text(USER_OBJECT_ s_object, USER_OBJECT_ s_start_offset, USER_OBJECT_ s_end_offset)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint start_offset = ((gint)asCInteger(s_start_offset));
  gint end_offset = ((gint)asCInteger(s_end_offset));

  gchar* ans;

  ans = atk_text_get_text(object, start_offset, end_offset);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;

  return(_result);
}
 

USER_OBJECT_
S_atk_text_get_character_at_offset(USER_OBJECT_ s_object, USER_OBJECT_ s_offset)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint offset = ((gint)asCInteger(s_offset));

  gunichar ans;

  ans = atk_text_get_character_at_offset(object, offset);

  _result = asRNumeric(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_text_get_text_after_offset(USER_OBJECT_ s_object, USER_OBJECT_ s_offset, USER_OBJECT_ s_boundary_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint offset = ((gint)asCInteger(s_offset));
  AtkTextBoundary boundary_type = ((AtkTextBoundary)asCEnum(s_boundary_type, ATK_TYPE_TEXT_BOUNDARY));

  gchar* ans;
  gint start_offset;
  gint end_offset;

  ans = atk_text_get_text_after_offset(object, offset, boundary_type, &start_offset, &end_offset);

  _result = asRString(ans);

  _result = retByVal(PROTECT(_result), "start.offset", PROTECT(asRInteger(start_offset)), "end.offset", PROTECT(asRInteger(end_offset)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, ans);;
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_atk_text_get_text_at_offset(USER_OBJECT_ s_object, USER_OBJECT_ s_offset, USER_OBJECT_ s_boundary_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint offset = ((gint)asCInteger(s_offset));
  AtkTextBoundary boundary_type = ((AtkTextBoundary)asCEnum(s_boundary_type, ATK_TYPE_TEXT_BOUNDARY));

  gchar* ans;
  gint start_offset;
  gint end_offset;

  ans = atk_text_get_text_at_offset(object, offset, boundary_type, &start_offset, &end_offset);

  _result = asRString(ans);

  _result = retByVal(PROTECT(_result), "start.offset", PROTECT(asRInteger(start_offset)), "end.offset", PROTECT(asRInteger(end_offset)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, ans);;
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_atk_text_get_text_before_offset(USER_OBJECT_ s_object, USER_OBJECT_ s_offset, USER_OBJECT_ s_boundary_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint offset = ((gint)asCInteger(s_offset));
  AtkTextBoundary boundary_type = ((AtkTextBoundary)asCEnum(s_boundary_type, ATK_TYPE_TEXT_BOUNDARY));

  gchar* ans;
  gint start_offset;
  gint end_offset;

  ans = atk_text_get_text_before_offset(object, offset, boundary_type, &start_offset, &end_offset);

  _result = asRString(ans);

  _result = retByVal(PROTECT(_result), "start.offset", PROTECT(asRInteger(start_offset)), "end.offset", PROTECT(asRInteger(end_offset)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, ans);;
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_atk_text_get_caret_offset(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkText* object = ATK_TEXT(getPtrValue(s_object));

  gint ans;

  ans = atk_text_get_caret_offset(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_text_get_range_extents(USER_OBJECT_ s_object, USER_OBJECT_ s_start_offset, USER_OBJECT_ s_end_offset, USER_OBJECT_ s_coord_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint start_offset = ((gint)asCInteger(s_start_offset));
  gint end_offset = ((gint)asCInteger(s_end_offset));
  AtkCoordType coord_type = ((AtkCoordType)asCEnum(s_coord_type, ATK_TYPE_COORD_TYPE));

  AtkTextRectangle* rect = ((AtkTextRectangle *)g_new0(AtkTextRectangle, 1));

  atk_text_get_range_extents(object, start_offset, end_offset, coord_type, rect);


  _result = retByVal(PROTECT(_result), "rect", PROTECT(asRAtkTextRectangle(rect)), NULL);
  UNPROTECT(2);
    CLEANUP(g_free, rect);;

  return(_result);
}
 

USER_OBJECT_
S_atk_text_get_bounded_ranges(USER_OBJECT_ s_object, USER_OBJECT_ s_rect, USER_OBJECT_ s_coord_type, USER_OBJECT_ s_x_clip_type, USER_OBJECT_ s_y_clip_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  AtkTextRectangle* rect = asCAtkTextRectangle(s_rect);
  AtkCoordType coord_type = ((AtkCoordType)asCEnum(s_coord_type, ATK_TYPE_COORD_TYPE));
  AtkTextClipType x_clip_type = ((AtkTextClipType)asCEnum(s_x_clip_type, ATK_TYPE_TEXT_CLIP_TYPE));
  AtkTextClipType y_clip_type = ((AtkTextClipType)asCEnum(s_y_clip_type, ATK_TYPE_TEXT_CLIP_TYPE));

  AtkTextRange** ans;

  ans = atk_text_get_bounded_ranges(object, rect, coord_type, x_clip_type, y_clip_type);

  _result = asRArray(ans, asRAtkTextRange);
    CLEANUP(atk_text_free_ranges, ans);;

  return(_result);
}
 

USER_OBJECT_
S_atk_text_get_character_extents(USER_OBJECT_ s_object, USER_OBJECT_ s_offset, USER_OBJECT_ s_coords)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint offset = ((gint)asCInteger(s_offset));
  AtkCoordType coords = ((AtkCoordType)asCEnum(s_coords, ATK_TYPE_COORD_TYPE));

  gint x;
  gint y;
  gint width;
  gint height;

  atk_text_get_character_extents(object, offset, &x, &y, &width, &height, coords);


  _result = retByVal(PROTECT(_result), "x", PROTECT(asRInteger(x)), "y", PROTECT(asRInteger(y)), "width", PROTECT(asRInteger(width)), "height", PROTECT(asRInteger(height)), NULL);
  UNPROTECT(5);
  ;
  ;
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_atk_text_get_run_attributes(USER_OBJECT_ s_object, USER_OBJECT_ s_offset)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint offset = ((gint)asCInteger(s_offset));

  AtkAttributeSet* ans;
  gint start_offset;
  gint end_offset;

  ans = atk_text_get_run_attributes(object, offset, &start_offset, &end_offset);

  _result = asRAtkAttributeSet(ans);

  _result = retByVal(PROTECT(_result), "start.offset", PROTECT(asRInteger(start_offset)), "end.offset", PROTECT(asRInteger(end_offset)), NULL);
  UNPROTECT(3);
    CLEANUP(atk_attribute_set_free, ans);;
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_atk_text_get_default_attributes(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkText* object = ATK_TEXT(getPtrValue(s_object));

  AtkAttributeSet* ans;

  ans = atk_text_get_default_attributes(object);

  _result = asRAtkAttributeSet(ans);
    CLEANUP(atk_attribute_set_free, ans);;

  return(_result);
}
 

USER_OBJECT_
S_atk_text_get_character_count(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkText* object = ATK_TEXT(getPtrValue(s_object));

  gint ans;

  ans = atk_text_get_character_count(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_text_get_offset_at_point(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_coords)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  AtkCoordType coords = ((AtkCoordType)asCEnum(s_coords, ATK_TYPE_COORD_TYPE));

  gint ans;

  ans = atk_text_get_offset_at_point(object, x, y, coords);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_text_get_n_selections(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkText* object = ATK_TEXT(getPtrValue(s_object));

  gint ans;

  ans = atk_text_get_n_selections(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_text_get_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_selection_num)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint selection_num = ((gint)asCInteger(s_selection_num));

  gchar* ans;
  gint start_offset;
  gint end_offset;

  ans = atk_text_get_selection(object, selection_num, &start_offset, &end_offset);

  _result = asRString(ans);

  _result = retByVal(PROTECT(_result), "start.offset", PROTECT(asRInteger(start_offset)), "end.offset", PROTECT(asRInteger(end_offset)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, ans);;
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_atk_text_add_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_start_offset, USER_OBJECT_ s_end_offset)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint start_offset = ((gint)asCInteger(s_start_offset));
  gint end_offset = ((gint)asCInteger(s_end_offset));

  gboolean ans;

  ans = atk_text_add_selection(object, start_offset, end_offset);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_text_remove_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_selection_num)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint selection_num = ((gint)asCInteger(s_selection_num));

  gboolean ans;

  ans = atk_text_remove_selection(object, selection_num);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_text_set_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_selection_num, USER_OBJECT_ s_start_offset, USER_OBJECT_ s_end_offset)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint selection_num = ((gint)asCInteger(s_selection_num));
  gint start_offset = ((gint)asCInteger(s_start_offset));
  gint end_offset = ((gint)asCInteger(s_end_offset));

  gboolean ans;

  ans = atk_text_set_selection(object, selection_num, start_offset, end_offset);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_text_set_caret_offset(USER_OBJECT_ s_object, USER_OBJECT_ s_offset)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint offset = ((gint)asCInteger(s_offset));

  gboolean ans;

  ans = atk_text_set_caret_offset(object, offset);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_attribute_set_free(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkAttributeSet* object = asCAtkAttributeSet(s_object);


  atk_attribute_set_free(object);

    CLEANUP(atk_attribute_set_free, ((AtkAttributeSet*)object));;

  return(_result);
}
 

USER_OBJECT_
S_atk_text_attribute_register(USER_OBJECT_ s_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const gchar* name = ((const gchar*)asCString(s_name));

  AtkTextAttribute ans;

  ans = atk_text_attribute_register(name);

  _result = asREnum(ans, ATK_TYPE_TEXT_ATTRIBUTE);

  return(_result);
}
 

USER_OBJECT_
S_atk_text_attribute_get_name(USER_OBJECT_ s_attr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTextAttribute attr = ((AtkTextAttribute)asCEnum(s_attr, ATK_TYPE_TEXT_ATTRIBUTE));

  const gchar* ans;

  ans = atk_text_attribute_get_name(attr);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_text_attribute_for_name(USER_OBJECT_ s_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const gchar* name = ((const gchar*)asCString(s_name));

  AtkTextAttribute ans;

  ans = atk_text_attribute_for_name(name);

  _result = asREnum(ans, ATK_TYPE_TEXT_ATTRIBUTE);

  return(_result);
}
 

USER_OBJECT_
S_atk_text_attribute_get_value(USER_OBJECT_ s_attr, USER_OBJECT_ s_index)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTextAttribute attr = ((AtkTextAttribute)asCEnum(s_attr, ATK_TYPE_TEXT_ATTRIBUTE));
  gint index = ((gint)asCInteger(s_index));

  const gchar* ans;

  ans = atk_text_attribute_get_value(attr, index);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_util_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = atk_util_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_remove_focus_tracker(USER_OBJECT_ s_tracker_id)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  guint tracker_id = ((guint)asCNumeric(s_tracker_id));


  atk_remove_focus_tracker(tracker_id);


  return(_result);
}
 

USER_OBJECT_
S_atk_focus_tracker_notify(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));


  atk_focus_tracker_notify(object);


  return(_result);
}
 

USER_OBJECT_
S_atk_remove_global_event_listener(USER_OBJECT_ s_listener_id)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  guint listener_id = ((guint)asCNumeric(s_listener_id));


  atk_remove_global_event_listener(listener_id);


  return(_result);
}
 

USER_OBJECT_
S_atk_add_key_event_listener(USER_OBJECT_ s_listener, USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkKeySnoopFunc listener = ((AtkKeySnoopFunc)S_AtkKeySnoopFunc);
  R_CallbackData* data = R_createCBData(s_listener, s_data);

  guint ans;

  ans = atk_add_key_event_listener(listener, data);

  _result = asRNumeric(ans);
  R_freeCBData(data);

  return(_result);
}
 

USER_OBJECT_
S_atk_remove_key_event_listener(USER_OBJECT_ s_listener_id)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  guint listener_id = ((guint)asCNumeric(s_listener_id));


  atk_remove_key_event_listener(listener_id);


  return(_result);
}
 

USER_OBJECT_
S_atk_get_root(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  AtkObject* ans;

  ans = atk_get_root();

  _result = toRPointerWithRef(ans, "AtkObject");

  return(_result);
}
 

USER_OBJECT_
S_atk_get_focus_object(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  AtkObject* ans;

  ans = atk_get_focus_object();

  _result = toRPointerWithRef(ans, "AtkObject");

  return(_result);
}
 

USER_OBJECT_
S_atk_get_toolkit_name(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  const gchar* ans;

  ans = atk_get_toolkit_name();

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_get_toolkit_version(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  const gchar* ans;

  ans = atk_get_toolkit_version();

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_value_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = atk_value_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_value_get_current_value(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkValue* object = ATK_VALUE(getPtrValue(s_object));

  GValue* value = ((GValue *)g_new0(GValue, 1));

  atk_value_get_current_value(object, value);


  _result = retByVal(PROTECT(_result), "value", PROTECT(asRGValue(value)), NULL);
  UNPROTECT(2);
    CLEANUP(g_value_unset, value);
  CLEANUP(g_free, value);;

  return(_result);
}
 

USER_OBJECT_
S_atk_value_get_maximum_value(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkValue* object = ATK_VALUE(getPtrValue(s_object));

  GValue* value = ((GValue *)g_new0(GValue, 1));

  atk_value_get_maximum_value(object, value);


  _result = retByVal(PROTECT(_result), "value", PROTECT(asRGValue(value)), NULL);
  UNPROTECT(2);
    CLEANUP(g_value_unset, value);
  CLEANUP(g_free, value);;

  return(_result);
}
 

USER_OBJECT_
S_atk_value_get_minimum_value(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkValue* object = ATK_VALUE(getPtrValue(s_object));

  GValue* value = ((GValue *)g_new0(GValue, 1));

  atk_value_get_minimum_value(object, value);


  _result = retByVal(PROTECT(_result), "value", PROTECT(asRGValue(value)), NULL);
  UNPROTECT(2);
    CLEANUP(g_value_unset, value);
  CLEANUP(g_free, value);;

  return(_result);
}
 

USER_OBJECT_
S_atk_value_set_current_value(USER_OBJECT_ s_object, USER_OBJECT_ s_value)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkValue* object = ATK_VALUE(getPtrValue(s_object));
  const GValue* value = asCGValue(s_value);

  gboolean ans;

  ans = atk_value_set_current_value(object, value);

  _result = asRLogical(ans);
    CLEANUP(g_value_unset, ((GValue*)value));
  CLEANUP(g_free, ((GValue*)value));;

  return(_result);
}
 

USER_OBJECT_
S_atk_role_get_name(USER_OBJECT_ s_role)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkRole role = ((AtkRole)asCEnum(s_role, ATK_TYPE_ROLE));

  const gchar* ans;

  ans = atk_role_get_name(role);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_role_for_name(USER_OBJECT_ s_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const gchar* name = ((const gchar*)asCString(s_name));

  AtkRole ans;

  ans = atk_role_for_name(name);

  _result = asREnum(ans, ATK_TYPE_ROLE);

  return(_result);
}
 

USER_OBJECT_
S_atk_role_register(USER_OBJECT_ s_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const gchar* name = ((const gchar*)asCString(s_name));

  AtkRole ans;

  ans = atk_role_register(name);

  _result = asREnum(ans, ATK_TYPE_ROLE);

  return(_result);
}
 

USER_OBJECT_
S_atk_object_initialize(USER_OBJECT_ s_object, USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));
  gpointer data = ((gpointer)asCGenericData(s_data));


  atk_object_initialize(object, data);


  return(_result);
}
 

USER_OBJECT_
S_atk_object_add_relationship(USER_OBJECT_ s_object, USER_OBJECT_ s_relationship, USER_OBJECT_ s_target)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));
  AtkRelationType relationship = ((AtkRelationType)asCEnum(s_relationship, ATK_TYPE_RELATION_TYPE));
  AtkObject* target = ATK_OBJECT(getPtrValue(s_target));

  gboolean ans;

  ans = atk_object_add_relationship(object, relationship, target);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_object_remove_relationship(USER_OBJECT_ s_object, USER_OBJECT_ s_relationship, USER_OBJECT_ s_target)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));
  AtkRelationType relationship = ((AtkRelationType)asCEnum(s_relationship, ATK_TYPE_RELATION_TYPE));
  AtkObject* target = ATK_OBJECT(getPtrValue(s_target));

  gboolean ans;

  ans = atk_object_remove_relationship(object, relationship, target);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_role_get_localized_name(USER_OBJECT_ s_role)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkRole role = ((AtkRole)asCEnum(s_role, ATK_TYPE_ROLE));

  const gchar* ans;

  ans = atk_role_get_localized_name(role);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_atk_document_get_locale(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if ATK_CHECK_VERSION(1, 11, 0)
  AtkDocument* object = ATK_DOCUMENT(getPtrValue(s_object));

  const gchar* ans;

  ans = atk_document_get_locale(object);

  _result = asRString(ans);
#else
  error("atk_document_get_locale exists only in Atk >= 1.11.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_atk_document_get_attributes(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if ATK_CHECK_VERSION(1, 11, 0)
  AtkDocument* object = ATK_DOCUMENT(getPtrValue(s_object));

  AtkAttributeSet* ans;

  ans = atk_document_get_attributes(object);

  _result = asRAtkAttributeSet(ans);
#else
  error("atk_document_get_attributes exists only in Atk >= 1.11.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_atk_document_get_attribute_value(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if ATK_CHECK_VERSION(1, 11, 0)
  AtkDocument* object = ATK_DOCUMENT(getPtrValue(s_object));
  const gchar* attribute_name = ((const gchar*)asCString(s_attribute_name));

  const gchar* ans;

  ans = atk_document_get_attribute_value(object, attribute_name);

  _result = asRString(ans);
#else
  error("atk_document_get_attribute_value exists only in Atk >= 1.11.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_atk_document_set_attribute_value(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute_name, USER_OBJECT_ s_attribute_value)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if ATK_CHECK_VERSION(1, 11, 0)
  AtkDocument* object = ATK_DOCUMENT(getPtrValue(s_object));
  const gchar* attribute_name = ((const gchar*)asCString(s_attribute_name));
  const gchar* attribute_value = ((const gchar*)asCString(s_attribute_value));

  gboolean ans;

  ans = atk_document_set_attribute_value(object, attribute_name, attribute_value);

  _result = asRLogical(ans);
#else
  error("atk_document_set_attribute_value exists only in Atk >= 1.11.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_atk_component_get_alpha(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if ATK_CHECK_VERSION(1, 11, 0)
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));

  gdouble ans;

  ans = atk_component_get_alpha(object);

  _result = asRNumeric(ans);
#else
  error("atk_component_get_alpha exists only in Atk >= 1.11.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_atk_image_get_image_locale(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if ATK_CHECK_VERSION(1, 11, 0)
  AtkImage* object = ATK_IMAGE(getPtrValue(s_object));

  const gchar* ans;

  ans = atk_image_get_image_locale(object);

  _result = asRString(ans);
#else
  error("atk_image_get_image_locale exists only in Atk >= 1.11.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_atk_object_get_attributes(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if ATK_CHECK_VERSION(1, 11, 0)
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));

  AtkAttributeSet* ans;

  ans = atk_object_get_attributes(object);

  _result = asRAtkAttributeSet(ans);
#else
  error("atk_object_get_attributes exists only in Atk >= 1.11.0");
#endif

  return(_result);
}
 

