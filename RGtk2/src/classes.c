#include "RGtk2.h"
#include "conversion.h"

static
void
S_gobject_finalize(GObject *o)
{
  GTypeQuery query;
  GType type = G_OBJECT_TYPE(o);
  GObjectClass *parent = g_type_class_peek(g_type_parent(type));
  
  g_type_query(type, &query);
  R_ReleaseObject(G_STRUCT_MEMBER(SEXP, g_type_class_peek(type), query.class_size));
  
  if (parent->finalize)
    parent->finalize(o);
}

void
S_gobject_class_init(GObjectClass *c)
{
  c->finalize = S_gobject_finalize;
}

USER_OBJECT_
S_gobject_class_new(USER_OBJECT_ s_name, USER_OBJECT_ s_parent, USER_OBJECT s_interfaces, 
  USER_OBJECT_ s_class_init_sym, USER_OBJECT_ s_interface_init_syms, USER_OBJECT_ s_def)
{
  GTypeQuery query;
  GTypeInfo type_info = {0, };
  GInterfaceInfo interface_info = {0, };
  GType new_type, parent_type = g_type_from_name(asCString(s_parent));
  gint i;
  
  R_PreserveObject(s_def);
  
  g_type_query(parent_type, &query);
  
  type_info.class_size = query.class_size + sizeof(SEXP);
  type_info.class_init = getPointer(s_class_init_sym);
  type_info.class_data = s_def;
  type_info.instance_size = query.instance_size;
  /* to call some "initialize" function */
  /*type_info.instance_init = S_class_instance_init;*/
  
  new_type = g_type_register_static(parent_type, asCString(s_name), &type_info, 0);
  
  interface_info.interface_data = s_def;
  for (i = 0; i < GET_LENGTH(s_interfaces); i++) {
    interface_info.instance_init = getPointer(VECTOR_ELT(s_interface_init_syms, i));
    g_type_add_interface_static(new_type, 
      g_type_from_name(asCString(STRING_ELT(s_interfaces, i))), &interface_info);
  }
  
  return asRGType(new_type);
}
