#ifndef S_LIBGLADE_FUNCS_H
#define S_LIBGLADE_FUNCS_H
#include <RGtk2/RSCommon.h>

  USER_OBJECT_
S_glade_require(USER_OBJECT_ s_library); 

  USER_OBJECT_
S_glade_provide(USER_OBJECT_ s_library); 

  USER_OBJECT_
S_glade_xml_get_type(void); 

  USER_OBJECT_
S_glade_xml_new(USER_OBJECT_ s_fname, USER_OBJECT_ s_root, USER_OBJECT_ s_domain); 

  USER_OBJECT_
S_glade_xml_new_from_buffer(USER_OBJECT_ s_buffer, USER_OBJECT_ s_size, USER_OBJECT_ s_root, USER_OBJECT_ s_domain); 

  USER_OBJECT_
S_glade_xml_signal_connect_full(USER_OBJECT_ s_object, USER_OBJECT_ s_handler_name, USER_OBJECT_ s_func, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_glade_xml_signal_autoconnect_full(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_glade_xml_get_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_name); 

  USER_OBJECT_
S_glade_xml_get_widget_prefix(USER_OBJECT_ s_object, USER_OBJECT_ s_name); 

  USER_OBJECT_
S_glade_get_widget_name(USER_OBJECT_ s_widget); 

  USER_OBJECT_
S_glade_get_widget_tree(USER_OBJECT_ s_widget); 

  USER_OBJECT_
S_glade_set_custom_handler(USER_OBJECT_ s_handler, USER_OBJECT_ s_user_data); 

#endif
