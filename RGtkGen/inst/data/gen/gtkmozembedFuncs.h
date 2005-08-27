#ifndef S_GTKMOZEMBED_FUNCS_H
#define S_GTKMOZEMBED_FUNCS_H
	USER_OBJECT_
S_gtk_moz_embed_get_type(); 

	USER_OBJECT_
S_gtk_moz_embed_new(); 

	USER_OBJECT_
S_gtk_moz_embed_push_startup(); 

	USER_OBJECT_
S_gtk_moz_embed_pop_startup(); 

	USER_OBJECT_
S_gtk_moz_embed_set_comp_path(USER_OBJECT_ s_aPath); 

	USER_OBJECT_
S_gtk_moz_embed_set_profile_path(USER_OBJECT_ s_aDir, USER_OBJECT_ s_aName); 

	USER_OBJECT_
S_gtk_moz_embed_load_url(USER_OBJECT_ s_object, USER_OBJECT_ s_url); 

	USER_OBJECT_
S_gtk_moz_embed_stop_load(USER_OBJECT_ s_object); 

	USER_OBJECT_
S_gtk_moz_embed_can_go_back(USER_OBJECT_ s_object); 

	USER_OBJECT_
S_gtk_moz_embed_can_go_forward(USER_OBJECT_ s_object); 

	USER_OBJECT_
S_gtk_moz_embed_go_back(USER_OBJECT_ s_object); 

	USER_OBJECT_
S_gtk_moz_embed_go_forward(USER_OBJECT_ s_object); 

	USER_OBJECT_
S_gtk_moz_embed_render_data(USER_OBJECT_ s_object, USER_OBJECT_ s_data, USER_OBJECT_ s_len, USER_OBJECT_ s_base_uri, USER_OBJECT_ s_mime_type); 

	USER_OBJECT_
S_gtk_moz_embed_open_stream(USER_OBJECT_ s_object, USER_OBJECT_ s_base_uri, USER_OBJECT_ s_mime_type); 

	USER_OBJECT_
S_gtk_moz_embed_append_data(USER_OBJECT_ s_object, USER_OBJECT_ s_data, USER_OBJECT_ s_len); 

	USER_OBJECT_
S_gtk_moz_embed_close_stream(USER_OBJECT_ s_object); 

	USER_OBJECT_
S_gtk_moz_embed_get_link_message(USER_OBJECT_ s_object); 

	USER_OBJECT_
S_gtk_moz_embed_get_js_status(USER_OBJECT_ s_object); 

	USER_OBJECT_
S_gtk_moz_embed_get_title(USER_OBJECT_ s_object); 

	USER_OBJECT_
S_gtk_moz_embed_get_location(USER_OBJECT_ s_object); 

	USER_OBJECT_
S_gtk_moz_embed_reload(USER_OBJECT_ s_object, USER_OBJECT_ s_flags); 

	USER_OBJECT_
S_gtk_moz_embed_set_chrome_mask(USER_OBJECT_ s_object, USER_OBJECT_ s_flags); 

	USER_OBJECT_
S_gtk_moz_embed_get_chrome_mask(USER_OBJECT_ s_object); 

	USER_OBJECT_
S_gtk_moz_embed_single_get(); 

#endif /* S_GTK_FUNCS_H */ 
