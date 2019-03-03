#include "RGtk2/gtkClasses.h"
static SEXP S_GtkAboutDialog_symbol;
void
S_gtk_about_dialog_class_init(GtkAboutDialogClass * c, SEXP e)
{
  SEXP s;

  S_GtkAboutDialog_symbol = install("GtkAboutDialog");
  s = PROTECT(findVar(S_GtkAboutDialog_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkAboutDialogClass)) = e;

  S_gtk_dialog_class_init(((GtkDialogClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkAccelGroup_symbol;

static void
S_virtual_gtk_accel_group_accel_changed(GtkAccelGroup* s_object, guint s_keyval, GdkModifierType s_modifier, GClosure* s_accel_closure)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkAccelGroup_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkAccelGroup")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_keyval));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_modifier, GDK_TYPE_MODIFIER_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGClosure(s_accel_closure));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_accel_group_class_init(GtkAccelGroupClass * c, SEXP e)
{
  SEXP s;

  S_GtkAccelGroup_symbol = install("GtkAccelGroup");
  s = PROTECT(findVar(S_GtkAccelGroup_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkAccelGroupClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->accel_changed = S_virtual_gtk_accel_group_accel_changed;
}
USER_OBJECT_
S_gtk_accel_group_class_accel_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_keyval, USER_OBJECT_ s_modifier, USER_OBJECT_ s_accel_closure)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkAccelGroupClass* object_class = ((GtkAccelGroupClass*)getPtrValue(s_object_class));
  GtkAccelGroup* object = GTK_ACCEL_GROUP(getPtrValue(s_object));
  guint keyval = ((guint)asCNumeric(s_keyval));
  GdkModifierType modifier = ((GdkModifierType)asCFlag(s_modifier, GDK_TYPE_MODIFIER_TYPE));
  GClosure* accel_closure = asCGClosure(s_accel_closure);


  object_class->accel_changed(object, keyval, modifier, accel_closure);


  return(_result);
}
 

static SEXP S_GtkAccelLabel_symbol;
void
S_gtk_accel_label_class_init(GtkAccelLabelClass * c, SEXP e)
{
  SEXP s;

  S_GtkAccelLabel_symbol = install("GtkAccelLabel");
  s = PROTECT(findVar(S_GtkAccelLabel_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkAccelLabelClass)) = e;

  S_gtk_label_class_init(((GtkLabelClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkAccessible_symbol;

static void
S_virtual_gtk_accessible_connect_widget_destroyed(GtkAccessible* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkAccessible_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkAccessible")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_accessible_class_init(GtkAccessibleClass * c, SEXP e)
{
  SEXP s;

  S_GtkAccessible_symbol = install("GtkAccessible");
  s = PROTECT(findVar(S_GtkAccessible_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkAccessibleClass)) = e;

  S_atk_object_class_init(((AtkObjectClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->connect_widget_destroyed = S_virtual_gtk_accessible_connect_widget_destroyed;
}
USER_OBJECT_
S_gtk_accessible_class_connect_widget_destroyed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkAccessibleClass* object_class = ((GtkAccessibleClass*)getPtrValue(s_object_class));
  GtkAccessible* object = GTK_ACCESSIBLE(getPtrValue(s_object));


  object_class->connect_widget_destroyed(object);


  return(_result);
}
 

static SEXP S_GtkAction_symbol;

static void
S_virtual_gtk_action_activate(GtkAction* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkAction_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkAction")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_action_connect_proxy(GtkAction* s_object, GtkWidget* s_proxy)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkAction_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkAction")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_proxy, "GtkWidget"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GtkWidget*
S_virtual_gtk_action_create_menu_item(GtkAction* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkAction_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkAction")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GtkWidget*)0));
  return(GTK_WIDGET(getPtrValue(s_ans)));
}

static GtkWidget*
S_virtual_gtk_action_create_tool_item(GtkAction* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkAction_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkAction")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GtkWidget*)0));
  return(GTK_WIDGET(getPtrValue(s_ans)));
}

static void
S_virtual_gtk_action_disconnect_proxy(GtkAction* s_object, GtkWidget* s_proxy)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkAction_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkAction")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_proxy, "GtkWidget"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_action_class_init(GtkActionClass * c, SEXP e)
{
  SEXP s;

  S_GtkAction_symbol = install("GtkAction");
  s = PROTECT(findVar(S_GtkAction_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkActionClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->activate = S_virtual_gtk_action_activate;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->connect_proxy = S_virtual_gtk_action_connect_proxy;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->create_menu_item = S_virtual_gtk_action_create_menu_item;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->create_tool_item = S_virtual_gtk_action_create_tool_item;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->disconnect_proxy = S_virtual_gtk_action_disconnect_proxy;
}
USER_OBJECT_
S_gtk_action_class_activate(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkActionClass* object_class = ((GtkActionClass*)getPtrValue(s_object_class));
  GtkAction* object = GTK_ACTION(getPtrValue(s_object));


  object_class->activate(object);


  return(_result);
}

USER_OBJECT_
S_gtk_action_class_connect_proxy(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_proxy)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkActionClass* object_class = ((GtkActionClass*)getPtrValue(s_object_class));
  GtkAction* object = GTK_ACTION(getPtrValue(s_object));
  GtkWidget* proxy = GTK_WIDGET(getPtrValue(s_proxy));


  object_class->connect_proxy(object, proxy);


  return(_result);
}

USER_OBJECT_
S_gtk_action_class_create_menu_item(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkActionClass* object_class = ((GtkActionClass*)getPtrValue(s_object_class));
  GtkAction* object = GTK_ACTION(getPtrValue(s_object));

  GtkWidget* ans;

  ans = object_class->create_menu_item(object);

  _result = toRPointerWithSink(ans, "GtkWidget");

  return(_result);
}

USER_OBJECT_
S_gtk_action_class_create_tool_item(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkActionClass* object_class = ((GtkActionClass*)getPtrValue(s_object_class));
  GtkAction* object = GTK_ACTION(getPtrValue(s_object));

  GtkWidget* ans;

  ans = object_class->create_tool_item(object);

  _result = toRPointerWithSink(ans, "GtkWidget");

  return(_result);
}

USER_OBJECT_
S_gtk_action_class_disconnect_proxy(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_proxy)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkActionClass* object_class = ((GtkActionClass*)getPtrValue(s_object_class));
  GtkAction* object = GTK_ACTION(getPtrValue(s_object));
  GtkWidget* proxy = GTK_WIDGET(getPtrValue(s_proxy));


  object_class->disconnect_proxy(object, proxy);


  return(_result);
}
 

static SEXP S_GtkActionGroup_symbol;

static GtkAction*
S_virtual_gtk_action_group_get_action(GtkActionGroup* s_object, const gchar* s_action_name)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkActionGroup_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkActionGroup")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_action_name));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GtkAction*)0));
  return(GTK_ACTION(getPtrValue(s_ans)));
}
void
S_gtk_action_group_class_init(GtkActionGroupClass * c, SEXP e)
{
  SEXP s;

  S_GtkActionGroup_symbol = install("GtkActionGroup");
  s = PROTECT(findVar(S_GtkActionGroup_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkActionGroupClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_action = S_virtual_gtk_action_group_get_action;
}
USER_OBJECT_
S_gtk_action_group_class_get_action(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_action_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkActionGroupClass* object_class = ((GtkActionGroupClass*)getPtrValue(s_object_class));
  GtkActionGroup* object = GTK_ACTION_GROUP(getPtrValue(s_object));
  const gchar* action_name = ((const gchar*)asCString(s_action_name));

  GtkAction* ans;

  ans = object_class->get_action(object, action_name);

  _result = toRPointerWithRef(ans, "GtkAction");

  return(_result);
}
 

static SEXP S_GtkAdjustment_symbol;

static void
S_virtual_gtk_adjustment_changed(GtkAdjustment* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkAdjustment_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkAdjustment")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_adjustment_value_changed(GtkAdjustment* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkAdjustment_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkAdjustment")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_adjustment_class_init(GtkAdjustmentClass * c, SEXP e)
{
  SEXP s;

  S_GtkAdjustment_symbol = install("GtkAdjustment");
  s = PROTECT(findVar(S_GtkAdjustment_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkAdjustmentClass)) = e;

  S_gtk_object_class_init(((GtkObjectClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->changed = S_virtual_gtk_adjustment_changed;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->value_changed = S_virtual_gtk_adjustment_value_changed;
}
USER_OBJECT_
S_gtk_adjustment_class_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkAdjustmentClass* object_class = ((GtkAdjustmentClass*)getPtrValue(s_object_class));
  GtkAdjustment* object = GTK_ADJUSTMENT(getPtrValue(s_object));


  object_class->changed(object);


  return(_result);
}

USER_OBJECT_
S_gtk_adjustment_class_value_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkAdjustmentClass* object_class = ((GtkAdjustmentClass*)getPtrValue(s_object_class));
  GtkAdjustment* object = GTK_ADJUSTMENT(getPtrValue(s_object));


  object_class->value_changed(object);


  return(_result);
}
 

static SEXP S_GtkAlignment_symbol;
void
S_gtk_alignment_class_init(GtkAlignmentClass * c, SEXP e)
{
  SEXP s;

  S_GtkAlignment_symbol = install("GtkAlignment");
  s = PROTECT(findVar(S_GtkAlignment_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkAlignmentClass)) = e;

  S_gtk_bin_class_init(((GtkBinClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkArrow_symbol;
void
S_gtk_arrow_class_init(GtkArrowClass * c, SEXP e)
{
  SEXP s;

  S_GtkArrow_symbol = install("GtkArrow");
  s = PROTECT(findVar(S_GtkArrow_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkArrowClass)) = e;

  S_gtk_misc_class_init(((GtkMiscClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkAspectFrame_symbol;
void
S_gtk_aspect_frame_class_init(GtkAspectFrameClass * c, SEXP e)
{
  SEXP s;

  S_GtkAspectFrame_symbol = install("GtkAspectFrame");
  s = PROTECT(findVar(S_GtkAspectFrame_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkAspectFrameClass)) = e;

  S_gtk_frame_class_init(((GtkFrameClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkBin_symbol;
void
S_gtk_bin_class_init(GtkBinClass * c, SEXP e)
{
  SEXP s;

  S_GtkBin_symbol = install("GtkBin");
  s = PROTECT(findVar(S_GtkBin_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkBinClass)) = e;

  S_gtk_container_class_init(((GtkContainerClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkBox_symbol;
void
S_gtk_box_class_init(GtkBoxClass * c, SEXP e)
{
  SEXP s;

  S_GtkBox_symbol = install("GtkBox");
  s = PROTECT(findVar(S_GtkBox_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkBoxClass)) = e;

  S_gtk_container_class_init(((GtkContainerClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkButton_symbol;

static void
S_virtual_gtk_button_pressed(GtkButton* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkButton_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkButton")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_button_released(GtkButton* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkButton_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkButton")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_button_clicked(GtkButton* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkButton_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkButton")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_button_enter(GtkButton* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkButton_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkButton")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_button_leave(GtkButton* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkButton_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkButton")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_button_activate(GtkButton* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkButton_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkButton")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_button_class_init(GtkButtonClass * c, SEXP e)
{
  SEXP s;

  S_GtkButton_symbol = install("GtkButton");
  s = PROTECT(findVar(S_GtkButton_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkButtonClass)) = e;

  S_gtk_bin_class_init(((GtkBinClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->pressed = S_virtual_gtk_button_pressed;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->released = S_virtual_gtk_button_released;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->clicked = S_virtual_gtk_button_clicked;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->enter = S_virtual_gtk_button_enter;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->leave = S_virtual_gtk_button_leave;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->activate = S_virtual_gtk_button_activate;
}
USER_OBJECT_
S_gtk_button_class_pressed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkButtonClass* object_class = ((GtkButtonClass*)getPtrValue(s_object_class));
  GtkButton* object = GTK_BUTTON(getPtrValue(s_object));


  object_class->pressed(object);


  return(_result);
}

USER_OBJECT_
S_gtk_button_class_released(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkButtonClass* object_class = ((GtkButtonClass*)getPtrValue(s_object_class));
  GtkButton* object = GTK_BUTTON(getPtrValue(s_object));


  object_class->released(object);


  return(_result);
}

USER_OBJECT_
S_gtk_button_class_clicked(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkButtonClass* object_class = ((GtkButtonClass*)getPtrValue(s_object_class));
  GtkButton* object = GTK_BUTTON(getPtrValue(s_object));


  object_class->clicked(object);


  return(_result);
}

USER_OBJECT_
S_gtk_button_class_enter(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkButtonClass* object_class = ((GtkButtonClass*)getPtrValue(s_object_class));
  GtkButton* object = GTK_BUTTON(getPtrValue(s_object));


  object_class->enter(object);


  return(_result);
}

USER_OBJECT_
S_gtk_button_class_leave(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkButtonClass* object_class = ((GtkButtonClass*)getPtrValue(s_object_class));
  GtkButton* object = GTK_BUTTON(getPtrValue(s_object));


  object_class->leave(object);


  return(_result);
}

USER_OBJECT_
S_gtk_button_class_activate(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkButtonClass* object_class = ((GtkButtonClass*)getPtrValue(s_object_class));
  GtkButton* object = GTK_BUTTON(getPtrValue(s_object));


  object_class->activate(object);


  return(_result);
}
 

static SEXP S_GtkButtonBox_symbol;
void
S_gtk_button_box_class_init(GtkButtonBoxClass * c, SEXP e)
{
  SEXP s;

  S_GtkButtonBox_symbol = install("GtkButtonBox");
  s = PROTECT(findVar(S_GtkButtonBox_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkButtonBoxClass)) = e;

  S_gtk_box_class_init(((GtkBoxClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkCalendar_symbol;

static void
S_virtual_gtk_calendar_month_changed(GtkCalendar* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCalendar_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCalendar")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_calendar_day_selected(GtkCalendar* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCalendar_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCalendar")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_calendar_day_selected_double_click(GtkCalendar* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCalendar_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCalendar")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_calendar_prev_month(GtkCalendar* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCalendar_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCalendar")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_calendar_next_month(GtkCalendar* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCalendar_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCalendar")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_calendar_prev_year(GtkCalendar* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCalendar_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCalendar")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_calendar_next_year(GtkCalendar* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCalendar_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCalendar")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_calendar_class_init(GtkCalendarClass * c, SEXP e)
{
  SEXP s;

  S_GtkCalendar_symbol = install("GtkCalendar");
  s = PROTECT(findVar(S_GtkCalendar_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkCalendarClass)) = e;

  S_gtk_widget_class_init(((GtkWidgetClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->month_changed = S_virtual_gtk_calendar_month_changed;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->day_selected = S_virtual_gtk_calendar_day_selected;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->day_selected_double_click = S_virtual_gtk_calendar_day_selected_double_click;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->prev_month = S_virtual_gtk_calendar_prev_month;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->next_month = S_virtual_gtk_calendar_next_month;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->prev_year = S_virtual_gtk_calendar_prev_year;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->next_year = S_virtual_gtk_calendar_next_year;
}
USER_OBJECT_
S_gtk_calendar_class_month_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCalendarClass* object_class = ((GtkCalendarClass*)getPtrValue(s_object_class));
  GtkCalendar* object = GTK_CALENDAR(getPtrValue(s_object));


  object_class->month_changed(object);


  return(_result);
}

USER_OBJECT_
S_gtk_calendar_class_day_selected(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCalendarClass* object_class = ((GtkCalendarClass*)getPtrValue(s_object_class));
  GtkCalendar* object = GTK_CALENDAR(getPtrValue(s_object));


  object_class->day_selected(object);


  return(_result);
}

USER_OBJECT_
S_gtk_calendar_class_day_selected_double_click(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCalendarClass* object_class = ((GtkCalendarClass*)getPtrValue(s_object_class));
  GtkCalendar* object = GTK_CALENDAR(getPtrValue(s_object));


  object_class->day_selected_double_click(object);


  return(_result);
}

USER_OBJECT_
S_gtk_calendar_class_prev_month(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCalendarClass* object_class = ((GtkCalendarClass*)getPtrValue(s_object_class));
  GtkCalendar* object = GTK_CALENDAR(getPtrValue(s_object));


  object_class->prev_month(object);


  return(_result);
}

USER_OBJECT_
S_gtk_calendar_class_next_month(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCalendarClass* object_class = ((GtkCalendarClass*)getPtrValue(s_object_class));
  GtkCalendar* object = GTK_CALENDAR(getPtrValue(s_object));


  object_class->next_month(object);


  return(_result);
}

USER_OBJECT_
S_gtk_calendar_class_prev_year(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCalendarClass* object_class = ((GtkCalendarClass*)getPtrValue(s_object_class));
  GtkCalendar* object = GTK_CALENDAR(getPtrValue(s_object));


  object_class->prev_year(object);


  return(_result);
}

USER_OBJECT_
S_gtk_calendar_class_next_year(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCalendarClass* object_class = ((GtkCalendarClass*)getPtrValue(s_object_class));
  GtkCalendar* object = GTK_CALENDAR(getPtrValue(s_object));


  object_class->next_year(object);


  return(_result);
}
 

static SEXP S_GtkCellRenderer_symbol;

static void
S_virtual_gtk_cell_renderer_get_size(GtkCellRenderer* s_object, GtkWidget* s_widget, GdkRectangle* s_cell_area, gint* s_x_offset, gint* s_y_offset, gint* s_width, gint* s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCellRenderer_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCellRenderer")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_cell_area));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
  *s_x_offset = ((gint)asCInteger(VECTOR_ELT(s_ans, 0)));
  *s_y_offset = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
  *s_width = ((gint)asCInteger(VECTOR_ELT(s_ans, 2)));
  *s_height = ((gint)asCInteger(VECTOR_ELT(s_ans, 3)));
}

static void
S_virtual_gtk_cell_renderer_render(GtkCellRenderer* s_object, GdkDrawable* s_window, GtkWidget* s_widget, GdkRectangle* s_background_area, GdkRectangle* s_cell_area, GdkRectangle* s_expose_area, GtkCellRendererState s_flags)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 8));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCellRenderer_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCellRenderer")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_window, "GdkDrawable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_background_area));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_cell_area));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_expose_area));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, GTK_TYPE_CELL_RENDERER_STATE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gtk_cell_renderer_activate(GtkCellRenderer* s_object, GdkEvent* s_event, GtkWidget* s_widget, const gchar* s_path, GdkRectangle* s_background_area, GdkRectangle* s_cell_area, GtkCellRendererState s_flags)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 8));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCellRenderer_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCellRenderer")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_path));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_background_area));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_cell_area));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, GTK_TYPE_CELL_RENDERER_STATE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static void
S_virtual_gtk_cell_renderer_editing_canceled(GtkCellRenderer* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCellRenderer_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCellRenderer")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_cell_renderer_editing_started(GtkCellRenderer* s_object, GtkCellEditable* s_editable, const gchar* s_path)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCellRenderer_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCellRenderer")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_editable, "GtkCellEditable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_path));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GtkCellEditable*
S_virtual_gtk_cell_renderer_start_editing(GtkCellRenderer* s_object, GdkEvent* s_event, GtkWidget* s_widget, const gchar* s_path, GdkRectangle* s_background_area, GdkRectangle* s_cell_area, GtkCellRendererState s_flags)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 8));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCellRenderer_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCellRenderer")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_path));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_background_area));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_cell_area));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, GTK_TYPE_CELL_RENDERER_STATE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GtkCellEditable*)0));
  return(GTK_CELL_EDITABLE(getPtrValue(s_ans)));
}
void
S_gtk_cell_renderer_class_init(GtkCellRendererClass * c, SEXP e)
{
  SEXP s;

  S_GtkCellRenderer_symbol = install("GtkCellRenderer");
  s = PROTECT(findVar(S_GtkCellRenderer_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkCellRendererClass)) = e;

  S_gtk_object_class_init(((GtkObjectClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_size = S_virtual_gtk_cell_renderer_get_size;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->render = S_virtual_gtk_cell_renderer_render;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->activate = S_virtual_gtk_cell_renderer_activate;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->editing_canceled = S_virtual_gtk_cell_renderer_editing_canceled;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->editing_started = S_virtual_gtk_cell_renderer_editing_started;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->start_editing = S_virtual_gtk_cell_renderer_start_editing;
}
USER_OBJECT_
S_gtk_cell_renderer_class_get_size(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_widget, USER_OBJECT_ s_cell_area)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCellRendererClass* object_class = ((GtkCellRendererClass*)getPtrValue(s_object_class));
  GtkCellRenderer* object = GTK_CELL_RENDERER(getPtrValue(s_object));
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  GdkRectangle* cell_area = asCGdkRectangle(s_cell_area);

  gint x_offset;
  gint y_offset;
  gint width;
  gint height;

  object_class->get_size(object, widget, cell_area, &x_offset, &y_offset, &width, &height);


  _result = retByVal(PROTECT(_result), "x.offset", PROTECT(asRInteger(x_offset)), "y.offset", PROTECT(asRInteger(y_offset)), "width", PROTECT(asRInteger(width)), "height", PROTECT(asRInteger(height)), NULL);
  UNPROTECT(5);
  ;
  ;
  ;
  ;

  return(_result);
}

USER_OBJECT_
S_gtk_cell_renderer_class_render(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_widget, USER_OBJECT_ s_background_area, USER_OBJECT_ s_cell_area, USER_OBJECT_ s_expose_area, USER_OBJECT_ s_flags)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCellRendererClass* object_class = ((GtkCellRendererClass*)getPtrValue(s_object_class));
  GtkCellRenderer* object = GTK_CELL_RENDERER(getPtrValue(s_object));
  GdkDrawable* window = GDK_DRAWABLE(getPtrValue(s_window));
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  GdkRectangle* background_area = asCGdkRectangle(s_background_area);
  GdkRectangle* cell_area = asCGdkRectangle(s_cell_area);
  GdkRectangle* expose_area = asCGdkRectangle(s_expose_area);
  GtkCellRendererState flags = ((GtkCellRendererState)asCFlag(s_flags, GTK_TYPE_CELL_RENDERER_STATE));


  object_class->render(object, window, widget, background_area, cell_area, expose_area, flags);


  return(_result);
}

USER_OBJECT_
S_gtk_cell_renderer_class_activate(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event, USER_OBJECT_ s_widget, USER_OBJECT_ s_path, USER_OBJECT_ s_background_area, USER_OBJECT_ s_cell_area, USER_OBJECT_ s_flags)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCellRendererClass* object_class = ((GtkCellRendererClass*)getPtrValue(s_object_class));
  GtkCellRenderer* object = GTK_CELL_RENDERER(getPtrValue(s_object));
  GdkEvent* event = ((GdkEvent*)getPtrValue(s_event));
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* path = ((const gchar*)asCString(s_path));
  GdkRectangle* background_area = asCGdkRectangle(s_background_area);
  GdkRectangle* cell_area = asCGdkRectangle(s_cell_area);
  GtkCellRendererState flags = ((GtkCellRendererState)asCFlag(s_flags, GTK_TYPE_CELL_RENDERER_STATE));

  gboolean ans;

  ans = object_class->activate(object, event, widget, path, background_area, cell_area, flags);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_cell_renderer_class_editing_canceled(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCellRendererClass* object_class = ((GtkCellRendererClass*)getPtrValue(s_object_class));
  GtkCellRenderer* object = GTK_CELL_RENDERER(getPtrValue(s_object));


  object_class->editing_canceled(object);


  return(_result);
}

USER_OBJECT_
S_gtk_cell_renderer_class_editing_started(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_editable, USER_OBJECT_ s_path)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCellRendererClass* object_class = ((GtkCellRendererClass*)getPtrValue(s_object_class));
  GtkCellRenderer* object = GTK_CELL_RENDERER(getPtrValue(s_object));
  GtkCellEditable* editable = GTK_CELL_EDITABLE(getPtrValue(s_editable));
  const gchar* path = ((const gchar*)asCString(s_path));


  object_class->editing_started(object, editable, path);


  return(_result);
}

USER_OBJECT_
S_gtk_cell_renderer_class_start_editing(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event, USER_OBJECT_ s_widget, USER_OBJECT_ s_path, USER_OBJECT_ s_background_area, USER_OBJECT_ s_cell_area, USER_OBJECT_ s_flags)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCellRendererClass* object_class = ((GtkCellRendererClass*)getPtrValue(s_object_class));
  GtkCellRenderer* object = GTK_CELL_RENDERER(getPtrValue(s_object));
  GdkEvent* event = ((GdkEvent*)getPtrValue(s_event));
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* path = ((const gchar*)asCString(s_path));
  GdkRectangle* background_area = asCGdkRectangle(s_background_area);
  GdkRectangle* cell_area = asCGdkRectangle(s_cell_area);
  GtkCellRendererState flags = ((GtkCellRendererState)asCFlag(s_flags, GTK_TYPE_CELL_RENDERER_STATE));

  GtkCellEditable* ans;

  ans = object_class->start_editing(object, event, widget, path, background_area, cell_area, flags);

  _result = toRPointerWithRef(ans, "GtkCellEditable");

  return(_result);
}
 

static SEXP S_GtkCellRendererCombo_symbol;
void
S_gtk_cell_renderer_combo_class_init(GtkCellRendererComboClass * c, SEXP e)
{
  SEXP s;

  S_GtkCellRendererCombo_symbol = install("GtkCellRendererCombo");
  s = PROTECT(findVar(S_GtkCellRendererCombo_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkCellRendererComboClass)) = e;

  S_gtk_cell_renderer_text_class_init(((GtkCellRendererTextClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkCellRendererPixbuf_symbol;
void
S_gtk_cell_renderer_pixbuf_class_init(GtkCellRendererPixbufClass * c, SEXP e)
{
  SEXP s;

  S_GtkCellRendererPixbuf_symbol = install("GtkCellRendererPixbuf");
  s = PROTECT(findVar(S_GtkCellRendererPixbuf_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkCellRendererPixbufClass)) = e;

  S_gtk_cell_renderer_class_init(((GtkCellRendererClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkCellRendererProgress_symbol;
void
S_gtk_cell_renderer_progress_class_init(GtkCellRendererProgressClass * c, SEXP e)
{
  SEXP s;

  S_GtkCellRendererProgress_symbol = install("GtkCellRendererProgress");
  s = PROTECT(findVar(S_GtkCellRendererProgress_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkCellRendererProgressClass)) = e;

  S_gtk_cell_renderer_class_init(((GtkCellRendererClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkCellRendererText_symbol;

static void
S_virtual_gtk_cell_renderer_text_edited(GtkCellRendererText* s_object, const gchar* s_path, const gchar* s_new_text)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCellRendererText_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCellRendererText")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_path));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_new_text));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_cell_renderer_text_class_init(GtkCellRendererTextClass * c, SEXP e)
{
  SEXP s;

  S_GtkCellRendererText_symbol = install("GtkCellRendererText");
  s = PROTECT(findVar(S_GtkCellRendererText_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkCellRendererTextClass)) = e;

  S_gtk_cell_renderer_class_init(((GtkCellRendererClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->edited = S_virtual_gtk_cell_renderer_text_edited;
}
USER_OBJECT_
S_gtk_cell_renderer_text_class_edited(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_path, USER_OBJECT_ s_new_text)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCellRendererTextClass* object_class = ((GtkCellRendererTextClass*)getPtrValue(s_object_class));
  GtkCellRendererText* object = GTK_CELL_RENDERER_TEXT(getPtrValue(s_object));
  const gchar* path = ((const gchar*)asCString(s_path));
  const gchar* new_text = ((const gchar*)asCString(s_new_text));


  object_class->edited(object, path, new_text);


  return(_result);
}
 

static SEXP S_GtkCellRendererToggle_symbol;

static void
S_virtual_gtk_cell_renderer_toggle_toggled(GtkCellRendererToggle* s_object, const gchar* s_path)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCellRendererToggle_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCellRendererToggle")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_path));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_cell_renderer_toggle_class_init(GtkCellRendererToggleClass * c, SEXP e)
{
  SEXP s;

  S_GtkCellRendererToggle_symbol = install("GtkCellRendererToggle");
  s = PROTECT(findVar(S_GtkCellRendererToggle_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkCellRendererToggleClass)) = e;

  S_gtk_cell_renderer_class_init(((GtkCellRendererClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->toggled = S_virtual_gtk_cell_renderer_toggle_toggled;
}
USER_OBJECT_
S_gtk_cell_renderer_toggle_class_toggled(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_path)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCellRendererToggleClass* object_class = ((GtkCellRendererToggleClass*)getPtrValue(s_object_class));
  GtkCellRendererToggle* object = GTK_CELL_RENDERER_TOGGLE(getPtrValue(s_object));
  const gchar* path = ((const gchar*)asCString(s_path));


  object_class->toggled(object, path);


  return(_result);
}
 

static SEXP S_GtkCellView_symbol;
void
S_gtk_cell_view_class_init(GtkCellViewClass * c, SEXP e)
{
  SEXP s;

  S_GtkCellView_symbol = install("GtkCellView");
  s = PROTECT(findVar(S_GtkCellView_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkCellViewClass)) = e;

  S_gtk_widget_class_init(((GtkWidgetClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkCheckButton_symbol;

static void
S_virtual_gtk_check_button_draw_indicator(GtkCheckButton* s_object, GdkRectangle* s_area)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCheckButton_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCheckButton")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_area));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_check_button_class_init(GtkCheckButtonClass * c, SEXP e)
{
  SEXP s;

  S_GtkCheckButton_symbol = install("GtkCheckButton");
  s = PROTECT(findVar(S_GtkCheckButton_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkCheckButtonClass)) = e;

  S_gtk_toggle_button_class_init(((GtkToggleButtonClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->draw_indicator = S_virtual_gtk_check_button_draw_indicator;
}
USER_OBJECT_
S_gtk_check_button_class_draw_indicator(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_area)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCheckButtonClass* object_class = ((GtkCheckButtonClass*)getPtrValue(s_object_class));
  GtkCheckButton* object = GTK_CHECK_BUTTON(getPtrValue(s_object));
  GdkRectangle* area = asCGdkRectangle(s_area);


  object_class->draw_indicator(object, area);


  return(_result);
}
 

static SEXP S_GtkCheckMenuItem_symbol;

static void
S_virtual_gtk_check_menu_item_toggled(GtkCheckMenuItem* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCheckMenuItem_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCheckMenuItem")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_check_menu_item_draw_indicator(GtkCheckMenuItem* s_object, GdkRectangle* s_area)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCheckMenuItem_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCheckMenuItem")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_area));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_check_menu_item_class_init(GtkCheckMenuItemClass * c, SEXP e)
{
  SEXP s;

  S_GtkCheckMenuItem_symbol = install("GtkCheckMenuItem");
  s = PROTECT(findVar(S_GtkCheckMenuItem_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkCheckMenuItemClass)) = e;

  S_gtk_menu_item_class_init(((GtkMenuItemClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->toggled = S_virtual_gtk_check_menu_item_toggled;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->draw_indicator = S_virtual_gtk_check_menu_item_draw_indicator;
}
USER_OBJECT_
S_gtk_check_menu_item_class_toggled(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCheckMenuItemClass* object_class = ((GtkCheckMenuItemClass*)getPtrValue(s_object_class));
  GtkCheckMenuItem* object = GTK_CHECK_MENU_ITEM(getPtrValue(s_object));


  object_class->toggled(object);


  return(_result);
}

USER_OBJECT_
S_gtk_check_menu_item_class_draw_indicator(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_area)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCheckMenuItemClass* object_class = ((GtkCheckMenuItemClass*)getPtrValue(s_object_class));
  GtkCheckMenuItem* object = GTK_CHECK_MENU_ITEM(getPtrValue(s_object));
  GdkRectangle* area = asCGdkRectangle(s_area);


  object_class->draw_indicator(object, area);


  return(_result);
}
 

static SEXP S_GtkCList_symbol;

static void
S_virtual_gtk_clist_set_scroll_adjustments(GtkCList* s_object, GtkAdjustment* s_hadjustment, GtkAdjustment* s_vadjustment)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_hadjustment, "GtkAdjustment"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_vadjustment, "GtkAdjustment"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_clist_refresh(GtkCList* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_clist_select_row(GtkCList* s_object, gint s_row, gint s_column, GdkEvent* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_clist_unselect_row(GtkCList* s_object, gint s_row, gint s_column, GdkEvent* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_clist_row_move(GtkCList* s_object, gint s_source_row, gint s_dest_row)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_source_row));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_dest_row));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_clist_click_column(GtkCList* s_object, gint s_column)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_clist_resize_column(GtkCList* s_object, gint s_column, gint s_width)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_clist_toggle_focus_row(GtkCList* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_clist_select_all(GtkCList* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_clist_unselect_all(GtkCList* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_clist_undo_selection(GtkCList* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 10));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_clist_start_selection(GtkCList* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 11));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_clist_end_selection(GtkCList* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 12));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_clist_extend_selection(GtkCList* s_object, GtkScrollType s_scroll_type, gfloat s_position, gboolean s_auto_start_selection)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 13));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_scroll_type, GTK_TYPE_SCROLL_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_position));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_auto_start_selection));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_clist_scroll_horizontal(GtkCList* s_object, GtkScrollType s_scroll_type, gfloat s_position)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 14));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_scroll_type, GTK_TYPE_SCROLL_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_position));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_clist_scroll_vertical(GtkCList* s_object, GtkScrollType s_scroll_type, gfloat s_position)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 15));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_scroll_type, GTK_TYPE_SCROLL_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_position));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_clist_toggle_add_mode(GtkCList* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 16));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_clist_abort_column_resize(GtkCList* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 17));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_clist_resync_selection(GtkCList* s_object, GdkEvent* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 18));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GList*
S_virtual_gtk_clist_selection_find(GtkCList* s_object, gint s_row_number, GList* s_row_list_element)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 19));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row_number));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGList(s_row_list_element, "GtkCListRow"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GList*)0));
  return(((GList*)asCArrayRef(s_ans, GList, asCGList)));
}

static void
S_virtual_gtk_clist_draw_row(GtkCList* s_object, GdkRectangle* s_area, gint s_row, GtkCListRow* s_clist_row)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 20));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_area));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_clist_row, "GtkCListRow"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_clist_draw_drag_highlight(GtkCList* s_object, GtkCListRow* s_target_row, gint s_target_row_number, GtkCListDragPos s_drag_pos)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 21));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_target_row, "GtkCListRow"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_target_row_number));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_drag_pos, GTK_TYPE_CLIST_DRAG_POS));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_clist_clear(GtkCList* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 22));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_clist_fake_unselect_all(GtkCList* s_object, gint s_row)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 23));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_clist_sort_list(GtkCList* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 24));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gint
S_virtual_gtk_clist_insert_row(GtkCList* s_object, gint s_row, gchar** s_text)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 25));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);
  SETCAR(tmp, asRStringArrayWithSize(s_text, s_row));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static void
S_virtual_gtk_clist_remove_row(GtkCList* s_object, gint s_row)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 26));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_clist_set_cell_contents(GtkCList* s_object, GtkCListRow* s_clist_row, gint s_column, GtkCellType s_type, const gchar* s_text, guint8 s_spacing, GdkPixmap* s_pixmap, GdkBitmap* s_mask)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 9));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 27));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_clist_row, "GtkCListRow"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_type, GTK_TYPE_CELL_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_text));
  tmp = CDR(tmp);
  SETCAR(tmp, asRRaw(s_spacing));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_pixmap, "GdkPixmap"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_mask, "GdkBitmap"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_clist_cell_size_request(GtkCList* s_object, GtkCListRow* s_clist_row, gint s_column, GtkRequisition* s_requisition)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCList_symbol, S_GOBJECT_GET_ENV(s_object)), 28));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCList")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_clist_row, "GtkCListRow"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_requisition ? gtk_requisition_copy(s_requisition) : NULL, "GtkRequisition", (RPointerFinalizer) gtk_requisition_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_clist_class_init(GtkCListClass * c, SEXP e)
{
  SEXP s;

  S_GtkCList_symbol = install("GtkCList");
  s = PROTECT(findVar(S_GtkCList_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkCListClass)) = e;

  S_gtk_container_class_init(((GtkContainerClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->set_scroll_adjustments = S_virtual_gtk_clist_set_scroll_adjustments;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->refresh = S_virtual_gtk_clist_refresh;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->select_row = S_virtual_gtk_clist_select_row;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->unselect_row = S_virtual_gtk_clist_unselect_row;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->row_move = S_virtual_gtk_clist_row_move;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->click_column = S_virtual_gtk_clist_click_column;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->resize_column = S_virtual_gtk_clist_resize_column;
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->toggle_focus_row = S_virtual_gtk_clist_toggle_focus_row;
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->select_all = S_virtual_gtk_clist_select_all;
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->unselect_all = S_virtual_gtk_clist_unselect_all;
  if(VECTOR_ELT(s, 10) != NULL_USER_OBJECT)
    c->undo_selection = S_virtual_gtk_clist_undo_selection;
  if(VECTOR_ELT(s, 11) != NULL_USER_OBJECT)
    c->start_selection = S_virtual_gtk_clist_start_selection;
  if(VECTOR_ELT(s, 12) != NULL_USER_OBJECT)
    c->end_selection = S_virtual_gtk_clist_end_selection;
  if(VECTOR_ELT(s, 13) != NULL_USER_OBJECT)
    c->extend_selection = S_virtual_gtk_clist_extend_selection;
  if(VECTOR_ELT(s, 14) != NULL_USER_OBJECT)
    c->scroll_horizontal = S_virtual_gtk_clist_scroll_horizontal;
  if(VECTOR_ELT(s, 15) != NULL_USER_OBJECT)
    c->scroll_vertical = S_virtual_gtk_clist_scroll_vertical;
  if(VECTOR_ELT(s, 16) != NULL_USER_OBJECT)
    c->toggle_add_mode = S_virtual_gtk_clist_toggle_add_mode;
  if(VECTOR_ELT(s, 17) != NULL_USER_OBJECT)
    c->abort_column_resize = S_virtual_gtk_clist_abort_column_resize;
  if(VECTOR_ELT(s, 18) != NULL_USER_OBJECT)
    c->resync_selection = S_virtual_gtk_clist_resync_selection;
  if(VECTOR_ELT(s, 19) != NULL_USER_OBJECT)
    c->selection_find = S_virtual_gtk_clist_selection_find;
  if(VECTOR_ELT(s, 20) != NULL_USER_OBJECT)
    c->draw_row = S_virtual_gtk_clist_draw_row;
  if(VECTOR_ELT(s, 21) != NULL_USER_OBJECT)
    c->draw_drag_highlight = S_virtual_gtk_clist_draw_drag_highlight;
  if(VECTOR_ELT(s, 22) != NULL_USER_OBJECT)
    c->clear = S_virtual_gtk_clist_clear;
  if(VECTOR_ELT(s, 23) != NULL_USER_OBJECT)
    c->fake_unselect_all = S_virtual_gtk_clist_fake_unselect_all;
  if(VECTOR_ELT(s, 24) != NULL_USER_OBJECT)
    c->sort_list = S_virtual_gtk_clist_sort_list;
  if(VECTOR_ELT(s, 25) != NULL_USER_OBJECT)
    c->insert_row = S_virtual_gtk_clist_insert_row;
  if(VECTOR_ELT(s, 26) != NULL_USER_OBJECT)
    c->remove_row = S_virtual_gtk_clist_remove_row;
  if(VECTOR_ELT(s, 27) != NULL_USER_OBJECT)
    c->set_cell_contents = S_virtual_gtk_clist_set_cell_contents;
  if(VECTOR_ELT(s, 28) != NULL_USER_OBJECT)
    c->cell_size_request = S_virtual_gtk_clist_cell_size_request;
}
USER_OBJECT_
S_gtk_clist_class_set_scroll_adjustments(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_hadjustment, USER_OBJECT_ s_vadjustment)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));
  GtkAdjustment* hadjustment = GTK_ADJUSTMENT(getPtrValue(s_hadjustment));
  GtkAdjustment* vadjustment = GTK_ADJUSTMENT(getPtrValue(s_vadjustment));


  object_class->set_scroll_adjustments(object, hadjustment, vadjustment);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_refresh(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));


  object_class->refresh(object);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_select_row(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));
  gint column = ((gint)asCInteger(s_column));
  GdkEvent* event = ((GdkEvent*)getPtrValue(s_event));


  object_class->select_row(object, row, column, event);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_unselect_row(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));
  gint column = ((gint)asCInteger(s_column));
  GdkEvent* event = ((GdkEvent*)getPtrValue(s_event));


  object_class->unselect_row(object, row, column, event);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_row_move(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_source_row, USER_OBJECT_ s_dest_row)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));
  gint source_row = ((gint)asCInteger(s_source_row));
  gint dest_row = ((gint)asCInteger(s_dest_row));


  object_class->row_move(object, source_row, dest_row);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_click_column(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));
  gint column = ((gint)asCInteger(s_column));


  object_class->click_column(object, column);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_resize_column(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_column, USER_OBJECT_ s_width)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));
  gint column = ((gint)asCInteger(s_column));
  gint width = ((gint)asCInteger(s_width));


  object_class->resize_column(object, column, width);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_toggle_focus_row(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));


  object_class->toggle_focus_row(object);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_select_all(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));


  object_class->select_all(object);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_unselect_all(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));


  object_class->unselect_all(object);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_undo_selection(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));


  object_class->undo_selection(object);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_start_selection(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));


  object_class->start_selection(object);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_end_selection(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));


  object_class->end_selection(object);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_extend_selection(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_scroll_type, USER_OBJECT_ s_position, USER_OBJECT_ s_auto_start_selection)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));
  GtkScrollType scroll_type = ((GtkScrollType)asCEnum(s_scroll_type, GTK_TYPE_SCROLL_TYPE));
  gfloat position = ((gfloat)asCNumeric(s_position));
  gboolean auto_start_selection = ((gboolean)asCLogical(s_auto_start_selection));


  object_class->extend_selection(object, scroll_type, position, auto_start_selection);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_scroll_horizontal(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_scroll_type, USER_OBJECT_ s_position)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));
  GtkScrollType scroll_type = ((GtkScrollType)asCEnum(s_scroll_type, GTK_TYPE_SCROLL_TYPE));
  gfloat position = ((gfloat)asCNumeric(s_position));


  object_class->scroll_horizontal(object, scroll_type, position);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_scroll_vertical(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_scroll_type, USER_OBJECT_ s_position)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));
  GtkScrollType scroll_type = ((GtkScrollType)asCEnum(s_scroll_type, GTK_TYPE_SCROLL_TYPE));
  gfloat position = ((gfloat)asCNumeric(s_position));


  object_class->scroll_vertical(object, scroll_type, position);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_toggle_add_mode(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));


  object_class->toggle_add_mode(object);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_abort_column_resize(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));


  object_class->abort_column_resize(object);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_resync_selection(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));
  GdkEvent* event = ((GdkEvent*)getPtrValue(s_event));


  object_class->resync_selection(object, event);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_selection_find(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_row_number, USER_OBJECT_ s_row_list_element)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));
  gint row_number = ((gint)asCInteger(s_row_number));
  GList* row_list_element = ((GList*)asCArrayRef(s_row_list_element, GList, asCGList));

  GList* ans;

  ans = object_class->selection_find(object, row_number, row_list_element);

  _result = asRGList(ans, "GtkCListRow");
    CLEANUP(g_list_free, ((GList*)row_list_element));;

  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_draw_row(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_area, USER_OBJECT_ s_row, USER_OBJECT_ s_clist_row)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));
  GdkRectangle* area = asCGdkRectangle(s_area);
  gint row = ((gint)asCInteger(s_row));
  GtkCListRow* clist_row = ((GtkCListRow*)getPtrValue(s_clist_row));


  object_class->draw_row(object, area, row, clist_row);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_draw_drag_highlight(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_target_row, USER_OBJECT_ s_target_row_number, USER_OBJECT_ s_drag_pos)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));
  GtkCListRow* target_row = ((GtkCListRow*)getPtrValue(s_target_row));
  gint target_row_number = ((gint)asCInteger(s_target_row_number));
  GtkCListDragPos drag_pos = ((GtkCListDragPos)asCEnum(s_drag_pos, GTK_TYPE_CLIST_DRAG_POS));


  object_class->draw_drag_highlight(object, target_row, target_row_number, drag_pos);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_clear(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));


  object_class->clear(object);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_fake_unselect_all(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_row)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));


  object_class->fake_unselect_all(object, row);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_sort_list(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));


  object_class->sort_list(object);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_insert_row(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_text)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));
  gchar** text = ((gchar**)asCStringArray(s_text));

  gint ans;

  ans = object_class->insert_row(object, row, text);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_remove_row(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_row)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));


  object_class->remove_row(object, row);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_set_cell_contents(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_clist_row, USER_OBJECT_ s_column, USER_OBJECT_ s_type, USER_OBJECT_ s_text, USER_OBJECT_ s_spacing, USER_OBJECT_ s_pixmap, USER_OBJECT_ s_mask)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));
  GtkCListRow* clist_row = ((GtkCListRow*)getPtrValue(s_clist_row));
  gint column = ((gint)asCInteger(s_column));
  GtkCellType type = ((GtkCellType)asCEnum(s_type, GTK_TYPE_CELL_TYPE));
  const gchar* text = ((const gchar*)asCString(s_text));
  guint8 spacing = ((guint8)asCRaw(s_spacing));
  GdkPixmap* pixmap = GDK_PIXMAP(getPtrValue(s_pixmap));
  GdkBitmap* mask = GDK_DRAWABLE(getPtrValue(s_mask));


  object_class->set_cell_contents(object, clist_row, column, type, text, spacing, pixmap, mask);


  return(_result);
}

USER_OBJECT_
S_gtk_clist_class_cell_size_request(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_clist_row, USER_OBJECT_ s_column, USER_OBJECT_ s_requisition)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCListClass* object_class = ((GtkCListClass*)getPtrValue(s_object_class));
  GtkCList* object = GTK_CLIST(getPtrValue(s_object));
  GtkCListRow* clist_row = ((GtkCListRow*)getPtrValue(s_clist_row));
  gint column = ((gint)asCInteger(s_column));
  GtkRequisition* requisition = ((GtkRequisition*)getPtrValue(s_requisition));


  object_class->cell_size_request(object, clist_row, column, requisition);


  return(_result);
}
 

static SEXP S_GtkColorButton_symbol;

static void
S_virtual_gtk_color_button_color_set(GtkColorButton* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkColorButton_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkColorButton")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_color_button_class_init(GtkColorButtonClass * c, SEXP e)
{
  SEXP s;

  S_GtkColorButton_symbol = install("GtkColorButton");
  s = PROTECT(findVar(S_GtkColorButton_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkColorButtonClass)) = e;

  S_gtk_button_class_init(((GtkButtonClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->color_set = S_virtual_gtk_color_button_color_set;
}
USER_OBJECT_
S_gtk_color_button_class_color_set(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkColorButtonClass* object_class = ((GtkColorButtonClass*)getPtrValue(s_object_class));
  GtkColorButton* object = GTK_COLOR_BUTTON(getPtrValue(s_object));


  object_class->color_set(object);


  return(_result);
}
 

static SEXP S_GtkColorSelection_symbol;

static void
S_virtual_gtk_color_selection_color_changed(GtkColorSelection* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkColorSelection_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkColorSelection")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_color_selection_class_init(GtkColorSelectionClass * c, SEXP e)
{
  SEXP s;

  S_GtkColorSelection_symbol = install("GtkColorSelection");
  s = PROTECT(findVar(S_GtkColorSelection_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkColorSelectionClass)) = e;

  S_gtk_vbox_class_init(((GtkVBoxClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->color_changed = S_virtual_gtk_color_selection_color_changed;
}
USER_OBJECT_
S_gtk_color_selection_class_color_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkColorSelectionClass* object_class = ((GtkColorSelectionClass*)getPtrValue(s_object_class));
  GtkColorSelection* object = GTK_COLOR_SELECTION(getPtrValue(s_object));


  object_class->color_changed(object);


  return(_result);
}
 

static SEXP S_GtkColorSelectionDialog_symbol;
void
S_gtk_color_selection_dialog_class_init(GtkColorSelectionDialogClass * c, SEXP e)
{
  SEXP s;

  S_GtkColorSelectionDialog_symbol = install("GtkColorSelectionDialog");
  s = PROTECT(findVar(S_GtkColorSelectionDialog_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkColorSelectionDialogClass)) = e;

  S_gtk_dialog_class_init(((GtkDialogClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkCombo_symbol;
void
S_gtk_combo_class_init(GtkComboClass * c, SEXP e)
{
  SEXP s;

  S_GtkCombo_symbol = install("GtkCombo");
  s = PROTECT(findVar(S_GtkCombo_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkComboClass)) = e;

  S_gtk_hbox_class_init(((GtkHBoxClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkComboBox_symbol;

static void
S_virtual_gtk_combo_box_changed(GtkComboBox* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkComboBox_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkComboBox")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static char*
S_virtual_gtk_combo_box_get_active_text(GtkComboBox* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkComboBox_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkComboBox")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((char*)0));
  return(((char*)g_strdup(asCString(s_ans))));
}
void
S_gtk_combo_box_class_init(GtkComboBoxClass * c, SEXP e)
{
  SEXP s;

  S_GtkComboBox_symbol = install("GtkComboBox");
  s = PROTECT(findVar(S_GtkComboBox_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkComboBoxClass)) = e;

  S_gtk_bin_class_init(((GtkBinClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->changed = S_virtual_gtk_combo_box_changed;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_active_text = S_virtual_gtk_combo_box_get_active_text;
}
USER_OBJECT_
S_gtk_combo_box_class_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkComboBoxClass* object_class = ((GtkComboBoxClass*)getPtrValue(s_object_class));
  GtkComboBox* object = GTK_COMBO_BOX(getPtrValue(s_object));


  object_class->changed(object);


  return(_result);
}

USER_OBJECT_
S_gtk_combo_box_class_get_active_text(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkComboBoxClass* object_class = ((GtkComboBoxClass*)getPtrValue(s_object_class));
  GtkComboBox* object = GTK_COMBO_BOX(getPtrValue(s_object));

  char* ans;

  ans = object_class->get_active_text(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;

  return(_result);
}
 

static SEXP S_GtkComboBoxEntry_symbol;
void
S_gtk_combo_box_entry_class_init(GtkComboBoxEntryClass * c, SEXP e)
{
  SEXP s;

  S_GtkComboBoxEntry_symbol = install("GtkComboBoxEntry");
  s = PROTECT(findVar(S_GtkComboBoxEntry_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkComboBoxEntryClass)) = e;

  S_gtk_combo_box_class_init(((GtkComboBoxClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkContainer_symbol;

static void
S_virtual_gtk_container_add(GtkContainer* s_object, GtkWidget* s_widget)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkContainer_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkContainer")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_container_remove(GtkContainer* s_object, GtkWidget* s_widget)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkContainer_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkContainer")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_container_check_resize(GtkContainer* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkContainer_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkContainer")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_container_forall(GtkContainer* s_object, gboolean s_include_internals, GtkCallback s_callback, gpointer s_callback_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkContainer_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkContainer")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_include_internals));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GtkCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_callback_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_container_set_focus_child(GtkContainer* s_object, GtkWidget* s_widget)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkContainer_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkContainer")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GType
S_virtual_gtk_container_child_type(GtkContainer* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkContainer_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkContainer")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GType)0));
  return(((GType)asCGType(s_ans)));
}

static gchar*
S_virtual_gtk_container_composite_name(GtkContainer* s_object, GtkWidget* s_child)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkContainer_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkContainer")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_child, "GtkWidget"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gchar*)0));
  return(((gchar*)g_strdup(asCString(s_ans))));
}

static void
S_virtual_gtk_container_set_child_property(GtkContainer* s_object, GtkWidget* s_child, guint s_property_id, const GValue* s_value, GParamSpec* s_pspec)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkContainer_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkContainer")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_child, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_property_id));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGValue(s_value));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGParamSpec(s_pspec));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_container_get_child_property(GtkContainer* s_object, GtkWidget* s_child, guint s_property_id, GValue* s_value, GParamSpec* s_pspec)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkContainer_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkContainer")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_child, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_property_id));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGValue(s_value));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGParamSpec(s_pspec));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_container_class_init(GtkContainerClass * c, SEXP e)
{
  SEXP s;

  S_GtkContainer_symbol = install("GtkContainer");
  s = PROTECT(findVar(S_GtkContainer_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkContainerClass)) = e;

  S_gtk_widget_class_init(((GtkWidgetClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->add = S_virtual_gtk_container_add;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->remove = S_virtual_gtk_container_remove;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->check_resize = S_virtual_gtk_container_check_resize;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->forall = S_virtual_gtk_container_forall;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->set_focus_child = S_virtual_gtk_container_set_focus_child;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->child_type = S_virtual_gtk_container_child_type;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->composite_name = S_virtual_gtk_container_composite_name;
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->set_child_property = S_virtual_gtk_container_set_child_property;
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->get_child_property = S_virtual_gtk_container_get_child_property;
}
USER_OBJECT_
S_gtk_container_class_add(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_widget)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkContainerClass* object_class = ((GtkContainerClass*)getPtrValue(s_object_class));
  GtkContainer* object = GTK_CONTAINER(getPtrValue(s_object));
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));


  object_class->add(object, widget);


  return(_result);
}

USER_OBJECT_
S_gtk_container_class_remove(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_widget)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkContainerClass* object_class = ((GtkContainerClass*)getPtrValue(s_object_class));
  GtkContainer* object = GTK_CONTAINER(getPtrValue(s_object));
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));


  object_class->remove(object, widget);


  return(_result);
}

USER_OBJECT_
S_gtk_container_class_check_resize(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkContainerClass* object_class = ((GtkContainerClass*)getPtrValue(s_object_class));
  GtkContainer* object = GTK_CONTAINER(getPtrValue(s_object));


  object_class->check_resize(object);


  return(_result);
}

USER_OBJECT_
S_gtk_container_class_forall(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_include_internals, USER_OBJECT_ s_callback, USER_OBJECT_ s_callback_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCallback callback = ((GtkCallback)S_GtkCallback);
  R_CallbackData* callback_data = R_createCBData(s_callback, s_callback_data);
  GtkContainerClass* object_class = ((GtkContainerClass*)getPtrValue(s_object_class));
  GtkContainer* object = GTK_CONTAINER(getPtrValue(s_object));
  gboolean include_internals = ((gboolean)asCLogical(s_include_internals));


  object_class->forall(object, include_internals, callback, callback_data);

  R_freeCBData(callback_data);

  return(_result);
}

USER_OBJECT_
S_gtk_container_class_set_focus_child(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_widget)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkContainerClass* object_class = ((GtkContainerClass*)getPtrValue(s_object_class));
  GtkContainer* object = GTK_CONTAINER(getPtrValue(s_object));
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));


  object_class->set_focus_child(object, widget);


  return(_result);
}

USER_OBJECT_
S_gtk_container_class_child_type(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkContainerClass* object_class = ((GtkContainerClass*)getPtrValue(s_object_class));
  GtkContainer* object = GTK_CONTAINER(getPtrValue(s_object));

  GType ans;

  ans = object_class->child_type(object);

  _result = asRGType(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_container_class_composite_name(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_child)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkContainerClass* object_class = ((GtkContainerClass*)getPtrValue(s_object_class));
  GtkContainer* object = GTK_CONTAINER(getPtrValue(s_object));
  GtkWidget* child = GTK_WIDGET(getPtrValue(s_child));

  gchar* ans;

  ans = object_class->composite_name(object, child);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;

  return(_result);
}

USER_OBJECT_
S_gtk_container_class_set_child_property(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_property_id, USER_OBJECT_ s_value, USER_OBJECT_ s_pspec)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkContainerClass* object_class = ((GtkContainerClass*)getPtrValue(s_object_class));
  GtkContainer* object = GTK_CONTAINER(getPtrValue(s_object));
  GtkWidget* child = GTK_WIDGET(getPtrValue(s_child));
  guint property_id = ((guint)asCNumeric(s_property_id));
  const GValue* value = asCGValue(s_value);
  GParamSpec* pspec = asCGParamSpec(s_pspec);


  object_class->set_child_property(object, child, property_id, value, pspec);

    CLEANUP(g_value_unset, ((GValue*)value));
  CLEANUP(g_free, ((GValue*)value));;
    CLEANUP(g_param_spec_sink, ((GParamSpec*)pspec));;

  return(_result);
}

USER_OBJECT_
S_gtk_container_class_get_child_property(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_property_id, USER_OBJECT_ s_value, USER_OBJECT_ s_pspec)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkContainerClass* object_class = ((GtkContainerClass*)getPtrValue(s_object_class));
  GtkContainer* object = GTK_CONTAINER(getPtrValue(s_object));
  GtkWidget* child = GTK_WIDGET(getPtrValue(s_child));
  guint property_id = ((guint)asCNumeric(s_property_id));
  GValue* value = asCGValue(s_value);
  GParamSpec* pspec = asCGParamSpec(s_pspec);


  object_class->get_child_property(object, child, property_id, value, pspec);

    CLEANUP(g_value_unset, ((GValue*)value));
  CLEANUP(g_free, ((GValue*)value));;
    CLEANUP(g_param_spec_sink, ((GParamSpec*)pspec));;

  return(_result);
}
 

static SEXP S_GtkCTree_symbol;

static void
S_virtual_gtk_ctree_tree_select_row(GtkCTree* s_object, GtkCTreeNode* s_row, gint s_column)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCTree_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCTree")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_row, "GtkCTreeNode"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_ctree_tree_unselect_row(GtkCTree* s_object, GtkCTreeNode* s_row, gint s_column)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCTree_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCTree")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_row, "GtkCTreeNode"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_ctree_tree_expand(GtkCTree* s_object, GtkCTreeNode* s_node)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCTree_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCTree")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_node, "GtkCTreeNode"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_ctree_tree_collapse(GtkCTree* s_object, GtkCTreeNode* s_node)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCTree_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCTree")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_node, "GtkCTreeNode"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_ctree_tree_move(GtkCTree* s_object, GtkCTreeNode* s_node, GtkCTreeNode* s_new_parent, GtkCTreeNode* s_new_sibling)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCTree_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCTree")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_node, "GtkCTreeNode"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_new_parent, "GtkCTreeNode"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_new_sibling, "GtkCTreeNode"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_ctree_change_focus_row_expansion(GtkCTree* s_object, GtkCTreeExpansionType s_action)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCTree_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCTree")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_action, GTK_TYPE_CTREE_EXPANSION_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_ctree_class_init(GtkCTreeClass * c, SEXP e)
{
  SEXP s;

  S_GtkCTree_symbol = install("GtkCTree");
  s = PROTECT(findVar(S_GtkCTree_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkCTreeClass)) = e;

  S_gtk_clist_class_init(((GtkCListClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->tree_select_row = S_virtual_gtk_ctree_tree_select_row;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->tree_unselect_row = S_virtual_gtk_ctree_tree_unselect_row;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->tree_expand = S_virtual_gtk_ctree_tree_expand;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->tree_collapse = S_virtual_gtk_ctree_tree_collapse;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->tree_move = S_virtual_gtk_ctree_tree_move;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->change_focus_row_expansion = S_virtual_gtk_ctree_change_focus_row_expansion;
}
USER_OBJECT_
S_gtk_ctree_class_tree_select_row(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCTreeClass* object_class = ((GtkCTreeClass*)getPtrValue(s_object_class));
  GtkCTree* object = GTK_CTREE(getPtrValue(s_object));
  GtkCTreeNode* row = ((GtkCTreeNode*)getPtrValue(s_row));
  gint column = ((gint)asCInteger(s_column));


  object_class->tree_select_row(object, row, column);


  return(_result);
}

USER_OBJECT_
S_gtk_ctree_class_tree_unselect_row(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCTreeClass* object_class = ((GtkCTreeClass*)getPtrValue(s_object_class));
  GtkCTree* object = GTK_CTREE(getPtrValue(s_object));
  GtkCTreeNode* row = ((GtkCTreeNode*)getPtrValue(s_row));
  gint column = ((gint)asCInteger(s_column));


  object_class->tree_unselect_row(object, row, column);


  return(_result);
}

USER_OBJECT_
S_gtk_ctree_class_tree_expand(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_node)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCTreeClass* object_class = ((GtkCTreeClass*)getPtrValue(s_object_class));
  GtkCTree* object = GTK_CTREE(getPtrValue(s_object));
  GtkCTreeNode* node = ((GtkCTreeNode*)getPtrValue(s_node));


  object_class->tree_expand(object, node);


  return(_result);
}

USER_OBJECT_
S_gtk_ctree_class_tree_collapse(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_node)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCTreeClass* object_class = ((GtkCTreeClass*)getPtrValue(s_object_class));
  GtkCTree* object = GTK_CTREE(getPtrValue(s_object));
  GtkCTreeNode* node = ((GtkCTreeNode*)getPtrValue(s_node));


  object_class->tree_collapse(object, node);


  return(_result);
}

USER_OBJECT_
S_gtk_ctree_class_tree_move(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_new_parent, USER_OBJECT_ s_new_sibling)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCTreeClass* object_class = ((GtkCTreeClass*)getPtrValue(s_object_class));
  GtkCTree* object = GTK_CTREE(getPtrValue(s_object));
  GtkCTreeNode* node = ((GtkCTreeNode*)getPtrValue(s_node));
  GtkCTreeNode* new_parent = ((GtkCTreeNode*)getPtrValue(s_new_parent));
  GtkCTreeNode* new_sibling = ((GtkCTreeNode*)getPtrValue(s_new_sibling));


  object_class->tree_move(object, node, new_parent, new_sibling);


  return(_result);
}

USER_OBJECT_
S_gtk_ctree_class_change_focus_row_expansion(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_action)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCTreeClass* object_class = ((GtkCTreeClass*)getPtrValue(s_object_class));
  GtkCTree* object = GTK_CTREE(getPtrValue(s_object));
  GtkCTreeExpansionType action = ((GtkCTreeExpansionType)asCEnum(s_action, GTK_TYPE_CTREE_EXPANSION_TYPE));


  object_class->change_focus_row_expansion(object, action);


  return(_result);
}
 

static SEXP S_GtkCurve_symbol;

static void
S_virtual_gtk_curve_curve_type_changed(GtkCurve* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCurve_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCurve")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_curve_class_init(GtkCurveClass * c, SEXP e)
{
  SEXP s;

  S_GtkCurve_symbol = install("GtkCurve");
  s = PROTECT(findVar(S_GtkCurve_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkCurveClass)) = e;

  S_gtk_drawing_area_class_init(((GtkDrawingAreaClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->curve_type_changed = S_virtual_gtk_curve_curve_type_changed;
}
USER_OBJECT_
S_gtk_curve_class_curve_type_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCurveClass* object_class = ((GtkCurveClass*)getPtrValue(s_object_class));
  GtkCurve* object = GTK_CURVE(getPtrValue(s_object));


  object_class->curve_type_changed(object);


  return(_result);
}
 

static SEXP S_GtkDialog_symbol;

static void
S_virtual_gtk_dialog_response(GtkDialog* s_object, gint s_response_id)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkDialog_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkDialog")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_response_id));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_dialog_close(GtkDialog* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkDialog_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkDialog")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_dialog_class_init(GtkDialogClass * c, SEXP e)
{
  SEXP s;

  S_GtkDialog_symbol = install("GtkDialog");
  s = PROTECT(findVar(S_GtkDialog_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkDialogClass)) = e;

  S_gtk_window_class_init(((GtkWindowClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->response = S_virtual_gtk_dialog_response;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->close = S_virtual_gtk_dialog_close;
}
USER_OBJECT_
S_gtk_dialog_class_response(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_response_id)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkDialogClass* object_class = ((GtkDialogClass*)getPtrValue(s_object_class));
  GtkDialog* object = GTK_DIALOG(getPtrValue(s_object));
  gint response_id = ((gint)asCInteger(s_response_id));


  object_class->response(object, response_id);


  return(_result);
}

USER_OBJECT_
S_gtk_dialog_class_close(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkDialogClass* object_class = ((GtkDialogClass*)getPtrValue(s_object_class));
  GtkDialog* object = GTK_DIALOG(getPtrValue(s_object));


  object_class->close(object);


  return(_result);
}
 

static SEXP S_GtkDrawingArea_symbol;
void
S_gtk_drawing_area_class_init(GtkDrawingAreaClass * c, SEXP e)
{
  SEXP s;

  S_GtkDrawingArea_symbol = install("GtkDrawingArea");
  s = PROTECT(findVar(S_GtkDrawingArea_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkDrawingAreaClass)) = e;

  S_gtk_widget_class_init(((GtkWidgetClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkEntry_symbol;

static void
S_virtual_gtk_entry_populate_popup(GtkEntry* s_object, GtkMenu* s_menu)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkEntry_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkEntry")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_menu, "GtkMenu"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_entry_activate(GtkEntry* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkEntry_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkEntry")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_entry_move_cursor(GtkEntry* s_object, GtkMovementStep s_step, gint s_count, gboolean s_extend_selection)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkEntry_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkEntry")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_step, GTK_TYPE_MOVEMENT_STEP));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_count));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_extend_selection));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_entry_insert_at_cursor(GtkEntry* s_object, const gchar* s_str)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkEntry_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkEntry")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_str));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_entry_delete_from_cursor(GtkEntry* s_object, GtkDeleteType s_type, gint s_count)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkEntry_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkEntry")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_type, GTK_TYPE_DELETE_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_count));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_entry_backspace(GtkEntry* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkEntry_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkEntry")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_entry_cut_clipboard(GtkEntry* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkEntry_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkEntry")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_entry_copy_clipboard(GtkEntry* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkEntry_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkEntry")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_entry_paste_clipboard(GtkEntry* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkEntry_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkEntry")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_entry_toggle_overwrite(GtkEntry* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkEntry_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkEntry")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_entry_class_init(GtkEntryClass * c, SEXP e)
{
  SEXP s;

  S_GtkEntry_symbol = install("GtkEntry");
  s = PROTECT(findVar(S_GtkEntry_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkEntryClass)) = e;

  S_gtk_widget_class_init(((GtkWidgetClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->populate_popup = S_virtual_gtk_entry_populate_popup;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->activate = S_virtual_gtk_entry_activate;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->move_cursor = S_virtual_gtk_entry_move_cursor;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->insert_at_cursor = S_virtual_gtk_entry_insert_at_cursor;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->delete_from_cursor = S_virtual_gtk_entry_delete_from_cursor;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->backspace = S_virtual_gtk_entry_backspace;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->cut_clipboard = S_virtual_gtk_entry_cut_clipboard;
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->copy_clipboard = S_virtual_gtk_entry_copy_clipboard;
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->paste_clipboard = S_virtual_gtk_entry_paste_clipboard;
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->toggle_overwrite = S_virtual_gtk_entry_toggle_overwrite;
}
USER_OBJECT_
S_gtk_entry_class_populate_popup(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_menu)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkEntryClass* object_class = ((GtkEntryClass*)getPtrValue(s_object_class));
  GtkEntry* object = GTK_ENTRY(getPtrValue(s_object));
  GtkMenu* menu = GTK_MENU(getPtrValue(s_menu));


  object_class->populate_popup(object, menu);


  return(_result);
}

USER_OBJECT_
S_gtk_entry_class_activate(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkEntryClass* object_class = ((GtkEntryClass*)getPtrValue(s_object_class));
  GtkEntry* object = GTK_ENTRY(getPtrValue(s_object));


  object_class->activate(object);


  return(_result);
}

USER_OBJECT_
S_gtk_entry_class_move_cursor(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_step, USER_OBJECT_ s_count, USER_OBJECT_ s_extend_selection)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkEntryClass* object_class = ((GtkEntryClass*)getPtrValue(s_object_class));
  GtkEntry* object = GTK_ENTRY(getPtrValue(s_object));
  GtkMovementStep step = ((GtkMovementStep)asCEnum(s_step, GTK_TYPE_MOVEMENT_STEP));
  gint count = ((gint)asCInteger(s_count));
  gboolean extend_selection = ((gboolean)asCLogical(s_extend_selection));


  object_class->move_cursor(object, step, count, extend_selection);


  return(_result);
}

USER_OBJECT_
S_gtk_entry_class_insert_at_cursor(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_str)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkEntryClass* object_class = ((GtkEntryClass*)getPtrValue(s_object_class));
  GtkEntry* object = GTK_ENTRY(getPtrValue(s_object));
  const gchar* str = ((const gchar*)asCString(s_str));


  object_class->insert_at_cursor(object, str);


  return(_result);
}

USER_OBJECT_
S_gtk_entry_class_delete_from_cursor(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_type, USER_OBJECT_ s_count)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkEntryClass* object_class = ((GtkEntryClass*)getPtrValue(s_object_class));
  GtkEntry* object = GTK_ENTRY(getPtrValue(s_object));
  GtkDeleteType type = ((GtkDeleteType)asCEnum(s_type, GTK_TYPE_DELETE_TYPE));
  gint count = ((gint)asCInteger(s_count));


  object_class->delete_from_cursor(object, type, count);


  return(_result);
}

USER_OBJECT_
S_gtk_entry_class_backspace(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkEntryClass* object_class = ((GtkEntryClass*)getPtrValue(s_object_class));
  GtkEntry* object = GTK_ENTRY(getPtrValue(s_object));


  object_class->backspace(object);


  return(_result);
}

USER_OBJECT_
S_gtk_entry_class_cut_clipboard(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkEntryClass* object_class = ((GtkEntryClass*)getPtrValue(s_object_class));
  GtkEntry* object = GTK_ENTRY(getPtrValue(s_object));


  object_class->cut_clipboard(object);


  return(_result);
}

USER_OBJECT_
S_gtk_entry_class_copy_clipboard(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkEntryClass* object_class = ((GtkEntryClass*)getPtrValue(s_object_class));
  GtkEntry* object = GTK_ENTRY(getPtrValue(s_object));


  object_class->copy_clipboard(object);


  return(_result);
}

USER_OBJECT_
S_gtk_entry_class_paste_clipboard(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkEntryClass* object_class = ((GtkEntryClass*)getPtrValue(s_object_class));
  GtkEntry* object = GTK_ENTRY(getPtrValue(s_object));


  object_class->paste_clipboard(object);


  return(_result);
}

USER_OBJECT_
S_gtk_entry_class_toggle_overwrite(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkEntryClass* object_class = ((GtkEntryClass*)getPtrValue(s_object_class));
  GtkEntry* object = GTK_ENTRY(getPtrValue(s_object));


  object_class->toggle_overwrite(object);


  return(_result);
}
 

static SEXP S_GtkEntryCompletion_symbol;

static gboolean
S_virtual_gtk_entry_completion_match_selected(GtkEntryCompletion* s_object, GtkTreeModel* s_model, GtkTreeIter* s_iter)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkEntryCompletion_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkEntryCompletion")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_model, "GtkTreeModel"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_tree_iter_copy(s_iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static void
S_virtual_gtk_entry_completion_action_activated(GtkEntryCompletion* s_object, gint s_index_)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkEntryCompletion_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkEntryCompletion")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_index_));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gtk_entry_completion_insert_prefix(GtkEntryCompletion* s_object, const gchar* s_prefix)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkEntryCompletion_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkEntryCompletion")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_prefix));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}
void
S_gtk_entry_completion_class_init(GtkEntryCompletionClass * c, SEXP e)
{
  SEXP s;

  S_GtkEntryCompletion_symbol = install("GtkEntryCompletion");
  s = PROTECT(findVar(S_GtkEntryCompletion_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkEntryCompletionClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->match_selected = S_virtual_gtk_entry_completion_match_selected;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->action_activated = S_virtual_gtk_entry_completion_action_activated;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->insert_prefix = S_virtual_gtk_entry_completion_insert_prefix;
}
USER_OBJECT_
S_gtk_entry_completion_class_match_selected(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_model, USER_OBJECT_ s_iter)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkEntryCompletionClass* object_class = ((GtkEntryCompletionClass*)getPtrValue(s_object_class));
  GtkEntryCompletion* object = GTK_ENTRY_COMPLETION(getPtrValue(s_object));
  GtkTreeModel* model = GTK_TREE_MODEL(getPtrValue(s_model));
  GtkTreeIter* iter = ((GtkTreeIter*)getPtrValue(s_iter));

  gboolean ans;

  ans = object_class->match_selected(object, model, iter);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_entry_completion_class_action_activated(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_index_)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkEntryCompletionClass* object_class = ((GtkEntryCompletionClass*)getPtrValue(s_object_class));
  GtkEntryCompletion* object = GTK_ENTRY_COMPLETION(getPtrValue(s_object));
  gint index_ = ((gint)asCInteger(s_index_));


  object_class->action_activated(object, index_);


  return(_result);
}

USER_OBJECT_
S_gtk_entry_completion_class_insert_prefix(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_prefix)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkEntryCompletionClass* object_class = ((GtkEntryCompletionClass*)getPtrValue(s_object_class));
  GtkEntryCompletion* object = GTK_ENTRY_COMPLETION(getPtrValue(s_object));
  const gchar* prefix = ((const gchar*)asCString(s_prefix));

  gboolean ans;

  ans = object_class->insert_prefix(object, prefix);

  _result = asRLogical(ans);

  return(_result);
}
 

static SEXP S_GtkEventBox_symbol;
void
S_gtk_event_box_class_init(GtkEventBoxClass * c, SEXP e)
{
  SEXP s;

  S_GtkEventBox_symbol = install("GtkEventBox");
  s = PROTECT(findVar(S_GtkEventBox_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkEventBoxClass)) = e;

  S_gtk_bin_class_init(((GtkBinClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkExpander_symbol;

static void
S_virtual_gtk_expander_activate(GtkExpander* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkExpander_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkExpander")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_expander_class_init(GtkExpanderClass * c, SEXP e)
{
  SEXP s;

  S_GtkExpander_symbol = install("GtkExpander");
  s = PROTECT(findVar(S_GtkExpander_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkExpanderClass)) = e;

  S_gtk_bin_class_init(((GtkBinClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->activate = S_virtual_gtk_expander_activate;
}
USER_OBJECT_
S_gtk_expander_class_activate(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkExpanderClass* object_class = ((GtkExpanderClass*)getPtrValue(s_object_class));
  GtkExpander* object = GTK_EXPANDER(getPtrValue(s_object));


  object_class->activate(object);


  return(_result);
}
 

static SEXP S_GtkFileChooserButton_symbol;
void
S_gtk_file_chooser_button_class_init(GtkFileChooserButtonClass * c, SEXP e)
{
  SEXP s;

  S_GtkFileChooserButton_symbol = install("GtkFileChooserButton");
  s = PROTECT(findVar(S_GtkFileChooserButton_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkFileChooserButtonClass)) = e;

  S_gtk_hbox_class_init(((GtkHBoxClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkFileChooserDialog_symbol;
void
S_gtk_file_chooser_dialog_class_init(GtkFileChooserDialogClass * c, SEXP e)
{
  SEXP s;

  S_GtkFileChooserDialog_symbol = install("GtkFileChooserDialog");
  s = PROTECT(findVar(S_GtkFileChooserDialog_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkFileChooserDialogClass)) = e;

  S_gtk_dialog_class_init(((GtkDialogClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkFileChooserWidget_symbol;
void
S_gtk_file_chooser_widget_class_init(GtkFileChooserWidgetClass * c, SEXP e)
{
  SEXP s;

  S_GtkFileChooserWidget_symbol = install("GtkFileChooserWidget");
  s = PROTECT(findVar(S_GtkFileChooserWidget_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkFileChooserWidgetClass)) = e;

  S_gtk_vbox_class_init(((GtkVBoxClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkFileSelection_symbol;
void
S_gtk_file_selection_class_init(GtkFileSelectionClass * c, SEXP e)
{
  SEXP s;

  S_GtkFileSelection_symbol = install("GtkFileSelection");
  s = PROTECT(findVar(S_GtkFileSelection_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkFileSelectionClass)) = e;

  S_gtk_dialog_class_init(((GtkDialogClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkFixed_symbol;
void
S_gtk_fixed_class_init(GtkFixedClass * c, SEXP e)
{
  SEXP s;

  S_GtkFixed_symbol = install("GtkFixed");
  s = PROTECT(findVar(S_GtkFixed_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkFixedClass)) = e;

  S_gtk_container_class_init(((GtkContainerClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkFontButton_symbol;

static void
S_virtual_gtk_font_button_font_set(GtkFontButton* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkFontButton_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkFontButton")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_font_button_class_init(GtkFontButtonClass * c, SEXP e)
{
  SEXP s;

  S_GtkFontButton_symbol = install("GtkFontButton");
  s = PROTECT(findVar(S_GtkFontButton_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkFontButtonClass)) = e;

  S_gtk_button_class_init(((GtkButtonClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->font_set = S_virtual_gtk_font_button_font_set;
}
USER_OBJECT_
S_gtk_font_button_class_font_set(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkFontButtonClass* object_class = ((GtkFontButtonClass*)getPtrValue(s_object_class));
  GtkFontButton* object = GTK_FONT_BUTTON(getPtrValue(s_object));


  object_class->font_set(object);


  return(_result);
}
 

static SEXP S_GtkFontSelection_symbol;
void
S_gtk_font_selection_class_init(GtkFontSelectionClass * c, SEXP e)
{
  SEXP s;

  S_GtkFontSelection_symbol = install("GtkFontSelection");
  s = PROTECT(findVar(S_GtkFontSelection_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkFontSelectionClass)) = e;

  S_gtk_vbox_class_init(((GtkVBoxClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkFontSelectionDialog_symbol;
void
S_gtk_font_selection_dialog_class_init(GtkFontSelectionDialogClass * c, SEXP e)
{
  SEXP s;

  S_GtkFontSelectionDialog_symbol = install("GtkFontSelectionDialog");
  s = PROTECT(findVar(S_GtkFontSelectionDialog_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkFontSelectionDialogClass)) = e;

  S_gtk_dialog_class_init(((GtkDialogClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkFrame_symbol;

static void
S_virtual_gtk_frame_compute_child_allocation(GtkFrame* s_object, GtkAllocation* s_allocation)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkFrame_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkFrame")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGtkAllocation(s_allocation));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_frame_class_init(GtkFrameClass * c, SEXP e)
{
  SEXP s;

  S_GtkFrame_symbol = install("GtkFrame");
  s = PROTECT(findVar(S_GtkFrame_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkFrameClass)) = e;

  S_gtk_bin_class_init(((GtkBinClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->compute_child_allocation = S_virtual_gtk_frame_compute_child_allocation;
}
USER_OBJECT_
S_gtk_frame_class_compute_child_allocation(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_allocation)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkFrameClass* object_class = ((GtkFrameClass*)getPtrValue(s_object_class));
  GtkFrame* object = GTK_FRAME(getPtrValue(s_object));
  GtkAllocation* allocation = asCGtkAllocation(s_allocation);


  object_class->compute_child_allocation(object, allocation);


  return(_result);
}
 

static SEXP S_GtkGammaCurve_symbol;
void
S_gtk_gamma_curve_class_init(GtkGammaCurveClass * c, SEXP e)
{
  SEXP s;

  S_GtkGammaCurve_symbol = install("GtkGammaCurve");
  s = PROTECT(findVar(S_GtkGammaCurve_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkGammaCurveClass)) = e;

  S_gtk_vbox_class_init(((GtkVBoxClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkHandleBox_symbol;

static void
S_virtual_gtk_handle_box_child_attached(GtkHandleBox* s_object, GtkWidget* s_child)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkHandleBox_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkHandleBox")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_child, "GtkWidget"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_handle_box_child_detached(GtkHandleBox* s_object, GtkWidget* s_child)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkHandleBox_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkHandleBox")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_child, "GtkWidget"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_handle_box_class_init(GtkHandleBoxClass * c, SEXP e)
{
  SEXP s;

  S_GtkHandleBox_symbol = install("GtkHandleBox");
  s = PROTECT(findVar(S_GtkHandleBox_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkHandleBoxClass)) = e;

  S_gtk_bin_class_init(((GtkBinClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->child_attached = S_virtual_gtk_handle_box_child_attached;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->child_detached = S_virtual_gtk_handle_box_child_detached;
}
USER_OBJECT_
S_gtk_handle_box_class_child_attached(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_child)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkHandleBoxClass* object_class = ((GtkHandleBoxClass*)getPtrValue(s_object_class));
  GtkHandleBox* object = GTK_HANDLE_BOX(getPtrValue(s_object));
  GtkWidget* child = GTK_WIDGET(getPtrValue(s_child));


  object_class->child_attached(object, child);


  return(_result);
}

USER_OBJECT_
S_gtk_handle_box_class_child_detached(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_child)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkHandleBoxClass* object_class = ((GtkHandleBoxClass*)getPtrValue(s_object_class));
  GtkHandleBox* object = GTK_HANDLE_BOX(getPtrValue(s_object));
  GtkWidget* child = GTK_WIDGET(getPtrValue(s_child));


  object_class->child_detached(object, child);


  return(_result);
}
 

static SEXP S_GtkHBox_symbol;
void
S_gtk_hbox_class_init(GtkHBoxClass * c, SEXP e)
{
  SEXP s;

  S_GtkHBox_symbol = install("GtkHBox");
  s = PROTECT(findVar(S_GtkHBox_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkHBoxClass)) = e;

  S_gtk_box_class_init(((GtkBoxClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkHButtonBox_symbol;
void
S_gtk_hbutton_box_class_init(GtkHButtonBoxClass * c, SEXP e)
{
  SEXP s;

  S_GtkHButtonBox_symbol = install("GtkHButtonBox");
  s = PROTECT(findVar(S_GtkHButtonBox_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkHButtonBoxClass)) = e;

  S_gtk_button_box_class_init(((GtkButtonBoxClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkHPaned_symbol;
void
S_gtk_hpaned_class_init(GtkHPanedClass * c, SEXP e)
{
  SEXP s;

  S_GtkHPaned_symbol = install("GtkHPaned");
  s = PROTECT(findVar(S_GtkHPaned_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkHPanedClass)) = e;

  S_gtk_paned_class_init(((GtkPanedClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkHRuler_symbol;
void
S_gtk_hruler_class_init(GtkHRulerClass * c, SEXP e)
{
  SEXP s;

  S_GtkHRuler_symbol = install("GtkHRuler");
  s = PROTECT(findVar(S_GtkHRuler_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkHRulerClass)) = e;

  S_gtk_ruler_class_init(((GtkRulerClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkHScale_symbol;
void
S_gtk_hscale_class_init(GtkHScaleClass * c, SEXP e)
{
  SEXP s;

  S_GtkHScale_symbol = install("GtkHScale");
  s = PROTECT(findVar(S_GtkHScale_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkHScaleClass)) = e;

  S_gtk_scale_class_init(((GtkScaleClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkHScrollbar_symbol;
void
S_gtk_hscrollbar_class_init(GtkHScrollbarClass * c, SEXP e)
{
  SEXP s;

  S_GtkHScrollbar_symbol = install("GtkHScrollbar");
  s = PROTECT(findVar(S_GtkHScrollbar_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkHScrollbarClass)) = e;

  S_gtk_scrollbar_class_init(((GtkScrollbarClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkHSeparator_symbol;
void
S_gtk_hseparator_class_init(GtkHSeparatorClass * c, SEXP e)
{
  SEXP s;

  S_GtkHSeparator_symbol = install("GtkHSeparator");
  s = PROTECT(findVar(S_GtkHSeparator_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkHSeparatorClass)) = e;

  S_gtk_separator_class_init(((GtkSeparatorClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkIconFactory_symbol;
void
S_gtk_icon_factory_class_init(GtkIconFactoryClass * c, SEXP e)
{
  SEXP s;

  S_GtkIconFactory_symbol = install("GtkIconFactory");
  s = PROTECT(findVar(S_GtkIconFactory_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkIconFactoryClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkIconTheme_symbol;

static void
S_virtual_gtk_icon_theme_changed(GtkIconTheme* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIconTheme_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkIconTheme")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_icon_theme_class_init(GtkIconThemeClass * c, SEXP e)
{
  SEXP s;

  S_GtkIconTheme_symbol = install("GtkIconTheme");
  s = PROTECT(findVar(S_GtkIconTheme_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkIconThemeClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->changed = S_virtual_gtk_icon_theme_changed;
}
USER_OBJECT_
S_gtk_icon_theme_class_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIconThemeClass* object_class = ((GtkIconThemeClass*)getPtrValue(s_object_class));
  GtkIconTheme* object = GTK_ICON_THEME(getPtrValue(s_object));


  object_class->changed(object);


  return(_result);
}
 

static SEXP S_GtkIconView_symbol;

static void
S_virtual_gtk_icon_view_set_scroll_adjustments(GtkIconView* s_object, GtkAdjustment* s_hadjustment, GtkAdjustment* s_vadjustment)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIconView_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkIconView")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_hadjustment, "GtkAdjustment"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_vadjustment, "GtkAdjustment"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_icon_view_item_activated(GtkIconView* s_object, GtkTreePath* s_path)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIconView_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkIconView")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_path ? gtk_tree_path_copy(s_path) : NULL, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_icon_view_selection_changed(GtkIconView* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIconView_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkIconView")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_icon_view_select_all(GtkIconView* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIconView_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkIconView")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_icon_view_unselect_all(GtkIconView* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIconView_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkIconView")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_icon_view_select_cursor_item(GtkIconView* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIconView_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkIconView")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_icon_view_toggle_cursor_item(GtkIconView* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIconView_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkIconView")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gtk_icon_view_move_cursor(GtkIconView* s_object, GtkMovementStep s_step, gint s_count)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIconView_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkIconView")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_step, GTK_TYPE_MOVEMENT_STEP));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_count));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_icon_view_activate_cursor_item(GtkIconView* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIconView_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkIconView")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}
void
S_gtk_icon_view_class_init(GtkIconViewClass * c, SEXP e)
{
  SEXP s;

  S_GtkIconView_symbol = install("GtkIconView");
  s = PROTECT(findVar(S_GtkIconView_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkIconViewClass)) = e;

  S_gtk_container_class_init(((GtkContainerClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->set_scroll_adjustments = S_virtual_gtk_icon_view_set_scroll_adjustments;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->item_activated = S_virtual_gtk_icon_view_item_activated;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->selection_changed = S_virtual_gtk_icon_view_selection_changed;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->select_all = S_virtual_gtk_icon_view_select_all;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->unselect_all = S_virtual_gtk_icon_view_unselect_all;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->select_cursor_item = S_virtual_gtk_icon_view_select_cursor_item;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->toggle_cursor_item = S_virtual_gtk_icon_view_toggle_cursor_item;
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->move_cursor = S_virtual_gtk_icon_view_move_cursor;
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->activate_cursor_item = S_virtual_gtk_icon_view_activate_cursor_item;
}
USER_OBJECT_
S_gtk_icon_view_class_set_scroll_adjustments(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_hadjustment, USER_OBJECT_ s_vadjustment)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIconViewClass* object_class = ((GtkIconViewClass*)getPtrValue(s_object_class));
  GtkIconView* object = GTK_ICON_VIEW(getPtrValue(s_object));
  GtkAdjustment* hadjustment = GTK_ADJUSTMENT(getPtrValue(s_hadjustment));
  GtkAdjustment* vadjustment = GTK_ADJUSTMENT(getPtrValue(s_vadjustment));


  object_class->set_scroll_adjustments(object, hadjustment, vadjustment);


  return(_result);
}

USER_OBJECT_
S_gtk_icon_view_class_item_activated(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_path)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIconViewClass* object_class = ((GtkIconViewClass*)getPtrValue(s_object_class));
  GtkIconView* object = GTK_ICON_VIEW(getPtrValue(s_object));
  GtkTreePath* path = ((GtkTreePath*)getPtrValue(s_path));


  object_class->item_activated(object, path);


  return(_result);
}

USER_OBJECT_
S_gtk_icon_view_class_selection_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIconViewClass* object_class = ((GtkIconViewClass*)getPtrValue(s_object_class));
  GtkIconView* object = GTK_ICON_VIEW(getPtrValue(s_object));


  object_class->selection_changed(object);


  return(_result);
}

USER_OBJECT_
S_gtk_icon_view_class_select_all(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIconViewClass* object_class = ((GtkIconViewClass*)getPtrValue(s_object_class));
  GtkIconView* object = GTK_ICON_VIEW(getPtrValue(s_object));


  object_class->select_all(object);


  return(_result);
}

USER_OBJECT_
S_gtk_icon_view_class_unselect_all(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIconViewClass* object_class = ((GtkIconViewClass*)getPtrValue(s_object_class));
  GtkIconView* object = GTK_ICON_VIEW(getPtrValue(s_object));


  object_class->unselect_all(object);


  return(_result);
}

USER_OBJECT_
S_gtk_icon_view_class_select_cursor_item(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIconViewClass* object_class = ((GtkIconViewClass*)getPtrValue(s_object_class));
  GtkIconView* object = GTK_ICON_VIEW(getPtrValue(s_object));


  object_class->select_cursor_item(object);


  return(_result);
}

USER_OBJECT_
S_gtk_icon_view_class_toggle_cursor_item(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIconViewClass* object_class = ((GtkIconViewClass*)getPtrValue(s_object_class));
  GtkIconView* object = GTK_ICON_VIEW(getPtrValue(s_object));


  object_class->toggle_cursor_item(object);


  return(_result);
}

USER_OBJECT_
S_gtk_icon_view_class_move_cursor(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_step, USER_OBJECT_ s_count)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIconViewClass* object_class = ((GtkIconViewClass*)getPtrValue(s_object_class));
  GtkIconView* object = GTK_ICON_VIEW(getPtrValue(s_object));
  GtkMovementStep step = ((GtkMovementStep)asCEnum(s_step, GTK_TYPE_MOVEMENT_STEP));
  gint count = ((gint)asCInteger(s_count));

  gboolean ans;

  ans = object_class->move_cursor(object, step, count);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_icon_view_class_activate_cursor_item(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIconViewClass* object_class = ((GtkIconViewClass*)getPtrValue(s_object_class));
  GtkIconView* object = GTK_ICON_VIEW(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->activate_cursor_item(object);

  _result = asRLogical(ans);

  return(_result);
}
 

static SEXP S_GtkImage_symbol;
void
S_gtk_image_class_init(GtkImageClass * c, SEXP e)
{
  SEXP s;

  S_GtkImage_symbol = install("GtkImage");
  s = PROTECT(findVar(S_GtkImage_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkImageClass)) = e;

  S_gtk_misc_class_init(((GtkMiscClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkImageMenuItem_symbol;
void
S_gtk_image_menu_item_class_init(GtkImageMenuItemClass * c, SEXP e)
{
  SEXP s;

  S_GtkImageMenuItem_symbol = install("GtkImageMenuItem");
  s = PROTECT(findVar(S_GtkImageMenuItem_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkImageMenuItemClass)) = e;

  S_gtk_menu_item_class_init(((GtkMenuItemClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkIMContext_symbol;

static void
S_virtual_gtk_imcontext_preedit_start(GtkIMContext* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIMContext_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkIMContext")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_imcontext_preedit_end(GtkIMContext* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIMContext_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkIMContext")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_imcontext_preedit_changed(GtkIMContext* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIMContext_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkIMContext")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_imcontext_commit(GtkIMContext* s_object, const gchar* s_str)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIMContext_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkIMContext")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_str));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gtk_imcontext_retrieve_surrounding(GtkIMContext* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIMContext_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkIMContext")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_imcontext_delete_surrounding(GtkIMContext* s_object, gint s_offset, gint s_n_chars)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIMContext_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkIMContext")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_offset));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_n_chars));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static void
S_virtual_gtk_imcontext_set_client_window(GtkIMContext* s_object, GdkWindow* s_window)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIMContext_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkIMContext")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_window, "GdkWindow"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_imcontext_get_preedit_string(GtkIMContext* s_object, gchar** s_str, PangoAttrList** s_attrs, gint* s_cursor_pos)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIMContext_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkIMContext")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
  *s_str = ((gchar*)g_strdup(asCString(VECTOR_ELT(s_ans, 0))));
  *s_attrs = ((PangoAttrList*)pango_attr_list_ref(getPtrValue(VECTOR_ELT(s_ans, 1))));
  *s_cursor_pos = ((gint)asCInteger(VECTOR_ELT(s_ans, 2)));
}

static gboolean
S_virtual_gtk_imcontext_filter_keypress(GtkIMContext* s_object, GdkEventKey* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIMContext_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkIMContext")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static void
S_virtual_gtk_imcontext_focus_in(GtkIMContext* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIMContext_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkIMContext")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_imcontext_focus_out(GtkIMContext* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIMContext_symbol, S_GOBJECT_GET_ENV(s_object)), 10));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkIMContext")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_imcontext_reset(GtkIMContext* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIMContext_symbol, S_GOBJECT_GET_ENV(s_object)), 11));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkIMContext")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_imcontext_set_cursor_location(GtkIMContext* s_object, GdkRectangle* s_area)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIMContext_symbol, S_GOBJECT_GET_ENV(s_object)), 12));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkIMContext")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_area));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_imcontext_set_use_preedit(GtkIMContext* s_object, gboolean s_use_preedit)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIMContext_symbol, S_GOBJECT_GET_ENV(s_object)), 13));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkIMContext")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_use_preedit));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_imcontext_set_surrounding(GtkIMContext* s_object, const gchar* s_text, gint s_len, gint s_cursor_index)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIMContext_symbol, S_GOBJECT_GET_ENV(s_object)), 14));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkIMContext")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_text));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_len));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_cursor_index));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gtk_imcontext_get_surrounding(GtkIMContext* s_object, gchar** s_text, gint* s_cursor_index)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkIMContext_symbol, S_GOBJECT_GET_ENV(s_object)), 15));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkIMContext")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_text = ((gchar*)g_strdup(asCString(VECTOR_ELT(s_ans, 1))));
  *s_cursor_index = ((gint)asCInteger(VECTOR_ELT(s_ans, 2)));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}
void
S_gtk_imcontext_class_init(GtkIMContextClass * c, SEXP e)
{
  SEXP s;

  S_GtkIMContext_symbol = install("GtkIMContext");
  s = PROTECT(findVar(S_GtkIMContext_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkIMContextClass)) = e;

  S_gtk_object_class_init(((GtkObjectClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->preedit_start = S_virtual_gtk_imcontext_preedit_start;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->preedit_end = S_virtual_gtk_imcontext_preedit_end;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->preedit_changed = S_virtual_gtk_imcontext_preedit_changed;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->commit = S_virtual_gtk_imcontext_commit;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->retrieve_surrounding = S_virtual_gtk_imcontext_retrieve_surrounding;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->delete_surrounding = S_virtual_gtk_imcontext_delete_surrounding;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->set_client_window = S_virtual_gtk_imcontext_set_client_window;
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->get_preedit_string = S_virtual_gtk_imcontext_get_preedit_string;
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->filter_keypress = S_virtual_gtk_imcontext_filter_keypress;
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->focus_in = S_virtual_gtk_imcontext_focus_in;
  if(VECTOR_ELT(s, 10) != NULL_USER_OBJECT)
    c->focus_out = S_virtual_gtk_imcontext_focus_out;
  if(VECTOR_ELT(s, 11) != NULL_USER_OBJECT)
    c->reset = S_virtual_gtk_imcontext_reset;
  if(VECTOR_ELT(s, 12) != NULL_USER_OBJECT)
    c->set_cursor_location = S_virtual_gtk_imcontext_set_cursor_location;
  if(VECTOR_ELT(s, 13) != NULL_USER_OBJECT)
    c->set_use_preedit = S_virtual_gtk_imcontext_set_use_preedit;
  if(VECTOR_ELT(s, 14) != NULL_USER_OBJECT)
    c->set_surrounding = S_virtual_gtk_imcontext_set_surrounding;
  if(VECTOR_ELT(s, 15) != NULL_USER_OBJECT)
    c->get_surrounding = S_virtual_gtk_imcontext_get_surrounding;
}
USER_OBJECT_
S_gtk_imcontext_class_preedit_start(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIMContextClass* object_class = ((GtkIMContextClass*)getPtrValue(s_object_class));
  GtkIMContext* object = GTK_IM_CONTEXT(getPtrValue(s_object));


  object_class->preedit_start(object);


  return(_result);
}

USER_OBJECT_
S_gtk_imcontext_class_preedit_end(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIMContextClass* object_class = ((GtkIMContextClass*)getPtrValue(s_object_class));
  GtkIMContext* object = GTK_IM_CONTEXT(getPtrValue(s_object));


  object_class->preedit_end(object);


  return(_result);
}

USER_OBJECT_
S_gtk_imcontext_class_preedit_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIMContextClass* object_class = ((GtkIMContextClass*)getPtrValue(s_object_class));
  GtkIMContext* object = GTK_IM_CONTEXT(getPtrValue(s_object));


  object_class->preedit_changed(object);


  return(_result);
}

USER_OBJECT_
S_gtk_imcontext_class_commit(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_str)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIMContextClass* object_class = ((GtkIMContextClass*)getPtrValue(s_object_class));
  GtkIMContext* object = GTK_IM_CONTEXT(getPtrValue(s_object));
  const gchar* str = ((const gchar*)asCString(s_str));


  object_class->commit(object, str);


  return(_result);
}

USER_OBJECT_
S_gtk_imcontext_class_retrieve_surrounding(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIMContextClass* object_class = ((GtkIMContextClass*)getPtrValue(s_object_class));
  GtkIMContext* object = GTK_IM_CONTEXT(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->retrieve_surrounding(object);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_imcontext_class_delete_surrounding(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_offset, USER_OBJECT_ s_n_chars)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIMContextClass* object_class = ((GtkIMContextClass*)getPtrValue(s_object_class));
  GtkIMContext* object = GTK_IM_CONTEXT(getPtrValue(s_object));
  gint offset = ((gint)asCInteger(s_offset));
  gint n_chars = ((gint)asCInteger(s_n_chars));

  gboolean ans;

  ans = object_class->delete_surrounding(object, offset, n_chars);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_imcontext_class_set_client_window(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_window)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIMContextClass* object_class = ((GtkIMContextClass*)getPtrValue(s_object_class));
  GtkIMContext* object = GTK_IM_CONTEXT(getPtrValue(s_object));
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));


  object_class->set_client_window(object, window);


  return(_result);
}

USER_OBJECT_
S_gtk_imcontext_class_get_preedit_string(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIMContextClass* object_class = ((GtkIMContextClass*)getPtrValue(s_object_class));
  GtkIMContext* object = GTK_IM_CONTEXT(getPtrValue(s_object));

  gchar* str = NULL;
  PangoAttrList* attrs = NULL;
  gint cursor_pos;

  object_class->get_preedit_string(object, &str, &attrs, &cursor_pos);


  _result = retByVal(PROTECT(_result), "str", PROTECT(asRString(str)), "attrs", PROTECT(toRPointerWithFinalizer(attrs, "PangoAttrList", (RPointerFinalizer) pango_attr_list_unref)), "cursor.pos", PROTECT(asRInteger(cursor_pos)), NULL);
  UNPROTECT(4);
  ;
  ;

  return(_result);
}

USER_OBJECT_
S_gtk_imcontext_class_filter_keypress(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIMContextClass* object_class = ((GtkIMContextClass*)getPtrValue(s_object_class));
  GtkIMContext* object = GTK_IM_CONTEXT(getPtrValue(s_object));
  GdkEventKey* event = ((GdkEventKey*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->filter_keypress(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_imcontext_class_focus_in(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIMContextClass* object_class = ((GtkIMContextClass*)getPtrValue(s_object_class));
  GtkIMContext* object = GTK_IM_CONTEXT(getPtrValue(s_object));


  object_class->focus_in(object);


  return(_result);
}

USER_OBJECT_
S_gtk_imcontext_class_focus_out(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIMContextClass* object_class = ((GtkIMContextClass*)getPtrValue(s_object_class));
  GtkIMContext* object = GTK_IM_CONTEXT(getPtrValue(s_object));


  object_class->focus_out(object);


  return(_result);
}

USER_OBJECT_
S_gtk_imcontext_class_reset(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIMContextClass* object_class = ((GtkIMContextClass*)getPtrValue(s_object_class));
  GtkIMContext* object = GTK_IM_CONTEXT(getPtrValue(s_object));


  object_class->reset(object);


  return(_result);
}

USER_OBJECT_
S_gtk_imcontext_class_set_cursor_location(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_area)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIMContextClass* object_class = ((GtkIMContextClass*)getPtrValue(s_object_class));
  GtkIMContext* object = GTK_IM_CONTEXT(getPtrValue(s_object));
  GdkRectangle* area = asCGdkRectangle(s_area);


  object_class->set_cursor_location(object, area);


  return(_result);
}

USER_OBJECT_
S_gtk_imcontext_class_set_use_preedit(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_use_preedit)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIMContextClass* object_class = ((GtkIMContextClass*)getPtrValue(s_object_class));
  GtkIMContext* object = GTK_IM_CONTEXT(getPtrValue(s_object));
  gboolean use_preedit = ((gboolean)asCLogical(s_use_preedit));


  object_class->set_use_preedit(object, use_preedit);


  return(_result);
}

USER_OBJECT_
S_gtk_imcontext_class_set_surrounding(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_len, USER_OBJECT_ s_cursor_index)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIMContextClass* object_class = ((GtkIMContextClass*)getPtrValue(s_object_class));
  GtkIMContext* object = GTK_IM_CONTEXT(getPtrValue(s_object));
  const gchar* text = ((const gchar*)asCString(s_text));
  gint len = ((gint)asCInteger(s_len));
  gint cursor_index = ((gint)asCInteger(s_cursor_index));


  object_class->set_surrounding(object, text, len, cursor_index);


  return(_result);
}

USER_OBJECT_
S_gtk_imcontext_class_get_surrounding(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkIMContextClass* object_class = ((GtkIMContextClass*)getPtrValue(s_object_class));
  GtkIMContext* object = GTK_IM_CONTEXT(getPtrValue(s_object));

  gboolean ans;
  gchar* text = NULL;
  gint cursor_index;

  ans = object_class->get_surrounding(object, &text, &cursor_index);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "text", PROTECT(asRString(text)), "cursor.index", PROTECT(asRInteger(cursor_index)), NULL);
  UNPROTECT(3);
  ;

  return(_result);
}
 

static SEXP S_GtkIMContextSimple_symbol;
void
S_gtk_imcontext_simple_class_init(GtkIMContextSimpleClass * c, SEXP e)
{
  SEXP s;

  S_GtkIMContextSimple_symbol = install("GtkIMContextSimple");
  s = PROTECT(findVar(S_GtkIMContextSimple_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkIMContextSimpleClass)) = e;

  S_gtk_imcontext_class_init(((GtkIMContextClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkIMMulticontext_symbol;
void
S_gtk_immulticontext_class_init(GtkIMMulticontextClass * c, SEXP e)
{
  SEXP s;

  S_GtkIMMulticontext_symbol = install("GtkIMMulticontext");
  s = PROTECT(findVar(S_GtkIMMulticontext_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkIMMulticontextClass)) = e;

  S_gtk_imcontext_class_init(((GtkIMContextClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkInputDialog_symbol;

static void
S_virtual_gtk_input_dialog_enable_device(GtkInputDialog* s_object, GdkDevice* s_device)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkInputDialog_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkInputDialog")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_device, "GdkDevice"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_input_dialog_disable_device(GtkInputDialog* s_object, GdkDevice* s_device)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkInputDialog_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkInputDialog")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_device, "GdkDevice"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_input_dialog_class_init(GtkInputDialogClass * c, SEXP e)
{
  SEXP s;

  S_GtkInputDialog_symbol = install("GtkInputDialog");
  s = PROTECT(findVar(S_GtkInputDialog_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkInputDialogClass)) = e;

  S_gtk_dialog_class_init(((GtkDialogClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->enable_device = S_virtual_gtk_input_dialog_enable_device;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->disable_device = S_virtual_gtk_input_dialog_disable_device;
}
USER_OBJECT_
S_gtk_input_dialog_class_enable_device(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_device)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkInputDialogClass* object_class = ((GtkInputDialogClass*)getPtrValue(s_object_class));
  GtkInputDialog* object = GTK_INPUT_DIALOG(getPtrValue(s_object));
  GdkDevice* device = GDK_DEVICE(getPtrValue(s_device));


  object_class->enable_device(object, device);


  return(_result);
}

USER_OBJECT_
S_gtk_input_dialog_class_disable_device(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_device)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkInputDialogClass* object_class = ((GtkInputDialogClass*)getPtrValue(s_object_class));
  GtkInputDialog* object = GTK_INPUT_DIALOG(getPtrValue(s_object));
  GdkDevice* device = GDK_DEVICE(getPtrValue(s_device));


  object_class->disable_device(object, device);


  return(_result);
}
 

static SEXP S_GtkInvisible_symbol;
void
S_gtk_invisible_class_init(GtkInvisibleClass * c, SEXP e)
{
  SEXP s;

  S_GtkInvisible_symbol = install("GtkInvisible");
  s = PROTECT(findVar(S_GtkInvisible_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkInvisibleClass)) = e;

  S_gtk_widget_class_init(((GtkWidgetClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkItem_symbol;

static void
S_virtual_gtk_item_select(GtkItem* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkItem_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkItem")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_item_deselect(GtkItem* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkItem_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkItem")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_item_toggle(GtkItem* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkItem_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkItem")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_item_class_init(GtkItemClass * c, SEXP e)
{
  SEXP s;

  S_GtkItem_symbol = install("GtkItem");
  s = PROTECT(findVar(S_GtkItem_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkItemClass)) = e;

  S_gtk_bin_class_init(((GtkBinClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->select = S_virtual_gtk_item_select;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->deselect = S_virtual_gtk_item_deselect;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->toggle = S_virtual_gtk_item_toggle;
}
USER_OBJECT_
S_gtk_item_class_select(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkItemClass* object_class = ((GtkItemClass*)getPtrValue(s_object_class));
  GtkItem* object = GTK_ITEM(getPtrValue(s_object));


  object_class->select(object);


  return(_result);
}

USER_OBJECT_
S_gtk_item_class_deselect(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkItemClass* object_class = ((GtkItemClass*)getPtrValue(s_object_class));
  GtkItem* object = GTK_ITEM(getPtrValue(s_object));


  object_class->deselect(object);


  return(_result);
}

USER_OBJECT_
S_gtk_item_class_toggle(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkItemClass* object_class = ((GtkItemClass*)getPtrValue(s_object_class));
  GtkItem* object = GTK_ITEM(getPtrValue(s_object));


  object_class->toggle(object);


  return(_result);
}
 

static SEXP S_GtkItemFactory_symbol;
void
S_gtk_item_factory_class_init(GtkItemFactoryClass * c, SEXP e)
{
  SEXP s;

  S_GtkItemFactory_symbol = install("GtkItemFactory");
  s = PROTECT(findVar(S_GtkItemFactory_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkItemFactoryClass)) = e;

  S_gtk_object_class_init(((GtkObjectClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkLabel_symbol;

static void
S_virtual_gtk_label_move_cursor(GtkLabel* s_object, GtkMovementStep s_step, gint s_count, gboolean s_extend_selection)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkLabel_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkLabel")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_step, GTK_TYPE_MOVEMENT_STEP));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_count));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_extend_selection));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_label_copy_clipboard(GtkLabel* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkLabel_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkLabel")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_label_populate_popup(GtkLabel* s_object, GtkMenu* s_menu)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkLabel_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkLabel")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_menu, "GtkMenu"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_label_class_init(GtkLabelClass * c, SEXP e)
{
  SEXP s;

  S_GtkLabel_symbol = install("GtkLabel");
  s = PROTECT(findVar(S_GtkLabel_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkLabelClass)) = e;

  S_gtk_misc_class_init(((GtkMiscClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->move_cursor = S_virtual_gtk_label_move_cursor;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->copy_clipboard = S_virtual_gtk_label_copy_clipboard;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->populate_popup = S_virtual_gtk_label_populate_popup;
}
USER_OBJECT_
S_gtk_label_class_move_cursor(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_step, USER_OBJECT_ s_count, USER_OBJECT_ s_extend_selection)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkLabelClass* object_class = ((GtkLabelClass*)getPtrValue(s_object_class));
  GtkLabel* object = GTK_LABEL(getPtrValue(s_object));
  GtkMovementStep step = ((GtkMovementStep)asCEnum(s_step, GTK_TYPE_MOVEMENT_STEP));
  gint count = ((gint)asCInteger(s_count));
  gboolean extend_selection = ((gboolean)asCLogical(s_extend_selection));


  object_class->move_cursor(object, step, count, extend_selection);


  return(_result);
}

USER_OBJECT_
S_gtk_label_class_copy_clipboard(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkLabelClass* object_class = ((GtkLabelClass*)getPtrValue(s_object_class));
  GtkLabel* object = GTK_LABEL(getPtrValue(s_object));


  object_class->copy_clipboard(object);


  return(_result);
}

USER_OBJECT_
S_gtk_label_class_populate_popup(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_menu)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkLabelClass* object_class = ((GtkLabelClass*)getPtrValue(s_object_class));
  GtkLabel* object = GTK_LABEL(getPtrValue(s_object));
  GtkMenu* menu = GTK_MENU(getPtrValue(s_menu));


  object_class->populate_popup(object, menu);


  return(_result);
}
 

static SEXP S_GtkLayout_symbol;

static void
S_virtual_gtk_layout_set_scroll_adjustments(GtkLayout* s_object, GtkAdjustment* s_hadjustment, GtkAdjustment* s_vadjustment)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkLayout_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkLayout")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_hadjustment, "GtkAdjustment"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_vadjustment, "GtkAdjustment"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_layout_class_init(GtkLayoutClass * c, SEXP e)
{
  SEXP s;

  S_GtkLayout_symbol = install("GtkLayout");
  s = PROTECT(findVar(S_GtkLayout_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkLayoutClass)) = e;

  S_gtk_container_class_init(((GtkContainerClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->set_scroll_adjustments = S_virtual_gtk_layout_set_scroll_adjustments;
}
USER_OBJECT_
S_gtk_layout_class_set_scroll_adjustments(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_hadjustment, USER_OBJECT_ s_vadjustment)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkLayoutClass* object_class = ((GtkLayoutClass*)getPtrValue(s_object_class));
  GtkLayout* object = GTK_LAYOUT(getPtrValue(s_object));
  GtkAdjustment* hadjustment = GTK_ADJUSTMENT(getPtrValue(s_hadjustment));
  GtkAdjustment* vadjustment = GTK_ADJUSTMENT(getPtrValue(s_vadjustment));


  object_class->set_scroll_adjustments(object, hadjustment, vadjustment);


  return(_result);
}
 

static SEXP S_GtkList_symbol;

static void
S_virtual_gtk_list_selection_changed(GtkList* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkList_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkList")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_list_select_child(GtkList* s_object, GtkWidget* s_child)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkList_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkList")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_child, "GtkWidget"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_list_unselect_child(GtkList* s_object, GtkWidget* s_child)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkList_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkList")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_child, "GtkWidget"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_list_class_init(GtkListClass * c, SEXP e)
{
  SEXP s;

  S_GtkList_symbol = install("GtkList");
  s = PROTECT(findVar(S_GtkList_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkListClass)) = e;

  S_gtk_container_class_init(((GtkContainerClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->selection_changed = S_virtual_gtk_list_selection_changed;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->select_child = S_virtual_gtk_list_select_child;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->unselect_child = S_virtual_gtk_list_unselect_child;
}
USER_OBJECT_
S_gtk_list_class_selection_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkListClass* object_class = ((GtkListClass*)getPtrValue(s_object_class));
  GtkList* object = GTK_LIST(getPtrValue(s_object));


  object_class->selection_changed(object);


  return(_result);
}

USER_OBJECT_
S_gtk_list_class_select_child(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_child)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkListClass* object_class = ((GtkListClass*)getPtrValue(s_object_class));
  GtkList* object = GTK_LIST(getPtrValue(s_object));
  GtkWidget* child = GTK_WIDGET(getPtrValue(s_child));


  object_class->select_child(object, child);


  return(_result);
}

USER_OBJECT_
S_gtk_list_class_unselect_child(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_child)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkListClass* object_class = ((GtkListClass*)getPtrValue(s_object_class));
  GtkList* object = GTK_LIST(getPtrValue(s_object));
  GtkWidget* child = GTK_WIDGET(getPtrValue(s_child));


  object_class->unselect_child(object, child);


  return(_result);
}
 

static SEXP S_GtkListItem_symbol;

static void
S_virtual_gtk_list_item_toggle_focus_row(GtkListItem* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkListItem_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkListItem")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_list_item_select_all(GtkListItem* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkListItem_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkListItem")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_list_item_unselect_all(GtkListItem* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkListItem_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkListItem")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_list_item_undo_selection(GtkListItem* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkListItem_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkListItem")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_list_item_start_selection(GtkListItem* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkListItem_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkListItem")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_list_item_end_selection(GtkListItem* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkListItem_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkListItem")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_list_item_extend_selection(GtkListItem* s_object, GtkScrollType s_scroll_type, gfloat s_position, gboolean s_auto_start_selection)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkListItem_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkListItem")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_scroll_type, GTK_TYPE_SCROLL_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_position));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_auto_start_selection));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_list_item_scroll_horizontal(GtkListItem* s_object, GtkScrollType s_scroll_type, gfloat s_position)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkListItem_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkListItem")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_scroll_type, GTK_TYPE_SCROLL_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_position));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_list_item_scroll_vertical(GtkListItem* s_object, GtkScrollType s_scroll_type, gfloat s_position)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkListItem_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkListItem")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_scroll_type, GTK_TYPE_SCROLL_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_position));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_list_item_toggle_add_mode(GtkListItem* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkListItem_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkListItem")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_list_item_class_init(GtkListItemClass * c, SEXP e)
{
  SEXP s;

  S_GtkListItem_symbol = install("GtkListItem");
  s = PROTECT(findVar(S_GtkListItem_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkListItemClass)) = e;

  S_gtk_item_class_init(((GtkItemClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->toggle_focus_row = S_virtual_gtk_list_item_toggle_focus_row;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->select_all = S_virtual_gtk_list_item_select_all;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->unselect_all = S_virtual_gtk_list_item_unselect_all;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->undo_selection = S_virtual_gtk_list_item_undo_selection;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->start_selection = S_virtual_gtk_list_item_start_selection;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->end_selection = S_virtual_gtk_list_item_end_selection;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->extend_selection = S_virtual_gtk_list_item_extend_selection;
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->scroll_horizontal = S_virtual_gtk_list_item_scroll_horizontal;
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->scroll_vertical = S_virtual_gtk_list_item_scroll_vertical;
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->toggle_add_mode = S_virtual_gtk_list_item_toggle_add_mode;
}
USER_OBJECT_
S_gtk_list_item_class_toggle_focus_row(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkListItemClass* object_class = ((GtkListItemClass*)getPtrValue(s_object_class));
  GtkListItem* object = GTK_LIST_ITEM(getPtrValue(s_object));


  object_class->toggle_focus_row(object);


  return(_result);
}

USER_OBJECT_
S_gtk_list_item_class_select_all(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkListItemClass* object_class = ((GtkListItemClass*)getPtrValue(s_object_class));
  GtkListItem* object = GTK_LIST_ITEM(getPtrValue(s_object));


  object_class->select_all(object);


  return(_result);
}

USER_OBJECT_
S_gtk_list_item_class_unselect_all(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkListItemClass* object_class = ((GtkListItemClass*)getPtrValue(s_object_class));
  GtkListItem* object = GTK_LIST_ITEM(getPtrValue(s_object));


  object_class->unselect_all(object);


  return(_result);
}

USER_OBJECT_
S_gtk_list_item_class_undo_selection(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkListItemClass* object_class = ((GtkListItemClass*)getPtrValue(s_object_class));
  GtkListItem* object = GTK_LIST_ITEM(getPtrValue(s_object));


  object_class->undo_selection(object);


  return(_result);
}

USER_OBJECT_
S_gtk_list_item_class_start_selection(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkListItemClass* object_class = ((GtkListItemClass*)getPtrValue(s_object_class));
  GtkListItem* object = GTK_LIST_ITEM(getPtrValue(s_object));


  object_class->start_selection(object);


  return(_result);
}

USER_OBJECT_
S_gtk_list_item_class_end_selection(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkListItemClass* object_class = ((GtkListItemClass*)getPtrValue(s_object_class));
  GtkListItem* object = GTK_LIST_ITEM(getPtrValue(s_object));


  object_class->end_selection(object);


  return(_result);
}

USER_OBJECT_
S_gtk_list_item_class_extend_selection(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_scroll_type, USER_OBJECT_ s_position, USER_OBJECT_ s_auto_start_selection)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkListItemClass* object_class = ((GtkListItemClass*)getPtrValue(s_object_class));
  GtkListItem* object = GTK_LIST_ITEM(getPtrValue(s_object));
  GtkScrollType scroll_type = ((GtkScrollType)asCEnum(s_scroll_type, GTK_TYPE_SCROLL_TYPE));
  gfloat position = ((gfloat)asCNumeric(s_position));
  gboolean auto_start_selection = ((gboolean)asCLogical(s_auto_start_selection));


  object_class->extend_selection(object, scroll_type, position, auto_start_selection);


  return(_result);
}

USER_OBJECT_
S_gtk_list_item_class_scroll_horizontal(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_scroll_type, USER_OBJECT_ s_position)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkListItemClass* object_class = ((GtkListItemClass*)getPtrValue(s_object_class));
  GtkListItem* object = GTK_LIST_ITEM(getPtrValue(s_object));
  GtkScrollType scroll_type = ((GtkScrollType)asCEnum(s_scroll_type, GTK_TYPE_SCROLL_TYPE));
  gfloat position = ((gfloat)asCNumeric(s_position));


  object_class->scroll_horizontal(object, scroll_type, position);


  return(_result);
}

USER_OBJECT_
S_gtk_list_item_class_scroll_vertical(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_scroll_type, USER_OBJECT_ s_position)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkListItemClass* object_class = ((GtkListItemClass*)getPtrValue(s_object_class));
  GtkListItem* object = GTK_LIST_ITEM(getPtrValue(s_object));
  GtkScrollType scroll_type = ((GtkScrollType)asCEnum(s_scroll_type, GTK_TYPE_SCROLL_TYPE));
  gfloat position = ((gfloat)asCNumeric(s_position));


  object_class->scroll_vertical(object, scroll_type, position);


  return(_result);
}

USER_OBJECT_
S_gtk_list_item_class_toggle_add_mode(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkListItemClass* object_class = ((GtkListItemClass*)getPtrValue(s_object_class));
  GtkListItem* object = GTK_LIST_ITEM(getPtrValue(s_object));


  object_class->toggle_add_mode(object);


  return(_result);
}
 

static SEXP S_GtkListStore_symbol;
void
S_gtk_list_store_class_init(GtkListStoreClass * c, SEXP e)
{
  SEXP s;

  S_GtkListStore_symbol = install("GtkListStore");
  s = PROTECT(findVar(S_GtkListStore_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkListStoreClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkMenu_symbol;
void
S_gtk_menu_class_init(GtkMenuClass * c, SEXP e)
{
  SEXP s;

  S_GtkMenu_symbol = install("GtkMenu");
  s = PROTECT(findVar(S_GtkMenu_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkMenuClass)) = e;

  S_gtk_menu_shell_class_init(((GtkMenuShellClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkMenuBar_symbol;
void
S_gtk_menu_bar_class_init(GtkMenuBarClass * c, SEXP e)
{
  SEXP s;

  S_GtkMenuBar_symbol = install("GtkMenuBar");
  s = PROTECT(findVar(S_GtkMenuBar_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkMenuBarClass)) = e;

  S_gtk_menu_shell_class_init(((GtkMenuShellClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkMenuItem_symbol;

static void
S_virtual_gtk_menu_item_activate(GtkMenuItem* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkMenuItem_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkMenuItem")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_menu_item_activate_item(GtkMenuItem* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkMenuItem_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkMenuItem")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_menu_item_toggle_size_request(GtkMenuItem* s_object, gint* s_requisition)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkMenuItem_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkMenuItem")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
  *s_requisition = ((gint)asCInteger(VECTOR_ELT(s_ans, 0)));
}

static void
S_virtual_gtk_menu_item_toggle_size_allocate(GtkMenuItem* s_object, gint s_allocation)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkMenuItem_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkMenuItem")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_allocation));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_menu_item_class_init(GtkMenuItemClass * c, SEXP e)
{
  SEXP s;

  S_GtkMenuItem_symbol = install("GtkMenuItem");
  s = PROTECT(findVar(S_GtkMenuItem_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkMenuItemClass)) = e;

  S_gtk_item_class_init(((GtkItemClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->activate = S_virtual_gtk_menu_item_activate;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->activate_item = S_virtual_gtk_menu_item_activate_item;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->toggle_size_request = S_virtual_gtk_menu_item_toggle_size_request;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->toggle_size_allocate = S_virtual_gtk_menu_item_toggle_size_allocate;
}
USER_OBJECT_
S_gtk_menu_item_class_activate(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkMenuItemClass* object_class = ((GtkMenuItemClass*)getPtrValue(s_object_class));
  GtkMenuItem* object = GTK_MENU_ITEM(getPtrValue(s_object));


  object_class->activate(object);


  return(_result);
}

USER_OBJECT_
S_gtk_menu_item_class_activate_item(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkMenuItemClass* object_class = ((GtkMenuItemClass*)getPtrValue(s_object_class));
  GtkMenuItem* object = GTK_MENU_ITEM(getPtrValue(s_object));


  object_class->activate_item(object);


  return(_result);
}

USER_OBJECT_
S_gtk_menu_item_class_toggle_size_request(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkMenuItemClass* object_class = ((GtkMenuItemClass*)getPtrValue(s_object_class));
  GtkMenuItem* object = GTK_MENU_ITEM(getPtrValue(s_object));

  gint requisition;

  object_class->toggle_size_request(object, &requisition);


  _result = retByVal(PROTECT(_result), "requisition", PROTECT(asRInteger(requisition)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}

USER_OBJECT_
S_gtk_menu_item_class_toggle_size_allocate(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_allocation)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkMenuItemClass* object_class = ((GtkMenuItemClass*)getPtrValue(s_object_class));
  GtkMenuItem* object = GTK_MENU_ITEM(getPtrValue(s_object));
  gint allocation = ((gint)asCInteger(s_allocation));


  object_class->toggle_size_allocate(object, allocation);


  return(_result);
}
 

static SEXP S_GtkMenuShell_symbol;

static void
S_virtual_gtk_menu_shell_deactivate(GtkMenuShell* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkMenuShell_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkMenuShell")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_menu_shell_selection_done(GtkMenuShell* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkMenuShell_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkMenuShell")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_menu_shell_move_current(GtkMenuShell* s_object, GtkMenuDirectionType s_direction)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkMenuShell_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkMenuShell")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_direction, GTK_TYPE_MENU_DIRECTION_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_menu_shell_activate_current(GtkMenuShell* s_object, gboolean s_force_hide)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkMenuShell_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkMenuShell")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_force_hide));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_menu_shell_cancel(GtkMenuShell* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkMenuShell_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkMenuShell")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_menu_shell_select_item(GtkMenuShell* s_object, GtkWidget* s_menu_item)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkMenuShell_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkMenuShell")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_menu_item, "GtkWidget"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_menu_shell_insert(GtkMenuShell* s_object, GtkWidget* s_child, gint s_position)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkMenuShell_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkMenuShell")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_child, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_position));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gint
S_virtual_gtk_menu_shell_get_popup_delay(GtkMenuShell* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkMenuShell_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkMenuShell")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}
void
S_gtk_menu_shell_class_init(GtkMenuShellClass * c, SEXP e)
{
  SEXP s;

  S_GtkMenuShell_symbol = install("GtkMenuShell");
  s = PROTECT(findVar(S_GtkMenuShell_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkMenuShellClass)) = e;

  S_gtk_container_class_init(((GtkContainerClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->deactivate = S_virtual_gtk_menu_shell_deactivate;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->selection_done = S_virtual_gtk_menu_shell_selection_done;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->move_current = S_virtual_gtk_menu_shell_move_current;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->activate_current = S_virtual_gtk_menu_shell_activate_current;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->cancel = S_virtual_gtk_menu_shell_cancel;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->select_item = S_virtual_gtk_menu_shell_select_item;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->insert = S_virtual_gtk_menu_shell_insert;
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->get_popup_delay = S_virtual_gtk_menu_shell_get_popup_delay;
}
USER_OBJECT_
S_gtk_menu_shell_class_deactivate(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkMenuShellClass* object_class = ((GtkMenuShellClass*)getPtrValue(s_object_class));
  GtkMenuShell* object = GTK_MENU_SHELL(getPtrValue(s_object));


  object_class->deactivate(object);


  return(_result);
}

USER_OBJECT_
S_gtk_menu_shell_class_selection_done(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkMenuShellClass* object_class = ((GtkMenuShellClass*)getPtrValue(s_object_class));
  GtkMenuShell* object = GTK_MENU_SHELL(getPtrValue(s_object));


  object_class->selection_done(object);


  return(_result);
}

USER_OBJECT_
S_gtk_menu_shell_class_move_current(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_direction)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkMenuShellClass* object_class = ((GtkMenuShellClass*)getPtrValue(s_object_class));
  GtkMenuShell* object = GTK_MENU_SHELL(getPtrValue(s_object));
  GtkMenuDirectionType direction = ((GtkMenuDirectionType)asCEnum(s_direction, GTK_TYPE_MENU_DIRECTION_TYPE));


  object_class->move_current(object, direction);


  return(_result);
}

USER_OBJECT_
S_gtk_menu_shell_class_activate_current(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_force_hide)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkMenuShellClass* object_class = ((GtkMenuShellClass*)getPtrValue(s_object_class));
  GtkMenuShell* object = GTK_MENU_SHELL(getPtrValue(s_object));
  gboolean force_hide = ((gboolean)asCLogical(s_force_hide));


  object_class->activate_current(object, force_hide);


  return(_result);
}

USER_OBJECT_
S_gtk_menu_shell_class_cancel(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkMenuShellClass* object_class = ((GtkMenuShellClass*)getPtrValue(s_object_class));
  GtkMenuShell* object = GTK_MENU_SHELL(getPtrValue(s_object));


  object_class->cancel(object);


  return(_result);
}

USER_OBJECT_
S_gtk_menu_shell_class_select_item(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_menu_item)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkMenuShellClass* object_class = ((GtkMenuShellClass*)getPtrValue(s_object_class));
  GtkMenuShell* object = GTK_MENU_SHELL(getPtrValue(s_object));
  GtkWidget* menu_item = GTK_WIDGET(getPtrValue(s_menu_item));


  object_class->select_item(object, menu_item);


  return(_result);
}

USER_OBJECT_
S_gtk_menu_shell_class_insert(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_position)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkMenuShellClass* object_class = ((GtkMenuShellClass*)getPtrValue(s_object_class));
  GtkMenuShell* object = GTK_MENU_SHELL(getPtrValue(s_object));
  GtkWidget* child = GTK_WIDGET(getPtrValue(s_child));
  gint position = ((gint)asCInteger(s_position));


  object_class->insert(object, child, position);


  return(_result);
}

USER_OBJECT_
S_gtk_menu_shell_class_get_popup_delay(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkMenuShellClass* object_class = ((GtkMenuShellClass*)getPtrValue(s_object_class));
  GtkMenuShell* object = GTK_MENU_SHELL(getPtrValue(s_object));

  gint ans;

  ans = object_class->get_popup_delay(object);

  _result = asRInteger(ans);

  return(_result);
}
 

static SEXP S_GtkMenuToolButton_symbol;

static void
S_virtual_gtk_menu_tool_button_show_menu(GtkMenuToolButton* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkMenuToolButton_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkMenuToolButton")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_menu_tool_button_class_init(GtkMenuToolButtonClass * c, SEXP e)
{
  SEXP s;

  S_GtkMenuToolButton_symbol = install("GtkMenuToolButton");
  s = PROTECT(findVar(S_GtkMenuToolButton_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkMenuToolButtonClass)) = e;

  S_gtk_tool_button_class_init(((GtkToolButtonClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->show_menu = S_virtual_gtk_menu_tool_button_show_menu;
}
USER_OBJECT_
S_gtk_menu_tool_button_class_show_menu(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkMenuToolButtonClass* object_class = ((GtkMenuToolButtonClass*)getPtrValue(s_object_class));
  GtkMenuToolButton* object = GTK_MENU_TOOL_BUTTON(getPtrValue(s_object));


  object_class->show_menu(object);


  return(_result);
}
 

static SEXP S_GtkMessageDialog_symbol;
void
S_gtk_message_dialog_class_init(GtkMessageDialogClass * c, SEXP e)
{
  SEXP s;

  S_GtkMessageDialog_symbol = install("GtkMessageDialog");
  s = PROTECT(findVar(S_GtkMessageDialog_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkMessageDialogClass)) = e;

  S_gtk_dialog_class_init(((GtkDialogClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkMisc_symbol;
void
S_gtk_misc_class_init(GtkMiscClass * c, SEXP e)
{
  SEXP s;

  S_GtkMisc_symbol = install("GtkMisc");
  s = PROTECT(findVar(S_GtkMisc_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkMiscClass)) = e;

  S_gtk_widget_class_init(((GtkWidgetClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkNotebook_symbol;

static void
S_virtual_gtk_notebook_switch_page(GtkNotebook* s_object, GtkNotebookPage* s_page, guint s_page_num)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkNotebook_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkNotebook")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_page, "GtkNotebookPage"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_page_num));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gtk_notebook_select_page(GtkNotebook* s_object, gboolean s_move_focus)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkNotebook_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkNotebook")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_move_focus));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_notebook_focus_tab(GtkNotebook* s_object, GtkNotebookTab s_type)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkNotebook_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkNotebook")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_type, GTK_TYPE_NOTEBOOK_TAB));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static void
S_virtual_gtk_notebook_change_current_page(GtkNotebook* s_object, gint s_offset)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkNotebook_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkNotebook")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_offset));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_notebook_move_focus_out(GtkNotebook* s_object, GtkDirectionType s_direction)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkNotebook_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkNotebook")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_direction, GTK_TYPE_DIRECTION_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gtk_notebook_reorder_tab(GtkNotebook* s_object, GtkDirectionType s_direction, gboolean s_move_to_last)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkNotebook_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkNotebook")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_direction, GTK_TYPE_DIRECTION_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_move_to_last));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gint
S_virtual_gtk_notebook_insert_page(GtkNotebook* s_object, GtkWidget* s_child, GtkWidget* s_tab_label, GtkWidget* s_menu_label, gint s_position)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkNotebook_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkNotebook")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_child, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_tab_label, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_menu_label, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_position));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}
void
S_gtk_notebook_class_init(GtkNotebookClass * c, SEXP e)
{
  SEXP s;

  S_GtkNotebook_symbol = install("GtkNotebook");
  s = PROTECT(findVar(S_GtkNotebook_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkNotebookClass)) = e;

  S_gtk_container_class_init(((GtkContainerClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->switch_page = S_virtual_gtk_notebook_switch_page;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->select_page = S_virtual_gtk_notebook_select_page;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->focus_tab = S_virtual_gtk_notebook_focus_tab;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->change_current_page = S_virtual_gtk_notebook_change_current_page;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->move_focus_out = S_virtual_gtk_notebook_move_focus_out;
#if GTK_CHECK_VERSION(2, 10, 7)
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->reorder_tab = S_virtual_gtk_notebook_reorder_tab;
#endif
#if GTK_CHECK_VERSION(2, 10, 0)
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->insert_page = S_virtual_gtk_notebook_insert_page;
#endif
}
USER_OBJECT_
S_gtk_notebook_class_switch_page(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_page, USER_OBJECT_ s_page_num)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkNotebookClass* object_class = ((GtkNotebookClass*)getPtrValue(s_object_class));
  GtkNotebook* object = GTK_NOTEBOOK(getPtrValue(s_object));
  GtkNotebookPage* page = ((GtkNotebookPage*)getPtrValue(s_page));
  guint page_num = ((guint)asCNumeric(s_page_num));


  object_class->switch_page(object, page, page_num);


  return(_result);
}

USER_OBJECT_
S_gtk_notebook_class_select_page(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_move_focus)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkNotebookClass* object_class = ((GtkNotebookClass*)getPtrValue(s_object_class));
  GtkNotebook* object = GTK_NOTEBOOK(getPtrValue(s_object));
  gboolean move_focus = ((gboolean)asCLogical(s_move_focus));

  gboolean ans;

  ans = object_class->select_page(object, move_focus);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_notebook_class_focus_tab(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkNotebookClass* object_class = ((GtkNotebookClass*)getPtrValue(s_object_class));
  GtkNotebook* object = GTK_NOTEBOOK(getPtrValue(s_object));
  GtkNotebookTab type = ((GtkNotebookTab)asCEnum(s_type, GTK_TYPE_NOTEBOOK_TAB));

  gboolean ans;

  ans = object_class->focus_tab(object, type);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_notebook_class_change_current_page(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_offset)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkNotebookClass* object_class = ((GtkNotebookClass*)getPtrValue(s_object_class));
  GtkNotebook* object = GTK_NOTEBOOK(getPtrValue(s_object));
  gint offset = ((gint)asCInteger(s_offset));


  object_class->change_current_page(object, offset);


  return(_result);
}

USER_OBJECT_
S_gtk_notebook_class_move_focus_out(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_direction)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkNotebookClass* object_class = ((GtkNotebookClass*)getPtrValue(s_object_class));
  GtkNotebook* object = GTK_NOTEBOOK(getPtrValue(s_object));
  GtkDirectionType direction = ((GtkDirectionType)asCEnum(s_direction, GTK_TYPE_DIRECTION_TYPE));


  object_class->move_focus_out(object, direction);


  return(_result);
}

USER_OBJECT_
S_gtk_notebook_class_reorder_tab(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_direction, USER_OBJECT_ s_move_to_last)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 10, 7)
  GtkNotebookClass* object_class = ((GtkNotebookClass*)getPtrValue(s_object_class));
  GtkNotebook* object = GTK_NOTEBOOK(getPtrValue(s_object));
  GtkDirectionType direction = ((GtkDirectionType)asCEnum(s_direction, GTK_TYPE_DIRECTION_TYPE));
  gboolean move_to_last = ((gboolean)asCLogical(s_move_to_last));

  gboolean ans;

  ans = object_class->reorder_tab(object, direction, move_to_last);

  _result = asRLogical(ans);
#else
  error("gtk_notebook_reorder_tab exists only in Gtk >= 2.10.7");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_notebook_class_insert_page(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_tab_label, USER_OBJECT_ s_menu_label, USER_OBJECT_ s_position)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 10, 0)
  GtkNotebookClass* object_class = ((GtkNotebookClass*)getPtrValue(s_object_class));
  GtkNotebook* object = GTK_NOTEBOOK(getPtrValue(s_object));
  GtkWidget* child = GTK_WIDGET(getPtrValue(s_child));
  GtkWidget* tab_label = GTK_WIDGET(getPtrValue(s_tab_label));
  GtkWidget* menu_label = GTK_WIDGET(getPtrValue(s_menu_label));
  gint position = ((gint)asCInteger(s_position));

  gint ans;

  ans = object_class->insert_page(object, child, tab_label, menu_label, position);

  _result = asRInteger(ans);
#else
  error("gtk_notebook_insert_page exists only in Gtk >= 2.10.0");
#endif

  return(_result);
}
 

static SEXP S_GtkObject_symbol;
void
S_gtk_object_class_init(GtkObjectClass * c, SEXP e)
{
  SEXP s;

  S_GtkObject_symbol = install("GtkObject");
  s = PROTECT(findVar(S_GtkObject_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkObjectClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkOldEditable_symbol;

static void
S_virtual_gtk_old_editable_activate(GtkOldEditable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkOldEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkOldEditable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_old_editable_set_editable(GtkOldEditable* s_object, gboolean s_is_editable)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkOldEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkOldEditable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_is_editable));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_old_editable_move_cursor(GtkOldEditable* s_object, gint s_x, gint s_y)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkOldEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkOldEditable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_old_editable_move_word(GtkOldEditable* s_object, gint s_n)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkOldEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkOldEditable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_n));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_old_editable_move_page(GtkOldEditable* s_object, gint s_x, gint s_y)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkOldEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkOldEditable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_old_editable_move_to_row(GtkOldEditable* s_object, gint s_row)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkOldEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkOldEditable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_old_editable_move_to_column(GtkOldEditable* s_object, gint s_row)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkOldEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkOldEditable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_old_editable_kill_char(GtkOldEditable* s_object, gint s_direction)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkOldEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkOldEditable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_direction));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_old_editable_kill_word(GtkOldEditable* s_object, gint s_direction)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkOldEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkOldEditable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_direction));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_old_editable_kill_line(GtkOldEditable* s_object, gint s_direction)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkOldEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkOldEditable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_direction));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_old_editable_cut_clipboard(GtkOldEditable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkOldEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 10));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkOldEditable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_old_editable_copy_clipboard(GtkOldEditable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkOldEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 11));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkOldEditable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_old_editable_paste_clipboard(GtkOldEditable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkOldEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 12));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkOldEditable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_old_editable_update_text(GtkOldEditable* s_object, gint s_start_pos, gint s_end_pos)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkOldEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 13));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkOldEditable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_start_pos));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_end_pos));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gchar*
S_virtual_gtk_old_editable_get_chars(GtkOldEditable* s_object, gint s_start_pos, gint s_end_pos)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkOldEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 14));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkOldEditable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_start_pos));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_end_pos));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gchar*)0));
  return(((gchar*)g_strdup(asCString(s_ans))));
}

static void
S_virtual_gtk_old_editable_set_selection(GtkOldEditable* s_object, gint s_start_pos, gint s_end_pos)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkOldEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 15));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkOldEditable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_start_pos));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_end_pos));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_old_editable_set_position(GtkOldEditable* s_object, gint s_position)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkOldEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 16));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkOldEditable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_position));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_old_editable_class_init(GtkOldEditableClass * c, SEXP e)
{
  SEXP s;

  S_GtkOldEditable_symbol = install("GtkOldEditable");
  s = PROTECT(findVar(S_GtkOldEditable_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkOldEditableClass)) = e;

  S_gtk_widget_class_init(((GtkWidgetClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->activate = S_virtual_gtk_old_editable_activate;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->set_editable = S_virtual_gtk_old_editable_set_editable;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->move_cursor = S_virtual_gtk_old_editable_move_cursor;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->move_word = S_virtual_gtk_old_editable_move_word;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->move_page = S_virtual_gtk_old_editable_move_page;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->move_to_row = S_virtual_gtk_old_editable_move_to_row;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->move_to_column = S_virtual_gtk_old_editable_move_to_column;
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->kill_char = S_virtual_gtk_old_editable_kill_char;
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->kill_word = S_virtual_gtk_old_editable_kill_word;
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->kill_line = S_virtual_gtk_old_editable_kill_line;
  if(VECTOR_ELT(s, 10) != NULL_USER_OBJECT)
    c->cut_clipboard = S_virtual_gtk_old_editable_cut_clipboard;
  if(VECTOR_ELT(s, 11) != NULL_USER_OBJECT)
    c->copy_clipboard = S_virtual_gtk_old_editable_copy_clipboard;
  if(VECTOR_ELT(s, 12) != NULL_USER_OBJECT)
    c->paste_clipboard = S_virtual_gtk_old_editable_paste_clipboard;
  if(VECTOR_ELT(s, 13) != NULL_USER_OBJECT)
    c->update_text = S_virtual_gtk_old_editable_update_text;
  if(VECTOR_ELT(s, 14) != NULL_USER_OBJECT)
    c->get_chars = S_virtual_gtk_old_editable_get_chars;
  if(VECTOR_ELT(s, 15) != NULL_USER_OBJECT)
    c->set_selection = S_virtual_gtk_old_editable_set_selection;
  if(VECTOR_ELT(s, 16) != NULL_USER_OBJECT)
    c->set_position = S_virtual_gtk_old_editable_set_position;
}
USER_OBJECT_
S_gtk_old_editable_class_activate(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkOldEditableClass* object_class = ((GtkOldEditableClass*)getPtrValue(s_object_class));
  GtkOldEditable* object = GTK_OLD_EDITABLE(getPtrValue(s_object));


  object_class->activate(object);


  return(_result);
}

USER_OBJECT_
S_gtk_old_editable_class_set_editable(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_is_editable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkOldEditableClass* object_class = ((GtkOldEditableClass*)getPtrValue(s_object_class));
  GtkOldEditable* object = GTK_OLD_EDITABLE(getPtrValue(s_object));
  gboolean is_editable = ((gboolean)asCLogical(s_is_editable));


  object_class->set_editable(object, is_editable);


  return(_result);
}

USER_OBJECT_
S_gtk_old_editable_class_move_cursor(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkOldEditableClass* object_class = ((GtkOldEditableClass*)getPtrValue(s_object_class));
  GtkOldEditable* object = GTK_OLD_EDITABLE(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));


  object_class->move_cursor(object, x, y);


  return(_result);
}

USER_OBJECT_
S_gtk_old_editable_class_move_word(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_n)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkOldEditableClass* object_class = ((GtkOldEditableClass*)getPtrValue(s_object_class));
  GtkOldEditable* object = GTK_OLD_EDITABLE(getPtrValue(s_object));
  gint n = ((gint)asCInteger(s_n));


  object_class->move_word(object, n);


  return(_result);
}

USER_OBJECT_
S_gtk_old_editable_class_move_page(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkOldEditableClass* object_class = ((GtkOldEditableClass*)getPtrValue(s_object_class));
  GtkOldEditable* object = GTK_OLD_EDITABLE(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));


  object_class->move_page(object, x, y);


  return(_result);
}

USER_OBJECT_
S_gtk_old_editable_class_move_to_row(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_row)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkOldEditableClass* object_class = ((GtkOldEditableClass*)getPtrValue(s_object_class));
  GtkOldEditable* object = GTK_OLD_EDITABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));


  object_class->move_to_row(object, row);


  return(_result);
}

USER_OBJECT_
S_gtk_old_editable_class_move_to_column(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_row)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkOldEditableClass* object_class = ((GtkOldEditableClass*)getPtrValue(s_object_class));
  GtkOldEditable* object = GTK_OLD_EDITABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));


  object_class->move_to_column(object, row);


  return(_result);
}

USER_OBJECT_
S_gtk_old_editable_class_kill_char(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_direction)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkOldEditableClass* object_class = ((GtkOldEditableClass*)getPtrValue(s_object_class));
  GtkOldEditable* object = GTK_OLD_EDITABLE(getPtrValue(s_object));
  gint direction = ((gint)asCInteger(s_direction));


  object_class->kill_char(object, direction);


  return(_result);
}

USER_OBJECT_
S_gtk_old_editable_class_kill_word(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_direction)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkOldEditableClass* object_class = ((GtkOldEditableClass*)getPtrValue(s_object_class));
  GtkOldEditable* object = GTK_OLD_EDITABLE(getPtrValue(s_object));
  gint direction = ((gint)asCInteger(s_direction));


  object_class->kill_word(object, direction);


  return(_result);
}

USER_OBJECT_
S_gtk_old_editable_class_kill_line(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_direction)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkOldEditableClass* object_class = ((GtkOldEditableClass*)getPtrValue(s_object_class));
  GtkOldEditable* object = GTK_OLD_EDITABLE(getPtrValue(s_object));
  gint direction = ((gint)asCInteger(s_direction));


  object_class->kill_line(object, direction);


  return(_result);
}

USER_OBJECT_
S_gtk_old_editable_class_cut_clipboard(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkOldEditableClass* object_class = ((GtkOldEditableClass*)getPtrValue(s_object_class));
  GtkOldEditable* object = GTK_OLD_EDITABLE(getPtrValue(s_object));


  object_class->cut_clipboard(object);


  return(_result);
}

USER_OBJECT_
S_gtk_old_editable_class_copy_clipboard(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkOldEditableClass* object_class = ((GtkOldEditableClass*)getPtrValue(s_object_class));
  GtkOldEditable* object = GTK_OLD_EDITABLE(getPtrValue(s_object));


  object_class->copy_clipboard(object);


  return(_result);
}

USER_OBJECT_
S_gtk_old_editable_class_paste_clipboard(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkOldEditableClass* object_class = ((GtkOldEditableClass*)getPtrValue(s_object_class));
  GtkOldEditable* object = GTK_OLD_EDITABLE(getPtrValue(s_object));


  object_class->paste_clipboard(object);


  return(_result);
}

USER_OBJECT_
S_gtk_old_editable_class_update_text(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_start_pos, USER_OBJECT_ s_end_pos)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkOldEditableClass* object_class = ((GtkOldEditableClass*)getPtrValue(s_object_class));
  GtkOldEditable* object = GTK_OLD_EDITABLE(getPtrValue(s_object));
  gint start_pos = ((gint)asCInteger(s_start_pos));
  gint end_pos = ((gint)asCInteger(s_end_pos));


  object_class->update_text(object, start_pos, end_pos);


  return(_result);
}

USER_OBJECT_
S_gtk_old_editable_class_get_chars(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_start_pos, USER_OBJECT_ s_end_pos)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkOldEditableClass* object_class = ((GtkOldEditableClass*)getPtrValue(s_object_class));
  GtkOldEditable* object = GTK_OLD_EDITABLE(getPtrValue(s_object));
  gint start_pos = ((gint)asCInteger(s_start_pos));
  gint end_pos = ((gint)asCInteger(s_end_pos));

  gchar* ans;

  ans = object_class->get_chars(object, start_pos, end_pos);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;

  return(_result);
}

USER_OBJECT_
S_gtk_old_editable_class_set_selection(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_start_pos, USER_OBJECT_ s_end_pos)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkOldEditableClass* object_class = ((GtkOldEditableClass*)getPtrValue(s_object_class));
  GtkOldEditable* object = GTK_OLD_EDITABLE(getPtrValue(s_object));
  gint start_pos = ((gint)asCInteger(s_start_pos));
  gint end_pos = ((gint)asCInteger(s_end_pos));


  object_class->set_selection(object, start_pos, end_pos);


  return(_result);
}

USER_OBJECT_
S_gtk_old_editable_class_set_position(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_position)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkOldEditableClass* object_class = ((GtkOldEditableClass*)getPtrValue(s_object_class));
  GtkOldEditable* object = GTK_OLD_EDITABLE(getPtrValue(s_object));
  gint position = ((gint)asCInteger(s_position));


  object_class->set_position(object, position);


  return(_result);
}
 

static SEXP S_GtkOptionMenu_symbol;

static void
S_virtual_gtk_option_menu_changed(GtkOptionMenu* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkOptionMenu_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkOptionMenu")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_option_menu_class_init(GtkOptionMenuClass * c, SEXP e)
{
  SEXP s;

  S_GtkOptionMenu_symbol = install("GtkOptionMenu");
  s = PROTECT(findVar(S_GtkOptionMenu_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkOptionMenuClass)) = e;

  S_gtk_button_class_init(((GtkButtonClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->changed = S_virtual_gtk_option_menu_changed;
}
USER_OBJECT_
S_gtk_option_menu_class_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkOptionMenuClass* object_class = ((GtkOptionMenuClass*)getPtrValue(s_object_class));
  GtkOptionMenu* object = GTK_OPTION_MENU(getPtrValue(s_object));


  object_class->changed(object);


  return(_result);
}
 

static SEXP S_GtkPaned_symbol;

static gboolean
S_virtual_gtk_paned_cycle_child_focus(GtkPaned* s_object, gboolean s_reverse)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkPaned_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkPaned")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_reverse));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_paned_toggle_handle_focus(GtkPaned* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkPaned_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkPaned")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_paned_move_handle(GtkPaned* s_object, GtkScrollType s_scroll)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkPaned_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkPaned")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_scroll, GTK_TYPE_SCROLL_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_paned_cycle_handle_focus(GtkPaned* s_object, gboolean s_reverse)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkPaned_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkPaned")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_reverse));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_paned_accept_position(GtkPaned* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkPaned_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkPaned")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_paned_cancel_position(GtkPaned* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkPaned_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkPaned")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}
void
S_gtk_paned_class_init(GtkPanedClass * c, SEXP e)
{
  SEXP s;

  S_GtkPaned_symbol = install("GtkPaned");
  s = PROTECT(findVar(S_GtkPaned_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkPanedClass)) = e;

  S_gtk_container_class_init(((GtkContainerClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->cycle_child_focus = S_virtual_gtk_paned_cycle_child_focus;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->toggle_handle_focus = S_virtual_gtk_paned_toggle_handle_focus;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->move_handle = S_virtual_gtk_paned_move_handle;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->cycle_handle_focus = S_virtual_gtk_paned_cycle_handle_focus;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->accept_position = S_virtual_gtk_paned_accept_position;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->cancel_position = S_virtual_gtk_paned_cancel_position;
}
USER_OBJECT_
S_gtk_paned_class_cycle_child_focus(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_reverse)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkPanedClass* object_class = ((GtkPanedClass*)getPtrValue(s_object_class));
  GtkPaned* object = GTK_PANED(getPtrValue(s_object));
  gboolean reverse = ((gboolean)asCLogical(s_reverse));

  gboolean ans;

  ans = object_class->cycle_child_focus(object, reverse);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_paned_class_toggle_handle_focus(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkPanedClass* object_class = ((GtkPanedClass*)getPtrValue(s_object_class));
  GtkPaned* object = GTK_PANED(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->toggle_handle_focus(object);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_paned_class_move_handle(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_scroll)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkPanedClass* object_class = ((GtkPanedClass*)getPtrValue(s_object_class));
  GtkPaned* object = GTK_PANED(getPtrValue(s_object));
  GtkScrollType scroll = ((GtkScrollType)asCEnum(s_scroll, GTK_TYPE_SCROLL_TYPE));

  gboolean ans;

  ans = object_class->move_handle(object, scroll);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_paned_class_cycle_handle_focus(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_reverse)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkPanedClass* object_class = ((GtkPanedClass*)getPtrValue(s_object_class));
  GtkPaned* object = GTK_PANED(getPtrValue(s_object));
  gboolean reverse = ((gboolean)asCLogical(s_reverse));

  gboolean ans;

  ans = object_class->cycle_handle_focus(object, reverse);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_paned_class_accept_position(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkPanedClass* object_class = ((GtkPanedClass*)getPtrValue(s_object_class));
  GtkPaned* object = GTK_PANED(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->accept_position(object);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_paned_class_cancel_position(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkPanedClass* object_class = ((GtkPanedClass*)getPtrValue(s_object_class));
  GtkPaned* object = GTK_PANED(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->cancel_position(object);

  _result = asRLogical(ans);

  return(_result);
}
 

static SEXP S_GtkPixmap_symbol;
void
S_gtk_pixmap_class_init(GtkPixmapClass * c, SEXP e)
{
  SEXP s;

  S_GtkPixmap_symbol = install("GtkPixmap");
  s = PROTECT(findVar(S_GtkPixmap_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkPixmapClass)) = e;

  S_gtk_misc_class_init(((GtkMiscClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkPlug_symbol;

static void
S_virtual_gtk_plug_embedded(GtkPlug* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkPlug_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkPlug")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_plug_class_init(GtkPlugClass * c, SEXP e)
{
  SEXP s;

  S_GtkPlug_symbol = install("GtkPlug");
  s = PROTECT(findVar(S_GtkPlug_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkPlugClass)) = e;

  S_gtk_window_class_init(((GtkWindowClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->embedded = S_virtual_gtk_plug_embedded;
}
USER_OBJECT_
S_gtk_plug_class_embedded(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkPlugClass* object_class = ((GtkPlugClass*)getPtrValue(s_object_class));
  GtkPlug* object = GTK_PLUG(getPtrValue(s_object));


  object_class->embedded(object);


  return(_result);
}
 

static SEXP S_GtkPreview_symbol;
void
S_gtk_preview_class_init(GtkPreviewClass * c, SEXP e)
{
  SEXP s;

  S_GtkPreview_symbol = install("GtkPreview");
  s = PROTECT(findVar(S_GtkPreview_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkPreviewClass)) = e;

  S_gtk_widget_class_init(((GtkWidgetClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkProgress_symbol;

static void
S_virtual_gtk_progress_paint(GtkProgress* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkProgress_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkProgress")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_progress_update(GtkProgress* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkProgress_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkProgress")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_progress_act_mode_enter(GtkProgress* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkProgress_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkProgress")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_progress_class_init(GtkProgressClass * c, SEXP e)
{
  SEXP s;

  S_GtkProgress_symbol = install("GtkProgress");
  s = PROTECT(findVar(S_GtkProgress_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkProgressClass)) = e;

  S_gtk_widget_class_init(((GtkWidgetClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->paint = S_virtual_gtk_progress_paint;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->update = S_virtual_gtk_progress_update;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->act_mode_enter = S_virtual_gtk_progress_act_mode_enter;
}
USER_OBJECT_
S_gtk_progress_class_paint(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkProgressClass* object_class = ((GtkProgressClass*)getPtrValue(s_object_class));
  GtkProgress* object = GTK_PROGRESS(getPtrValue(s_object));


  object_class->paint(object);


  return(_result);
}

USER_OBJECT_
S_gtk_progress_class_update(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkProgressClass* object_class = ((GtkProgressClass*)getPtrValue(s_object_class));
  GtkProgress* object = GTK_PROGRESS(getPtrValue(s_object));


  object_class->update(object);


  return(_result);
}

USER_OBJECT_
S_gtk_progress_class_act_mode_enter(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkProgressClass* object_class = ((GtkProgressClass*)getPtrValue(s_object_class));
  GtkProgress* object = GTK_PROGRESS(getPtrValue(s_object));


  object_class->act_mode_enter(object);


  return(_result);
}
 

static SEXP S_GtkProgressBar_symbol;
void
S_gtk_progress_bar_class_init(GtkProgressBarClass * c, SEXP e)
{
  SEXP s;

  S_GtkProgressBar_symbol = install("GtkProgressBar");
  s = PROTECT(findVar(S_GtkProgressBar_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkProgressBarClass)) = e;

  S_gtk_progress_class_init(((GtkProgressClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkRadioAction_symbol;

static void
S_virtual_gtk_radio_action_changed(GtkRadioAction* s_object, GtkRadioAction* s_current)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkRadioAction_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkRadioAction")));
  tmp = CDR(tmp);
  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_current, toRPointerWithRef(s_current, "GtkRadioAction")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_radio_action_class_init(GtkRadioActionClass * c, SEXP e)
{
  SEXP s;

  S_GtkRadioAction_symbol = install("GtkRadioAction");
  s = PROTECT(findVar(S_GtkRadioAction_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkRadioActionClass)) = e;

  S_gtk_toggle_action_class_init(((GtkToggleActionClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->changed = S_virtual_gtk_radio_action_changed;
}
USER_OBJECT_
S_gtk_radio_action_class_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_current)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkRadioActionClass* object_class = ((GtkRadioActionClass*)getPtrValue(s_object_class));
  GtkRadioAction* object = GTK_RADIO_ACTION(getPtrValue(s_object));
  GtkRadioAction* current = GTK_RADIO_ACTION(getPtrValue(s_current));


  object_class->changed(object, current);


  return(_result);
}
 

static SEXP S_GtkRadioButton_symbol;

static void
S_virtual_gtk_radio_button_group_changed(GtkRadioButton* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkRadioButton_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkRadioButton")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_radio_button_class_init(GtkRadioButtonClass * c, SEXP e)
{
  SEXP s;

  S_GtkRadioButton_symbol = install("GtkRadioButton");
  s = PROTECT(findVar(S_GtkRadioButton_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkRadioButtonClass)) = e;

  S_gtk_check_button_class_init(((GtkCheckButtonClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->group_changed = S_virtual_gtk_radio_button_group_changed;
}
USER_OBJECT_
S_gtk_radio_button_class_group_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkRadioButtonClass* object_class = ((GtkRadioButtonClass*)getPtrValue(s_object_class));
  GtkRadioButton* object = GTK_RADIO_BUTTON(getPtrValue(s_object));


  object_class->group_changed(object);


  return(_result);
}
 

static SEXP S_GtkRadioMenuItem_symbol;

static void
S_virtual_gtk_radio_menu_item_group_changed(GtkRadioMenuItem* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkRadioMenuItem_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkRadioMenuItem")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_radio_menu_item_class_init(GtkRadioMenuItemClass * c, SEXP e)
{
  SEXP s;

  S_GtkRadioMenuItem_symbol = install("GtkRadioMenuItem");
  s = PROTECT(findVar(S_GtkRadioMenuItem_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkRadioMenuItemClass)) = e;

  S_gtk_check_menu_item_class_init(((GtkCheckMenuItemClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->group_changed = S_virtual_gtk_radio_menu_item_group_changed;
}
USER_OBJECT_
S_gtk_radio_menu_item_class_group_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkRadioMenuItemClass* object_class = ((GtkRadioMenuItemClass*)getPtrValue(s_object_class));
  GtkRadioMenuItem* object = GTK_RADIO_MENU_ITEM(getPtrValue(s_object));


  object_class->group_changed(object);


  return(_result);
}
 

static SEXP S_GtkRadioToolButton_symbol;
void
S_gtk_radio_tool_button_class_init(GtkRadioToolButtonClass * c, SEXP e)
{
  SEXP s;

  S_GtkRadioToolButton_symbol = install("GtkRadioToolButton");
  s = PROTECT(findVar(S_GtkRadioToolButton_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkRadioToolButtonClass)) = e;

  S_gtk_toggle_tool_button_class_init(((GtkToggleToolButtonClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkRange_symbol;

static void
S_virtual_gtk_range_value_changed(GtkRange* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkRange_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkRange")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_range_adjust_bounds(GtkRange* s_object, gdouble s_new_value)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkRange_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkRange")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_new_value));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_range_move_slider(GtkRange* s_object, GtkScrollType s_scroll)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkRange_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkRange")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_scroll, GTK_TYPE_SCROLL_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_range_get_range_border(GtkRange* s_object, GtkBorder* s_border_)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkRange_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkRange")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_border_ ? gtk_border_copy(s_border_) : NULL, "GtkBorder", (RPointerFinalizer) gtk_border_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gtk_range_change_value(GtkRange* s_object, GtkScrollType s_scroll, gdouble s_new_value)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkRange_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkRange")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_scroll, GTK_TYPE_SCROLL_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_new_value));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}
void
S_gtk_range_class_init(GtkRangeClass * c, SEXP e)
{
  SEXP s;

  S_GtkRange_symbol = install("GtkRange");
  s = PROTECT(findVar(S_GtkRange_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkRangeClass)) = e;

  S_gtk_widget_class_init(((GtkWidgetClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->value_changed = S_virtual_gtk_range_value_changed;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->adjust_bounds = S_virtual_gtk_range_adjust_bounds;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->move_slider = S_virtual_gtk_range_move_slider;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->get_range_border = S_virtual_gtk_range_get_range_border;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->change_value = S_virtual_gtk_range_change_value;
}
USER_OBJECT_
S_gtk_range_class_value_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkRangeClass* object_class = ((GtkRangeClass*)getPtrValue(s_object_class));
  GtkRange* object = GTK_RANGE(getPtrValue(s_object));


  object_class->value_changed(object);


  return(_result);
}

USER_OBJECT_
S_gtk_range_class_adjust_bounds(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_new_value)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkRangeClass* object_class = ((GtkRangeClass*)getPtrValue(s_object_class));
  GtkRange* object = GTK_RANGE(getPtrValue(s_object));
  gdouble new_value = ((gdouble)asCNumeric(s_new_value));


  object_class->adjust_bounds(object, new_value);


  return(_result);
}

USER_OBJECT_
S_gtk_range_class_move_slider(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_scroll)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkRangeClass* object_class = ((GtkRangeClass*)getPtrValue(s_object_class));
  GtkRange* object = GTK_RANGE(getPtrValue(s_object));
  GtkScrollType scroll = ((GtkScrollType)asCEnum(s_scroll, GTK_TYPE_SCROLL_TYPE));


  object_class->move_slider(object, scroll);


  return(_result);
}

USER_OBJECT_
S_gtk_range_class_get_range_border(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_border_)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkRangeClass* object_class = ((GtkRangeClass*)getPtrValue(s_object_class));
  GtkRange* object = GTK_RANGE(getPtrValue(s_object));
  GtkBorder* border_ = ((GtkBorder*)getPtrValue(s_border_));


  object_class->get_range_border(object, border_);


  return(_result);
}

USER_OBJECT_
S_gtk_range_class_change_value(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_scroll, USER_OBJECT_ s_new_value)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkRangeClass* object_class = ((GtkRangeClass*)getPtrValue(s_object_class));
  GtkRange* object = GTK_RANGE(getPtrValue(s_object));
  GtkScrollType scroll = ((GtkScrollType)asCEnum(s_scroll, GTK_TYPE_SCROLL_TYPE));
  gdouble new_value = ((gdouble)asCNumeric(s_new_value));

  gboolean ans;

  ans = object_class->change_value(object, scroll, new_value);

  _result = asRLogical(ans);

  return(_result);
}
 

static SEXP S_GtkRcStyle_symbol;

static GtkRcStyle*
S_virtual_gtk_rc_style_create_rc_style(GtkRcStyle* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkRcStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkRcStyle")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GtkRcStyle*)0));
  return(GTK_RC_STYLE(getPtrValueWithRef(s_ans)));
}

static guint
S_virtual_gtk_rc_style_parse(GtkRcStyle* s_object, GtkSettings* s_settings, GScanner* s_scanner)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkRcStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkRcStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_settings, "GtkSettings"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_scanner, "GScanner"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((guint)0));
  return(((guint)asCNumeric(s_ans)));
}

static void
S_virtual_gtk_rc_style_merge(GtkRcStyle* s_object, GtkRcStyle* s_src)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkRcStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkRcStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_src, toRPointerWithRef(s_src, "GtkRcStyle")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GtkStyle*
S_virtual_gtk_rc_style_create_style(GtkRcStyle* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkRcStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkRcStyle")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GtkStyle*)0));
  return(GTK_STYLE(getPtrValueWithRef(s_ans)));
}
void
S_gtk_rc_style_class_init(GtkRcStyleClass * c, SEXP e)
{
  SEXP s;

  S_GtkRcStyle_symbol = install("GtkRcStyle");
  s = PROTECT(findVar(S_GtkRcStyle_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkRcStyleClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->create_rc_style = S_virtual_gtk_rc_style_create_rc_style;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->parse = S_virtual_gtk_rc_style_parse;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->merge = S_virtual_gtk_rc_style_merge;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->create_style = S_virtual_gtk_rc_style_create_style;
}
USER_OBJECT_
S_gtk_rc_style_class_create_rc_style(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkRcStyleClass* object_class = ((GtkRcStyleClass*)getPtrValue(s_object_class));
  GtkRcStyle* object = GTK_RC_STYLE(getPtrValue(s_object));

  GtkRcStyle* ans;

  ans = object_class->create_rc_style(object);

  _result = toRPointerWithFinalizer(ans, "GtkRcStyle", (RPointerFinalizer) g_object_unref);

  return(_result);
}

USER_OBJECT_
S_gtk_rc_style_class_parse(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_settings, USER_OBJECT_ s_scanner)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkRcStyleClass* object_class = ((GtkRcStyleClass*)getPtrValue(s_object_class));
  GtkRcStyle* object = GTK_RC_STYLE(getPtrValue(s_object));
  GtkSettings* settings = GTK_SETTINGS(getPtrValue(s_settings));
  GScanner* scanner = ((GScanner*)getPtrValue(s_scanner));

  guint ans;

  ans = object_class->parse(object, settings, scanner);

  _result = asRNumeric(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_rc_style_class_merge(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_src)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkRcStyleClass* object_class = ((GtkRcStyleClass*)getPtrValue(s_object_class));
  GtkRcStyle* object = GTK_RC_STYLE(getPtrValue(s_object));
  GtkRcStyle* src = GTK_RC_STYLE(getPtrValue(s_src));


  object_class->merge(object, src);


  return(_result);
}

USER_OBJECT_
S_gtk_rc_style_class_create_style(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkRcStyleClass* object_class = ((GtkRcStyleClass*)getPtrValue(s_object_class));
  GtkRcStyle* object = GTK_RC_STYLE(getPtrValue(s_object));

  GtkStyle* ans;

  ans = object_class->create_style(object);

  _result = toRPointerWithFinalizer(ans, "GtkStyle", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

static SEXP S_GtkRuler_symbol;

static void
S_virtual_gtk_ruler_draw_ticks(GtkRuler* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkRuler_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkRuler")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_ruler_draw_pos(GtkRuler* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkRuler_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkRuler")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_ruler_class_init(GtkRulerClass * c, SEXP e)
{
  SEXP s;

  S_GtkRuler_symbol = install("GtkRuler");
  s = PROTECT(findVar(S_GtkRuler_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkRulerClass)) = e;

  S_gtk_widget_class_init(((GtkWidgetClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->draw_ticks = S_virtual_gtk_ruler_draw_ticks;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->draw_pos = S_virtual_gtk_ruler_draw_pos;
}
USER_OBJECT_
S_gtk_ruler_class_draw_ticks(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkRulerClass* object_class = ((GtkRulerClass*)getPtrValue(s_object_class));
  GtkRuler* object = GTK_RULER(getPtrValue(s_object));


  object_class->draw_ticks(object);


  return(_result);
}

USER_OBJECT_
S_gtk_ruler_class_draw_pos(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkRulerClass* object_class = ((GtkRulerClass*)getPtrValue(s_object_class));
  GtkRuler* object = GTK_RULER(getPtrValue(s_object));


  object_class->draw_pos(object);


  return(_result);
}
 

static SEXP S_GtkScale_symbol;

static gchar*
S_virtual_gtk_scale_format_value(GtkScale* s_object, gdouble s_value)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkScale_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkScale")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_value));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gchar*)0));
  return(((gchar*)g_strdup(asCString(s_ans))));
}

static void
S_virtual_gtk_scale_draw_value(GtkScale* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkScale_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkScale")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_scale_get_layout_offsets(GtkScale* s_object, gint* s_x, gint* s_y)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkScale_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkScale")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
  *s_x = ((gint)asCInteger(VECTOR_ELT(s_ans, 0)));
  *s_y = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
}
void
S_gtk_scale_class_init(GtkScaleClass * c, SEXP e)
{
  SEXP s;

  S_GtkScale_symbol = install("GtkScale");
  s = PROTECT(findVar(S_GtkScale_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkScaleClass)) = e;

  S_gtk_range_class_init(((GtkRangeClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->format_value = S_virtual_gtk_scale_format_value;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->draw_value = S_virtual_gtk_scale_draw_value;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_layout_offsets = S_virtual_gtk_scale_get_layout_offsets;
}
USER_OBJECT_
S_gtk_scale_class_format_value(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_value)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkScaleClass* object_class = ((GtkScaleClass*)getPtrValue(s_object_class));
  GtkScale* object = GTK_SCALE(getPtrValue(s_object));
  gdouble value = ((gdouble)asCNumeric(s_value));

  gchar* ans;

  ans = object_class->format_value(object, value);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;

  return(_result);
}

USER_OBJECT_
S_gtk_scale_class_draw_value(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkScaleClass* object_class = ((GtkScaleClass*)getPtrValue(s_object_class));
  GtkScale* object = GTK_SCALE(getPtrValue(s_object));


  object_class->draw_value(object);


  return(_result);
}

USER_OBJECT_
S_gtk_scale_class_get_layout_offsets(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkScaleClass* object_class = ((GtkScaleClass*)getPtrValue(s_object_class));
  GtkScale* object = GTK_SCALE(getPtrValue(s_object));

  gint x;
  gint y;

  object_class->get_layout_offsets(object, &x, &y);


  _result = retByVal(PROTECT(_result), "x", PROTECT(asRInteger(x)), "y", PROTECT(asRInteger(y)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

static SEXP S_GtkScrollbar_symbol;
void
S_gtk_scrollbar_class_init(GtkScrollbarClass * c, SEXP e)
{
  SEXP s;

  S_GtkScrollbar_symbol = install("GtkScrollbar");
  s = PROTECT(findVar(S_GtkScrollbar_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkScrollbarClass)) = e;

  S_gtk_range_class_init(((GtkRangeClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkScrolledWindow_symbol;

static void
S_virtual_gtk_scrolled_window_scroll_child(GtkScrolledWindow* s_object, GtkScrollType s_scroll, gboolean s_horizontal)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkScrolledWindow_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkScrolledWindow")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_scroll, GTK_TYPE_SCROLL_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_horizontal));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_scrolled_window_move_focus_out(GtkScrolledWindow* s_object, GtkDirectionType s_direction)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkScrolledWindow_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkScrolledWindow")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_direction, GTK_TYPE_DIRECTION_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_scrolled_window_class_init(GtkScrolledWindowClass * c, SEXP e)
{
  SEXP s;

  S_GtkScrolledWindow_symbol = install("GtkScrolledWindow");
  s = PROTECT(findVar(S_GtkScrolledWindow_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkScrolledWindowClass)) = e;

  S_gtk_bin_class_init(((GtkBinClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->scroll_child = S_virtual_gtk_scrolled_window_scroll_child;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->move_focus_out = S_virtual_gtk_scrolled_window_move_focus_out;
}
USER_OBJECT_
S_gtk_scrolled_window_class_scroll_child(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_scroll, USER_OBJECT_ s_horizontal)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkScrolledWindowClass* object_class = ((GtkScrolledWindowClass*)getPtrValue(s_object_class));
  GtkScrolledWindow* object = GTK_SCROLLED_WINDOW(getPtrValue(s_object));
  GtkScrollType scroll = ((GtkScrollType)asCEnum(s_scroll, GTK_TYPE_SCROLL_TYPE));
  gboolean horizontal = ((gboolean)asCLogical(s_horizontal));


  object_class->scroll_child(object, scroll, horizontal);


  return(_result);
}

USER_OBJECT_
S_gtk_scrolled_window_class_move_focus_out(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_direction)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkScrolledWindowClass* object_class = ((GtkScrolledWindowClass*)getPtrValue(s_object_class));
  GtkScrolledWindow* object = GTK_SCROLLED_WINDOW(getPtrValue(s_object));
  GtkDirectionType direction = ((GtkDirectionType)asCEnum(s_direction, GTK_TYPE_DIRECTION_TYPE));


  object_class->move_focus_out(object, direction);


  return(_result);
}
 

static SEXP S_GtkSeparator_symbol;
void
S_gtk_separator_class_init(GtkSeparatorClass * c, SEXP e)
{
  SEXP s;

  S_GtkSeparator_symbol = install("GtkSeparator");
  s = PROTECT(findVar(S_GtkSeparator_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkSeparatorClass)) = e;

  S_gtk_widget_class_init(((GtkWidgetClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkSeparatorMenuItem_symbol;
void
S_gtk_separator_menu_item_class_init(GtkSeparatorMenuItemClass * c, SEXP e)
{
  SEXP s;

  S_GtkSeparatorMenuItem_symbol = install("GtkSeparatorMenuItem");
  s = PROTECT(findVar(S_GtkSeparatorMenuItem_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkSeparatorMenuItemClass)) = e;

  S_gtk_menu_item_class_init(((GtkMenuItemClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkSeparatorToolItem_symbol;
void
S_gtk_separator_tool_item_class_init(GtkSeparatorToolItemClass * c, SEXP e)
{
  SEXP s;

  S_GtkSeparatorToolItem_symbol = install("GtkSeparatorToolItem");
  s = PROTECT(findVar(S_GtkSeparatorToolItem_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkSeparatorToolItemClass)) = e;

  S_gtk_tool_item_class_init(((GtkToolItemClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkSettings_symbol;
void
S_gtk_settings_class_init(GtkSettingsClass * c, SEXP e)
{
  SEXP s;

  S_GtkSettings_symbol = install("GtkSettings");
  s = PROTECT(findVar(S_GtkSettings_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkSettingsClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkSizeGroup_symbol;
void
S_gtk_size_group_class_init(GtkSizeGroupClass * c, SEXP e)
{
  SEXP s;

  S_GtkSizeGroup_symbol = install("GtkSizeGroup");
  s = PROTECT(findVar(S_GtkSizeGroup_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkSizeGroupClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkSocket_symbol;

static void
S_virtual_gtk_socket_plug_added(GtkSocket* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkSocket_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkSocket")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gtk_socket_plug_removed(GtkSocket* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkSocket_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkSocket")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}
void
S_gtk_socket_class_init(GtkSocketClass * c, SEXP e)
{
  SEXP s;

  S_GtkSocket_symbol = install("GtkSocket");
  s = PROTECT(findVar(S_GtkSocket_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkSocketClass)) = e;

  S_gtk_container_class_init(((GtkContainerClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->plug_added = S_virtual_gtk_socket_plug_added;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->plug_removed = S_virtual_gtk_socket_plug_removed;
}
USER_OBJECT_
S_gtk_socket_class_plug_added(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkSocketClass* object_class = ((GtkSocketClass*)getPtrValue(s_object_class));
  GtkSocket* object = GTK_SOCKET(getPtrValue(s_object));


  object_class->plug_added(object);


  return(_result);
}

USER_OBJECT_
S_gtk_socket_class_plug_removed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkSocketClass* object_class = ((GtkSocketClass*)getPtrValue(s_object_class));
  GtkSocket* object = GTK_SOCKET(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->plug_removed(object);

  _result = asRLogical(ans);

  return(_result);
}
 

static SEXP S_GtkSpinButton_symbol;

static gint
S_virtual_gtk_spin_button_input(GtkSpinButton* s_object, gdouble* s_new_value)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkSpinButton_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkSpinButton")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  *s_new_value = ((gdouble)asCNumeric(VECTOR_ELT(s_ans, 1)));
  return(((gint)asCInteger(VECTOR_ELT(s_ans, 0))));
}

static gint
S_virtual_gtk_spin_button_output(GtkSpinButton* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkSpinButton_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkSpinButton")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static void
S_virtual_gtk_spin_button_value_changed(GtkSpinButton* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkSpinButton_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkSpinButton")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_spin_button_change_value(GtkSpinButton* s_object, GtkScrollType s_scroll)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkSpinButton_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkSpinButton")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_scroll, GTK_TYPE_SCROLL_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_spin_button_wrapped(GtkSpinButton* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkSpinButton_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkSpinButton")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_spin_button_class_init(GtkSpinButtonClass * c, SEXP e)
{
  SEXP s;

  S_GtkSpinButton_symbol = install("GtkSpinButton");
  s = PROTECT(findVar(S_GtkSpinButton_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkSpinButtonClass)) = e;

  S_gtk_entry_class_init(((GtkEntryClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->input = S_virtual_gtk_spin_button_input;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->output = S_virtual_gtk_spin_button_output;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->value_changed = S_virtual_gtk_spin_button_value_changed;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->change_value = S_virtual_gtk_spin_button_change_value;
#if GTK_CHECK_VERSION(2, 10, 0)
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->wrapped = S_virtual_gtk_spin_button_wrapped;
#endif
}
USER_OBJECT_
S_gtk_spin_button_class_input(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkSpinButtonClass* object_class = ((GtkSpinButtonClass*)getPtrValue(s_object_class));
  GtkSpinButton* object = GTK_SPIN_BUTTON(getPtrValue(s_object));

  gint ans;
  gdouble new_value;

  ans = object_class->input(object, &new_value);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "new.value", PROTECT(asRNumeric(new_value)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}

USER_OBJECT_
S_gtk_spin_button_class_output(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkSpinButtonClass* object_class = ((GtkSpinButtonClass*)getPtrValue(s_object_class));
  GtkSpinButton* object = GTK_SPIN_BUTTON(getPtrValue(s_object));

  gint ans;

  ans = object_class->output(object);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_spin_button_class_value_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkSpinButtonClass* object_class = ((GtkSpinButtonClass*)getPtrValue(s_object_class));
  GtkSpinButton* object = GTK_SPIN_BUTTON(getPtrValue(s_object));


  object_class->value_changed(object);


  return(_result);
}

USER_OBJECT_
S_gtk_spin_button_class_change_value(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_scroll)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkSpinButtonClass* object_class = ((GtkSpinButtonClass*)getPtrValue(s_object_class));
  GtkSpinButton* object = GTK_SPIN_BUTTON(getPtrValue(s_object));
  GtkScrollType scroll = ((GtkScrollType)asCEnum(s_scroll, GTK_TYPE_SCROLL_TYPE));


  object_class->change_value(object, scroll);


  return(_result);
}

USER_OBJECT_
S_gtk_spin_button_class_wrapped(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 10, 0)
  GtkSpinButtonClass* object_class = ((GtkSpinButtonClass*)getPtrValue(s_object_class));
  GtkSpinButton* object = GTK_SPIN_BUTTON(getPtrValue(s_object));


  object_class->wrapped(object);

#else
  error("gtk_spin_button_wrapped exists only in Gtk >= 2.10.0");
#endif

  return(_result);
}
 

static SEXP S_GtkStatusbar_symbol;

static void
S_virtual_gtk_statusbar_text_pushed(GtkStatusbar* s_object, guint s_context_id, const gchar* s_text)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStatusbar_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkStatusbar")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_context_id));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_text));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_statusbar_text_popped(GtkStatusbar* s_object, guint s_context_id, const gchar* s_text)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStatusbar_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkStatusbar")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_context_id));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_text));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_statusbar_class_init(GtkStatusbarClass * c, SEXP e)
{
  SEXP s;

  S_GtkStatusbar_symbol = install("GtkStatusbar");
  s = PROTECT(findVar(S_GtkStatusbar_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkStatusbarClass)) = e;

  S_gtk_hbox_class_init(((GtkHBoxClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->text_pushed = S_virtual_gtk_statusbar_text_pushed;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->text_popped = S_virtual_gtk_statusbar_text_popped;
}
USER_OBJECT_
S_gtk_statusbar_class_text_pushed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_context_id, USER_OBJECT_ s_text)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStatusbarClass* object_class = ((GtkStatusbarClass*)getPtrValue(s_object_class));
  GtkStatusbar* object = GTK_STATUSBAR(getPtrValue(s_object));
  guint context_id = ((guint)asCNumeric(s_context_id));
  const gchar* text = ((const gchar*)asCString(s_text));


  object_class->text_pushed(object, context_id, text);


  return(_result);
}

USER_OBJECT_
S_gtk_statusbar_class_text_popped(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_context_id, USER_OBJECT_ s_text)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStatusbarClass* object_class = ((GtkStatusbarClass*)getPtrValue(s_object_class));
  GtkStatusbar* object = GTK_STATUSBAR(getPtrValue(s_object));
  guint context_id = ((guint)asCNumeric(s_context_id));
  const gchar* text = ((const gchar*)asCString(s_text));


  object_class->text_popped(object, context_id, text);


  return(_result);
}
 

static SEXP S_GtkStyle_symbol;

static void
S_virtual_gtk_style_realize(GtkStyle* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_style_unrealize(GtkStyle* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_style_copy(GtkStyle* s_object, GtkStyle* s_src)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_src, toRPointerWithRef(s_src, "GtkStyle")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GtkStyle*
S_virtual_gtk_style_clone(GtkStyle* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GtkStyle*)0));
  return(GTK_STYLE(getPtrValueWithRef(s_ans)));
}

static void
S_virtual_gtk_style_init_from_rc(GtkStyle* s_object, GtkRcStyle* s_rc_style)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_rc_style, "GtkRcStyle"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_style_set_background(GtkStyle* s_object, GdkWindow* s_window, GtkStateType s_state_type)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_window, "GdkWindow"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_state_type, GTK_TYPE_STATE_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GdkPixbuf*
S_virtual_gtk_style_render_icon(GtkStyle* s_object, const GtkIconSource* s_source, GtkTextDirection s_direction, GtkStateType s_state, GtkIconSize s_size, GtkWidget* s_widget, const gchar* s_detail)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 8));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_source ? gtk_icon_source_copy(s_source) : NULL, "GtkIconSource", (RPointerFinalizer) gtk_icon_source_free));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_direction, GTK_TYPE_TEXT_DIRECTION));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_state, GTK_TYPE_STATE_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_size, GTK_TYPE_ICON_SIZE));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_detail));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GdkPixbuf*)0));
  return(GDK_PIXBUF(getPtrValueWithRef(s_ans)));
}

static void
S_virtual_gtk_style_draw_hline(GtkStyle* s_object, GdkWindow* s_window, GtkStateType s_state_type, GdkRectangle* s_area, GtkWidget* s_widget, const gchar* s_detail, gint s_x1, gint s_x2, gint s_y)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 10));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_window, "GdkWindow"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_state_type, GTK_TYPE_STATE_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_area));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_detail));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x1));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x2));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_style_draw_vline(GtkStyle* s_object, GdkWindow* s_window, GtkStateType s_state_type, GdkRectangle* s_area, GtkWidget* s_widget, const gchar* s_detail, gint s_y1_, gint s_y2_, gint s_x)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 10));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_window, "GdkWindow"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_state_type, GTK_TYPE_STATE_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_area));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_detail));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y1_));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y2_));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_style_draw_shadow(GtkStyle* s_object, GdkWindow* s_window, GtkStateType s_state_type, GtkShadowType s_shadow_type, GdkRectangle* s_area, GtkWidget* s_widget, const gchar* s_detail, gint s_x, gint s_y, gint s_width, gint s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 12));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_window, "GdkWindow"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_state_type, GTK_TYPE_STATE_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_area));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_detail));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_style_draw_polygon(GtkStyle* s_object, GdkWindow* s_window, GtkStateType s_state_type, GtkShadowType s_shadow_type, GdkRectangle* s_area, GtkWidget* s_widget, const gchar* s_detail, GdkPoint* s_point, gint s_npoints, gboolean s_fill)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 11));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 10));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_window, "GdkWindow"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_state_type, GTK_TYPE_STATE_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_area));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_detail));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkPoint(s_point));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_npoints));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_fill));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_style_draw_arrow(GtkStyle* s_object, GdkWindow* s_window, GtkStateType s_state_type, GtkShadowType s_shadow_type, GdkRectangle* s_area, GtkWidget* s_widget, const gchar* s_detail, GtkArrowType s_arrow_type, gboolean s_fill, gint s_x, gint s_y, gint s_width, gint s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 14));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 11));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_window, "GdkWindow"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_state_type, GTK_TYPE_STATE_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_area));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_detail));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_arrow_type, GTK_TYPE_ARROW_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_fill));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_style_draw_diamond(GtkStyle* s_object, GdkWindow* s_window, GtkStateType s_state_type, GtkShadowType s_shadow_type, GdkRectangle* s_area, GtkWidget* s_widget, const gchar* s_detail, gint s_x, gint s_y, gint s_width, gint s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 12));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 12));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_window, "GdkWindow"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_state_type, GTK_TYPE_STATE_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_area));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_detail));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_style_draw_string(GtkStyle* s_object, GdkWindow* s_window, GtkStateType s_state_type, GdkRectangle* s_area, GtkWidget* s_widget, const gchar* s_detail, gint s_x, gint s_y, const gchar* s_string)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 10));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 13));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_window, "GdkWindow"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_state_type, GTK_TYPE_STATE_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_area));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_detail));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_string));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_style_draw_box(GtkStyle* s_object, GdkWindow* s_window, GtkStateType s_state_type, GtkShadowType s_shadow_type, GdkRectangle* s_area, GtkWidget* s_widget, const gchar* s_detail, gint s_x, gint s_y, gint s_width, gint s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 12));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 14));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_window, "GdkWindow"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_state_type, GTK_TYPE_STATE_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_area));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_detail));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_style_draw_flat_box(GtkStyle* s_object, GdkWindow* s_window, GtkStateType s_state_type, GtkShadowType s_shadow_type, GdkRectangle* s_area, GtkWidget* s_widget, const gchar* s_detail, gint s_x, gint s_y, gint s_width, gint s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 12));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 15));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_window, "GdkWindow"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_state_type, GTK_TYPE_STATE_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_area));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_detail));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_style_draw_check(GtkStyle* s_object, GdkWindow* s_window, GtkStateType s_state_type, GtkShadowType s_shadow_type, GdkRectangle* s_area, GtkWidget* s_widget, const gchar* s_detail, gint s_x, gint s_y, gint s_width, gint s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 12));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 16));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_window, "GdkWindow"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_state_type, GTK_TYPE_STATE_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_area));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_detail));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_style_draw_option(GtkStyle* s_object, GdkWindow* s_window, GtkStateType s_state_type, GtkShadowType s_shadow_type, GdkRectangle* s_area, GtkWidget* s_widget, const gchar* s_detail, gint s_x, gint s_y, gint s_width, gint s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 12));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 17));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_window, "GdkWindow"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_state_type, GTK_TYPE_STATE_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_area));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_detail));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_style_draw_tab(GtkStyle* s_object, GdkWindow* s_window, GtkStateType s_state_type, GtkShadowType s_shadow_type, GdkRectangle* s_area, GtkWidget* s_widget, const gchar* s_detail, gint s_x, gint s_y, gint s_width, gint s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 12));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 18));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_window, "GdkWindow"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_state_type, GTK_TYPE_STATE_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_area));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_detail));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_style_draw_shadow_gap(GtkStyle* s_object, GdkWindow* s_window, GtkStateType s_state_type, GtkShadowType s_shadow_type, GdkRectangle* s_area, GtkWidget* s_widget, const gchar* s_detail, gint s_x, gint s_y, gint s_width, gint s_height, GtkPositionType s_gap_side, gint s_gap_x, gint s_gap_width)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 15));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 19));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_window, "GdkWindow"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_state_type, GTK_TYPE_STATE_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_area));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_detail));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_gap_side, GTK_TYPE_POSITION_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_gap_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_gap_width));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_style_draw_box_gap(GtkStyle* s_object, GdkWindow* s_window, GtkStateType s_state_type, GtkShadowType s_shadow_type, GdkRectangle* s_area, GtkWidget* s_widget, const gchar* s_detail, gint s_x, gint s_y, gint s_width, gint s_height, GtkPositionType s_gap_side, gint s_gap_x, gint s_gap_width)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 15));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 20));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_window, "GdkWindow"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_state_type, GTK_TYPE_STATE_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_area));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_detail));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_gap_side, GTK_TYPE_POSITION_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_gap_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_gap_width));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_style_draw_extension(GtkStyle* s_object, GdkWindow* s_window, GtkStateType s_state_type, GtkShadowType s_shadow_type, GdkRectangle* s_area, GtkWidget* s_widget, const gchar* s_detail, gint s_x, gint s_y, gint s_width, gint s_height, GtkPositionType s_gap_side)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 13));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 21));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_window, "GdkWindow"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_state_type, GTK_TYPE_STATE_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_area));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_detail));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_gap_side, GTK_TYPE_POSITION_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_style_draw_focus(GtkStyle* s_object, GdkWindow* s_window, GtkStateType s_state_type, GdkRectangle* s_area, GtkWidget* s_widget, const gchar* s_detail, gint s_x, gint s_y, gint s_width, gint s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 11));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 22));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_window, "GdkWindow"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_state_type, GTK_TYPE_STATE_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_area));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_detail));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_style_draw_slider(GtkStyle* s_object, GdkWindow* s_window, GtkStateType s_state_type, GtkShadowType s_shadow_type, GdkRectangle* s_area, GtkWidget* s_widget, const gchar* s_detail, gint s_x, gint s_y, gint s_width, gint s_height, GtkOrientation s_orientation)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 13));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 23));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_window, "GdkWindow"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_state_type, GTK_TYPE_STATE_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_area));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_detail));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_orientation, GTK_TYPE_ORIENTATION));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_style_draw_handle(GtkStyle* s_object, GdkWindow* s_window, GtkStateType s_state_type, GtkShadowType s_shadow_type, GdkRectangle* s_area, GtkWidget* s_widget, const gchar* s_detail, gint s_x, gint s_y, gint s_width, gint s_height, GtkOrientation s_orientation)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 13));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 24));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_window, "GdkWindow"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_state_type, GTK_TYPE_STATE_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_area));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_detail));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_orientation, GTK_TYPE_ORIENTATION));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_style_draw_expander(GtkStyle* s_object, GdkWindow* s_window, GtkStateType s_state_type, GdkRectangle* s_area, GtkWidget* s_widget, const gchar* s_detail, gint s_x, gint s_y, GtkExpanderStyle s_expander_style)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 10));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 25));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_window, "GdkWindow"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_state_type, GTK_TYPE_STATE_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_area));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_detail));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_expander_style, GTK_TYPE_EXPANDER_STYLE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_style_draw_layout(GtkStyle* s_object, GdkWindow* s_window, GtkStateType s_state_type, gboolean s_use_text, GdkRectangle* s_area, GtkWidget* s_widget, const gchar* s_detail, gint s_x, gint s_y, PangoLayout* s_layout)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 11));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 26));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_window, "GdkWindow"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_state_type, GTK_TYPE_STATE_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_use_text));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_area));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_detail));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_layout, "PangoLayout"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_style_draw_resize_grip(GtkStyle* s_object, GdkWindow* s_window, GtkStateType s_state_type, GdkRectangle* s_area, GtkWidget* s_widget, const gchar* s_detail, GdkWindowEdge s_edge, gint s_x, gint s_y, gint s_width, gint s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 12));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStyle_symbol, S_GOBJECT_GET_ENV(s_object)), 27));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStyle")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_window, "GdkWindow"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_state_type, GTK_TYPE_STATE_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkRectangle(s_area));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_detail));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_edge, GDK_TYPE_WINDOW_EDGE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_style_class_init(GtkStyleClass * c, SEXP e)
{
  SEXP s;

  S_GtkStyle_symbol = install("GtkStyle");
  s = PROTECT(findVar(S_GtkStyle_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkStyleClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->realize = S_virtual_gtk_style_realize;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->unrealize = S_virtual_gtk_style_unrealize;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->copy = S_virtual_gtk_style_copy;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->clone = S_virtual_gtk_style_clone;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->init_from_rc = S_virtual_gtk_style_init_from_rc;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->set_background = S_virtual_gtk_style_set_background;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->render_icon = S_virtual_gtk_style_render_icon;
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->draw_hline = S_virtual_gtk_style_draw_hline;
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->draw_vline = S_virtual_gtk_style_draw_vline;
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->draw_shadow = S_virtual_gtk_style_draw_shadow;
  if(VECTOR_ELT(s, 10) != NULL_USER_OBJECT)
    c->draw_polygon = S_virtual_gtk_style_draw_polygon;
  if(VECTOR_ELT(s, 11) != NULL_USER_OBJECT)
    c->draw_arrow = S_virtual_gtk_style_draw_arrow;
  if(VECTOR_ELT(s, 12) != NULL_USER_OBJECT)
    c->draw_diamond = S_virtual_gtk_style_draw_diamond;
  if(VECTOR_ELT(s, 13) != NULL_USER_OBJECT)
    c->draw_string = S_virtual_gtk_style_draw_string;
  if(VECTOR_ELT(s, 14) != NULL_USER_OBJECT)
    c->draw_box = S_virtual_gtk_style_draw_box;
  if(VECTOR_ELT(s, 15) != NULL_USER_OBJECT)
    c->draw_flat_box = S_virtual_gtk_style_draw_flat_box;
  if(VECTOR_ELT(s, 16) != NULL_USER_OBJECT)
    c->draw_check = S_virtual_gtk_style_draw_check;
  if(VECTOR_ELT(s, 17) != NULL_USER_OBJECT)
    c->draw_option = S_virtual_gtk_style_draw_option;
  if(VECTOR_ELT(s, 18) != NULL_USER_OBJECT)
    c->draw_tab = S_virtual_gtk_style_draw_tab;
  if(VECTOR_ELT(s, 19) != NULL_USER_OBJECT)
    c->draw_shadow_gap = S_virtual_gtk_style_draw_shadow_gap;
  if(VECTOR_ELT(s, 20) != NULL_USER_OBJECT)
    c->draw_box_gap = S_virtual_gtk_style_draw_box_gap;
  if(VECTOR_ELT(s, 21) != NULL_USER_OBJECT)
    c->draw_extension = S_virtual_gtk_style_draw_extension;
  if(VECTOR_ELT(s, 22) != NULL_USER_OBJECT)
    c->draw_focus = S_virtual_gtk_style_draw_focus;
  if(VECTOR_ELT(s, 23) != NULL_USER_OBJECT)
    c->draw_slider = S_virtual_gtk_style_draw_slider;
  if(VECTOR_ELT(s, 24) != NULL_USER_OBJECT)
    c->draw_handle = S_virtual_gtk_style_draw_handle;
  if(VECTOR_ELT(s, 25) != NULL_USER_OBJECT)
    c->draw_expander = S_virtual_gtk_style_draw_expander;
  if(VECTOR_ELT(s, 26) != NULL_USER_OBJECT)
    c->draw_layout = S_virtual_gtk_style_draw_layout;
  if(VECTOR_ELT(s, 27) != NULL_USER_OBJECT)
    c->draw_resize_grip = S_virtual_gtk_style_draw_resize_grip;
}
USER_OBJECT_
S_gtk_style_class_realize(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));


  object_class->realize(object);


  return(_result);
}

USER_OBJECT_
S_gtk_style_class_unrealize(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));


  object_class->unrealize(object);


  return(_result);
}

USER_OBJECT_
S_gtk_style_class_copy(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_src)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));
  GtkStyle* src = GTK_STYLE(getPtrValue(s_src));


  object_class->copy(object, src);


  return(_result);
}

USER_OBJECT_
S_gtk_style_class_clone(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));

  GtkStyle* ans;

  ans = object_class->clone(object);

  _result = toRPointerWithFinalizer(ans, "GtkStyle", (RPointerFinalizer) g_object_unref);

  return(_result);
}

USER_OBJECT_
S_gtk_style_class_init_from_rc(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_rc_style)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));
  GtkRcStyle* rc_style = GTK_RC_STYLE(getPtrValue(s_rc_style));


  object_class->init_from_rc(object, rc_style);


  return(_result);
}

USER_OBJECT_
S_gtk_style_class_set_background(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  GtkStateType state_type = ((GtkStateType)asCEnum(s_state_type, GTK_TYPE_STATE_TYPE));


  object_class->set_background(object, window, state_type);


  return(_result);
}

USER_OBJECT_
S_gtk_style_class_render_icon(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_source, USER_OBJECT_ s_direction, USER_OBJECT_ s_state, USER_OBJECT_ s_size, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));
  const GtkIconSource* source = ((const GtkIconSource*)getPtrValue(s_source));
  GtkTextDirection direction = ((GtkTextDirection)asCEnum(s_direction, GTK_TYPE_TEXT_DIRECTION));
  GtkStateType state = ((GtkStateType)asCEnum(s_state, GTK_TYPE_STATE_TYPE));
  GtkIconSize size = ((GtkIconSize)asCEnum(s_size, GTK_TYPE_ICON_SIZE));
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* detail = ((const gchar*)asCString(s_detail));

  GdkPixbuf* ans;

  ans = object_class->render_icon(object, source, direction, state, size, widget, detail);

  _result = toRPointerWithFinalizer(ans, "GdkPixbuf", (RPointerFinalizer) g_object_unref);

  return(_result);
}

USER_OBJECT_
S_gtk_style_class_draw_hline(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x1, USER_OBJECT_ s_x2, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  GtkStateType state_type = ((GtkStateType)asCEnum(s_state_type, GTK_TYPE_STATE_TYPE));
  GdkRectangle* area = asCGdkRectangle(s_area);
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* detail = ((const gchar*)asCString(s_detail));
  gint x1 = ((gint)asCInteger(s_x1));
  gint x2 = ((gint)asCInteger(s_x2));
  gint y = ((gint)asCInteger(s_y));


  object_class->draw_hline(object, window, state_type, area, widget, detail, x1, x2, y);


  return(_result);
}

USER_OBJECT_
S_gtk_style_class_draw_vline(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_y1_, USER_OBJECT_ s_y2_, USER_OBJECT_ s_x)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  GtkStateType state_type = ((GtkStateType)asCEnum(s_state_type, GTK_TYPE_STATE_TYPE));
  GdkRectangle* area = asCGdkRectangle(s_area);
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* detail = ((const gchar*)asCString(s_detail));
  gint y1_ = ((gint)asCInteger(s_y1_));
  gint y2_ = ((gint)asCInteger(s_y2_));
  gint x = ((gint)asCInteger(s_x));


  object_class->draw_vline(object, window, state_type, area, widget, detail, y1_, y2_, x);


  return(_result);
}

USER_OBJECT_
S_gtk_style_class_draw_shadow(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  GtkStateType state_type = ((GtkStateType)asCEnum(s_state_type, GTK_TYPE_STATE_TYPE));
  GtkShadowType shadow_type = ((GtkShadowType)asCEnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  GdkRectangle* area = asCGdkRectangle(s_area);
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* detail = ((const gchar*)asCString(s_detail));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));


  object_class->draw_shadow(object, window, state_type, shadow_type, area, widget, detail, x, y, width, height);


  return(_result);
}

USER_OBJECT_
S_gtk_style_class_draw_polygon(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_point, USER_OBJECT_ s_npoints, USER_OBJECT_ s_fill)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  GtkStateType state_type = ((GtkStateType)asCEnum(s_state_type, GTK_TYPE_STATE_TYPE));
  GtkShadowType shadow_type = ((GtkShadowType)asCEnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  GdkRectangle* area = asCGdkRectangle(s_area);
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* detail = ((const gchar*)asCString(s_detail));
  GdkPoint* point = asCGdkPoint(s_point);
  gint npoints = ((gint)asCInteger(s_npoints));
  gboolean fill = ((gboolean)asCLogical(s_fill));


  object_class->draw_polygon(object, window, state_type, shadow_type, area, widget, detail, point, npoints, fill);


  return(_result);
}

USER_OBJECT_
S_gtk_style_class_draw_arrow(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_arrow_type, USER_OBJECT_ s_fill, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  GtkStateType state_type = ((GtkStateType)asCEnum(s_state_type, GTK_TYPE_STATE_TYPE));
  GtkShadowType shadow_type = ((GtkShadowType)asCEnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  GdkRectangle* area = asCGdkRectangle(s_area);
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* detail = ((const gchar*)asCString(s_detail));
  GtkArrowType arrow_type = ((GtkArrowType)asCEnum(s_arrow_type, GTK_TYPE_ARROW_TYPE));
  gboolean fill = ((gboolean)asCLogical(s_fill));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));


  object_class->draw_arrow(object, window, state_type, shadow_type, area, widget, detail, arrow_type, fill, x, y, width, height);


  return(_result);
}

USER_OBJECT_
S_gtk_style_class_draw_diamond(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  GtkStateType state_type = ((GtkStateType)asCEnum(s_state_type, GTK_TYPE_STATE_TYPE));
  GtkShadowType shadow_type = ((GtkShadowType)asCEnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  GdkRectangle* area = asCGdkRectangle(s_area);
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* detail = ((const gchar*)asCString(s_detail));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));


  object_class->draw_diamond(object, window, state_type, shadow_type, area, widget, detail, x, y, width, height);


  return(_result);
}

USER_OBJECT_
S_gtk_style_class_draw_string(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_string)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  GtkStateType state_type = ((GtkStateType)asCEnum(s_state_type, GTK_TYPE_STATE_TYPE));
  GdkRectangle* area = asCGdkRectangle(s_area);
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* detail = ((const gchar*)asCString(s_detail));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  const gchar* string = ((const gchar*)asCString(s_string));


  object_class->draw_string(object, window, state_type, area, widget, detail, x, y, string);


  return(_result);
}

USER_OBJECT_
S_gtk_style_class_draw_box(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  GtkStateType state_type = ((GtkStateType)asCEnum(s_state_type, GTK_TYPE_STATE_TYPE));
  GtkShadowType shadow_type = ((GtkShadowType)asCEnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  GdkRectangle* area = asCGdkRectangle(s_area);
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* detail = ((const gchar*)asCString(s_detail));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));


  object_class->draw_box(object, window, state_type, shadow_type, area, widget, detail, x, y, width, height);


  return(_result);
}

USER_OBJECT_
S_gtk_style_class_draw_flat_box(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  GtkStateType state_type = ((GtkStateType)asCEnum(s_state_type, GTK_TYPE_STATE_TYPE));
  GtkShadowType shadow_type = ((GtkShadowType)asCEnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  GdkRectangle* area = asCGdkRectangle(s_area);
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* detail = ((const gchar*)asCString(s_detail));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));


  object_class->draw_flat_box(object, window, state_type, shadow_type, area, widget, detail, x, y, width, height);


  return(_result);
}

USER_OBJECT_
S_gtk_style_class_draw_check(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  GtkStateType state_type = ((GtkStateType)asCEnum(s_state_type, GTK_TYPE_STATE_TYPE));
  GtkShadowType shadow_type = ((GtkShadowType)asCEnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  GdkRectangle* area = asCGdkRectangle(s_area);
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* detail = ((const gchar*)asCString(s_detail));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));


  object_class->draw_check(object, window, state_type, shadow_type, area, widget, detail, x, y, width, height);


  return(_result);
}

USER_OBJECT_
S_gtk_style_class_draw_option(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  GtkStateType state_type = ((GtkStateType)asCEnum(s_state_type, GTK_TYPE_STATE_TYPE));
  GtkShadowType shadow_type = ((GtkShadowType)asCEnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  GdkRectangle* area = asCGdkRectangle(s_area);
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* detail = ((const gchar*)asCString(s_detail));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));


  object_class->draw_option(object, window, state_type, shadow_type, area, widget, detail, x, y, width, height);


  return(_result);
}

USER_OBJECT_
S_gtk_style_class_draw_tab(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  GtkStateType state_type = ((GtkStateType)asCEnum(s_state_type, GTK_TYPE_STATE_TYPE));
  GtkShadowType shadow_type = ((GtkShadowType)asCEnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  GdkRectangle* area = asCGdkRectangle(s_area);
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* detail = ((const gchar*)asCString(s_detail));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));


  object_class->draw_tab(object, window, state_type, shadow_type, area, widget, detail, x, y, width, height);


  return(_result);
}

USER_OBJECT_
S_gtk_style_class_draw_shadow_gap(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_gap_side, USER_OBJECT_ s_gap_x, USER_OBJECT_ s_gap_width)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  GtkStateType state_type = ((GtkStateType)asCEnum(s_state_type, GTK_TYPE_STATE_TYPE));
  GtkShadowType shadow_type = ((GtkShadowType)asCEnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  GdkRectangle* area = asCGdkRectangle(s_area);
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* detail = ((const gchar*)asCString(s_detail));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));
  GtkPositionType gap_side = ((GtkPositionType)asCEnum(s_gap_side, GTK_TYPE_POSITION_TYPE));
  gint gap_x = ((gint)asCInteger(s_gap_x));
  gint gap_width = ((gint)asCInteger(s_gap_width));


  object_class->draw_shadow_gap(object, window, state_type, shadow_type, area, widget, detail, x, y, width, height, gap_side, gap_x, gap_width);


  return(_result);
}

USER_OBJECT_
S_gtk_style_class_draw_box_gap(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_gap_side, USER_OBJECT_ s_gap_x, USER_OBJECT_ s_gap_width)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  GtkStateType state_type = ((GtkStateType)asCEnum(s_state_type, GTK_TYPE_STATE_TYPE));
  GtkShadowType shadow_type = ((GtkShadowType)asCEnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  GdkRectangle* area = asCGdkRectangle(s_area);
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* detail = ((const gchar*)asCString(s_detail));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));
  GtkPositionType gap_side = ((GtkPositionType)asCEnum(s_gap_side, GTK_TYPE_POSITION_TYPE));
  gint gap_x = ((gint)asCInteger(s_gap_x));
  gint gap_width = ((gint)asCInteger(s_gap_width));


  object_class->draw_box_gap(object, window, state_type, shadow_type, area, widget, detail, x, y, width, height, gap_side, gap_x, gap_width);


  return(_result);
}

USER_OBJECT_
S_gtk_style_class_draw_extension(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_gap_side)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  GtkStateType state_type = ((GtkStateType)asCEnum(s_state_type, GTK_TYPE_STATE_TYPE));
  GtkShadowType shadow_type = ((GtkShadowType)asCEnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  GdkRectangle* area = asCGdkRectangle(s_area);
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* detail = ((const gchar*)asCString(s_detail));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));
  GtkPositionType gap_side = ((GtkPositionType)asCEnum(s_gap_side, GTK_TYPE_POSITION_TYPE));


  object_class->draw_extension(object, window, state_type, shadow_type, area, widget, detail, x, y, width, height, gap_side);


  return(_result);
}

USER_OBJECT_
S_gtk_style_class_draw_focus(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  GtkStateType state_type = ((GtkStateType)asCEnum(s_state_type, GTK_TYPE_STATE_TYPE));
  GdkRectangle* area = asCGdkRectangle(s_area);
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* detail = ((const gchar*)asCString(s_detail));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));


  object_class->draw_focus(object, window, state_type, area, widget, detail, x, y, width, height);


  return(_result);
}

USER_OBJECT_
S_gtk_style_class_draw_slider(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_orientation)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  GtkStateType state_type = ((GtkStateType)asCEnum(s_state_type, GTK_TYPE_STATE_TYPE));
  GtkShadowType shadow_type = ((GtkShadowType)asCEnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  GdkRectangle* area = asCGdkRectangle(s_area);
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* detail = ((const gchar*)asCString(s_detail));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));
  GtkOrientation orientation = ((GtkOrientation)asCEnum(s_orientation, GTK_TYPE_ORIENTATION));


  object_class->draw_slider(object, window, state_type, shadow_type, area, widget, detail, x, y, width, height, orientation);


  return(_result);
}

USER_OBJECT_
S_gtk_style_class_draw_handle(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_orientation)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  GtkStateType state_type = ((GtkStateType)asCEnum(s_state_type, GTK_TYPE_STATE_TYPE));
  GtkShadowType shadow_type = ((GtkShadowType)asCEnum(s_shadow_type, GTK_TYPE_SHADOW_TYPE));
  GdkRectangle* area = asCGdkRectangle(s_area);
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* detail = ((const gchar*)asCString(s_detail));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));
  GtkOrientation orientation = ((GtkOrientation)asCEnum(s_orientation, GTK_TYPE_ORIENTATION));


  object_class->draw_handle(object, window, state_type, shadow_type, area, widget, detail, x, y, width, height, orientation);


  return(_result);
}

USER_OBJECT_
S_gtk_style_class_draw_expander(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_expander_style)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  GtkStateType state_type = ((GtkStateType)asCEnum(s_state_type, GTK_TYPE_STATE_TYPE));
  GdkRectangle* area = asCGdkRectangle(s_area);
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* detail = ((const gchar*)asCString(s_detail));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  GtkExpanderStyle expander_style = ((GtkExpanderStyle)asCEnum(s_expander_style, GTK_TYPE_EXPANDER_STYLE));


  object_class->draw_expander(object, window, state_type, area, widget, detail, x, y, expander_style);


  return(_result);
}

USER_OBJECT_
S_gtk_style_class_draw_layout(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_use_text, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_layout)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  GtkStateType state_type = ((GtkStateType)asCEnum(s_state_type, GTK_TYPE_STATE_TYPE));
  gboolean use_text = ((gboolean)asCLogical(s_use_text));
  GdkRectangle* area = asCGdkRectangle(s_area);
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* detail = ((const gchar*)asCString(s_detail));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  PangoLayout* layout = PANGO_LAYOUT(getPtrValue(s_layout));


  object_class->draw_layout(object, window, state_type, use_text, area, widget, detail, x, y, layout);


  return(_result);
}

USER_OBJECT_
S_gtk_style_class_draw_resize_grip(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_edge, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkStyleClass* object_class = ((GtkStyleClass*)getPtrValue(s_object_class));
  GtkStyle* object = GTK_STYLE(getPtrValue(s_object));
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  GtkStateType state_type = ((GtkStateType)asCEnum(s_state_type, GTK_TYPE_STATE_TYPE));
  GdkRectangle* area = asCGdkRectangle(s_area);
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* detail = ((const gchar*)asCString(s_detail));
  GdkWindowEdge edge = ((GdkWindowEdge)asCEnum(s_edge, GDK_TYPE_WINDOW_EDGE));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));


  object_class->draw_resize_grip(object, window, state_type, area, widget, detail, edge, x, y, width, height);


  return(_result);
}
 

static SEXP S_GtkTable_symbol;
void
S_gtk_table_class_init(GtkTableClass * c, SEXP e)
{
  SEXP s;

  S_GtkTable_symbol = install("GtkTable");
  s = PROTECT(findVar(S_GtkTable_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkTableClass)) = e;

  S_gtk_container_class_init(((GtkContainerClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkTearoffMenuItem_symbol;
void
S_gtk_tearoff_menu_item_class_init(GtkTearoffMenuItemClass * c, SEXP e)
{
  SEXP s;

  S_GtkTearoffMenuItem_symbol = install("GtkTearoffMenuItem");
  s = PROTECT(findVar(S_GtkTearoffMenuItem_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkTearoffMenuItemClass)) = e;

  S_gtk_menu_item_class_init(((GtkMenuItemClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkTextBuffer_symbol;

static void
S_virtual_gtk_text_buffer_insert_text(GtkTextBuffer* s_object, GtkTextIter* s_pos, const gchar* s_text, gint s_length)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextBuffer_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTextBuffer")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_pos ? gtk_text_iter_copy(s_pos) : NULL, "GtkTextIter", (RPointerFinalizer) gtk_text_iter_free));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_text));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_length));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_text_buffer_insert_pixbuf(GtkTextBuffer* s_object, GtkTextIter* s_pos, GdkPixbuf* s_pixbuf)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextBuffer_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTextBuffer")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_pos ? gtk_text_iter_copy(s_pos) : NULL, "GtkTextIter", (RPointerFinalizer) gtk_text_iter_free));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_pixbuf, "GdkPixbuf"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_text_buffer_insert_child_anchor(GtkTextBuffer* s_object, GtkTextIter* s_pos, GtkTextChildAnchor* s_anchor)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextBuffer_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTextBuffer")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_pos ? gtk_text_iter_copy(s_pos) : NULL, "GtkTextIter", (RPointerFinalizer) gtk_text_iter_free));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_anchor, "GtkTextChildAnchor"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_text_buffer_delete_range(GtkTextBuffer* s_object, GtkTextIter* s_start, GtkTextIter* s_end)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextBuffer_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTextBuffer")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_start ? gtk_text_iter_copy(s_start) : NULL, "GtkTextIter", (RPointerFinalizer) gtk_text_iter_free));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_end ? gtk_text_iter_copy(s_end) : NULL, "GtkTextIter", (RPointerFinalizer) gtk_text_iter_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_text_buffer_changed(GtkTextBuffer* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextBuffer_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTextBuffer")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_text_buffer_modified_changed(GtkTextBuffer* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextBuffer_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTextBuffer")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_text_buffer_mark_set(GtkTextBuffer* s_object, const GtkTextIter* s_location, GtkTextMark* s_mark)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextBuffer_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTextBuffer")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_location ? gtk_text_iter_copy(s_location) : NULL, "GtkTextIter", (RPointerFinalizer) gtk_text_iter_free));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_mark, "GtkTextMark"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_text_buffer_mark_deleted(GtkTextBuffer* s_object, GtkTextMark* s_mark)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextBuffer_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTextBuffer")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_mark, "GtkTextMark"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_text_buffer_apply_tag(GtkTextBuffer* s_object, GtkTextTag* s_tag, const GtkTextIter* s_start_char, const GtkTextIter* s_end_char)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextBuffer_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTextBuffer")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_tag, "GtkTextTag"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_start_char ? gtk_text_iter_copy(s_start_char) : NULL, "GtkTextIter", (RPointerFinalizer) gtk_text_iter_free));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_end_char ? gtk_text_iter_copy(s_end_char) : NULL, "GtkTextIter", (RPointerFinalizer) gtk_text_iter_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_text_buffer_remove_tag(GtkTextBuffer* s_object, GtkTextTag* s_tag, const GtkTextIter* s_start_char, const GtkTextIter* s_end_char)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextBuffer_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTextBuffer")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_tag, "GtkTextTag"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_start_char ? gtk_text_iter_copy(s_start_char) : NULL, "GtkTextIter", (RPointerFinalizer) gtk_text_iter_free));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_end_char ? gtk_text_iter_copy(s_end_char) : NULL, "GtkTextIter", (RPointerFinalizer) gtk_text_iter_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_text_buffer_begin_user_action(GtkTextBuffer* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextBuffer_symbol, S_GOBJECT_GET_ENV(s_object)), 10));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTextBuffer")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_text_buffer_end_user_action(GtkTextBuffer* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextBuffer_symbol, S_GOBJECT_GET_ENV(s_object)), 11));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTextBuffer")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_text_buffer_class_init(GtkTextBufferClass * c, SEXP e)
{
  SEXP s;

  S_GtkTextBuffer_symbol = install("GtkTextBuffer");
  s = PROTECT(findVar(S_GtkTextBuffer_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkTextBufferClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->insert_text = S_virtual_gtk_text_buffer_insert_text;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->insert_pixbuf = S_virtual_gtk_text_buffer_insert_pixbuf;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->insert_child_anchor = S_virtual_gtk_text_buffer_insert_child_anchor;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->delete_range = S_virtual_gtk_text_buffer_delete_range;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->changed = S_virtual_gtk_text_buffer_changed;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->modified_changed = S_virtual_gtk_text_buffer_modified_changed;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->mark_set = S_virtual_gtk_text_buffer_mark_set;
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->mark_deleted = S_virtual_gtk_text_buffer_mark_deleted;
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->apply_tag = S_virtual_gtk_text_buffer_apply_tag;
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->remove_tag = S_virtual_gtk_text_buffer_remove_tag;
  if(VECTOR_ELT(s, 10) != NULL_USER_OBJECT)
    c->begin_user_action = S_virtual_gtk_text_buffer_begin_user_action;
  if(VECTOR_ELT(s, 11) != NULL_USER_OBJECT)
    c->end_user_action = S_virtual_gtk_text_buffer_end_user_action;
}
USER_OBJECT_
S_gtk_text_buffer_class_insert_text(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_pos, USER_OBJECT_ s_text, USER_OBJECT_ s_length)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextBufferClass* object_class = ((GtkTextBufferClass*)getPtrValue(s_object_class));
  GtkTextBuffer* object = GTK_TEXT_BUFFER(getPtrValue(s_object));
  GtkTextIter* pos = ((GtkTextIter*)getPtrValue(s_pos));
  const gchar* text = ((const gchar*)asCString(s_text));
  gint length = ((gint)asCInteger(s_length));


  object_class->insert_text(object, pos, text, length);


  return(_result);
}

USER_OBJECT_
S_gtk_text_buffer_class_insert_pixbuf(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_pos, USER_OBJECT_ s_pixbuf)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextBufferClass* object_class = ((GtkTextBufferClass*)getPtrValue(s_object_class));
  GtkTextBuffer* object = GTK_TEXT_BUFFER(getPtrValue(s_object));
  GtkTextIter* pos = ((GtkTextIter*)getPtrValue(s_pos));
  GdkPixbuf* pixbuf = GDK_PIXBUF(getPtrValue(s_pixbuf));


  object_class->insert_pixbuf(object, pos, pixbuf);


  return(_result);
}

USER_OBJECT_
S_gtk_text_buffer_class_insert_child_anchor(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_pos, USER_OBJECT_ s_anchor)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextBufferClass* object_class = ((GtkTextBufferClass*)getPtrValue(s_object_class));
  GtkTextBuffer* object = GTK_TEXT_BUFFER(getPtrValue(s_object));
  GtkTextIter* pos = ((GtkTextIter*)getPtrValue(s_pos));
  GtkTextChildAnchor* anchor = GTK_TEXT_CHILD_ANCHOR(getPtrValue(s_anchor));


  object_class->insert_child_anchor(object, pos, anchor);


  return(_result);
}

USER_OBJECT_
S_gtk_text_buffer_class_delete_range(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_start, USER_OBJECT_ s_end)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextBufferClass* object_class = ((GtkTextBufferClass*)getPtrValue(s_object_class));
  GtkTextBuffer* object = GTK_TEXT_BUFFER(getPtrValue(s_object));
  GtkTextIter* start = ((GtkTextIter*)getPtrValue(s_start));
  GtkTextIter* end = ((GtkTextIter*)getPtrValue(s_end));


  object_class->delete_range(object, start, end);


  return(_result);
}

USER_OBJECT_
S_gtk_text_buffer_class_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextBufferClass* object_class = ((GtkTextBufferClass*)getPtrValue(s_object_class));
  GtkTextBuffer* object = GTK_TEXT_BUFFER(getPtrValue(s_object));


  object_class->changed(object);


  return(_result);
}

USER_OBJECT_
S_gtk_text_buffer_class_modified_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextBufferClass* object_class = ((GtkTextBufferClass*)getPtrValue(s_object_class));
  GtkTextBuffer* object = GTK_TEXT_BUFFER(getPtrValue(s_object));


  object_class->modified_changed(object);


  return(_result);
}

USER_OBJECT_
S_gtk_text_buffer_class_mark_set(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_location, USER_OBJECT_ s_mark)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextBufferClass* object_class = ((GtkTextBufferClass*)getPtrValue(s_object_class));
  GtkTextBuffer* object = GTK_TEXT_BUFFER(getPtrValue(s_object));
  const GtkTextIter* location = ((const GtkTextIter*)getPtrValue(s_location));
  GtkTextMark* mark = GTK_TEXT_MARK(getPtrValue(s_mark));


  object_class->mark_set(object, location, mark);


  return(_result);
}

USER_OBJECT_
S_gtk_text_buffer_class_mark_deleted(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_mark)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextBufferClass* object_class = ((GtkTextBufferClass*)getPtrValue(s_object_class));
  GtkTextBuffer* object = GTK_TEXT_BUFFER(getPtrValue(s_object));
  GtkTextMark* mark = GTK_TEXT_MARK(getPtrValue(s_mark));


  object_class->mark_deleted(object, mark);


  return(_result);
}

USER_OBJECT_
S_gtk_text_buffer_class_apply_tag(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_tag, USER_OBJECT_ s_start_char, USER_OBJECT_ s_end_char)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextBufferClass* object_class = ((GtkTextBufferClass*)getPtrValue(s_object_class));
  GtkTextBuffer* object = GTK_TEXT_BUFFER(getPtrValue(s_object));
  GtkTextTag* tag = GTK_TEXT_TAG(getPtrValue(s_tag));
  const GtkTextIter* start_char = ((const GtkTextIter*)getPtrValue(s_start_char));
  const GtkTextIter* end_char = ((const GtkTextIter*)getPtrValue(s_end_char));


  object_class->apply_tag(object, tag, start_char, end_char);


  return(_result);
}

USER_OBJECT_
S_gtk_text_buffer_class_remove_tag(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_tag, USER_OBJECT_ s_start_char, USER_OBJECT_ s_end_char)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextBufferClass* object_class = ((GtkTextBufferClass*)getPtrValue(s_object_class));
  GtkTextBuffer* object = GTK_TEXT_BUFFER(getPtrValue(s_object));
  GtkTextTag* tag = GTK_TEXT_TAG(getPtrValue(s_tag));
  const GtkTextIter* start_char = ((const GtkTextIter*)getPtrValue(s_start_char));
  const GtkTextIter* end_char = ((const GtkTextIter*)getPtrValue(s_end_char));


  object_class->remove_tag(object, tag, start_char, end_char);


  return(_result);
}

USER_OBJECT_
S_gtk_text_buffer_class_begin_user_action(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextBufferClass* object_class = ((GtkTextBufferClass*)getPtrValue(s_object_class));
  GtkTextBuffer* object = GTK_TEXT_BUFFER(getPtrValue(s_object));


  object_class->begin_user_action(object);


  return(_result);
}

USER_OBJECT_
S_gtk_text_buffer_class_end_user_action(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextBufferClass* object_class = ((GtkTextBufferClass*)getPtrValue(s_object_class));
  GtkTextBuffer* object = GTK_TEXT_BUFFER(getPtrValue(s_object));


  object_class->end_user_action(object);


  return(_result);
}
 

static SEXP S_GtkTextChildAnchor_symbol;
void
S_gtk_text_child_anchor_class_init(GtkTextChildAnchorClass * c, SEXP e)
{
  SEXP s;

  S_GtkTextChildAnchor_symbol = install("GtkTextChildAnchor");
  s = PROTECT(findVar(S_GtkTextChildAnchor_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkTextChildAnchorClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkTextMark_symbol;
void
S_gtk_text_mark_class_init(GtkTextMarkClass * c, SEXP e)
{
  SEXP s;

  S_GtkTextMark_symbol = install("GtkTextMark");
  s = PROTECT(findVar(S_GtkTextMark_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkTextMarkClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkTextTag_symbol;

static gboolean
S_virtual_gtk_text_tag_event(GtkTextTag* s_object, GObject* s_event_object, GdkEvent* s_event, const GtkTextIter* s_iter)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextTag_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTextTag")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_event_object, "GObject"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_text_iter_copy(s_iter) : NULL, "GtkTextIter", (RPointerFinalizer) gtk_text_iter_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}
void
S_gtk_text_tag_class_init(GtkTextTagClass * c, SEXP e)
{
  SEXP s;

  S_GtkTextTag_symbol = install("GtkTextTag");
  s = PROTECT(findVar(S_GtkTextTag_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkTextTagClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->event = S_virtual_gtk_text_tag_event;
}
USER_OBJECT_
S_gtk_text_tag_class_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event_object, USER_OBJECT_ s_event, USER_OBJECT_ s_iter)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextTagClass* object_class = ((GtkTextTagClass*)getPtrValue(s_object_class));
  GtkTextTag* object = GTK_TEXT_TAG(getPtrValue(s_object));
  GObject* event_object = G_OBJECT(getPtrValue(s_event_object));
  GdkEvent* event = ((GdkEvent*)getPtrValue(s_event));
  const GtkTextIter* iter = ((const GtkTextIter*)getPtrValue(s_iter));

  gboolean ans;

  ans = object_class->event(object, event_object, event, iter);

  _result = asRLogical(ans);

  return(_result);
}
 

static SEXP S_GtkTextTagTable_symbol;

static void
S_virtual_gtk_text_tag_table_tag_changed(GtkTextTagTable* s_object, GtkTextTag* s_tag, gboolean s_size_changed)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextTagTable_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTextTagTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_tag, "GtkTextTag"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_size_changed));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_text_tag_table_tag_added(GtkTextTagTable* s_object, GtkTextTag* s_tag)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextTagTable_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTextTagTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_tag, "GtkTextTag"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_text_tag_table_tag_removed(GtkTextTagTable* s_object, GtkTextTag* s_tag)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextTagTable_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTextTagTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_tag, "GtkTextTag"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_text_tag_table_class_init(GtkTextTagTableClass * c, SEXP e)
{
  SEXP s;

  S_GtkTextTagTable_symbol = install("GtkTextTagTable");
  s = PROTECT(findVar(S_GtkTextTagTable_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkTextTagTableClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->tag_changed = S_virtual_gtk_text_tag_table_tag_changed;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->tag_added = S_virtual_gtk_text_tag_table_tag_added;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->tag_removed = S_virtual_gtk_text_tag_table_tag_removed;
}
USER_OBJECT_
S_gtk_text_tag_table_class_tag_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_tag, USER_OBJECT_ s_size_changed)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextTagTableClass* object_class = ((GtkTextTagTableClass*)getPtrValue(s_object_class));
  GtkTextTagTable* object = GTK_TEXT_TAG_TABLE(getPtrValue(s_object));
  GtkTextTag* tag = GTK_TEXT_TAG(getPtrValue(s_tag));
  gboolean size_changed = ((gboolean)asCLogical(s_size_changed));


  object_class->tag_changed(object, tag, size_changed);


  return(_result);
}

USER_OBJECT_
S_gtk_text_tag_table_class_tag_added(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_tag)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextTagTableClass* object_class = ((GtkTextTagTableClass*)getPtrValue(s_object_class));
  GtkTextTagTable* object = GTK_TEXT_TAG_TABLE(getPtrValue(s_object));
  GtkTextTag* tag = GTK_TEXT_TAG(getPtrValue(s_tag));


  object_class->tag_added(object, tag);


  return(_result);
}

USER_OBJECT_
S_gtk_text_tag_table_class_tag_removed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_tag)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextTagTableClass* object_class = ((GtkTextTagTableClass*)getPtrValue(s_object_class));
  GtkTextTagTable* object = GTK_TEXT_TAG_TABLE(getPtrValue(s_object));
  GtkTextTag* tag = GTK_TEXT_TAG(getPtrValue(s_tag));


  object_class->tag_removed(object, tag);


  return(_result);
}
 

static SEXP S_GtkTextView_symbol;

static void
S_virtual_gtk_text_view_set_scroll_adjustments(GtkTextView* s_object, GtkAdjustment* s_hadjustment, GtkAdjustment* s_vadjustment)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextView_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTextView")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_hadjustment, "GtkAdjustment"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_vadjustment, "GtkAdjustment"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_text_view_populate_popup(GtkTextView* s_object, GtkMenu* s_menu)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextView_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTextView")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_menu, "GtkMenu"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_text_view_move_cursor(GtkTextView* s_object, GtkMovementStep s_step, gint s_count, gboolean s_extend_selection)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextView_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTextView")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_step, GTK_TYPE_MOVEMENT_STEP));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_count));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_extend_selection));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_text_view_page_horizontally(GtkTextView* s_object, gint s_count, gboolean s_extend_selection)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextView_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTextView")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_count));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_extend_selection));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_text_view_set_anchor(GtkTextView* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextView_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTextView")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_text_view_insert_at_cursor(GtkTextView* s_object, const gchar* s_str)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextView_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTextView")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_str));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_text_view_delete_from_cursor(GtkTextView* s_object, GtkDeleteType s_type, gint s_count)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextView_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTextView")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_type, GTK_TYPE_DELETE_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_count));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_text_view_backspace(GtkTextView* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextView_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTextView")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_text_view_cut_clipboard(GtkTextView* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextView_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTextView")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_text_view_copy_clipboard(GtkTextView* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextView_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTextView")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_text_view_paste_clipboard(GtkTextView* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextView_symbol, S_GOBJECT_GET_ENV(s_object)), 10));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTextView")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_text_view_toggle_overwrite(GtkTextView* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextView_symbol, S_GOBJECT_GET_ENV(s_object)), 11));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTextView")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_text_view_move_focus(GtkTextView* s_object, GtkDirectionType s_direction)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTextView_symbol, S_GOBJECT_GET_ENV(s_object)), 12));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTextView")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_direction, GTK_TYPE_DIRECTION_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_text_view_class_init(GtkTextViewClass * c, SEXP e)
{
  SEXP s;

  S_GtkTextView_symbol = install("GtkTextView");
  s = PROTECT(findVar(S_GtkTextView_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkTextViewClass)) = e;

  S_gtk_container_class_init(((GtkContainerClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->set_scroll_adjustments = S_virtual_gtk_text_view_set_scroll_adjustments;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->populate_popup = S_virtual_gtk_text_view_populate_popup;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->move_cursor = S_virtual_gtk_text_view_move_cursor;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->page_horizontally = S_virtual_gtk_text_view_page_horizontally;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->set_anchor = S_virtual_gtk_text_view_set_anchor;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->insert_at_cursor = S_virtual_gtk_text_view_insert_at_cursor;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->delete_from_cursor = S_virtual_gtk_text_view_delete_from_cursor;
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->backspace = S_virtual_gtk_text_view_backspace;
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->cut_clipboard = S_virtual_gtk_text_view_cut_clipboard;
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->copy_clipboard = S_virtual_gtk_text_view_copy_clipboard;
  if(VECTOR_ELT(s, 10) != NULL_USER_OBJECT)
    c->paste_clipboard = S_virtual_gtk_text_view_paste_clipboard;
  if(VECTOR_ELT(s, 11) != NULL_USER_OBJECT)
    c->toggle_overwrite = S_virtual_gtk_text_view_toggle_overwrite;
  if(VECTOR_ELT(s, 12) != NULL_USER_OBJECT)
    c->move_focus = S_virtual_gtk_text_view_move_focus;
}
USER_OBJECT_
S_gtk_text_view_class_set_scroll_adjustments(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_hadjustment, USER_OBJECT_ s_vadjustment)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextViewClass* object_class = ((GtkTextViewClass*)getPtrValue(s_object_class));
  GtkTextView* object = GTK_TEXT_VIEW(getPtrValue(s_object));
  GtkAdjustment* hadjustment = GTK_ADJUSTMENT(getPtrValue(s_hadjustment));
  GtkAdjustment* vadjustment = GTK_ADJUSTMENT(getPtrValue(s_vadjustment));


  object_class->set_scroll_adjustments(object, hadjustment, vadjustment);


  return(_result);
}

USER_OBJECT_
S_gtk_text_view_class_populate_popup(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_menu)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextViewClass* object_class = ((GtkTextViewClass*)getPtrValue(s_object_class));
  GtkTextView* object = GTK_TEXT_VIEW(getPtrValue(s_object));
  GtkMenu* menu = GTK_MENU(getPtrValue(s_menu));


  object_class->populate_popup(object, menu);


  return(_result);
}

USER_OBJECT_
S_gtk_text_view_class_move_cursor(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_step, USER_OBJECT_ s_count, USER_OBJECT_ s_extend_selection)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextViewClass* object_class = ((GtkTextViewClass*)getPtrValue(s_object_class));
  GtkTextView* object = GTK_TEXT_VIEW(getPtrValue(s_object));
  GtkMovementStep step = ((GtkMovementStep)asCEnum(s_step, GTK_TYPE_MOVEMENT_STEP));
  gint count = ((gint)asCInteger(s_count));
  gboolean extend_selection = ((gboolean)asCLogical(s_extend_selection));


  object_class->move_cursor(object, step, count, extend_selection);


  return(_result);
}

USER_OBJECT_
S_gtk_text_view_class_page_horizontally(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_count, USER_OBJECT_ s_extend_selection)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextViewClass* object_class = ((GtkTextViewClass*)getPtrValue(s_object_class));
  GtkTextView* object = GTK_TEXT_VIEW(getPtrValue(s_object));
  gint count = ((gint)asCInteger(s_count));
  gboolean extend_selection = ((gboolean)asCLogical(s_extend_selection));


  object_class->page_horizontally(object, count, extend_selection);


  return(_result);
}

USER_OBJECT_
S_gtk_text_view_class_set_anchor(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextViewClass* object_class = ((GtkTextViewClass*)getPtrValue(s_object_class));
  GtkTextView* object = GTK_TEXT_VIEW(getPtrValue(s_object));


  object_class->set_anchor(object);


  return(_result);
}

USER_OBJECT_
S_gtk_text_view_class_insert_at_cursor(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_str)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextViewClass* object_class = ((GtkTextViewClass*)getPtrValue(s_object_class));
  GtkTextView* object = GTK_TEXT_VIEW(getPtrValue(s_object));
  const gchar* str = ((const gchar*)asCString(s_str));


  object_class->insert_at_cursor(object, str);


  return(_result);
}

USER_OBJECT_
S_gtk_text_view_class_delete_from_cursor(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_type, USER_OBJECT_ s_count)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextViewClass* object_class = ((GtkTextViewClass*)getPtrValue(s_object_class));
  GtkTextView* object = GTK_TEXT_VIEW(getPtrValue(s_object));
  GtkDeleteType type = ((GtkDeleteType)asCEnum(s_type, GTK_TYPE_DELETE_TYPE));
  gint count = ((gint)asCInteger(s_count));


  object_class->delete_from_cursor(object, type, count);


  return(_result);
}

USER_OBJECT_
S_gtk_text_view_class_backspace(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextViewClass* object_class = ((GtkTextViewClass*)getPtrValue(s_object_class));
  GtkTextView* object = GTK_TEXT_VIEW(getPtrValue(s_object));


  object_class->backspace(object);


  return(_result);
}

USER_OBJECT_
S_gtk_text_view_class_cut_clipboard(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextViewClass* object_class = ((GtkTextViewClass*)getPtrValue(s_object_class));
  GtkTextView* object = GTK_TEXT_VIEW(getPtrValue(s_object));


  object_class->cut_clipboard(object);


  return(_result);
}

USER_OBJECT_
S_gtk_text_view_class_copy_clipboard(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextViewClass* object_class = ((GtkTextViewClass*)getPtrValue(s_object_class));
  GtkTextView* object = GTK_TEXT_VIEW(getPtrValue(s_object));


  object_class->copy_clipboard(object);


  return(_result);
}

USER_OBJECT_
S_gtk_text_view_class_paste_clipboard(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextViewClass* object_class = ((GtkTextViewClass*)getPtrValue(s_object_class));
  GtkTextView* object = GTK_TEXT_VIEW(getPtrValue(s_object));


  object_class->paste_clipboard(object);


  return(_result);
}

USER_OBJECT_
S_gtk_text_view_class_toggle_overwrite(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextViewClass* object_class = ((GtkTextViewClass*)getPtrValue(s_object_class));
  GtkTextView* object = GTK_TEXT_VIEW(getPtrValue(s_object));


  object_class->toggle_overwrite(object);


  return(_result);
}

USER_OBJECT_
S_gtk_text_view_class_move_focus(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_direction)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTextViewClass* object_class = ((GtkTextViewClass*)getPtrValue(s_object_class));
  GtkTextView* object = GTK_TEXT_VIEW(getPtrValue(s_object));
  GtkDirectionType direction = ((GtkDirectionType)asCEnum(s_direction, GTK_TYPE_DIRECTION_TYPE));


  object_class->move_focus(object, direction);


  return(_result);
}
 

static SEXP S_GtkTipsQuery_symbol;

static void
S_virtual_gtk_tips_query_start_query(GtkTipsQuery* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTipsQuery_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTipsQuery")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_tips_query_stop_query(GtkTipsQuery* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTipsQuery_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTipsQuery")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_tips_query_widget_entered(GtkTipsQuery* s_object, GtkWidget* s_widget, const gchar* s_tip_text, const gchar* s_tip_private)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTipsQuery_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTipsQuery")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_tip_text));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_tip_private));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gint
S_virtual_gtk_tips_query_widget_selected(GtkTipsQuery* s_object, GtkWidget* s_widget, const gchar* s_tip_text, const gchar* s_tip_private, GdkEventButton* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTipsQuery_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTipsQuery")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_tip_text));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_tip_private));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}
void
S_gtk_tips_query_class_init(GtkTipsQueryClass * c, SEXP e)
{
  SEXP s;

  S_GtkTipsQuery_symbol = install("GtkTipsQuery");
  s = PROTECT(findVar(S_GtkTipsQuery_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkTipsQueryClass)) = e;

  S_gtk_label_class_init(((GtkLabelClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->start_query = S_virtual_gtk_tips_query_start_query;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->stop_query = S_virtual_gtk_tips_query_stop_query;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->widget_entered = S_virtual_gtk_tips_query_widget_entered;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->widget_selected = S_virtual_gtk_tips_query_widget_selected;
}
USER_OBJECT_
S_gtk_tips_query_class_start_query(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTipsQueryClass* object_class = ((GtkTipsQueryClass*)getPtrValue(s_object_class));
  GtkTipsQuery* object = GTK_TIPS_QUERY(getPtrValue(s_object));


  object_class->start_query(object);


  return(_result);
}

USER_OBJECT_
S_gtk_tips_query_class_stop_query(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTipsQueryClass* object_class = ((GtkTipsQueryClass*)getPtrValue(s_object_class));
  GtkTipsQuery* object = GTK_TIPS_QUERY(getPtrValue(s_object));


  object_class->stop_query(object);


  return(_result);
}

USER_OBJECT_
S_gtk_tips_query_class_widget_entered(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_widget, USER_OBJECT_ s_tip_text, USER_OBJECT_ s_tip_private)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTipsQueryClass* object_class = ((GtkTipsQueryClass*)getPtrValue(s_object_class));
  GtkTipsQuery* object = GTK_TIPS_QUERY(getPtrValue(s_object));
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* tip_text = ((const gchar*)asCString(s_tip_text));
  const gchar* tip_private = ((const gchar*)asCString(s_tip_private));


  object_class->widget_entered(object, widget, tip_text, tip_private);


  return(_result);
}

USER_OBJECT_
S_gtk_tips_query_class_widget_selected(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_widget, USER_OBJECT_ s_tip_text, USER_OBJECT_ s_tip_private, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTipsQueryClass* object_class = ((GtkTipsQueryClass*)getPtrValue(s_object_class));
  GtkTipsQuery* object = GTK_TIPS_QUERY(getPtrValue(s_object));
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
  const gchar* tip_text = ((const gchar*)asCString(s_tip_text));
  const gchar* tip_private = ((const gchar*)asCString(s_tip_private));
  GdkEventButton* event = ((GdkEventButton*)getPtrValue(s_event));

  gint ans;

  ans = object_class->widget_selected(object, widget, tip_text, tip_private, event);

  _result = asRInteger(ans);

  return(_result);
}
 

static SEXP S_GtkToggleAction_symbol;

static void
S_virtual_gtk_toggle_action_toggled(GtkToggleAction* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkToggleAction_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkToggleAction")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_toggle_action_class_init(GtkToggleActionClass * c, SEXP e)
{
  SEXP s;

  S_GtkToggleAction_symbol = install("GtkToggleAction");
  s = PROTECT(findVar(S_GtkToggleAction_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkToggleActionClass)) = e;

  S_gtk_action_class_init(((GtkActionClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->toggled = S_virtual_gtk_toggle_action_toggled;
}
USER_OBJECT_
S_gtk_toggle_action_class_toggled(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkToggleActionClass* object_class = ((GtkToggleActionClass*)getPtrValue(s_object_class));
  GtkToggleAction* object = GTK_TOGGLE_ACTION(getPtrValue(s_object));


  object_class->toggled(object);


  return(_result);
}
 

static SEXP S_GtkToggleButton_symbol;

static void
S_virtual_gtk_toggle_button_toggled(GtkToggleButton* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkToggleButton_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkToggleButton")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_toggle_button_class_init(GtkToggleButtonClass * c, SEXP e)
{
  SEXP s;

  S_GtkToggleButton_symbol = install("GtkToggleButton");
  s = PROTECT(findVar(S_GtkToggleButton_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkToggleButtonClass)) = e;

  S_gtk_button_class_init(((GtkButtonClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->toggled = S_virtual_gtk_toggle_button_toggled;
}
USER_OBJECT_
S_gtk_toggle_button_class_toggled(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkToggleButtonClass* object_class = ((GtkToggleButtonClass*)getPtrValue(s_object_class));
  GtkToggleButton* object = GTK_TOGGLE_BUTTON(getPtrValue(s_object));


  object_class->toggled(object);


  return(_result);
}
 

static SEXP S_GtkToggleToolButton_symbol;

static void
S_virtual_gtk_toggle_tool_button_toggled(GtkToggleToolButton* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkToggleToolButton_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkToggleToolButton")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_toggle_tool_button_class_init(GtkToggleToolButtonClass * c, SEXP e)
{
  SEXP s;

  S_GtkToggleToolButton_symbol = install("GtkToggleToolButton");
  s = PROTECT(findVar(S_GtkToggleToolButton_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkToggleToolButtonClass)) = e;

  S_gtk_tool_button_class_init(((GtkToolButtonClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->toggled = S_virtual_gtk_toggle_tool_button_toggled;
}
USER_OBJECT_
S_gtk_toggle_tool_button_class_toggled(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkToggleToolButtonClass* object_class = ((GtkToggleToolButtonClass*)getPtrValue(s_object_class));
  GtkToggleToolButton* object = GTK_TOGGLE_TOOL_BUTTON(getPtrValue(s_object));


  object_class->toggled(object);


  return(_result);
}
 

static SEXP S_GtkToolbar_symbol;

static void
S_virtual_gtk_toolbar_orientation_changed(GtkToolbar* s_object, GtkOrientation s_orientation)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkToolbar_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkToolbar")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_orientation, GTK_TYPE_ORIENTATION));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_toolbar_style_changed(GtkToolbar* s_object, GtkToolbarStyle s_style)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkToolbar_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkToolbar")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_style, GTK_TYPE_TOOLBAR_STYLE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gtk_toolbar_popup_context_menu(GtkToolbar* s_object, gint s_x, gint s_y, gint s_button_number)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkToolbar_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkToolbar")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_button_number));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}
void
S_gtk_toolbar_class_init(GtkToolbarClass * c, SEXP e)
{
  SEXP s;

  S_GtkToolbar_symbol = install("GtkToolbar");
  s = PROTECT(findVar(S_GtkToolbar_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkToolbarClass)) = e;

  S_gtk_container_class_init(((GtkContainerClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->orientation_changed = S_virtual_gtk_toolbar_orientation_changed;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->style_changed = S_virtual_gtk_toolbar_style_changed;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->popup_context_menu = S_virtual_gtk_toolbar_popup_context_menu;
}
USER_OBJECT_
S_gtk_toolbar_class_orientation_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_orientation)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkToolbarClass* object_class = ((GtkToolbarClass*)getPtrValue(s_object_class));
  GtkToolbar* object = GTK_TOOLBAR(getPtrValue(s_object));
  GtkOrientation orientation = ((GtkOrientation)asCEnum(s_orientation, GTK_TYPE_ORIENTATION));


  object_class->orientation_changed(object, orientation);


  return(_result);
}

USER_OBJECT_
S_gtk_toolbar_class_style_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_style)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkToolbarClass* object_class = ((GtkToolbarClass*)getPtrValue(s_object_class));
  GtkToolbar* object = GTK_TOOLBAR(getPtrValue(s_object));
  GtkToolbarStyle style = ((GtkToolbarStyle)asCEnum(s_style, GTK_TYPE_TOOLBAR_STYLE));


  object_class->style_changed(object, style);


  return(_result);
}

USER_OBJECT_
S_gtk_toolbar_class_popup_context_menu(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_button_number)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkToolbarClass* object_class = ((GtkToolbarClass*)getPtrValue(s_object_class));
  GtkToolbar* object = GTK_TOOLBAR(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint button_number = ((gint)asCInteger(s_button_number));

  gboolean ans;

  ans = object_class->popup_context_menu(object, x, y, button_number);

  _result = asRLogical(ans);

  return(_result);
}
 

static SEXP S_GtkToolButton_symbol;

static void
S_virtual_gtk_tool_button_clicked(GtkToolButton* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkToolButton_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkToolButton")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_tool_button_class_init(GtkToolButtonClass * c, SEXP e)
{
  SEXP s;

  S_GtkToolButton_symbol = install("GtkToolButton");
  s = PROTECT(findVar(S_GtkToolButton_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkToolButtonClass)) = e;

  S_gtk_tool_item_class_init(((GtkToolItemClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->clicked = S_virtual_gtk_tool_button_clicked;
}
USER_OBJECT_
S_gtk_tool_button_class_clicked(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkToolButtonClass* object_class = ((GtkToolButtonClass*)getPtrValue(s_object_class));
  GtkToolButton* object = GTK_TOOL_BUTTON(getPtrValue(s_object));


  object_class->clicked(object);


  return(_result);
}
 

static SEXP S_GtkToolItem_symbol;

static gboolean
S_virtual_gtk_tool_item_create_menu_proxy(GtkToolItem* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkToolItem_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkToolItem")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static void
S_virtual_gtk_tool_item_toolbar_reconfigured(GtkToolItem* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkToolItem_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkToolItem")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gtk_tool_item_set_tooltip(GtkToolItem* s_object, GtkTooltips* s_tooltips, const gchar* s_tip_text, const gchar* s_tip_private)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkToolItem_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkToolItem")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_tooltips, "GtkTooltips"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_tip_text));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_tip_private));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}
void
S_gtk_tool_item_class_init(GtkToolItemClass * c, SEXP e)
{
  SEXP s;

  S_GtkToolItem_symbol = install("GtkToolItem");
  s = PROTECT(findVar(S_GtkToolItem_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkToolItemClass)) = e;

  S_gtk_bin_class_init(((GtkBinClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->create_menu_proxy = S_virtual_gtk_tool_item_create_menu_proxy;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->toolbar_reconfigured = S_virtual_gtk_tool_item_toolbar_reconfigured;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->set_tooltip = S_virtual_gtk_tool_item_set_tooltip;
}
USER_OBJECT_
S_gtk_tool_item_class_create_menu_proxy(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkToolItemClass* object_class = ((GtkToolItemClass*)getPtrValue(s_object_class));
  GtkToolItem* object = GTK_TOOL_ITEM(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->create_menu_proxy(object);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_tool_item_class_toolbar_reconfigured(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkToolItemClass* object_class = ((GtkToolItemClass*)getPtrValue(s_object_class));
  GtkToolItem* object = GTK_TOOL_ITEM(getPtrValue(s_object));


  object_class->toolbar_reconfigured(object);


  return(_result);
}

USER_OBJECT_
S_gtk_tool_item_class_set_tooltip(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_tooltips, USER_OBJECT_ s_tip_text, USER_OBJECT_ s_tip_private)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkToolItemClass* object_class = ((GtkToolItemClass*)getPtrValue(s_object_class));
  GtkToolItem* object = GTK_TOOL_ITEM(getPtrValue(s_object));
  GtkTooltips* tooltips = GTK_TOOLTIPS(getPtrValue(s_tooltips));
  const gchar* tip_text = ((const gchar*)asCString(s_tip_text));
  const gchar* tip_private = ((const gchar*)asCString(s_tip_private));

  gboolean ans;

  ans = object_class->set_tooltip(object, tooltips, tip_text, tip_private);

  _result = asRLogical(ans);

  return(_result);
}
 

static SEXP S_GtkTooltips_symbol;
void
S_gtk_tooltips_class_init(GtkTooltipsClass * c, SEXP e)
{
  SEXP s;

  S_GtkTooltips_symbol = install("GtkTooltips");
  s = PROTECT(findVar(S_GtkTooltips_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkTooltipsClass)) = e;

  S_gtk_object_class_init(((GtkObjectClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkTreeModelFilter_symbol;
void
S_gtk_tree_model_filter_class_init(GtkTreeModelFilterClass * c, SEXP e)
{
  SEXP s;

  S_GtkTreeModelFilter_symbol = install("GtkTreeModelFilter");
  s = PROTECT(findVar(S_GtkTreeModelFilter_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkTreeModelFilterClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkTreeModelSort_symbol;
void
S_gtk_tree_model_sort_class_init(GtkTreeModelSortClass * c, SEXP e)
{
  SEXP s;

  S_GtkTreeModelSort_symbol = install("GtkTreeModelSort");
  s = PROTECT(findVar(S_GtkTreeModelSort_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkTreeModelSortClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkTreeSelection_symbol;

static void
S_virtual_gtk_tree_selection_changed(GtkTreeSelection* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeSelection_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeSelection")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_tree_selection_class_init(GtkTreeSelectionClass * c, SEXP e)
{
  SEXP s;

  S_GtkTreeSelection_symbol = install("GtkTreeSelection");
  s = PROTECT(findVar(S_GtkTreeSelection_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkTreeSelectionClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->changed = S_virtual_gtk_tree_selection_changed;
}
USER_OBJECT_
S_gtk_tree_selection_class_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeSelectionClass* object_class = ((GtkTreeSelectionClass*)getPtrValue(s_object_class));
  GtkTreeSelection* object = GTK_TREE_SELECTION(getPtrValue(s_object));


  object_class->changed(object);


  return(_result);
}
 

static SEXP S_GtkTreeStore_symbol;
void
S_gtk_tree_store_class_init(GtkTreeStoreClass * c, SEXP e)
{
  SEXP s;

  S_GtkTreeStore_symbol = install("GtkTreeStore");
  s = PROTECT(findVar(S_GtkTreeStore_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkTreeStoreClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkTreeView_symbol;

static void
S_virtual_gtk_tree_view_set_scroll_adjustments(GtkTreeView* s_object, GtkAdjustment* s_hadjustment, GtkAdjustment* s_vadjustment)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeView_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTreeView")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_hadjustment, "GtkAdjustment"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_vadjustment, "GtkAdjustment"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_tree_view_row_activated(GtkTreeView* s_object, GtkTreePath* s_path, GtkTreeViewColumn* s_column)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeView_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTreeView")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_path ? gtk_tree_path_copy(s_path) : NULL, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_column, "GtkTreeViewColumn"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gtk_tree_view_test_expand_row(GtkTreeView* s_object, GtkTreeIter* s_iter, GtkTreePath* s_path)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeView_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTreeView")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_tree_iter_copy(s_iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_path ? gtk_tree_path_copy(s_path) : NULL, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_tree_view_test_collapse_row(GtkTreeView* s_object, GtkTreeIter* s_iter, GtkTreePath* s_path)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeView_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTreeView")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_tree_iter_copy(s_iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_path ? gtk_tree_path_copy(s_path) : NULL, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static void
S_virtual_gtk_tree_view_row_expanded(GtkTreeView* s_object, GtkTreeIter* s_iter, GtkTreePath* s_path)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeView_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTreeView")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_tree_iter_copy(s_iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_path ? gtk_tree_path_copy(s_path) : NULL, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_tree_view_row_collapsed(GtkTreeView* s_object, GtkTreeIter* s_iter, GtkTreePath* s_path)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeView_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTreeView")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_tree_iter_copy(s_iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_path ? gtk_tree_path_copy(s_path) : NULL, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_tree_view_columns_changed(GtkTreeView* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeView_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTreeView")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_tree_view_cursor_changed(GtkTreeView* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeView_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTreeView")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gtk_tree_view_move_cursor(GtkTreeView* s_object, GtkMovementStep s_step, gint s_count)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeView_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTreeView")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_step, GTK_TYPE_MOVEMENT_STEP));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_count));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_tree_view_select_all(GtkTreeView* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeView_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTreeView")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_tree_view_unselect_all(GtkTreeView* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeView_symbol, S_GOBJECT_GET_ENV(s_object)), 10));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTreeView")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_tree_view_select_cursor_row(GtkTreeView* s_object, gboolean s_start_editing)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeView_symbol, S_GOBJECT_GET_ENV(s_object)), 11));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTreeView")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_start_editing));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_tree_view_toggle_cursor_row(GtkTreeView* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeView_symbol, S_GOBJECT_GET_ENV(s_object)), 12));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTreeView")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_tree_view_expand_collapse_cursor_row(GtkTreeView* s_object, gboolean s_logical, gboolean s_expand, gboolean s_open_all)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeView_symbol, S_GOBJECT_GET_ENV(s_object)), 13));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTreeView")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_logical));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_expand));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_open_all));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_tree_view_select_cursor_parent(GtkTreeView* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeView_symbol, S_GOBJECT_GET_ENV(s_object)), 14));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTreeView")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_tree_view_start_interactive_search(GtkTreeView* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeView_symbol, S_GOBJECT_GET_ENV(s_object)), 15));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTreeView")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}
void
S_gtk_tree_view_class_init(GtkTreeViewClass * c, SEXP e)
{
  SEXP s;

  S_GtkTreeView_symbol = install("GtkTreeView");
  s = PROTECT(findVar(S_GtkTreeView_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkTreeViewClass)) = e;

  S_gtk_container_class_init(((GtkContainerClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->set_scroll_adjustments = S_virtual_gtk_tree_view_set_scroll_adjustments;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->row_activated = S_virtual_gtk_tree_view_row_activated;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->test_expand_row = S_virtual_gtk_tree_view_test_expand_row;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->test_collapse_row = S_virtual_gtk_tree_view_test_collapse_row;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->row_expanded = S_virtual_gtk_tree_view_row_expanded;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->row_collapsed = S_virtual_gtk_tree_view_row_collapsed;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->columns_changed = S_virtual_gtk_tree_view_columns_changed;
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->cursor_changed = S_virtual_gtk_tree_view_cursor_changed;
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->move_cursor = S_virtual_gtk_tree_view_move_cursor;
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->select_all = S_virtual_gtk_tree_view_select_all;
  if(VECTOR_ELT(s, 10) != NULL_USER_OBJECT)
    c->unselect_all = S_virtual_gtk_tree_view_unselect_all;
  if(VECTOR_ELT(s, 11) != NULL_USER_OBJECT)
    c->select_cursor_row = S_virtual_gtk_tree_view_select_cursor_row;
  if(VECTOR_ELT(s, 12) != NULL_USER_OBJECT)
    c->toggle_cursor_row = S_virtual_gtk_tree_view_toggle_cursor_row;
  if(VECTOR_ELT(s, 13) != NULL_USER_OBJECT)
    c->expand_collapse_cursor_row = S_virtual_gtk_tree_view_expand_collapse_cursor_row;
  if(VECTOR_ELT(s, 14) != NULL_USER_OBJECT)
    c->select_cursor_parent = S_virtual_gtk_tree_view_select_cursor_parent;
  if(VECTOR_ELT(s, 15) != NULL_USER_OBJECT)
    c->start_interactive_search = S_virtual_gtk_tree_view_start_interactive_search;
}
USER_OBJECT_
S_gtk_tree_view_class_set_scroll_adjustments(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_hadjustment, USER_OBJECT_ s_vadjustment)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeViewClass* object_class = ((GtkTreeViewClass*)getPtrValue(s_object_class));
  GtkTreeView* object = GTK_TREE_VIEW(getPtrValue(s_object));
  GtkAdjustment* hadjustment = GTK_ADJUSTMENT(getPtrValue(s_hadjustment));
  GtkAdjustment* vadjustment = GTK_ADJUSTMENT(getPtrValue(s_vadjustment));


  object_class->set_scroll_adjustments(object, hadjustment, vadjustment);


  return(_result);
}

USER_OBJECT_
S_gtk_tree_view_class_row_activated(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_path, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeViewClass* object_class = ((GtkTreeViewClass*)getPtrValue(s_object_class));
  GtkTreeView* object = GTK_TREE_VIEW(getPtrValue(s_object));
  GtkTreePath* path = ((GtkTreePath*)getPtrValue(s_path));
  GtkTreeViewColumn* column = GTK_TREE_VIEW_COLUMN(getPtrValue(s_column));


  object_class->row_activated(object, path, column);


  return(_result);
}

USER_OBJECT_
S_gtk_tree_view_class_test_expand_row(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_path)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeViewClass* object_class = ((GtkTreeViewClass*)getPtrValue(s_object_class));
  GtkTreeView* object = GTK_TREE_VIEW(getPtrValue(s_object));
  GtkTreeIter* iter = ((GtkTreeIter*)getPtrValue(s_iter));
  GtkTreePath* path = ((GtkTreePath*)getPtrValue(s_path));

  gboolean ans;

  ans = object_class->test_expand_row(object, iter, path);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_tree_view_class_test_collapse_row(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_path)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeViewClass* object_class = ((GtkTreeViewClass*)getPtrValue(s_object_class));
  GtkTreeView* object = GTK_TREE_VIEW(getPtrValue(s_object));
  GtkTreeIter* iter = ((GtkTreeIter*)getPtrValue(s_iter));
  GtkTreePath* path = ((GtkTreePath*)getPtrValue(s_path));

  gboolean ans;

  ans = object_class->test_collapse_row(object, iter, path);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_tree_view_class_row_expanded(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_path)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeViewClass* object_class = ((GtkTreeViewClass*)getPtrValue(s_object_class));
  GtkTreeView* object = GTK_TREE_VIEW(getPtrValue(s_object));
  GtkTreeIter* iter = ((GtkTreeIter*)getPtrValue(s_iter));
  GtkTreePath* path = ((GtkTreePath*)getPtrValue(s_path));


  object_class->row_expanded(object, iter, path);


  return(_result);
}

USER_OBJECT_
S_gtk_tree_view_class_row_collapsed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_path)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeViewClass* object_class = ((GtkTreeViewClass*)getPtrValue(s_object_class));
  GtkTreeView* object = GTK_TREE_VIEW(getPtrValue(s_object));
  GtkTreeIter* iter = ((GtkTreeIter*)getPtrValue(s_iter));
  GtkTreePath* path = ((GtkTreePath*)getPtrValue(s_path));


  object_class->row_collapsed(object, iter, path);


  return(_result);
}

USER_OBJECT_
S_gtk_tree_view_class_columns_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeViewClass* object_class = ((GtkTreeViewClass*)getPtrValue(s_object_class));
  GtkTreeView* object = GTK_TREE_VIEW(getPtrValue(s_object));


  object_class->columns_changed(object);


  return(_result);
}

USER_OBJECT_
S_gtk_tree_view_class_cursor_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeViewClass* object_class = ((GtkTreeViewClass*)getPtrValue(s_object_class));
  GtkTreeView* object = GTK_TREE_VIEW(getPtrValue(s_object));


  object_class->cursor_changed(object);


  return(_result);
}

USER_OBJECT_
S_gtk_tree_view_class_move_cursor(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_step, USER_OBJECT_ s_count)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeViewClass* object_class = ((GtkTreeViewClass*)getPtrValue(s_object_class));
  GtkTreeView* object = GTK_TREE_VIEW(getPtrValue(s_object));
  GtkMovementStep step = ((GtkMovementStep)asCEnum(s_step, GTK_TYPE_MOVEMENT_STEP));
  gint count = ((gint)asCInteger(s_count));

  gboolean ans;

  ans = object_class->move_cursor(object, step, count);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_tree_view_class_select_all(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeViewClass* object_class = ((GtkTreeViewClass*)getPtrValue(s_object_class));
  GtkTreeView* object = GTK_TREE_VIEW(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->select_all(object);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_tree_view_class_unselect_all(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeViewClass* object_class = ((GtkTreeViewClass*)getPtrValue(s_object_class));
  GtkTreeView* object = GTK_TREE_VIEW(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->unselect_all(object);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_tree_view_class_select_cursor_row(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_start_editing)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeViewClass* object_class = ((GtkTreeViewClass*)getPtrValue(s_object_class));
  GtkTreeView* object = GTK_TREE_VIEW(getPtrValue(s_object));
  gboolean start_editing = ((gboolean)asCLogical(s_start_editing));

  gboolean ans;

  ans = object_class->select_cursor_row(object, start_editing);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_tree_view_class_toggle_cursor_row(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeViewClass* object_class = ((GtkTreeViewClass*)getPtrValue(s_object_class));
  GtkTreeView* object = GTK_TREE_VIEW(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->toggle_cursor_row(object);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_tree_view_class_expand_collapse_cursor_row(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_logical, USER_OBJECT_ s_expand, USER_OBJECT_ s_open_all)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeViewClass* object_class = ((GtkTreeViewClass*)getPtrValue(s_object_class));
  GtkTreeView* object = GTK_TREE_VIEW(getPtrValue(s_object));
  gboolean logical = ((gboolean)asCLogical(s_logical));
  gboolean expand = ((gboolean)asCLogical(s_expand));
  gboolean open_all = ((gboolean)asCLogical(s_open_all));

  gboolean ans;

  ans = object_class->expand_collapse_cursor_row(object, logical, expand, open_all);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_tree_view_class_select_cursor_parent(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeViewClass* object_class = ((GtkTreeViewClass*)getPtrValue(s_object_class));
  GtkTreeView* object = GTK_TREE_VIEW(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->select_cursor_parent(object);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_tree_view_class_start_interactive_search(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeViewClass* object_class = ((GtkTreeViewClass*)getPtrValue(s_object_class));
  GtkTreeView* object = GTK_TREE_VIEW(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->start_interactive_search(object);

  _result = asRLogical(ans);

  return(_result);
}
 

static SEXP S_GtkTreeViewColumn_symbol;

static void
S_virtual_gtk_tree_view_column_clicked(GtkTreeViewColumn* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeViewColumn_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkTreeViewColumn")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_tree_view_column_class_init(GtkTreeViewColumnClass * c, SEXP e)
{
  SEXP s;

  S_GtkTreeViewColumn_symbol = install("GtkTreeViewColumn");
  s = PROTECT(findVar(S_GtkTreeViewColumn_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkTreeViewColumnClass)) = e;

  S_gtk_object_class_init(((GtkObjectClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->clicked = S_virtual_gtk_tree_view_column_clicked;
}
USER_OBJECT_
S_gtk_tree_view_column_class_clicked(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeViewColumnClass* object_class = ((GtkTreeViewColumnClass*)getPtrValue(s_object_class));
  GtkTreeViewColumn* object = GTK_TREE_VIEW_COLUMN(getPtrValue(s_object));


  object_class->clicked(object);


  return(_result);
}
 

static SEXP S_GtkUIManager_symbol;

static void
S_virtual_gtk_uimanager_add_widget(GtkUIManager* s_object, GtkWidget* s_widget)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkUIManager_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkUIManager")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_uimanager_actions_changed(GtkUIManager* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkUIManager_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkUIManager")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_uimanager_connect_proxy(GtkUIManager* s_object, GtkAction* s_action, GtkWidget* s_proxy)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkUIManager_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkUIManager")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_action, "GtkAction"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_proxy, "GtkWidget"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_uimanager_disconnect_proxy(GtkUIManager* s_object, GtkAction* s_action, GtkWidget* s_proxy)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkUIManager_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkUIManager")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_action, "GtkAction"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_proxy, "GtkWidget"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_uimanager_pre_activate(GtkUIManager* s_object, GtkAction* s_action)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkUIManager_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkUIManager")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_action, "GtkAction"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_uimanager_post_activate(GtkUIManager* s_object, GtkAction* s_action)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkUIManager_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkUIManager")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_action, "GtkAction"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GtkWidget*
S_virtual_gtk_uimanager_get_widget(GtkUIManager* s_object, const gchar* s_path)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkUIManager_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkUIManager")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_path));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GtkWidget*)0));
  return(GTK_WIDGET(getPtrValue(s_ans)));
}

static GtkAction*
S_virtual_gtk_uimanager_get_action(GtkUIManager* s_object, const gchar* s_path)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkUIManager_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkUIManager")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_path));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GtkAction*)0));
  return(GTK_ACTION(getPtrValue(s_ans)));
}
void
S_gtk_uimanager_class_init(GtkUIManagerClass * c, SEXP e)
{
  SEXP s;

  S_GtkUIManager_symbol = install("GtkUIManager");
  s = PROTECT(findVar(S_GtkUIManager_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkUIManagerClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->add_widget = S_virtual_gtk_uimanager_add_widget;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->actions_changed = S_virtual_gtk_uimanager_actions_changed;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->connect_proxy = S_virtual_gtk_uimanager_connect_proxy;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->disconnect_proxy = S_virtual_gtk_uimanager_disconnect_proxy;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->pre_activate = S_virtual_gtk_uimanager_pre_activate;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->post_activate = S_virtual_gtk_uimanager_post_activate;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->get_widget = S_virtual_gtk_uimanager_get_widget;
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->get_action = S_virtual_gtk_uimanager_get_action;
}
USER_OBJECT_
S_gtk_uimanager_class_add_widget(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_widget)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkUIManagerClass* object_class = ((GtkUIManagerClass*)getPtrValue(s_object_class));
  GtkUIManager* object = GTK_UI_MANAGER(getPtrValue(s_object));
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));


  object_class->add_widget(object, widget);


  return(_result);
}

USER_OBJECT_
S_gtk_uimanager_class_actions_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkUIManagerClass* object_class = ((GtkUIManagerClass*)getPtrValue(s_object_class));
  GtkUIManager* object = GTK_UI_MANAGER(getPtrValue(s_object));


  object_class->actions_changed(object);


  return(_result);
}

USER_OBJECT_
S_gtk_uimanager_class_connect_proxy(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_action, USER_OBJECT_ s_proxy)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkUIManagerClass* object_class = ((GtkUIManagerClass*)getPtrValue(s_object_class));
  GtkUIManager* object = GTK_UI_MANAGER(getPtrValue(s_object));
  GtkAction* action = GTK_ACTION(getPtrValue(s_action));
  GtkWidget* proxy = GTK_WIDGET(getPtrValue(s_proxy));


  object_class->connect_proxy(object, action, proxy);


  return(_result);
}

USER_OBJECT_
S_gtk_uimanager_class_disconnect_proxy(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_action, USER_OBJECT_ s_proxy)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkUIManagerClass* object_class = ((GtkUIManagerClass*)getPtrValue(s_object_class));
  GtkUIManager* object = GTK_UI_MANAGER(getPtrValue(s_object));
  GtkAction* action = GTK_ACTION(getPtrValue(s_action));
  GtkWidget* proxy = GTK_WIDGET(getPtrValue(s_proxy));


  object_class->disconnect_proxy(object, action, proxy);


  return(_result);
}

USER_OBJECT_
S_gtk_uimanager_class_pre_activate(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_action)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkUIManagerClass* object_class = ((GtkUIManagerClass*)getPtrValue(s_object_class));
  GtkUIManager* object = GTK_UI_MANAGER(getPtrValue(s_object));
  GtkAction* action = GTK_ACTION(getPtrValue(s_action));


  object_class->pre_activate(object, action);


  return(_result);
}

USER_OBJECT_
S_gtk_uimanager_class_post_activate(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_action)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkUIManagerClass* object_class = ((GtkUIManagerClass*)getPtrValue(s_object_class));
  GtkUIManager* object = GTK_UI_MANAGER(getPtrValue(s_object));
  GtkAction* action = GTK_ACTION(getPtrValue(s_action));


  object_class->post_activate(object, action);


  return(_result);
}

USER_OBJECT_
S_gtk_uimanager_class_get_widget(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_path)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkUIManagerClass* object_class = ((GtkUIManagerClass*)getPtrValue(s_object_class));
  GtkUIManager* object = GTK_UI_MANAGER(getPtrValue(s_object));
  const gchar* path = ((const gchar*)asCString(s_path));

  GtkWidget* ans;

  ans = object_class->get_widget(object, path);

  _result = toRPointerWithSink(ans, "GtkWidget");

  return(_result);
}

USER_OBJECT_
S_gtk_uimanager_class_get_action(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_path)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkUIManagerClass* object_class = ((GtkUIManagerClass*)getPtrValue(s_object_class));
  GtkUIManager* object = GTK_UI_MANAGER(getPtrValue(s_object));
  const gchar* path = ((const gchar*)asCString(s_path));

  GtkAction* ans;

  ans = object_class->get_action(object, path);

  _result = toRPointerWithRef(ans, "GtkAction");

  return(_result);
}
 

static SEXP S_GtkVBox_symbol;
void
S_gtk_vbox_class_init(GtkVBoxClass * c, SEXP e)
{
  SEXP s;

  S_GtkVBox_symbol = install("GtkVBox");
  s = PROTECT(findVar(S_GtkVBox_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkVBoxClass)) = e;

  S_gtk_box_class_init(((GtkBoxClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkVButtonBox_symbol;
void
S_gtk_vbutton_box_class_init(GtkVButtonBoxClass * c, SEXP e)
{
  SEXP s;

  S_GtkVButtonBox_symbol = install("GtkVButtonBox");
  s = PROTECT(findVar(S_GtkVButtonBox_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkVButtonBoxClass)) = e;

  S_gtk_button_box_class_init(((GtkButtonBoxClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkViewport_symbol;

static void
S_virtual_gtk_viewport_set_scroll_adjustments(GtkViewport* s_object, GtkAdjustment* s_hadjustment, GtkAdjustment* s_vadjustment)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkViewport_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkViewport")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_hadjustment, "GtkAdjustment"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_vadjustment, "GtkAdjustment"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_viewport_class_init(GtkViewportClass * c, SEXP e)
{
  SEXP s;

  S_GtkViewport_symbol = install("GtkViewport");
  s = PROTECT(findVar(S_GtkViewport_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkViewportClass)) = e;

  S_gtk_bin_class_init(((GtkBinClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->set_scroll_adjustments = S_virtual_gtk_viewport_set_scroll_adjustments;
}
USER_OBJECT_
S_gtk_viewport_class_set_scroll_adjustments(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_hadjustment, USER_OBJECT_ s_vadjustment)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkViewportClass* object_class = ((GtkViewportClass*)getPtrValue(s_object_class));
  GtkViewport* object = GTK_VIEWPORT(getPtrValue(s_object));
  GtkAdjustment* hadjustment = GTK_ADJUSTMENT(getPtrValue(s_hadjustment));
  GtkAdjustment* vadjustment = GTK_ADJUSTMENT(getPtrValue(s_vadjustment));


  object_class->set_scroll_adjustments(object, hadjustment, vadjustment);


  return(_result);
}
 

static SEXP S_GtkVPaned_symbol;
void
S_gtk_vpaned_class_init(GtkVPanedClass * c, SEXP e)
{
  SEXP s;

  S_GtkVPaned_symbol = install("GtkVPaned");
  s = PROTECT(findVar(S_GtkVPaned_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkVPanedClass)) = e;

  S_gtk_paned_class_init(((GtkPanedClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkVRuler_symbol;
void
S_gtk_vruler_class_init(GtkVRulerClass * c, SEXP e)
{
  SEXP s;

  S_GtkVRuler_symbol = install("GtkVRuler");
  s = PROTECT(findVar(S_GtkVRuler_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkVRulerClass)) = e;

  S_gtk_ruler_class_init(((GtkRulerClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkVScale_symbol;
void
S_gtk_vscale_class_init(GtkVScaleClass * c, SEXP e)
{
  SEXP s;

  S_GtkVScale_symbol = install("GtkVScale");
  s = PROTECT(findVar(S_GtkVScale_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkVScaleClass)) = e;

  S_gtk_scale_class_init(((GtkScaleClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkVScrollbar_symbol;
void
S_gtk_vscrollbar_class_init(GtkVScrollbarClass * c, SEXP e)
{
  SEXP s;

  S_GtkVScrollbar_symbol = install("GtkVScrollbar");
  s = PROTECT(findVar(S_GtkVScrollbar_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkVScrollbarClass)) = e;

  S_gtk_scrollbar_class_init(((GtkScrollbarClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkVSeparator_symbol;
void
S_gtk_vseparator_class_init(GtkVSeparatorClass * c, SEXP e)
{
  SEXP s;

  S_GtkVSeparator_symbol = install("GtkVSeparator");
  s = PROTECT(findVar(S_GtkVSeparator_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkVSeparatorClass)) = e;

  S_gtk_separator_class_init(((GtkSeparatorClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_GtkWidget_symbol;

static void
S_virtual_gtk_widget_dispatch_child_properties_changed(GtkWidget* s_object, guint s_n_pspecs, GParamSpec** s_pspecs)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_n_pspecs));
  tmp = CDR(tmp);
  SETCAR(tmp, asRArrayWithSize(s_pspecs, asRGParamSpec, s_n_pspecs));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_widget_show(GtkWidget* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_widget_show_all(GtkWidget* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_widget_hide(GtkWidget* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_widget_hide_all(GtkWidget* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_widget_map(GtkWidget* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_widget_unmap(GtkWidget* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_widget_realize(GtkWidget* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_widget_unrealize(GtkWidget* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_widget_size_request(GtkWidget* s_object, GtkRequisition* s_requisition)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_requisition ? gtk_requisition_copy(s_requisition) : NULL, "GtkRequisition", (RPointerFinalizer) gtk_requisition_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_widget_size_allocate(GtkWidget* s_object, GtkAllocation* s_allocation)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 10));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGtkAllocation(s_allocation));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_widget_state_changed(GtkWidget* s_object, GtkStateType s_previous_state)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 11));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_previous_state, GTK_TYPE_STATE_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_widget_parent_set(GtkWidget* s_object, GtkWidget* s_previous_parent)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 12));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_previous_parent, toRPointerWithSink(s_previous_parent, "GtkWidget")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_widget_hierarchy_changed(GtkWidget* s_object, GtkWidget* s_previous_toplevel)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 13));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_previous_toplevel, toRPointerWithSink(s_previous_toplevel, "GtkWidget")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_widget_style_set(GtkWidget* s_object, GtkStyle* s_previous_style)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 14));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_previous_style, "GtkStyle"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_widget_direction_changed(GtkWidget* s_object, GtkTextDirection s_previous_direction)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 15));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_previous_direction, GTK_TYPE_TEXT_DIRECTION));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_widget_grab_notify(GtkWidget* s_object, gboolean s_was_grabbed)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 16));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_was_grabbed));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_widget_child_notify(GtkWidget* s_object, GParamSpec* s_pspec)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 17));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGParamSpec(s_pspec));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gtk_widget_mnemonic_activate(GtkWidget* s_object, gboolean s_group_cycling)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 18));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_group_cycling));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static void
S_virtual_gtk_widget_grab_focus(GtkWidget* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 19));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gtk_widget_focus(GtkWidget* s_object, GtkDirectionType s_direction)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 20));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_direction, GTK_TYPE_DIRECTION_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_event(GtkWidget* s_object, GdkEvent* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 21));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_button_press_event(GtkWidget* s_object, GdkEventButton* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 22));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_button_release_event(GtkWidget* s_object, GdkEventButton* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 23));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_scroll_event(GtkWidget* s_object, GdkEventScroll* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 24));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_motion_notify_event(GtkWidget* s_object, GdkEventMotion* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 25));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_delete_event(GtkWidget* s_object, GdkEventAny* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 26));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_destroy_event(GtkWidget* s_object, GdkEventAny* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 27));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_expose_event(GtkWidget* s_object, GdkEventExpose* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 28));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_key_press_event(GtkWidget* s_object, GdkEventKey* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 29));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_key_release_event(GtkWidget* s_object, GdkEventKey* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 30));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_enter_notify_event(GtkWidget* s_object, GdkEventCrossing* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 31));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_leave_notify_event(GtkWidget* s_object, GdkEventCrossing* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 32));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_configure_event(GtkWidget* s_object, GdkEventConfigure* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 33));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_focus_in_event(GtkWidget* s_object, GdkEventFocus* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 34));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_focus_out_event(GtkWidget* s_object, GdkEventFocus* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 35));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_map_event(GtkWidget* s_object, GdkEventAny* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 36));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_unmap_event(GtkWidget* s_object, GdkEventAny* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 37));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_property_notify_event(GtkWidget* s_object, GdkEventProperty* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 38));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_selection_clear_event(GtkWidget* s_object, GdkEventSelection* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 39));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_selection_request_event(GtkWidget* s_object, GdkEventSelection* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 40));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_selection_notify_event(GtkWidget* s_object, GdkEventSelection* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 41));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_proximity_in_event(GtkWidget* s_object, GdkEventProximity* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 42));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_proximity_out_event(GtkWidget* s_object, GdkEventProximity* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 43));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_visibility_notify_event(GtkWidget* s_object, GdkEventVisibility* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 44));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_client_event(GtkWidget* s_object, GdkEventClient* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 45));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_no_expose_event(GtkWidget* s_object, GdkEventAny* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 46));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_window_state_event(GtkWidget* s_object, GdkEventWindowState* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 47));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static void
S_virtual_gtk_widget_selection_get(GtkWidget* s_object, GtkSelectionData* s_selection_data, guint s_info, guint s_time_)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 48));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_selection_data ? gtk_selection_data_copy(s_selection_data) : NULL, "GtkSelectionData", (RPointerFinalizer) gtk_selection_data_free));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_info));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_time_));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_widget_selection_received(GtkWidget* s_object, GtkSelectionData* s_selection_data, guint s_time_)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 49));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_selection_data ? gtk_selection_data_copy(s_selection_data) : NULL, "GtkSelectionData", (RPointerFinalizer) gtk_selection_data_free));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_time_));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_widget_drag_begin(GtkWidget* s_object, GdkDragContext* s_context)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 50));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_context, "GdkDragContext"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_widget_drag_end(GtkWidget* s_object, GdkDragContext* s_context)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 51));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_context, "GdkDragContext"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_widget_drag_data_get(GtkWidget* s_object, GdkDragContext* s_context, GtkSelectionData* s_selection_data, guint s_info, guint s_time_)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 52));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_context, "GdkDragContext"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_selection_data ? gtk_selection_data_copy(s_selection_data) : NULL, "GtkSelectionData", (RPointerFinalizer) gtk_selection_data_free));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_info));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_time_));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_widget_drag_data_delete(GtkWidget* s_object, GdkDragContext* s_context)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 53));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_context, "GdkDragContext"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_widget_drag_leave(GtkWidget* s_object, GdkDragContext* s_context, guint s_time_)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 54));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_context, "GdkDragContext"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_time_));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gtk_widget_drag_motion(GtkWidget* s_object, GdkDragContext* s_context, gint s_x, gint s_y, guint s_time_)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 55));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_context, "GdkDragContext"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_time_));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_drag_drop(GtkWidget* s_object, GdkDragContext* s_context, gint s_x, gint s_y, guint s_time_)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 56));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_context, "GdkDragContext"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_time_));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static void
S_virtual_gtk_widget_drag_data_received(GtkWidget* s_object, GdkDragContext* s_context, gint s_x, gint s_y, GtkSelectionData* s_selection_data, guint s_info, guint s_time_)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 8));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 57));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_context, "GdkDragContext"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_selection_data ? gtk_selection_data_copy(s_selection_data) : NULL, "GtkSelectionData", (RPointerFinalizer) gtk_selection_data_free));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_info));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_time_));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gtk_widget_popup_menu(GtkWidget* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 58));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_show_help(GtkWidget* s_object, GtkWidgetHelpType s_help_type)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 59));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_help_type, GTK_TYPE_WIDGET_HELP_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static AtkObject*
S_virtual_gtk_widget_get_accessible(GtkWidget* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 60));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((AtkObject*)0));
  return(ATK_OBJECT(getPtrValue(s_ans)));
}

static void
S_virtual_gtk_widget_screen_changed(GtkWidget* s_object, GdkScreen* s_previous_screen)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 61));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_previous_screen, "GdkScreen"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gtk_widget_can_activate_accel(GtkWidget* s_object, guint s_signal_id)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 62));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_signal_id));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_widget_grab_broken_event(GtkWidget* s_object, GdkEventGrabBroken* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 63));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static void
S_virtual_gtk_widget_composited_changed(GtkWidget* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWidget_symbol, S_GOBJECT_GET_ENV(s_object)), 64));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWidget")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_widget_class_init(GtkWidgetClass * c, SEXP e)
{
  SEXP s;

  S_GtkWidget_symbol = install("GtkWidget");
  s = PROTECT(findVar(S_GtkWidget_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkWidgetClass)) = e;

  S_gtk_object_class_init(((GtkObjectClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->dispatch_child_properties_changed = S_virtual_gtk_widget_dispatch_child_properties_changed;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->show = S_virtual_gtk_widget_show;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->show_all = S_virtual_gtk_widget_show_all;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->hide = S_virtual_gtk_widget_hide;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->hide_all = S_virtual_gtk_widget_hide_all;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->map = S_virtual_gtk_widget_map;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->unmap = S_virtual_gtk_widget_unmap;
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->realize = S_virtual_gtk_widget_realize;
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->unrealize = S_virtual_gtk_widget_unrealize;
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->size_request = S_virtual_gtk_widget_size_request;
  if(VECTOR_ELT(s, 10) != NULL_USER_OBJECT)
    c->size_allocate = S_virtual_gtk_widget_size_allocate;
  if(VECTOR_ELT(s, 11) != NULL_USER_OBJECT)
    c->state_changed = S_virtual_gtk_widget_state_changed;
  if(VECTOR_ELT(s, 12) != NULL_USER_OBJECT)
    c->parent_set = S_virtual_gtk_widget_parent_set;
  if(VECTOR_ELT(s, 13) != NULL_USER_OBJECT)
    c->hierarchy_changed = S_virtual_gtk_widget_hierarchy_changed;
  if(VECTOR_ELT(s, 14) != NULL_USER_OBJECT)
    c->style_set = S_virtual_gtk_widget_style_set;
  if(VECTOR_ELT(s, 15) != NULL_USER_OBJECT)
    c->direction_changed = S_virtual_gtk_widget_direction_changed;
  if(VECTOR_ELT(s, 16) != NULL_USER_OBJECT)
    c->grab_notify = S_virtual_gtk_widget_grab_notify;
  if(VECTOR_ELT(s, 17) != NULL_USER_OBJECT)
    c->child_notify = S_virtual_gtk_widget_child_notify;
  if(VECTOR_ELT(s, 18) != NULL_USER_OBJECT)
    c->mnemonic_activate = S_virtual_gtk_widget_mnemonic_activate;
  if(VECTOR_ELT(s, 19) != NULL_USER_OBJECT)
    c->grab_focus = S_virtual_gtk_widget_grab_focus;
  if(VECTOR_ELT(s, 20) != NULL_USER_OBJECT)
    c->focus = S_virtual_gtk_widget_focus;
  if(VECTOR_ELT(s, 21) != NULL_USER_OBJECT)
    c->event = S_virtual_gtk_widget_event;
  if(VECTOR_ELT(s, 22) != NULL_USER_OBJECT)
    c->button_press_event = S_virtual_gtk_widget_button_press_event;
  if(VECTOR_ELT(s, 23) != NULL_USER_OBJECT)
    c->button_release_event = S_virtual_gtk_widget_button_release_event;
  if(VECTOR_ELT(s, 24) != NULL_USER_OBJECT)
    c->scroll_event = S_virtual_gtk_widget_scroll_event;
  if(VECTOR_ELT(s, 25) != NULL_USER_OBJECT)
    c->motion_notify_event = S_virtual_gtk_widget_motion_notify_event;
  if(VECTOR_ELT(s, 26) != NULL_USER_OBJECT)
    c->delete_event = S_virtual_gtk_widget_delete_event;
  if(VECTOR_ELT(s, 27) != NULL_USER_OBJECT)
    c->destroy_event = S_virtual_gtk_widget_destroy_event;
  if(VECTOR_ELT(s, 28) != NULL_USER_OBJECT)
    c->expose_event = S_virtual_gtk_widget_expose_event;
  if(VECTOR_ELT(s, 29) != NULL_USER_OBJECT)
    c->key_press_event = S_virtual_gtk_widget_key_press_event;
  if(VECTOR_ELT(s, 30) != NULL_USER_OBJECT)
    c->key_release_event = S_virtual_gtk_widget_key_release_event;
  if(VECTOR_ELT(s, 31) != NULL_USER_OBJECT)
    c->enter_notify_event = S_virtual_gtk_widget_enter_notify_event;
  if(VECTOR_ELT(s, 32) != NULL_USER_OBJECT)
    c->leave_notify_event = S_virtual_gtk_widget_leave_notify_event;
  if(VECTOR_ELT(s, 33) != NULL_USER_OBJECT)
    c->configure_event = S_virtual_gtk_widget_configure_event;
  if(VECTOR_ELT(s, 34) != NULL_USER_OBJECT)
    c->focus_in_event = S_virtual_gtk_widget_focus_in_event;
  if(VECTOR_ELT(s, 35) != NULL_USER_OBJECT)
    c->focus_out_event = S_virtual_gtk_widget_focus_out_event;
  if(VECTOR_ELT(s, 36) != NULL_USER_OBJECT)
    c->map_event = S_virtual_gtk_widget_map_event;
  if(VECTOR_ELT(s, 37) != NULL_USER_OBJECT)
    c->unmap_event = S_virtual_gtk_widget_unmap_event;
  if(VECTOR_ELT(s, 38) != NULL_USER_OBJECT)
    c->property_notify_event = S_virtual_gtk_widget_property_notify_event;
  if(VECTOR_ELT(s, 39) != NULL_USER_OBJECT)
    c->selection_clear_event = S_virtual_gtk_widget_selection_clear_event;
  if(VECTOR_ELT(s, 40) != NULL_USER_OBJECT)
    c->selection_request_event = S_virtual_gtk_widget_selection_request_event;
  if(VECTOR_ELT(s, 41) != NULL_USER_OBJECT)
    c->selection_notify_event = S_virtual_gtk_widget_selection_notify_event;
  if(VECTOR_ELT(s, 42) != NULL_USER_OBJECT)
    c->proximity_in_event = S_virtual_gtk_widget_proximity_in_event;
  if(VECTOR_ELT(s, 43) != NULL_USER_OBJECT)
    c->proximity_out_event = S_virtual_gtk_widget_proximity_out_event;
  if(VECTOR_ELT(s, 44) != NULL_USER_OBJECT)
    c->visibility_notify_event = S_virtual_gtk_widget_visibility_notify_event;
  if(VECTOR_ELT(s, 45) != NULL_USER_OBJECT)
    c->client_event = S_virtual_gtk_widget_client_event;
  if(VECTOR_ELT(s, 46) != NULL_USER_OBJECT)
    c->no_expose_event = S_virtual_gtk_widget_no_expose_event;
  if(VECTOR_ELT(s, 47) != NULL_USER_OBJECT)
    c->window_state_event = S_virtual_gtk_widget_window_state_event;
  if(VECTOR_ELT(s, 48) != NULL_USER_OBJECT)
    c->selection_get = S_virtual_gtk_widget_selection_get;
  if(VECTOR_ELT(s, 49) != NULL_USER_OBJECT)
    c->selection_received = S_virtual_gtk_widget_selection_received;
  if(VECTOR_ELT(s, 50) != NULL_USER_OBJECT)
    c->drag_begin = S_virtual_gtk_widget_drag_begin;
  if(VECTOR_ELT(s, 51) != NULL_USER_OBJECT)
    c->drag_end = S_virtual_gtk_widget_drag_end;
  if(VECTOR_ELT(s, 52) != NULL_USER_OBJECT)
    c->drag_data_get = S_virtual_gtk_widget_drag_data_get;
  if(VECTOR_ELT(s, 53) != NULL_USER_OBJECT)
    c->drag_data_delete = S_virtual_gtk_widget_drag_data_delete;
  if(VECTOR_ELT(s, 54) != NULL_USER_OBJECT)
    c->drag_leave = S_virtual_gtk_widget_drag_leave;
  if(VECTOR_ELT(s, 55) != NULL_USER_OBJECT)
    c->drag_motion = S_virtual_gtk_widget_drag_motion;
  if(VECTOR_ELT(s, 56) != NULL_USER_OBJECT)
    c->drag_drop = S_virtual_gtk_widget_drag_drop;
  if(VECTOR_ELT(s, 57) != NULL_USER_OBJECT)
    c->drag_data_received = S_virtual_gtk_widget_drag_data_received;
  if(VECTOR_ELT(s, 58) != NULL_USER_OBJECT)
    c->popup_menu = S_virtual_gtk_widget_popup_menu;
  if(VECTOR_ELT(s, 59) != NULL_USER_OBJECT)
    c->show_help = S_virtual_gtk_widget_show_help;
  if(VECTOR_ELT(s, 60) != NULL_USER_OBJECT)
    c->get_accessible = S_virtual_gtk_widget_get_accessible;
  if(VECTOR_ELT(s, 61) != NULL_USER_OBJECT)
    c->screen_changed = S_virtual_gtk_widget_screen_changed;
  if(VECTOR_ELT(s, 62) != NULL_USER_OBJECT)
    c->can_activate_accel = S_virtual_gtk_widget_can_activate_accel;
  if(VECTOR_ELT(s, 63) != NULL_USER_OBJECT)
    c->grab_broken_event = S_virtual_gtk_widget_grab_broken_event;
#if GTK_CHECK_VERSION(2, 10, 0)
  if(VECTOR_ELT(s, 64) != NULL_USER_OBJECT)
    c->composited_changed = S_virtual_gtk_widget_composited_changed;
#endif
}
USER_OBJECT_
S_gtk_widget_class_dispatch_child_properties_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_pspecs)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  guint n_pspecs = ((guint)GET_LENGTH(s_pspecs));
  GParamSpec** pspecs = ((GParamSpec**)asCArray(s_pspecs, GParamSpec*, asCGParamSpec));


  object_class->dispatch_child_properties_changed(object, n_pspecs, pspecs);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_show(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));


  object_class->show(object);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_show_all(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));


  object_class->show_all(object);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_hide(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));


  object_class->hide(object);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_hide_all(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));


  object_class->hide_all(object);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_map(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));


  object_class->map(object);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_unmap(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));


  object_class->unmap(object);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_realize(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));


  object_class->realize(object);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_unrealize(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));


  object_class->unrealize(object);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_size_request(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_requisition)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GtkRequisition* requisition = ((GtkRequisition*)getPtrValue(s_requisition));


  object_class->size_request(object, requisition);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_size_allocate(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_allocation)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GtkAllocation* allocation = asCGtkAllocation(s_allocation);


  object_class->size_allocate(object, allocation);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_state_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_previous_state)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GtkStateType previous_state = ((GtkStateType)asCEnum(s_previous_state, GTK_TYPE_STATE_TYPE));


  object_class->state_changed(object, previous_state);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_parent_set(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_previous_parent)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GtkWidget* previous_parent = GTK_WIDGET(getPtrValue(s_previous_parent));


  object_class->parent_set(object, previous_parent);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_hierarchy_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_previous_toplevel)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GtkWidget* previous_toplevel = GTK_WIDGET(getPtrValue(s_previous_toplevel));


  object_class->hierarchy_changed(object, previous_toplevel);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_style_set(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_previous_style)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GtkStyle* previous_style = GTK_STYLE(getPtrValue(s_previous_style));


  object_class->style_set(object, previous_style);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_direction_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_previous_direction)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GtkTextDirection previous_direction = ((GtkTextDirection)asCEnum(s_previous_direction, GTK_TYPE_TEXT_DIRECTION));


  object_class->direction_changed(object, previous_direction);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_grab_notify(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_was_grabbed)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  gboolean was_grabbed = ((gboolean)asCLogical(s_was_grabbed));


  object_class->grab_notify(object, was_grabbed);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_child_notify(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_pspec)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GParamSpec* pspec = asCGParamSpec(s_pspec);


  object_class->child_notify(object, pspec);

    CLEANUP(g_param_spec_sink, ((GParamSpec*)pspec));;

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_mnemonic_activate(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_group_cycling)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  gboolean group_cycling = ((gboolean)asCLogical(s_group_cycling));

  gboolean ans;

  ans = object_class->mnemonic_activate(object, group_cycling);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_grab_focus(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));


  object_class->grab_focus(object);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_focus(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_direction)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GtkDirectionType direction = ((GtkDirectionType)asCEnum(s_direction, GTK_TYPE_DIRECTION_TYPE));

  gboolean ans;

  ans = object_class->focus(object, direction);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEvent* event = ((GdkEvent*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_button_press_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventButton* event = ((GdkEventButton*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->button_press_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_button_release_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventButton* event = ((GdkEventButton*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->button_release_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_scroll_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventScroll* event = ((GdkEventScroll*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->scroll_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_motion_notify_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventMotion* event = ((GdkEventMotion*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->motion_notify_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_delete_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventAny* event = ((GdkEventAny*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->delete_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_destroy_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventAny* event = ((GdkEventAny*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->destroy_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_expose_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventExpose* event = ((GdkEventExpose*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->expose_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_key_press_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventKey* event = ((GdkEventKey*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->key_press_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_key_release_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventKey* event = ((GdkEventKey*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->key_release_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_enter_notify_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventCrossing* event = ((GdkEventCrossing*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->enter_notify_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_leave_notify_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventCrossing* event = ((GdkEventCrossing*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->leave_notify_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_configure_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventConfigure* event = ((GdkEventConfigure*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->configure_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_focus_in_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventFocus* event = ((GdkEventFocus*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->focus_in_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_focus_out_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventFocus* event = ((GdkEventFocus*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->focus_out_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_map_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventAny* event = ((GdkEventAny*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->map_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_unmap_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventAny* event = ((GdkEventAny*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->unmap_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_property_notify_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventProperty* event = ((GdkEventProperty*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->property_notify_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_selection_clear_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventSelection* event = ((GdkEventSelection*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->selection_clear_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_selection_request_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventSelection* event = ((GdkEventSelection*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->selection_request_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_selection_notify_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventSelection* event = ((GdkEventSelection*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->selection_notify_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_proximity_in_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventProximity* event = ((GdkEventProximity*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->proximity_in_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_proximity_out_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventProximity* event = ((GdkEventProximity*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->proximity_out_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_visibility_notify_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventVisibility* event = ((GdkEventVisibility*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->visibility_notify_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_client_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventClient* event = ((GdkEventClient*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->client_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_no_expose_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventAny* event = ((GdkEventAny*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->no_expose_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_window_state_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventWindowState* event = ((GdkEventWindowState*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->window_state_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_selection_get(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_selection_data, USER_OBJECT_ s_info, USER_OBJECT_ s_time_)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GtkSelectionData* selection_data = ((GtkSelectionData*)getPtrValue(s_selection_data));
  guint info = ((guint)asCNumeric(s_info));
  guint time_ = ((guint)asCNumeric(s_time_));


  object_class->selection_get(object, selection_data, info, time_);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_selection_received(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_selection_data, USER_OBJECT_ s_time_)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GtkSelectionData* selection_data = ((GtkSelectionData*)getPtrValue(s_selection_data));
  guint time_ = ((guint)asCNumeric(s_time_));


  object_class->selection_received(object, selection_data, time_);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_drag_begin(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_context)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkDragContext* context = GDK_DRAG_CONTEXT(getPtrValue(s_context));


  object_class->drag_begin(object, context);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_drag_end(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_context)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkDragContext* context = GDK_DRAG_CONTEXT(getPtrValue(s_context));


  object_class->drag_end(object, context);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_drag_data_get(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_context, USER_OBJECT_ s_selection_data, USER_OBJECT_ s_info, USER_OBJECT_ s_time_)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkDragContext* context = GDK_DRAG_CONTEXT(getPtrValue(s_context));
  GtkSelectionData* selection_data = ((GtkSelectionData*)getPtrValue(s_selection_data));
  guint info = ((guint)asCNumeric(s_info));
  guint time_ = ((guint)asCNumeric(s_time_));


  object_class->drag_data_get(object, context, selection_data, info, time_);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_drag_data_delete(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_context)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkDragContext* context = GDK_DRAG_CONTEXT(getPtrValue(s_context));


  object_class->drag_data_delete(object, context);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_drag_leave(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_context, USER_OBJECT_ s_time_)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkDragContext* context = GDK_DRAG_CONTEXT(getPtrValue(s_context));
  guint time_ = ((guint)asCNumeric(s_time_));


  object_class->drag_leave(object, context, time_);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_drag_motion(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_context, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_time_)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkDragContext* context = GDK_DRAG_CONTEXT(getPtrValue(s_context));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  guint time_ = ((guint)asCNumeric(s_time_));

  gboolean ans;

  ans = object_class->drag_motion(object, context, x, y, time_);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_drag_drop(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_context, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_time_)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkDragContext* context = GDK_DRAG_CONTEXT(getPtrValue(s_context));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  guint time_ = ((guint)asCNumeric(s_time_));

  gboolean ans;

  ans = object_class->drag_drop(object, context, x, y, time_);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_drag_data_received(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_context, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_selection_data, USER_OBJECT_ s_info, USER_OBJECT_ s_time_)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkDragContext* context = GDK_DRAG_CONTEXT(getPtrValue(s_context));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  GtkSelectionData* selection_data = ((GtkSelectionData*)getPtrValue(s_selection_data));
  guint info = ((guint)asCNumeric(s_info));
  guint time_ = ((guint)asCNumeric(s_time_));


  object_class->drag_data_received(object, context, x, y, selection_data, info, time_);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_popup_menu(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->popup_menu(object);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_show_help(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_help_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GtkWidgetHelpType help_type = ((GtkWidgetHelpType)asCEnum(s_help_type, GTK_TYPE_WIDGET_HELP_TYPE));

  gboolean ans;

  ans = object_class->show_help(object, help_type);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_get_accessible(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));

  AtkObject* ans;

  ans = object_class->get_accessible(object);

  _result = toRPointerWithRef(ans, "AtkObject");

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_screen_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_previous_screen)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkScreen* previous_screen = GDK_SCREEN(getPtrValue(s_previous_screen));


  object_class->screen_changed(object, previous_screen);


  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_can_activate_accel(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_signal_id)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  guint signal_id = ((guint)asCNumeric(s_signal_id));

  gboolean ans;

  ans = object_class->can_activate_accel(object, signal_id);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_grab_broken_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));
  GdkEventGrabBroken* event = ((GdkEventGrabBroken*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->grab_broken_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_widget_class_composited_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 10, 0)
  GtkWidgetClass* object_class = ((GtkWidgetClass*)getPtrValue(s_object_class));
  GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));


  object_class->composited_changed(object);

#else
  error("gtk_widget_composited_changed exists only in Gtk >= 2.10.0");
#endif

  return(_result);
}
 

static SEXP S_GtkWindow_symbol;

static void
S_virtual_gtk_window_set_focus(GtkWindow* s_object, GtkWidget* s_focus)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWindow_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWindow")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_focus, "GtkWidget"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gtk_window_frame_event(GtkWindow* s_object, GdkEvent* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWindow_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWindow")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static void
S_virtual_gtk_window_activate_focus(GtkWindow* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWindow_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWindow")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_window_activate_default(GtkWindow* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWindow_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWindow")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_window_move_focus(GtkWindow* s_object, GtkDirectionType s_direction)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWindow_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWindow")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_direction, GTK_TYPE_DIRECTION_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_window_keys_changed(GtkWindow* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkWindow_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkWindow")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_window_class_init(GtkWindowClass * c, SEXP e)
{
  SEXP s;

  S_GtkWindow_symbol = install("GtkWindow");
  s = PROTECT(findVar(S_GtkWindow_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkWindowClass)) = e;

  S_gtk_bin_class_init(((GtkBinClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->set_focus = S_virtual_gtk_window_set_focus;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->frame_event = S_virtual_gtk_window_frame_event;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->activate_focus = S_virtual_gtk_window_activate_focus;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->activate_default = S_virtual_gtk_window_activate_default;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->move_focus = S_virtual_gtk_window_move_focus;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->keys_changed = S_virtual_gtk_window_keys_changed;
}
USER_OBJECT_
S_gtk_window_class_set_focus(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_focus)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWindowClass* object_class = ((GtkWindowClass*)getPtrValue(s_object_class));
  GtkWindow* object = GTK_WINDOW(getPtrValue(s_object));
  GtkWidget* focus = GTK_WIDGET(getPtrValue(s_focus));


  object_class->set_focus(object, focus);


  return(_result);
}

USER_OBJECT_
S_gtk_window_class_frame_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWindowClass* object_class = ((GtkWindowClass*)getPtrValue(s_object_class));
  GtkWindow* object = GTK_WINDOW(getPtrValue(s_object));
  GdkEvent* event = ((GdkEvent*)getPtrValue(s_event));

  gboolean ans;

  ans = object_class->frame_event(object, event);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_window_class_activate_focus(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWindowClass* object_class = ((GtkWindowClass*)getPtrValue(s_object_class));
  GtkWindow* object = GTK_WINDOW(getPtrValue(s_object));


  object_class->activate_focus(object);


  return(_result);
}

USER_OBJECT_
S_gtk_window_class_activate_default(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWindowClass* object_class = ((GtkWindowClass*)getPtrValue(s_object_class));
  GtkWindow* object = GTK_WINDOW(getPtrValue(s_object));


  object_class->activate_default(object);


  return(_result);
}

USER_OBJECT_
S_gtk_window_class_move_focus(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_direction)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWindowClass* object_class = ((GtkWindowClass*)getPtrValue(s_object_class));
  GtkWindow* object = GTK_WINDOW(getPtrValue(s_object));
  GtkDirectionType direction = ((GtkDirectionType)asCEnum(s_direction, GTK_TYPE_DIRECTION_TYPE));


  object_class->move_focus(object, direction);


  return(_result);
}

USER_OBJECT_
S_gtk_window_class_keys_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkWindowClass* object_class = ((GtkWindowClass*)getPtrValue(s_object_class));
  GtkWindow* object = GTK_WINDOW(getPtrValue(s_object));


  object_class->keys_changed(object);


  return(_result);
}
 

static SEXP S_GtkWindowGroup_symbol;
void
S_gtk_window_group_class_init(GtkWindowGroupClass * c, SEXP e)
{
  SEXP s;

  S_GtkWindowGroup_symbol = install("GtkWindowGroup");
  s = PROTECT(findVar(S_GtkWindowGroup_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkWindowGroupClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

} 

#if GTK_CHECK_VERSION(2, 10, 0)
static SEXP S_GtkCellRendererAccel_symbol;

static void
S_virtual_gtk_cell_renderer_accel_accel_edited(GtkCellRendererAccel* s_object, const gchar* s_path_string, guint s_accel_key, GdkModifierType s_accel_mods, guint s_hardware_keycode)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCellRendererAccel_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCellRendererAccel")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_path_string));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_accel_key));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_accel_mods, GDK_TYPE_MODIFIER_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_hardware_keycode));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_cell_renderer_accel_accel_cleared(GtkCellRendererAccel* s_object, const gchar* s_path_string)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCellRendererAccel_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkCellRendererAccel")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_path_string));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_cell_renderer_accel_class_init(GtkCellRendererAccelClass * c, SEXP e)
{
  SEXP s;

  S_GtkCellRendererAccel_symbol = install("GtkCellRendererAccel");
  s = PROTECT(findVar(S_GtkCellRendererAccel_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkCellRendererAccelClass)) = e;

  S_gtk_cell_renderer_text_class_init(((GtkCellRendererTextClass *)c), e);

  UNPROTECT(1);

#if GTK_CHECK_VERSION(2, 10, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->accel_edited = S_virtual_gtk_cell_renderer_accel_accel_edited;
#endif
#if GTK_CHECK_VERSION(2, 10, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->accel_cleared = S_virtual_gtk_cell_renderer_accel_accel_cleared;
#endif
}
#endif
USER_OBJECT_
S_gtk_cell_renderer_accel_class_accel_edited(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_path_string, USER_OBJECT_ s_accel_key, USER_OBJECT_ s_accel_mods, USER_OBJECT_ s_hardware_keycode)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 10, 0)
  GtkCellRendererAccelClass* object_class = ((GtkCellRendererAccelClass*)getPtrValue(s_object_class));
  GtkCellRendererAccel* object = GTK_CELL_RENDERER_ACCEL(getPtrValue(s_object));
  const gchar* path_string = ((const gchar*)asCString(s_path_string));
  guint accel_key = ((guint)asCNumeric(s_accel_key));
  GdkModifierType accel_mods = ((GdkModifierType)asCFlag(s_accel_mods, GDK_TYPE_MODIFIER_TYPE));
  guint hardware_keycode = ((guint)asCNumeric(s_hardware_keycode));


  object_class->accel_edited(object, path_string, accel_key, accel_mods, hardware_keycode);

#else
  error("gtk_cell_renderer_accel_accel_edited exists only in Gtk >= 2.10.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_cell_renderer_accel_class_accel_cleared(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_path_string)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 10, 0)
  GtkCellRendererAccelClass* object_class = ((GtkCellRendererAccelClass*)getPtrValue(s_object_class));
  GtkCellRendererAccel* object = GTK_CELL_RENDERER_ACCEL(getPtrValue(s_object));
  const gchar* path_string = ((const gchar*)asCString(s_path_string));


  object_class->accel_cleared(object, path_string);

#else
  error("gtk_cell_renderer_accel_accel_cleared exists only in Gtk >= 2.10.0");
#endif

  return(_result);
}
 

#if GTK_CHECK_VERSION(2, 10, 0)
static SEXP S_GtkCellRendererSpin_symbol;
void
S_gtk_cell_renderer_spin_class_init(GtkCellRendererSpinClass * c, SEXP e)
{
  SEXP s;

  S_GtkCellRendererSpin_symbol = install("GtkCellRendererSpin");
  s = PROTECT(findVar(S_GtkCellRendererSpin_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkCellRendererSpinClass)) = e;

  S_gtk_cell_renderer_text_class_init(((GtkCellRendererTextClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GTK_CHECK_VERSION(2, 10, 0)
static SEXP S_GtkPrintOperation_symbol;

static void
S_virtual_gtk_print_operation_done(GtkPrintOperation* s_object, GtkPrintOperationResult s_result)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkPrintOperation_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkPrintOperation")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_result, GTK_TYPE_PRINT_OPERATION_RESULT));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_print_operation_begin_print(GtkPrintOperation* s_object, GtkPrintContext* s_context)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkPrintOperation_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkPrintOperation")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_context, "GtkPrintContext"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gtk_print_operation_paginate(GtkPrintOperation* s_object, GtkPrintContext* s_context)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkPrintOperation_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkPrintOperation")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_context, "GtkPrintContext"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static void
S_virtual_gtk_print_operation_request_page_setup(GtkPrintOperation* s_object, GtkPrintContext* s_context, gint s_page_nr, GtkPageSetup* s_setup)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkPrintOperation_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkPrintOperation")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_context, "GtkPrintContext"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_page_nr));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_setup, "GtkPageSetup"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_print_operation_draw_page(GtkPrintOperation* s_object, GtkPrintContext* s_context, gint s_page_nr)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkPrintOperation_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkPrintOperation")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_context, "GtkPrintContext"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_page_nr));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_print_operation_end_print(GtkPrintOperation* s_object, GtkPrintContext* s_context)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkPrintOperation_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkPrintOperation")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_context, "GtkPrintContext"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_print_operation_status_changed(GtkPrintOperation* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkPrintOperation_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkPrintOperation")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GtkWidget*
S_virtual_gtk_print_operation_create_custom_widget(GtkPrintOperation* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkPrintOperation_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkPrintOperation")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GtkWidget*)0));
  return(GTK_WIDGET(getPtrValue(s_ans)));
}

static void
S_virtual_gtk_print_operation_custom_widget_apply(GtkPrintOperation* s_object, GtkWidget* s_widget)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkPrintOperation_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkPrintOperation")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gtk_print_operation_preview(GtkPrintOperation* s_object, GtkPrintOperationPreview* s_preview, GtkPrintContext* s_context, GtkWindow* s_parent)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkPrintOperation_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkPrintOperation")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_preview, "GtkPrintOperationPreview"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_context, "GtkPrintContext"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_parent, "GtkWindow"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}
void
S_gtk_print_operation_class_init(GtkPrintOperationClass * c, SEXP e)
{
  SEXP s;

  S_GtkPrintOperation_symbol = install("GtkPrintOperation");
  s = PROTECT(findVar(S_GtkPrintOperation_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkPrintOperationClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

#if GTK_CHECK_VERSION(2, 10, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->done = S_virtual_gtk_print_operation_done;
#endif
#if GTK_CHECK_VERSION(2, 10, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->begin_print = S_virtual_gtk_print_operation_begin_print;
#endif
#if GTK_CHECK_VERSION(2, 10, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->paginate = S_virtual_gtk_print_operation_paginate;
#endif
#if GTK_CHECK_VERSION(2, 10, 0)
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->request_page_setup = S_virtual_gtk_print_operation_request_page_setup;
#endif
#if GTK_CHECK_VERSION(2, 10, 0)
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->draw_page = S_virtual_gtk_print_operation_draw_page;
#endif
#if GTK_CHECK_VERSION(2, 10, 0)
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->end_print = S_virtual_gtk_print_operation_end_print;
#endif
#if GTK_CHECK_VERSION(2, 10, 0)
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->status_changed = S_virtual_gtk_print_operation_status_changed;
#endif
#if GTK_CHECK_VERSION(2, 10, 0)
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->create_custom_widget = S_virtual_gtk_print_operation_create_custom_widget;
#endif
#if GTK_CHECK_VERSION(2, 10, 0)
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->custom_widget_apply = S_virtual_gtk_print_operation_custom_widget_apply;
#endif
#if GTK_CHECK_VERSION(2, 10, 0)
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->preview = S_virtual_gtk_print_operation_preview;
#endif
}
#endif
USER_OBJECT_
S_gtk_print_operation_class_done(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 10, 0)
  GtkPrintOperationClass* object_class = ((GtkPrintOperationClass*)getPtrValue(s_object_class));
  GtkPrintOperation* object = GTK_PRINT_OPERATION(getPtrValue(s_object));
  GtkPrintOperationResult result = ((GtkPrintOperationResult)asCEnum(s_result, GTK_TYPE_PRINT_OPERATION_RESULT));


  object_class->done(object, result);

#else
  error("gtk_print_operation_done exists only in Gtk >= 2.10.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_print_operation_class_begin_print(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_context)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 10, 0)
  GtkPrintOperationClass* object_class = ((GtkPrintOperationClass*)getPtrValue(s_object_class));
  GtkPrintOperation* object = GTK_PRINT_OPERATION(getPtrValue(s_object));
  GtkPrintContext* context = GTK_PRINT_CONTEXT(getPtrValue(s_context));


  object_class->begin_print(object, context);

#else
  error("gtk_print_operation_begin_print exists only in Gtk >= 2.10.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_print_operation_class_paginate(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_context)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 10, 0)
  GtkPrintOperationClass* object_class = ((GtkPrintOperationClass*)getPtrValue(s_object_class));
  GtkPrintOperation* object = GTK_PRINT_OPERATION(getPtrValue(s_object));
  GtkPrintContext* context = GTK_PRINT_CONTEXT(getPtrValue(s_context));

  gboolean ans;

  ans = object_class->paginate(object, context);

  _result = asRLogical(ans);
#else
  error("gtk_print_operation_paginate exists only in Gtk >= 2.10.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_print_operation_class_request_page_setup(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_context, USER_OBJECT_ s_page_nr, USER_OBJECT_ s_setup)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 10, 0)
  GtkPrintOperationClass* object_class = ((GtkPrintOperationClass*)getPtrValue(s_object_class));
  GtkPrintOperation* object = GTK_PRINT_OPERATION(getPtrValue(s_object));
  GtkPrintContext* context = GTK_PRINT_CONTEXT(getPtrValue(s_context));
  gint page_nr = ((gint)asCInteger(s_page_nr));
  GtkPageSetup* setup = GTK_PAGE_SETUP(getPtrValue(s_setup));


  object_class->request_page_setup(object, context, page_nr, setup);

#else
  error("gtk_print_operation_request_page_setup exists only in Gtk >= 2.10.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_print_operation_class_draw_page(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_context, USER_OBJECT_ s_page_nr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 10, 0)
  GtkPrintOperationClass* object_class = ((GtkPrintOperationClass*)getPtrValue(s_object_class));
  GtkPrintOperation* object = GTK_PRINT_OPERATION(getPtrValue(s_object));
  GtkPrintContext* context = GTK_PRINT_CONTEXT(getPtrValue(s_context));
  gint page_nr = ((gint)asCInteger(s_page_nr));


  object_class->draw_page(object, context, page_nr);

#else
  error("gtk_print_operation_draw_page exists only in Gtk >= 2.10.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_print_operation_class_end_print(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_context)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 10, 0)
  GtkPrintOperationClass* object_class = ((GtkPrintOperationClass*)getPtrValue(s_object_class));
  GtkPrintOperation* object = GTK_PRINT_OPERATION(getPtrValue(s_object));
  GtkPrintContext* context = GTK_PRINT_CONTEXT(getPtrValue(s_context));


  object_class->end_print(object, context);

#else
  error("gtk_print_operation_end_print exists only in Gtk >= 2.10.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_print_operation_class_status_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 10, 0)
  GtkPrintOperationClass* object_class = ((GtkPrintOperationClass*)getPtrValue(s_object_class));
  GtkPrintOperation* object = GTK_PRINT_OPERATION(getPtrValue(s_object));


  object_class->status_changed(object);

#else
  error("gtk_print_operation_status_changed exists only in Gtk >= 2.10.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_print_operation_class_create_custom_widget(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 10, 0)
  GtkPrintOperationClass* object_class = ((GtkPrintOperationClass*)getPtrValue(s_object_class));
  GtkPrintOperation* object = GTK_PRINT_OPERATION(getPtrValue(s_object));

  GtkWidget* ans;

  ans = object_class->create_custom_widget(object);

  _result = toRPointerWithSink(ans, "GtkWidget");
#else
  error("gtk_print_operation_create_custom_widget exists only in Gtk >= 2.10.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_print_operation_class_custom_widget_apply(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_widget)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 10, 0)
  GtkPrintOperationClass* object_class = ((GtkPrintOperationClass*)getPtrValue(s_object_class));
  GtkPrintOperation* object = GTK_PRINT_OPERATION(getPtrValue(s_object));
  GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));


  object_class->custom_widget_apply(object, widget);

#else
  error("gtk_print_operation_custom_widget_apply exists only in Gtk >= 2.10.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_print_operation_class_preview(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_preview, USER_OBJECT_ s_context, USER_OBJECT_ s_parent)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 10, 0)
  GtkPrintOperationClass* object_class = ((GtkPrintOperationClass*)getPtrValue(s_object_class));
  GtkPrintOperation* object = GTK_PRINT_OPERATION(getPtrValue(s_object));
  GtkPrintOperationPreview* preview = GTK_PRINT_OPERATION_PREVIEW(getPtrValue(s_preview));
  GtkPrintContext* context = GTK_PRINT_CONTEXT(getPtrValue(s_context));
  GtkWindow* parent = GTK_WINDOW(getPtrValue(s_parent));

  gboolean ans;

  ans = object_class->preview(object, preview, context, parent);

  _result = asRLogical(ans);
#else
  error("gtk_print_operation_preview exists only in Gtk >= 2.10.0");
#endif

  return(_result);
}
 

#if GTK_CHECK_VERSION(2, 10, 0)
static SEXP S_GtkRecentManager_symbol;

static void
S_virtual_gtk_recent_manager_changed(GtkRecentManager* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkRecentManager_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkRecentManager")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_recent_manager_class_init(GtkRecentManagerClass * c, SEXP e)
{
  SEXP s;

  S_GtkRecentManager_symbol = install("GtkRecentManager");
  s = PROTECT(findVar(S_GtkRecentManager_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkRecentManagerClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

#if GTK_CHECK_VERSION(2, 10, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->changed = S_virtual_gtk_recent_manager_changed;
#endif
}
#endif
USER_OBJECT_
S_gtk_recent_manager_class_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 10, 0)
  GtkRecentManagerClass* object_class = ((GtkRecentManagerClass*)getPtrValue(s_object_class));
  GtkRecentManager* object = GTK_RECENT_MANAGER(getPtrValue(s_object));


  object_class->changed(object);

#else
  error("gtk_recent_manager_changed exists only in Gtk >= 2.10.0");
#endif

  return(_result);
}
 

#if GTK_CHECK_VERSION(2, 10, 0)
static SEXP S_GtkStatusIcon_symbol;

static void
S_virtual_gtk_status_icon_activate(GtkStatusIcon* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStatusIcon_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStatusIcon")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_status_icon_popup_menu(GtkStatusIcon* s_object, guint s_button, guint32 s_activate_time)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStatusIcon_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStatusIcon")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_button));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_activate_time));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gtk_status_icon_size_changed(GtkStatusIcon* s_object, gint s_size)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkStatusIcon_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkStatusIcon")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_size));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}
void
S_gtk_status_icon_class_init(GtkStatusIconClass * c, SEXP e)
{
  SEXP s;

  S_GtkStatusIcon_symbol = install("GtkStatusIcon");
  s = PROTECT(findVar(S_GtkStatusIcon_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkStatusIconClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

#if GTK_CHECK_VERSION(2, 10, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->activate = S_virtual_gtk_status_icon_activate;
#endif
#if GTK_CHECK_VERSION(2, 10, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->popup_menu = S_virtual_gtk_status_icon_popup_menu;
#endif
#if GTK_CHECK_VERSION(2, 10, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->size_changed = S_virtual_gtk_status_icon_size_changed;
#endif
}
#endif
USER_OBJECT_
S_gtk_status_icon_class_activate(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 10, 0)
  GtkStatusIconClass* object_class = ((GtkStatusIconClass*)getPtrValue(s_object_class));
  GtkStatusIcon* object = GTK_STATUS_ICON(getPtrValue(s_object));


  object_class->activate(object);

#else
  error("gtk_status_icon_activate exists only in Gtk >= 2.10.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_status_icon_class_popup_menu(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_button, USER_OBJECT_ s_activate_time)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 10, 0)
  GtkStatusIconClass* object_class = ((GtkStatusIconClass*)getPtrValue(s_object_class));
  GtkStatusIcon* object = GTK_STATUS_ICON(getPtrValue(s_object));
  guint button = ((guint)asCNumeric(s_button));
  guint32 activate_time = ((guint32)asCNumeric(s_activate_time));


  object_class->popup_menu(object, button, activate_time);

#else
  error("gtk_status_icon_popup_menu exists only in Gtk >= 2.10.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_status_icon_class_size_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_size)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 10, 0)
  GtkStatusIconClass* object_class = ((GtkStatusIconClass*)getPtrValue(s_object_class));
  GtkStatusIcon* object = GTK_STATUS_ICON(getPtrValue(s_object));
  gint size = ((gint)asCInteger(s_size));

  gboolean ans;

  ans = object_class->size_changed(object, size);

  _result = asRLogical(ans);
#else
  error("gtk_status_icon_size_changed exists only in Gtk >= 2.10.0");
#endif

  return(_result);
}
 

#if GTK_CHECK_VERSION(2, 10, 0)
static SEXP S_GtkRecentChooserMenu_symbol;
void
S_gtk_recent_chooser_menu_class_init(GtkRecentChooserMenuClass * c, SEXP e)
{
  SEXP s;

  S_GtkRecentChooserMenu_symbol = install("GtkRecentChooserMenu");
  s = PROTECT(findVar(S_GtkRecentChooserMenu_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkRecentChooserMenuClass)) = e;

  S_gtk_menu_class_init(((GtkMenuClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GTK_CHECK_VERSION(2, 10, 0)
static SEXP S_GtkLinkButton_symbol;
void
S_gtk_link_button_class_init(GtkLinkButtonClass * c, SEXP e)
{
  SEXP s;

  S_GtkLinkButton_symbol = install("GtkLinkButton");
  s = PROTECT(findVar(S_GtkLinkButton_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkLinkButtonClass)) = e;

  S_gtk_button_class_init(((GtkButtonClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GTK_CHECK_VERSION(2, 10, 0)
static SEXP S_GtkRecentChooserWidget_symbol;
void
S_gtk_recent_chooser_widget_class_init(GtkRecentChooserWidgetClass * c, SEXP e)
{
  SEXP s;

  S_GtkRecentChooserWidget_symbol = install("GtkRecentChooserWidget");
  s = PROTECT(findVar(S_GtkRecentChooserWidget_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkRecentChooserWidgetClass)) = e;

  S_gtk_vbox_class_init(((GtkVBoxClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GTK_CHECK_VERSION(2, 10, 0)
static SEXP S_GtkRecentChooserDialog_symbol;
void
S_gtk_recent_chooser_dialog_class_init(GtkRecentChooserDialogClass * c, SEXP e)
{
  SEXP s;

  S_GtkRecentChooserDialog_symbol = install("GtkRecentChooserDialog");
  s = PROTECT(findVar(S_GtkRecentChooserDialog_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkRecentChooserDialogClass)) = e;

  S_gtk_dialog_class_init(((GtkDialogClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GTK_CHECK_VERSION(2, 10, 0)
static SEXP S_GtkAssistant_symbol;

static void
S_virtual_gtk_assistant_prepare(GtkAssistant* s_object, GtkWidget* s_page)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkAssistant_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkAssistant")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_page, "GtkWidget"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_assistant_apply(GtkAssistant* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkAssistant_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkAssistant")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_assistant_close(GtkAssistant* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkAssistant_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkAssistant")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_assistant_cancel(GtkAssistant* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkAssistant_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithSink(s_object, "GtkAssistant")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_assistant_class_init(GtkAssistantClass * c, SEXP e)
{
  SEXP s;

  S_GtkAssistant_symbol = install("GtkAssistant");
  s = PROTECT(findVar(S_GtkAssistant_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkAssistantClass)) = e;

  S_gtk_window_class_init(((GtkWindowClass *)c), e);

  UNPROTECT(1);

#if GTK_CHECK_VERSION(2, 10, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->prepare = S_virtual_gtk_assistant_prepare;
#endif
#if GTK_CHECK_VERSION(2, 10, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->apply = S_virtual_gtk_assistant_apply;
#endif
#if GTK_CHECK_VERSION(2, 10, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->close = S_virtual_gtk_assistant_close;
#endif
#if GTK_CHECK_VERSION(2, 10, 0)
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->cancel = S_virtual_gtk_assistant_cancel;
#endif
}
#endif
USER_OBJECT_
S_gtk_assistant_class_prepare(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_page)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 10, 0)
  GtkAssistantClass* object_class = ((GtkAssistantClass*)getPtrValue(s_object_class));
  GtkAssistant* object = GTK_ASSISTANT(getPtrValue(s_object));
  GtkWidget* page = GTK_WIDGET(getPtrValue(s_page));


  object_class->prepare(object, page);

#else
  error("gtk_assistant_prepare exists only in Gtk >= 2.10.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_assistant_class_apply(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 10, 0)
  GtkAssistantClass* object_class = ((GtkAssistantClass*)getPtrValue(s_object_class));
  GtkAssistant* object = GTK_ASSISTANT(getPtrValue(s_object));


  object_class->apply(object);

#else
  error("gtk_assistant_apply exists only in Gtk >= 2.10.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_assistant_class_close(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 10, 0)
  GtkAssistantClass* object_class = ((GtkAssistantClass*)getPtrValue(s_object_class));
  GtkAssistant* object = GTK_ASSISTANT(getPtrValue(s_object));


  object_class->close(object);

#else
  error("gtk_assistant_close exists only in Gtk >= 2.10.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_assistant_class_cancel(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 10, 0)
  GtkAssistantClass* object_class = ((GtkAssistantClass*)getPtrValue(s_object_class));
  GtkAssistant* object = GTK_ASSISTANT(getPtrValue(s_object));


  object_class->cancel(object);

#else
  error("gtk_assistant_cancel exists only in Gtk >= 2.10.0");
#endif

  return(_result);
}
 

#if GTK_CHECK_VERSION(2, 12, 0)
static SEXP S_GtkBuilder_symbol;

static GType
S_virtual_gtk_builder_get_type_from_name(GtkBuilder* s_object, const char* s_type_name)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkBuilder_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkBuilder")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_type_name));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GType)0));
  return(((GType)asCGType(s_ans)));
}
void
S_gtk_builder_class_init(GtkBuilderClass * c, SEXP e)
{
  SEXP s;

  S_GtkBuilder_symbol = install("GtkBuilder");
  s = PROTECT(findVar(S_GtkBuilder_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkBuilderClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

#if GTK_CHECK_VERSION(2, 12, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_type_from_name = S_virtual_gtk_builder_get_type_from_name;
#endif
}
#endif
USER_OBJECT_
S_gtk_builder_class_get_type_from_name(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_type_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 12, 0)
  GtkBuilderClass* object_class = ((GtkBuilderClass*)getPtrValue(s_object_class));
  GtkBuilder* object = GTK_BUILDER(getPtrValue(s_object));
  const char* type_name = ((const char*)asCString(s_type_name));

  GType ans;

  ans = object_class->get_type_from_name(object, type_name);

  _result = asRGType(ans);
#else
  error("gtk_builder_get_type_from_name exists only in Gtk >= 2.12.0");
#endif

  return(_result);
}
 

#if GTK_CHECK_VERSION(2, 12, 0)
static SEXP S_GtkRecentAction_symbol;
void
S_gtk_recent_action_class_init(GtkRecentActionClass * c, SEXP e)
{
  SEXP s;

  S_GtkRecentAction_symbol = install("GtkRecentAction");
  s = PROTECT(findVar(S_GtkRecentAction_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkRecentActionClass)) = e;

  S_gtk_action_class_init(((GtkActionClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GTK_CHECK_VERSION(2, 12, 0)
static SEXP S_GtkScaleButton_symbol;
void
S_gtk_scale_button_class_init(GtkScaleButtonClass * c, SEXP e)
{
  SEXP s;

  S_GtkScaleButton_symbol = install("GtkScaleButton");
  s = PROTECT(findVar(S_GtkScaleButton_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkScaleButtonClass)) = e;

  S_gtk_button_class_init(((GtkButtonClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GTK_CHECK_VERSION(2, 12, 0)
static SEXP S_GtkVolumeButton_symbol;
void
S_gtk_volume_button_class_init(GtkVolumeButtonClass * c, SEXP e)
{
  SEXP s;

  S_GtkVolumeButton_symbol = install("GtkVolumeButton");
  s = PROTECT(findVar(S_GtkVolumeButton_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkVolumeButtonClass)) = e;

  S_gtk_scale_button_class_init(((GtkScaleButtonClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GTK_CHECK_VERSION(2, 14, 0)
static SEXP S_GtkMountOperation_symbol;
void
S_gtk_mount_operation_class_init(GtkMountOperationClass * c, SEXP e)
{
  SEXP s;

  S_GtkMountOperation_symbol = install("GtkMountOperation");
  s = PROTECT(findVar(S_GtkMountOperation_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkMountOperationClass)) = e;

  S_gmount_operation_class_init(((GMountOperationClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GTK_CHECK_VERSION(2, 18, 0)
static SEXP S_GtkEntryBuffer_symbol;
void
S_gtk_entry_buffer_class_init(GtkEntryBufferClass * c, SEXP e)
{
  SEXP s;

  S_GtkEntryBuffer_symbol = install("GtkEntryBuffer");
  s = PROTECT(findVar(S_GtkEntryBuffer_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkEntryBufferClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GTK_CHECK_VERSION(2, 18, 0)
static SEXP S_GtkInfoBar_symbol;
void
S_gtk_info_bar_class_init(GtkInfoBarClass * c, SEXP e)
{
  SEXP s;

  S_GtkInfoBar_symbol = install("GtkInfoBar");
  s = PROTECT(findVar(S_GtkInfoBar_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkInfoBarClass)) = e;

  S_gtk_hbox_class_init(((GtkHBoxClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GTK_CHECK_VERSION(2, 18, 0)
static SEXP S_GtkHSV_symbol;
void
S_gtk_hsv_class_init(GtkHSVClass * c, SEXP e)
{
  SEXP s;

  S_GtkHSV_symbol = install("GtkHSV");
  s = PROTECT(findVar(S_GtkHSV_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkHSVClass)) = e;

  S_gtk_widget_class_init(((GtkWidgetClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GTK_CHECK_VERSION(2, 20, 0)
static SEXP S_GtkToolItemGroup_symbol;
void
S_gtk_tool_item_group_class_init(GtkToolItemGroupClass * c, SEXP e)
{
  SEXP s;

  S_GtkToolItemGroup_symbol = install("GtkToolItemGroup");
  s = PROTECT(findVar(S_GtkToolItemGroup_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkToolItemGroupClass)) = e;

  S_gtk_container_class_init(((GtkContainerClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GTK_CHECK_VERSION(2, 20, 0)
static SEXP S_GtkToolPalette_symbol;
void
S_gtk_tool_palette_class_init(GtkToolPaletteClass * c, SEXP e)
{
  SEXP s;

  S_GtkToolPalette_symbol = install("GtkToolPalette");
  s = PROTECT(findVar(S_GtkToolPalette_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkToolPaletteClass)) = e;

  S_gtk_container_class_init(((GtkContainerClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GTK_CHECK_VERSION(2, 20, 0)
static SEXP S_GtkCellRendererSpinner_symbol;
void
S_gtk_cell_renderer_spinner_class_init(GtkCellRendererSpinnerClass * c, SEXP e)
{
  SEXP s;

  S_GtkCellRendererSpinner_symbol = install("GtkCellRendererSpinner");
  s = PROTECT(findVar(S_GtkCellRendererSpinner_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkCellRendererSpinnerClass)) = e;

  S_gtk_cell_renderer_class_init(((GtkCellRendererClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GTK_CHECK_VERSION(2, 20, 0)
static SEXP S_GtkOffscreenWindow_symbol;
void
S_gtk_offscreen_window_class_init(GtkOffscreenWindowClass * c, SEXP e)
{
  SEXP s;

  S_GtkOffscreenWindow_symbol = install("GtkOffscreenWindow");
  s = PROTECT(findVar(S_GtkOffscreenWindow_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkOffscreenWindowClass)) = e;

  S_gtk_window_class_init(((GtkWindowClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GTK_CHECK_VERSION(2, 20, 0)
static SEXP S_GtkSpinner_symbol;
void
S_gtk_spinner_class_init(GtkSpinnerClass * c, SEXP e)
{
  SEXP s;

  S_GtkSpinner_symbol = install("GtkSpinner");
  s = PROTECT(findVar(S_GtkSpinner_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkSpinnerClass)) = e;

  S_gtk_drawing_area_class_init(((GtkDrawingAreaClass *)c), e);

  UNPROTECT(1);

}
#endif 

static SEXP S_GtkCellEditable_symbol;

static void
S_virtual_gtk_cell_editable_editing_done(GtkCellEditable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCellEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkCellEditable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_cell_editable_remove_widget(GtkCellEditable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCellEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkCellEditable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_cell_editable_start_editing(GtkCellEditable* s_object, GdkEvent* s_event)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCellEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkCellEditable")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_cell_editable_class_init(GtkCellEditableIface * c, SEXP e)
{
  SEXP s;

  S_GtkCellEditable_symbol = install("GtkCellEditable");
  s = PROTECT(findVar(S_GtkCellEditable_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkCellEditableIface)) = e;

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->editing_done = S_virtual_gtk_cell_editable_editing_done;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->remove_widget = S_virtual_gtk_cell_editable_remove_widget;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->start_editing = S_virtual_gtk_cell_editable_start_editing;
}
USER_OBJECT_
S_gtk_cell_editable_iface_editing_done(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCellEditableIface* object_class = ((GtkCellEditableIface*)getPtrValue(s_object_class));
  GtkCellEditable* object = GTK_CELL_EDITABLE(getPtrValue(s_object));


  object_class->editing_done(object);


  return(_result);
}

USER_OBJECT_
S_gtk_cell_editable_iface_remove_widget(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCellEditableIface* object_class = ((GtkCellEditableIface*)getPtrValue(s_object_class));
  GtkCellEditable* object = GTK_CELL_EDITABLE(getPtrValue(s_object));


  object_class->remove_widget(object);


  return(_result);
}

USER_OBJECT_
S_gtk_cell_editable_iface_start_editing(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCellEditableIface* object_class = ((GtkCellEditableIface*)getPtrValue(s_object_class));
  GtkCellEditable* object = GTK_CELL_EDITABLE(getPtrValue(s_object));
  GdkEvent* event = ((GdkEvent*)getPtrValue(s_event));


  object_class->start_editing(object, event);


  return(_result);
}
 

static SEXP S_GtkCellLayout_symbol;

static void
S_virtual_gtk_cell_layout_pack_start(GtkCellLayout* s_object, GtkCellRenderer* s_cell, gboolean s_expand)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCellLayout_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkCellLayout")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_cell, "GtkCellRenderer"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_expand));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_cell_layout_pack_end(GtkCellLayout* s_object, GtkCellRenderer* s_cell, gboolean s_expand)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCellLayout_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkCellLayout")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_cell, "GtkCellRenderer"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_expand));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_cell_layout_clear(GtkCellLayout* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCellLayout_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkCellLayout")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_cell_layout_add_attribute(GtkCellLayout* s_object, GtkCellRenderer* s_cell, const gchar* s_attribute, gint s_column)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCellLayout_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkCellLayout")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_cell, "GtkCellRenderer"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_attribute));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_cell_layout_set_cell_data_func(GtkCellLayout* s_object, GtkCellRenderer* s_cell, GtkCellLayoutDataFunc s_func, gpointer s_func_data, GDestroyNotify s_destroy)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCellLayout_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkCellLayout")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_cell, "GtkCellRenderer"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_func), "GtkCellLayoutDataFunc"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_func_data);
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_destroy, "GDestroyNotify"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_cell_layout_clear_attributes(GtkCellLayout* s_object, GtkCellRenderer* s_cell)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCellLayout_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkCellLayout")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_cell, "GtkCellRenderer"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_cell_layout_reorder(GtkCellLayout* s_object, GtkCellRenderer* s_cell, gint s_position)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkCellLayout_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkCellLayout")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_cell, "GtkCellRenderer"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_position));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_cell_layout_class_init(GtkCellLayoutIface * c, SEXP e)
{
  SEXP s;

  S_GtkCellLayout_symbol = install("GtkCellLayout");
  s = PROTECT(findVar(S_GtkCellLayout_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkCellLayoutIface)) = e;

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->pack_start = S_virtual_gtk_cell_layout_pack_start;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->pack_end = S_virtual_gtk_cell_layout_pack_end;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->clear = S_virtual_gtk_cell_layout_clear;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->add_attribute = S_virtual_gtk_cell_layout_add_attribute;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->set_cell_data_func = S_virtual_gtk_cell_layout_set_cell_data_func;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->clear_attributes = S_virtual_gtk_cell_layout_clear_attributes;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->reorder = S_virtual_gtk_cell_layout_reorder;
}
USER_OBJECT_
S_gtk_cell_layout_iface_pack_start(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_cell, USER_OBJECT_ s_expand)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCellLayoutIface* object_class = ((GtkCellLayoutIface*)getPtrValue(s_object_class));
  GtkCellLayout* object = GTK_CELL_LAYOUT(getPtrValue(s_object));
  GtkCellRenderer* cell = GTK_CELL_RENDERER(getPtrValue(s_cell));
  gboolean expand = ((gboolean)asCLogical(s_expand));


  object_class->pack_start(object, cell, expand);


  return(_result);
}

USER_OBJECT_
S_gtk_cell_layout_iface_pack_end(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_cell, USER_OBJECT_ s_expand)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCellLayoutIface* object_class = ((GtkCellLayoutIface*)getPtrValue(s_object_class));
  GtkCellLayout* object = GTK_CELL_LAYOUT(getPtrValue(s_object));
  GtkCellRenderer* cell = GTK_CELL_RENDERER(getPtrValue(s_cell));
  gboolean expand = ((gboolean)asCLogical(s_expand));


  object_class->pack_end(object, cell, expand);


  return(_result);
}

USER_OBJECT_
S_gtk_cell_layout_iface_clear(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCellLayoutIface* object_class = ((GtkCellLayoutIface*)getPtrValue(s_object_class));
  GtkCellLayout* object = GTK_CELL_LAYOUT(getPtrValue(s_object));


  object_class->clear(object);


  return(_result);
}

USER_OBJECT_
S_gtk_cell_layout_iface_add_attribute(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_cell, USER_OBJECT_ s_attribute, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCellLayoutIface* object_class = ((GtkCellLayoutIface*)getPtrValue(s_object_class));
  GtkCellLayout* object = GTK_CELL_LAYOUT(getPtrValue(s_object));
  GtkCellRenderer* cell = GTK_CELL_RENDERER(getPtrValue(s_cell));
  const gchar* attribute = ((const gchar*)asCString(s_attribute));
  gint column = ((gint)asCInteger(s_column));


  object_class->add_attribute(object, cell, attribute, column);


  return(_result);
}

USER_OBJECT_
S_gtk_cell_layout_iface_set_cell_data_func(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_cell, USER_OBJECT_ s_func, USER_OBJECT_ s_func_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCellLayoutDataFunc func = ((GtkCellLayoutDataFunc)S_GtkCellLayoutDataFunc);
  R_CallbackData* func_data = R_createCBData(s_func, s_func_data);
  GtkCellLayoutIface* object_class = ((GtkCellLayoutIface*)getPtrValue(s_object_class));
  GtkCellLayout* object = GTK_CELL_LAYOUT(getPtrValue(s_object));
  GtkCellRenderer* cell = GTK_CELL_RENDERER(getPtrValue(s_cell));
  GDestroyNotify destroy = ((GDestroyNotify)R_freeCBData);


  object_class->set_cell_data_func(object, cell, func, func_data, destroy);


  return(_result);
}

USER_OBJECT_
S_gtk_cell_layout_iface_clear_attributes(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_cell)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCellLayoutIface* object_class = ((GtkCellLayoutIface*)getPtrValue(s_object_class));
  GtkCellLayout* object = GTK_CELL_LAYOUT(getPtrValue(s_object));
  GtkCellRenderer* cell = GTK_CELL_RENDERER(getPtrValue(s_cell));


  object_class->clear_attributes(object, cell);


  return(_result);
}

USER_OBJECT_
S_gtk_cell_layout_iface_reorder(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_cell, USER_OBJECT_ s_position)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkCellLayoutIface* object_class = ((GtkCellLayoutIface*)getPtrValue(s_object_class));
  GtkCellLayout* object = GTK_CELL_LAYOUT(getPtrValue(s_object));
  GtkCellRenderer* cell = GTK_CELL_RENDERER(getPtrValue(s_cell));
  gint position = ((gint)asCInteger(s_position));


  object_class->reorder(object, cell, position);


  return(_result);
}
 

static SEXP S_GtkEditable_symbol;

static void
S_virtual_gtk_editable_insert_text(GtkEditable* s_object, const gchar* s_text, gint s_length, gint* s_position)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkEditable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_text));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_length));
  tmp = CDR(tmp);
  SETCAR(tmp, asRIntegerArrayWithSize(s_position, s_length));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_editable_delete_text(GtkEditable* s_object, gint s_start_pos, gint s_end_pos)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkEditable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_start_pos));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_end_pos));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_editable_changed(GtkEditable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkEditable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_editable_do_insert_text(GtkEditable* s_object, const gchar* s_text, gint s_length, gint* s_position)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkEditable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_text));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_length));
  tmp = CDR(tmp);
  SETCAR(tmp, asRIntegerArrayWithSize(s_position, s_length));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_editable_do_delete_text(GtkEditable* s_object, gint s_start_pos, gint s_end_pos)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkEditable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_start_pos));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_end_pos));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gchar*
S_virtual_gtk_editable_get_chars(GtkEditable* s_object, gint s_start_pos, gint s_end_pos)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkEditable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_start_pos));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_end_pos));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gchar*)0));
  return(((gchar*)g_strdup(asCString(s_ans))));
}

static void
S_virtual_gtk_editable_set_selection_bounds(GtkEditable* s_object, gint s_start_pos, gint s_end_pos)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkEditable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_start_pos));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_end_pos));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gtk_editable_get_selection_bounds(GtkEditable* s_object, gint* s_start_pos, gint* s_end_pos)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkEditable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_start_pos = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
  *s_end_pos = ((gint)asCInteger(VECTOR_ELT(s_ans, 2)));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gtk_editable_set_position(GtkEditable* s_object, gint s_position)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkEditable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_position));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gint
S_virtual_gtk_editable_get_position(GtkEditable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkEditable_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkEditable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}
void
S_gtk_editable_class_init(GtkEditableClass * c, SEXP e)
{
  SEXP s;

  S_GtkEditable_symbol = install("GtkEditable");
  s = PROTECT(findVar(S_GtkEditable_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkEditableClass)) = e;

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->insert_text = S_virtual_gtk_editable_insert_text;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->delete_text = S_virtual_gtk_editable_delete_text;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->changed = S_virtual_gtk_editable_changed;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->do_insert_text = S_virtual_gtk_editable_do_insert_text;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->do_delete_text = S_virtual_gtk_editable_do_delete_text;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->get_chars = S_virtual_gtk_editable_get_chars;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->set_selection_bounds = S_virtual_gtk_editable_set_selection_bounds;
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->get_selection_bounds = S_virtual_gtk_editable_get_selection_bounds;
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->set_position = S_virtual_gtk_editable_set_position;
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->get_position = S_virtual_gtk_editable_get_position;
}
USER_OBJECT_
S_gtk_editable_iface_insert_text(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_position)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkEditableClass* object_class = ((GtkEditableClass*)getPtrValue(s_object_class));
  GtkEditable* object = GTK_EDITABLE(getPtrValue(s_object));
  const gchar* text = ((const gchar*)asCString(s_text));
  gint length = ((gint)GET_LENGTH(s_position));
  gint* position = ((gint*)asCArray(s_position, gint, asCInteger));


  object_class->insert_text(object, text, length, position);


  return(_result);
}

USER_OBJECT_
S_gtk_editable_iface_delete_text(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_start_pos, USER_OBJECT_ s_end_pos)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkEditableClass* object_class = ((GtkEditableClass*)getPtrValue(s_object_class));
  GtkEditable* object = GTK_EDITABLE(getPtrValue(s_object));
  gint start_pos = ((gint)asCInteger(s_start_pos));
  gint end_pos = ((gint)asCInteger(s_end_pos));


  object_class->delete_text(object, start_pos, end_pos);


  return(_result);
}

USER_OBJECT_
S_gtk_editable_iface_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkEditableClass* object_class = ((GtkEditableClass*)getPtrValue(s_object_class));
  GtkEditable* object = GTK_EDITABLE(getPtrValue(s_object));


  object_class->changed(object);


  return(_result);
}

USER_OBJECT_
S_gtk_editable_iface_do_insert_text(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_position)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkEditableClass* object_class = ((GtkEditableClass*)getPtrValue(s_object_class));
  GtkEditable* object = GTK_EDITABLE(getPtrValue(s_object));
  const gchar* text = ((const gchar*)asCString(s_text));
  gint length = ((gint)GET_LENGTH(s_position));
  gint* position = ((gint*)asCArray(s_position, gint, asCInteger));


  object_class->do_insert_text(object, text, length, position);


  return(_result);
}

USER_OBJECT_
S_gtk_editable_iface_do_delete_text(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_start_pos, USER_OBJECT_ s_end_pos)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkEditableClass* object_class = ((GtkEditableClass*)getPtrValue(s_object_class));
  GtkEditable* object = GTK_EDITABLE(getPtrValue(s_object));
  gint start_pos = ((gint)asCInteger(s_start_pos));
  gint end_pos = ((gint)asCInteger(s_end_pos));


  object_class->do_delete_text(object, start_pos, end_pos);


  return(_result);
}

USER_OBJECT_
S_gtk_editable_iface_get_chars(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_start_pos, USER_OBJECT_ s_end_pos)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkEditableClass* object_class = ((GtkEditableClass*)getPtrValue(s_object_class));
  GtkEditable* object = GTK_EDITABLE(getPtrValue(s_object));
  gint start_pos = ((gint)asCInteger(s_start_pos));
  gint end_pos = ((gint)asCInteger(s_end_pos));

  gchar* ans;

  ans = object_class->get_chars(object, start_pos, end_pos);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;

  return(_result);
}

USER_OBJECT_
S_gtk_editable_iface_set_selection_bounds(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_start_pos, USER_OBJECT_ s_end_pos)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkEditableClass* object_class = ((GtkEditableClass*)getPtrValue(s_object_class));
  GtkEditable* object = GTK_EDITABLE(getPtrValue(s_object));
  gint start_pos = ((gint)asCInteger(s_start_pos));
  gint end_pos = ((gint)asCInteger(s_end_pos));


  object_class->set_selection_bounds(object, start_pos, end_pos);


  return(_result);
}

USER_OBJECT_
S_gtk_editable_iface_get_selection_bounds(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkEditableClass* object_class = ((GtkEditableClass*)getPtrValue(s_object_class));
  GtkEditable* object = GTK_EDITABLE(getPtrValue(s_object));

  gboolean ans;
  gint start_pos;
  gint end_pos;

  ans = object_class->get_selection_bounds(object, &start_pos, &end_pos);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "start.pos", PROTECT(asRInteger(start_pos)), "end.pos", PROTECT(asRInteger(end_pos)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}

USER_OBJECT_
S_gtk_editable_iface_set_position(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_position)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkEditableClass* object_class = ((GtkEditableClass*)getPtrValue(s_object_class));
  GtkEditable* object = GTK_EDITABLE(getPtrValue(s_object));
  gint position = ((gint)asCInteger(s_position));


  object_class->set_position(object, position);


  return(_result);
}

USER_OBJECT_
S_gtk_editable_iface_get_position(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkEditableClass* object_class = ((GtkEditableClass*)getPtrValue(s_object_class));
  GtkEditable* object = GTK_EDITABLE(getPtrValue(s_object));

  gint ans;

  ans = object_class->get_position(object);

  _result = asRInteger(ans);

  return(_result);
}
 

static SEXP S_GtkTreeDragDest_symbol;

static gboolean
S_virtual_gtk_tree_drag_dest_drag_data_received(GtkTreeDragDest* s_object, GtkTreePath* s_dest, GtkSelectionData* s_selection_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeDragDest_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeDragDest")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_dest ? gtk_tree_path_copy(s_dest) : NULL, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_selection_data ? gtk_selection_data_copy(s_selection_data) : NULL, "GtkSelectionData", (RPointerFinalizer) gtk_selection_data_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_tree_drag_dest_row_drop_possible(GtkTreeDragDest* s_object, GtkTreePath* s_dest_path, GtkSelectionData* s_selection_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeDragDest_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeDragDest")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_dest_path ? gtk_tree_path_copy(s_dest_path) : NULL, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_selection_data ? gtk_selection_data_copy(s_selection_data) : NULL, "GtkSelectionData", (RPointerFinalizer) gtk_selection_data_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}
void
S_gtk_tree_drag_dest_class_init(GtkTreeDragDestIface * c, SEXP e)
{
  SEXP s;

  S_GtkTreeDragDest_symbol = install("GtkTreeDragDest");
  s = PROTECT(findVar(S_GtkTreeDragDest_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkTreeDragDestIface)) = e;

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->drag_data_received = S_virtual_gtk_tree_drag_dest_drag_data_received;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->row_drop_possible = S_virtual_gtk_tree_drag_dest_row_drop_possible;
}
USER_OBJECT_
S_gtk_tree_drag_dest_iface_drag_data_received(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_dest, USER_OBJECT_ s_selection_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeDragDestIface* object_class = ((GtkTreeDragDestIface*)getPtrValue(s_object_class));
  GtkTreeDragDest* object = GTK_TREE_DRAG_DEST(getPtrValue(s_object));
  GtkTreePath* dest = ((GtkTreePath*)getPtrValue(s_dest));
  GtkSelectionData* selection_data = ((GtkSelectionData*)getPtrValue(s_selection_data));

  gboolean ans;

  ans = object_class->drag_data_received(object, dest, selection_data);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_tree_drag_dest_iface_row_drop_possible(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_dest_path, USER_OBJECT_ s_selection_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeDragDestIface* object_class = ((GtkTreeDragDestIface*)getPtrValue(s_object_class));
  GtkTreeDragDest* object = GTK_TREE_DRAG_DEST(getPtrValue(s_object));
  GtkTreePath* dest_path = ((GtkTreePath*)getPtrValue(s_dest_path));
  GtkSelectionData* selection_data = ((GtkSelectionData*)getPtrValue(s_selection_data));

  gboolean ans;

  ans = object_class->row_drop_possible(object, dest_path, selection_data);

  _result = asRLogical(ans);

  return(_result);
}
 

static SEXP S_GtkTreeDragSource_symbol;

static gboolean
S_virtual_gtk_tree_drag_source_row_draggable(GtkTreeDragSource* s_object, GtkTreePath* s_path)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeDragSource_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeDragSource")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_path ? gtk_tree_path_copy(s_path) : NULL, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_tree_drag_source_drag_data_get(GtkTreeDragSource* s_object, GtkTreePath* s_path, GtkSelectionData* s_selection_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeDragSource_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeDragSource")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_path ? gtk_tree_path_copy(s_path) : NULL, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_selection_data ? gtk_selection_data_copy(s_selection_data) : NULL, "GtkSelectionData", (RPointerFinalizer) gtk_selection_data_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_tree_drag_source_drag_data_delete(GtkTreeDragSource* s_object, GtkTreePath* s_path)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeDragSource_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeDragSource")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_path ? gtk_tree_path_copy(s_path) : NULL, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}
void
S_gtk_tree_drag_source_class_init(GtkTreeDragSourceIface * c, SEXP e)
{
  SEXP s;

  S_GtkTreeDragSource_symbol = install("GtkTreeDragSource");
  s = PROTECT(findVar(S_GtkTreeDragSource_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkTreeDragSourceIface)) = e;

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->row_draggable = S_virtual_gtk_tree_drag_source_row_draggable;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->drag_data_get = S_virtual_gtk_tree_drag_source_drag_data_get;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->drag_data_delete = S_virtual_gtk_tree_drag_source_drag_data_delete;
}
USER_OBJECT_
S_gtk_tree_drag_source_iface_row_draggable(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_path)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeDragSourceIface* object_class = ((GtkTreeDragSourceIface*)getPtrValue(s_object_class));
  GtkTreeDragSource* object = GTK_TREE_DRAG_SOURCE(getPtrValue(s_object));
  GtkTreePath* path = ((GtkTreePath*)getPtrValue(s_path));

  gboolean ans;

  ans = object_class->row_draggable(object, path);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_tree_drag_source_iface_drag_data_get(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_path, USER_OBJECT_ s_selection_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeDragSourceIface* object_class = ((GtkTreeDragSourceIface*)getPtrValue(s_object_class));
  GtkTreeDragSource* object = GTK_TREE_DRAG_SOURCE(getPtrValue(s_object));
  GtkTreePath* path = ((GtkTreePath*)getPtrValue(s_path));
  GtkSelectionData* selection_data = ((GtkSelectionData*)getPtrValue(s_selection_data));

  gboolean ans;

  ans = object_class->drag_data_get(object, path, selection_data);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_tree_drag_source_iface_drag_data_delete(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_path)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeDragSourceIface* object_class = ((GtkTreeDragSourceIface*)getPtrValue(s_object_class));
  GtkTreeDragSource* object = GTK_TREE_DRAG_SOURCE(getPtrValue(s_object));
  GtkTreePath* path = ((GtkTreePath*)getPtrValue(s_path));

  gboolean ans;

  ans = object_class->drag_data_delete(object, path);

  _result = asRLogical(ans);

  return(_result);
}
 

static SEXP S_GtkTreeModel_symbol;

static void
S_virtual_gtk_tree_model_row_changed(GtkTreeModel* s_object, GtkTreePath* s_path, GtkTreeIter* s_iter)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeModel_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeModel")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_path ? gtk_tree_path_copy(s_path) : NULL, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_tree_iter_copy(s_iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_tree_model_row_inserted(GtkTreeModel* s_object, GtkTreePath* s_path, GtkTreeIter* s_iter)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeModel_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeModel")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_path ? gtk_tree_path_copy(s_path) : NULL, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_tree_iter_copy(s_iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_tree_model_row_has_child_toggled(GtkTreeModel* s_object, GtkTreePath* s_path, GtkTreeIter* s_iter)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeModel_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeModel")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_path ? gtk_tree_path_copy(s_path) : NULL, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_tree_iter_copy(s_iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_tree_model_row_deleted(GtkTreeModel* s_object, GtkTreePath* s_path)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeModel_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeModel")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_path ? gtk_tree_path_copy(s_path) : NULL, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_tree_model_rows_reordered(GtkTreeModel* s_object, GtkTreePath* s_path, GtkTreeIter* s_iter, gint* s_new_order)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeModel_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeModel")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_path ? gtk_tree_path_copy(s_path) : NULL, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_tree_iter_copy(s_iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);
  SETCAR(tmp, asRIntegerArray(s_new_order));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GtkTreeModelFlags
S_virtual_gtk_tree_model_get_flags(GtkTreeModel* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeModel_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeModel")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GtkTreeModelFlags)0));
  return(((GtkTreeModelFlags)asCFlag(s_ans, GTK_TYPE_TREE_MODEL_FLAGS)));
}

static gint
S_virtual_gtk_tree_model_get_n_columns(GtkTreeModel* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeModel_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeModel")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static GType
S_virtual_gtk_tree_model_get_column_type(GtkTreeModel* s_object, gint s_index_)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeModel_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeModel")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_index_));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GType)0));
  return(((GType)asCGType(s_ans)));
}

static gboolean
S_virtual_gtk_tree_model_get_iter(GtkTreeModel* s_object, GtkTreeIter* s_iter, GtkTreePath* s_path)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeModel_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeModel")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_path ? gtk_tree_path_copy(s_path) : NULL, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_iter = *((GtkTreeIter*)getPtrValue(VECTOR_ELT(s_ans, 1)));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static GtkTreePath*
S_virtual_gtk_tree_model_get_path(GtkTreeModel* s_object, GtkTreeIter* s_iter)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeModel_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeModel")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_tree_iter_copy(s_iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GtkTreePath*)0));
  return(((GtkTreePath*)gtk_tree_path_copy(getPtrValue(s_ans))));
}

static void
S_virtual_gtk_tree_model_get_value(GtkTreeModel* s_object, GtkTreeIter* s_iter, gint s_column, GValue* s_value)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeModel_symbol, S_GOBJECT_GET_ENV(s_object)), 10));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeModel")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_tree_iter_copy(s_iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
{
  GValue* value = asCGValue(VECTOR_ELT(s_ans, 0));
  *s_value = *value;
  g_free(value);
}
}

static gboolean
S_virtual_gtk_tree_model_iter_next(GtkTreeModel* s_object, GtkTreeIter* s_iter)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeModel_symbol, S_GOBJECT_GET_ENV(s_object)), 11));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeModel")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_tree_iter_copy(s_iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gtk_tree_model_iter_children(GtkTreeModel* s_object, GtkTreeIter* s_iter, GtkTreeIter* s_parent)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeModel_symbol, S_GOBJECT_GET_ENV(s_object)), 12));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeModel")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_parent ? gtk_tree_iter_copy(s_parent) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_iter = *((GtkTreeIter*)getPtrValue(VECTOR_ELT(s_ans, 1)));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static gboolean
S_virtual_gtk_tree_model_iter_has_child(GtkTreeModel* s_object, GtkTreeIter* s_iter)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeModel_symbol, S_GOBJECT_GET_ENV(s_object)), 13));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeModel")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_tree_iter_copy(s_iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gint
S_virtual_gtk_tree_model_iter_n_children(GtkTreeModel* s_object, GtkTreeIter* s_iter)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeModel_symbol, S_GOBJECT_GET_ENV(s_object)), 14));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeModel")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_tree_iter_copy(s_iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static gboolean
S_virtual_gtk_tree_model_iter_nth_child(GtkTreeModel* s_object, GtkTreeIter* s_iter, GtkTreeIter* s_parent, gint s_n)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeModel_symbol, S_GOBJECT_GET_ENV(s_object)), 15));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeModel")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_parent ? gtk_tree_iter_copy(s_parent) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_n));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_iter = *((GtkTreeIter*)getPtrValue(VECTOR_ELT(s_ans, 1)));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static gboolean
S_virtual_gtk_tree_model_iter_parent(GtkTreeModel* s_object, GtkTreeIter* s_iter, GtkTreeIter* s_child)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeModel_symbol, S_GOBJECT_GET_ENV(s_object)), 16));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeModel")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_child ? gtk_tree_iter_copy(s_child) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_iter = *((GtkTreeIter*)getPtrValue(VECTOR_ELT(s_ans, 1)));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gtk_tree_model_ref_node(GtkTreeModel* s_object, GtkTreeIter* s_iter)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeModel_symbol, S_GOBJECT_GET_ENV(s_object)), 17));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeModel")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_tree_iter_copy(s_iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_tree_model_unref_node(GtkTreeModel* s_object, GtkTreeIter* s_iter)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeModel_symbol, S_GOBJECT_GET_ENV(s_object)), 18));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeModel")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_tree_iter_copy(s_iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_tree_model_class_init(GtkTreeModelIface * c, SEXP e)
{
  SEXP s;

  S_GtkTreeModel_symbol = install("GtkTreeModel");
  s = PROTECT(findVar(S_GtkTreeModel_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkTreeModelIface)) = e;

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->row_changed = S_virtual_gtk_tree_model_row_changed;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->row_inserted = S_virtual_gtk_tree_model_row_inserted;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->row_has_child_toggled = S_virtual_gtk_tree_model_row_has_child_toggled;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->row_deleted = S_virtual_gtk_tree_model_row_deleted;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->rows_reordered = S_virtual_gtk_tree_model_rows_reordered;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->get_flags = S_virtual_gtk_tree_model_get_flags;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->get_n_columns = S_virtual_gtk_tree_model_get_n_columns;
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->get_column_type = S_virtual_gtk_tree_model_get_column_type;
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->get_iter = S_virtual_gtk_tree_model_get_iter;
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->get_path = S_virtual_gtk_tree_model_get_path;
  if(VECTOR_ELT(s, 10) != NULL_USER_OBJECT)
    c->get_value = S_virtual_gtk_tree_model_get_value;
  if(VECTOR_ELT(s, 11) != NULL_USER_OBJECT)
    c->iter_next = S_virtual_gtk_tree_model_iter_next;
  if(VECTOR_ELT(s, 12) != NULL_USER_OBJECT)
    c->iter_children = S_virtual_gtk_tree_model_iter_children;
  if(VECTOR_ELT(s, 13) != NULL_USER_OBJECT)
    c->iter_has_child = S_virtual_gtk_tree_model_iter_has_child;
  if(VECTOR_ELT(s, 14) != NULL_USER_OBJECT)
    c->iter_n_children = S_virtual_gtk_tree_model_iter_n_children;
  if(VECTOR_ELT(s, 15) != NULL_USER_OBJECT)
    c->iter_nth_child = S_virtual_gtk_tree_model_iter_nth_child;
  if(VECTOR_ELT(s, 16) != NULL_USER_OBJECT)
    c->iter_parent = S_virtual_gtk_tree_model_iter_parent;
  if(VECTOR_ELT(s, 17) != NULL_USER_OBJECT)
    c->ref_node = S_virtual_gtk_tree_model_ref_node;
  if(VECTOR_ELT(s, 18) != NULL_USER_OBJECT)
    c->unref_node = S_virtual_gtk_tree_model_unref_node;
}
USER_OBJECT_
S_gtk_tree_model_iface_row_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_path, USER_OBJECT_ s_iter)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeModelIface* object_class = ((GtkTreeModelIface*)getPtrValue(s_object_class));
  GtkTreeModel* object = GTK_TREE_MODEL(getPtrValue(s_object));
  GtkTreePath* path = ((GtkTreePath*)getPtrValue(s_path));
  GtkTreeIter* iter = ((GtkTreeIter*)getPtrValue(s_iter));


  object_class->row_changed(object, path, iter);


  return(_result);
}

USER_OBJECT_
S_gtk_tree_model_iface_row_inserted(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_path, USER_OBJECT_ s_iter)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeModelIface* object_class = ((GtkTreeModelIface*)getPtrValue(s_object_class));
  GtkTreeModel* object = GTK_TREE_MODEL(getPtrValue(s_object));
  GtkTreePath* path = ((GtkTreePath*)getPtrValue(s_path));
  GtkTreeIter* iter = ((GtkTreeIter*)getPtrValue(s_iter));


  object_class->row_inserted(object, path, iter);


  return(_result);
}

USER_OBJECT_
S_gtk_tree_model_iface_row_has_child_toggled(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_path, USER_OBJECT_ s_iter)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeModelIface* object_class = ((GtkTreeModelIface*)getPtrValue(s_object_class));
  GtkTreeModel* object = GTK_TREE_MODEL(getPtrValue(s_object));
  GtkTreePath* path = ((GtkTreePath*)getPtrValue(s_path));
  GtkTreeIter* iter = ((GtkTreeIter*)getPtrValue(s_iter));


  object_class->row_has_child_toggled(object, path, iter);


  return(_result);
}

USER_OBJECT_
S_gtk_tree_model_iface_row_deleted(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_path)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeModelIface* object_class = ((GtkTreeModelIface*)getPtrValue(s_object_class));
  GtkTreeModel* object = GTK_TREE_MODEL(getPtrValue(s_object));
  GtkTreePath* path = ((GtkTreePath*)getPtrValue(s_path));


  object_class->row_deleted(object, path);


  return(_result);
}

USER_OBJECT_
S_gtk_tree_model_iface_rows_reordered(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_path, USER_OBJECT_ s_iter, USER_OBJECT_ s_new_order)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeModelIface* object_class = ((GtkTreeModelIface*)getPtrValue(s_object_class));
  GtkTreeModel* object = GTK_TREE_MODEL(getPtrValue(s_object));
  GtkTreePath* path = ((GtkTreePath*)getPtrValue(s_path));
  GtkTreeIter* iter = ((GtkTreeIter*)getPtrValue(s_iter));
  gint* new_order = ((gint*)asCArray(s_new_order, gint, asCInteger));


  object_class->rows_reordered(object, path, iter, new_order);


  return(_result);
}

USER_OBJECT_
S_gtk_tree_model_iface_get_flags(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeModelIface* object_class = ((GtkTreeModelIface*)getPtrValue(s_object_class));
  GtkTreeModel* object = GTK_TREE_MODEL(getPtrValue(s_object));

  GtkTreeModelFlags ans;

  ans = object_class->get_flags(object);

  _result = asRFlag(ans, GTK_TYPE_TREE_MODEL_FLAGS);

  return(_result);
}

USER_OBJECT_
S_gtk_tree_model_iface_get_n_columns(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeModelIface* object_class = ((GtkTreeModelIface*)getPtrValue(s_object_class));
  GtkTreeModel* object = GTK_TREE_MODEL(getPtrValue(s_object));

  gint ans;

  ans = object_class->get_n_columns(object);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_tree_model_iface_get_column_type(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_index_)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeModelIface* object_class = ((GtkTreeModelIface*)getPtrValue(s_object_class));
  GtkTreeModel* object = GTK_TREE_MODEL(getPtrValue(s_object));
  gint index_ = ((gint)asCInteger(s_index_));

  GType ans;

  ans = object_class->get_column_type(object, index_);

  _result = asRGType(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_tree_model_iface_get_iter(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_path)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeModelIface* object_class = ((GtkTreeModelIface*)getPtrValue(s_object_class));
  GtkTreeModel* object = GTK_TREE_MODEL(getPtrValue(s_object));
  GtkTreePath* path = ((GtkTreePath*)getPtrValue(s_path));

  gboolean ans;
  GtkTreeIter iter;

  ans = object_class->get_iter(object, &iter, path);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "iter", PROTECT(toRPointerWithFinalizer(&iter ? gtk_tree_iter_copy(&iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}

USER_OBJECT_
S_gtk_tree_model_iface_get_path(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_iter)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeModelIface* object_class = ((GtkTreeModelIface*)getPtrValue(s_object_class));
  GtkTreeModel* object = GTK_TREE_MODEL(getPtrValue(s_object));
  GtkTreeIter* iter = ((GtkTreeIter*)getPtrValue(s_iter));

  GtkTreePath* ans;

  ans = object_class->get_path(object, iter);

  _result = toRPointerWithFinalizer(ans, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free);

  return(_result);
}

USER_OBJECT_
S_gtk_tree_model_iface_get_value(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeModelIface* object_class = ((GtkTreeModelIface*)getPtrValue(s_object_class));
  GtkTreeModel* object = GTK_TREE_MODEL(getPtrValue(s_object));
  GtkTreeIter* iter = ((GtkTreeIter*)getPtrValue(s_iter));
  gint column = ((gint)asCInteger(s_column));

  GValue* value = ((GValue *)g_new0(GValue, 1));

  object_class->get_value(object, iter, column, value);


  _result = retByVal(PROTECT(_result), "value", PROTECT(asRGValue(value)), NULL);
  UNPROTECT(2);
    CLEANUP(g_value_unset, value);
  CLEANUP(g_free, value);;

  return(_result);
}

USER_OBJECT_
S_gtk_tree_model_iface_iter_next(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_iter)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeModelIface* object_class = ((GtkTreeModelIface*)getPtrValue(s_object_class));
  GtkTreeModel* object = GTK_TREE_MODEL(getPtrValue(s_object));
  GtkTreeIter* iter = ((GtkTreeIter*)getPtrValue(s_iter));

  gboolean ans;

  ans = object_class->iter_next(object, iter);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_tree_model_iface_iter_children(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_parent)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeModelIface* object_class = ((GtkTreeModelIface*)getPtrValue(s_object_class));
  GtkTreeModel* object = GTK_TREE_MODEL(getPtrValue(s_object));
  GtkTreeIter* parent = ((GtkTreeIter*)getPtrValue(s_parent));

  gboolean ans;
  GtkTreeIter iter;

  ans = object_class->iter_children(object, &iter, parent);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "iter", PROTECT(toRPointerWithFinalizer(&iter ? gtk_tree_iter_copy(&iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}

USER_OBJECT_
S_gtk_tree_model_iface_iter_has_child(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_iter)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeModelIface* object_class = ((GtkTreeModelIface*)getPtrValue(s_object_class));
  GtkTreeModel* object = GTK_TREE_MODEL(getPtrValue(s_object));
  GtkTreeIter* iter = ((GtkTreeIter*)getPtrValue(s_iter));

  gboolean ans;

  ans = object_class->iter_has_child(object, iter);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_tree_model_iface_iter_n_children(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_iter)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeModelIface* object_class = ((GtkTreeModelIface*)getPtrValue(s_object_class));
  GtkTreeModel* object = GTK_TREE_MODEL(getPtrValue(s_object));
  GtkTreeIter* iter = ((GtkTreeIter*)getPtrValue(s_iter));

  gint ans;

  ans = object_class->iter_n_children(object, iter);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_gtk_tree_model_iface_iter_nth_child(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_parent, USER_OBJECT_ s_n)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeModelIface* object_class = ((GtkTreeModelIface*)getPtrValue(s_object_class));
  GtkTreeModel* object = GTK_TREE_MODEL(getPtrValue(s_object));
  GtkTreeIter* parent = ((GtkTreeIter*)getPtrValue(s_parent));
  gint n = ((gint)asCInteger(s_n));

  gboolean ans;
  GtkTreeIter iter;

  ans = object_class->iter_nth_child(object, &iter, parent, n);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "iter", PROTECT(toRPointerWithFinalizer(&iter ? gtk_tree_iter_copy(&iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}

USER_OBJECT_
S_gtk_tree_model_iface_iter_parent(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_child)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeModelIface* object_class = ((GtkTreeModelIface*)getPtrValue(s_object_class));
  GtkTreeModel* object = GTK_TREE_MODEL(getPtrValue(s_object));
  GtkTreeIter* child = ((GtkTreeIter*)getPtrValue(s_child));

  gboolean ans;
  GtkTreeIter iter;

  ans = object_class->iter_parent(object, &iter, child);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "iter", PROTECT(toRPointerWithFinalizer(&iter ? gtk_tree_iter_copy(&iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}

USER_OBJECT_
S_gtk_tree_model_iface_ref_node(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_iter)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeModelIface* object_class = ((GtkTreeModelIface*)getPtrValue(s_object_class));
  GtkTreeModel* object = GTK_TREE_MODEL(getPtrValue(s_object));
  GtkTreeIter* iter = ((GtkTreeIter*)getPtrValue(s_iter));


  object_class->ref_node(object, iter);


  return(_result);
}

USER_OBJECT_
S_gtk_tree_model_iface_unref_node(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_iter)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeModelIface* object_class = ((GtkTreeModelIface*)getPtrValue(s_object_class));
  GtkTreeModel* object = GTK_TREE_MODEL(getPtrValue(s_object));
  GtkTreeIter* iter = ((GtkTreeIter*)getPtrValue(s_iter));


  object_class->unref_node(object, iter);


  return(_result);
}
 

static SEXP S_GtkTreeSortable_symbol;

static void
S_virtual_gtk_tree_sortable_sort_column_changed(GtkTreeSortable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeSortable_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeSortable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gtk_tree_sortable_get_sort_column_id(GtkTreeSortable* s_object, gint* s_sort_column_id, GtkSortType* s_order)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeSortable_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeSortable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_sort_column_id = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
  *s_order = ((GtkSortType)asCEnum(VECTOR_ELT(s_ans, 2), GTK_TYPE_SORT_TYPE));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gtk_tree_sortable_set_sort_column_id(GtkTreeSortable* s_object, gint s_sort_column_id, GtkSortType s_order)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeSortable_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeSortable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_sort_column_id));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_order, GTK_TYPE_SORT_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_tree_sortable_set_sort_func(GtkTreeSortable* s_object, gint s_sort_column_id, GtkTreeIterCompareFunc s_func, gpointer s_data, GtkDestroyNotify s_destroy)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeSortable_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeSortable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_sort_column_id));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_func), "GtkTreeIterCompareFunc"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_data);
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_destroy, "GtkDestroyNotify"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_tree_sortable_set_default_sort_func(GtkTreeSortable* s_object, GtkTreeIterCompareFunc s_func, gpointer s_data, GtkDestroyNotify s_destroy)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeSortable_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeSortable")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_func), "GtkTreeIterCompareFunc"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_data);
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_destroy, "GtkDestroyNotify"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gtk_tree_sortable_has_default_sort_func(GtkTreeSortable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkTreeSortable_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkTreeSortable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}
void
S_gtk_tree_sortable_class_init(GtkTreeSortableIface * c, SEXP e)
{
  SEXP s;

  S_GtkTreeSortable_symbol = install("GtkTreeSortable");
  s = PROTECT(findVar(S_GtkTreeSortable_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkTreeSortableIface)) = e;

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->sort_column_changed = S_virtual_gtk_tree_sortable_sort_column_changed;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_sort_column_id = S_virtual_gtk_tree_sortable_get_sort_column_id;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->set_sort_column_id = S_virtual_gtk_tree_sortable_set_sort_column_id;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->set_sort_func = S_virtual_gtk_tree_sortable_set_sort_func;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->set_default_sort_func = S_virtual_gtk_tree_sortable_set_default_sort_func;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->has_default_sort_func = S_virtual_gtk_tree_sortable_has_default_sort_func;
}
USER_OBJECT_
S_gtk_tree_sortable_iface_sort_column_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeSortableIface* object_class = ((GtkTreeSortableIface*)getPtrValue(s_object_class));
  GtkTreeSortable* object = GTK_TREE_SORTABLE(getPtrValue(s_object));


  object_class->sort_column_changed(object);


  return(_result);
}

USER_OBJECT_
S_gtk_tree_sortable_iface_get_sort_column_id(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeSortableIface* object_class = ((GtkTreeSortableIface*)getPtrValue(s_object_class));
  GtkTreeSortable* object = GTK_TREE_SORTABLE(getPtrValue(s_object));

  gboolean ans;
  gint sort_column_id;
  GtkSortType order;

  ans = object_class->get_sort_column_id(object, &sort_column_id, &order);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "sort.column.id", PROTECT(asRInteger(sort_column_id)), "order", PROTECT(asREnum(order, GTK_TYPE_SORT_TYPE)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}

USER_OBJECT_
S_gtk_tree_sortable_iface_set_sort_column_id(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_sort_column_id, USER_OBJECT_ s_order)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeSortableIface* object_class = ((GtkTreeSortableIface*)getPtrValue(s_object_class));
  GtkTreeSortable* object = GTK_TREE_SORTABLE(getPtrValue(s_object));
  gint sort_column_id = ((gint)asCInteger(s_sort_column_id));
  GtkSortType order = ((GtkSortType)asCEnum(s_order, GTK_TYPE_SORT_TYPE));


  object_class->set_sort_column_id(object, sort_column_id, order);


  return(_result);
}

USER_OBJECT_
S_gtk_tree_sortable_iface_set_sort_func(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_sort_column_id, USER_OBJECT_ s_func, USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeIterCompareFunc func = ((GtkTreeIterCompareFunc)S_GtkTreeIterCompareFunc);
  R_CallbackData* data = R_createCBData(s_func, s_data);
  GtkTreeSortableIface* object_class = ((GtkTreeSortableIface*)getPtrValue(s_object_class));
  GtkTreeSortable* object = GTK_TREE_SORTABLE(getPtrValue(s_object));
  gint sort_column_id = ((gint)asCInteger(s_sort_column_id));
  GtkDestroyNotify destroy = ((GtkDestroyNotify)R_freeCBData);


  object_class->set_sort_func(object, sort_column_id, func, data, destroy);


  return(_result);
}

USER_OBJECT_
S_gtk_tree_sortable_iface_set_default_sort_func(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeIterCompareFunc func = ((GtkTreeIterCompareFunc)S_GtkTreeIterCompareFunc);
  R_CallbackData* data = R_createCBData(s_func, s_data);
  GtkTreeSortableIface* object_class = ((GtkTreeSortableIface*)getPtrValue(s_object_class));
  GtkTreeSortable* object = GTK_TREE_SORTABLE(getPtrValue(s_object));
  GtkDestroyNotify destroy = ((GtkDestroyNotify)R_freeCBData);


  object_class->set_default_sort_func(object, func, data, destroy);


  return(_result);
}

USER_OBJECT_
S_gtk_tree_sortable_iface_has_default_sort_func(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GtkTreeSortableIface* object_class = ((GtkTreeSortableIface*)getPtrValue(s_object_class));
  GtkTreeSortable* object = GTK_TREE_SORTABLE(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->has_default_sort_func(object);

  _result = asRLogical(ans);

  return(_result);
}
 

#if GTK_CHECK_VERSION(2, 12, 0)
static SEXP S_GtkBuildable_symbol;

static void
S_virtual_gtk_buildable_set_name(GtkBuildable* s_object, const gchar* s_name)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkBuildable_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkBuildable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_name));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static const gchar*
S_virtual_gtk_buildable_get_name(GtkBuildable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkBuildable_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkBuildable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((const gchar*)0));
  return(((const gchar*)asCString(s_ans)));
}

static void
S_virtual_gtk_buildable_add_child(GtkBuildable* s_object, GtkBuilder* s_builder, GObject* s_child, const gchar* s_type)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkBuildable_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkBuildable")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_builder, "GtkBuilder"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_child, "GObject"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_type));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_buildable_set_buildable_property(GtkBuildable* s_object, GtkBuilder* s_builder, const gchar* s_name, const GValue* s_value)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkBuildable_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkBuildable")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_builder, "GtkBuilder"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_name));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGValue(s_value));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GObject*
S_virtual_gtk_buildable_construct_child(GtkBuildable* s_object, GtkBuilder* s_builder, const gchar* s_name)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkBuildable_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkBuildable")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_builder, "GtkBuilder"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_name));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GObject*)0));
  return(G_OBJECT(getPtrValue(s_ans)));
}

static gboolean
S_virtual_gtk_buildable_custom_tag_start(GtkBuildable* s_object, GtkBuilder* s_builder, GObject* s_child, const gchar* s_tagname, GMarkupParser* s_parser, gpointer* s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkBuildable_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkBuildable")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_builder, "GtkBuilder"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_child, "GObject"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_tagname));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_parser, "GMarkupParser"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_data = ((gpointer)asCGenericData(VECTOR_ELT(s_ans, 1)));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gtk_buildable_custom_tag_end(GtkBuildable* s_object, GtkBuilder* s_builder, GObject* s_child, const gchar* s_tagname, gpointer* s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkBuildable_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkBuildable")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_builder, "GtkBuilder"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_child, "GObject"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_tagname));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
  *s_data = ((gpointer)asCGenericData(VECTOR_ELT(s_ans, 0)));
}

static void
S_virtual_gtk_buildable_custom_finished(GtkBuildable* s_object, GtkBuilder* s_builder, GObject* s_child, const gchar* s_tagname, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkBuildable_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkBuildable")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_builder, "GtkBuilder"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_child, "GObject"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_tagname));
  tmp = CDR(tmp);
  SETCAR(tmp, s_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_buildable_parser_finished(GtkBuildable* s_object, GtkBuilder* s_builder)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkBuildable_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkBuildable")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_builder, "GtkBuilder"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GObject*
S_virtual_gtk_buildable_get_internal_child(GtkBuildable* s_object, GtkBuilder* s_builder, const gchar* s_childname)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkBuildable_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkBuildable")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_builder, "GtkBuilder"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_childname));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GObject*)0));
  return(G_OBJECT(getPtrValue(s_ans)));
}
void
S_gtk_buildable_class_init(GtkBuildableIface * c, SEXP e)
{
  SEXP s;

  S_GtkBuildable_symbol = install("GtkBuildable");
  s = PROTECT(findVar(S_GtkBuildable_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkBuildableIface)) = e;

  UNPROTECT(1);

#if GTK_CHECK_VERSION(2, 12, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->set_name = S_virtual_gtk_buildable_set_name;
#endif
#if GTK_CHECK_VERSION(2, 12, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_name = S_virtual_gtk_buildable_get_name;
#endif
#if GTK_CHECK_VERSION(2, 12, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->add_child = S_virtual_gtk_buildable_add_child;
#endif
#if GTK_CHECK_VERSION(2, 12, 0)
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->set_buildable_property = S_virtual_gtk_buildable_set_buildable_property;
#endif
#if GTK_CHECK_VERSION(2, 12, 0)
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->construct_child = S_virtual_gtk_buildable_construct_child;
#endif
#if GTK_CHECK_VERSION(2, 12, 0)
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->custom_tag_start = S_virtual_gtk_buildable_custom_tag_start;
#endif
#if GTK_CHECK_VERSION(2, 12, 0)
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->custom_tag_end = S_virtual_gtk_buildable_custom_tag_end;
#endif
#if GTK_CHECK_VERSION(2, 12, 0)
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->custom_finished = S_virtual_gtk_buildable_custom_finished;
#endif
#if GTK_CHECK_VERSION(2, 12, 0)
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->parser_finished = S_virtual_gtk_buildable_parser_finished;
#endif
#if GTK_CHECK_VERSION(2, 12, 0)
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->get_internal_child = S_virtual_gtk_buildable_get_internal_child;
#endif
}
#endif
USER_OBJECT_
S_gtk_buildable_iface_set_name(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 12, 0)
  GtkBuildableIface* object_class = ((GtkBuildableIface*)getPtrValue(s_object_class));
  GtkBuildable* object = GTK_BUILDABLE(getPtrValue(s_object));
  const gchar* name = ((const gchar*)asCString(s_name));


  object_class->set_name(object, name);

#else
  error("gtk_buildable_set_name exists only in Gtk >= 2.12.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_buildable_iface_get_name(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 12, 0)
  GtkBuildableIface* object_class = ((GtkBuildableIface*)getPtrValue(s_object_class));
  GtkBuildable* object = GTK_BUILDABLE(getPtrValue(s_object));

  const gchar* ans;

  ans = object_class->get_name(object);

  _result = asRString(ans);
#else
  error("gtk_buildable_get_name exists only in Gtk >= 2.12.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_buildable_iface_add_child(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_builder, USER_OBJECT_ s_child, USER_OBJECT_ s_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 12, 0)
  GtkBuildableIface* object_class = ((GtkBuildableIface*)getPtrValue(s_object_class));
  GtkBuildable* object = GTK_BUILDABLE(getPtrValue(s_object));
  GtkBuilder* builder = GTK_BUILDER(getPtrValue(s_builder));
  GObject* child = G_OBJECT(getPtrValue(s_child));
  const gchar* type = ((const gchar*)asCString(s_type));


  object_class->add_child(object, builder, child, type);

#else
  error("gtk_buildable_add_child exists only in Gtk >= 2.12.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_buildable_iface_set_buildable_property(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_builder, USER_OBJECT_ s_name, USER_OBJECT_ s_value)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 12, 0)
  GtkBuildableIface* object_class = ((GtkBuildableIface*)getPtrValue(s_object_class));
  GtkBuildable* object = GTK_BUILDABLE(getPtrValue(s_object));
  GtkBuilder* builder = GTK_BUILDER(getPtrValue(s_builder));
  const gchar* name = ((const gchar*)asCString(s_name));
  const GValue* value = asCGValue(s_value);


  object_class->set_buildable_property(object, builder, name, value);

    CLEANUP(g_value_unset, ((GValue*)value));
  CLEANUP(g_free, ((GValue*)value));;
#else
  error("gtk_buildable_set_buildable_property exists only in Gtk >= 2.12.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_buildable_iface_construct_child(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_builder, USER_OBJECT_ s_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 12, 0)
  GtkBuildableIface* object_class = ((GtkBuildableIface*)getPtrValue(s_object_class));
  GtkBuildable* object = GTK_BUILDABLE(getPtrValue(s_object));
  GtkBuilder* builder = GTK_BUILDER(getPtrValue(s_builder));
  const gchar* name = ((const gchar*)asCString(s_name));

  GObject* ans;

  ans = object_class->construct_child(object, builder, name);

  _result = toRPointerWithRef(ans, "GObject");
#else
  error("gtk_buildable_construct_child exists only in Gtk >= 2.12.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_buildable_iface_custom_tag_start(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_builder, USER_OBJECT_ s_child, USER_OBJECT_ s_tagname, USER_OBJECT_ s_parser)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 12, 0)
  GtkBuildableIface* object_class = ((GtkBuildableIface*)getPtrValue(s_object_class));
  GtkBuildable* object = GTK_BUILDABLE(getPtrValue(s_object));
  GtkBuilder* builder = GTK_BUILDER(getPtrValue(s_builder));
  GObject* child = G_OBJECT(getPtrValue(s_child));
  const gchar* tagname = ((const gchar*)asCString(s_tagname));
  GMarkupParser* parser = ((GMarkupParser*)getPtrValue(s_parser));

  gboolean ans;
  gpointer data;

  ans = object_class->custom_tag_start(object, builder, child, tagname, parser, &data);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "data", PROTECT(data), NULL);
  UNPROTECT(2);
  ;
#else
  error("gtk_buildable_custom_tag_start exists only in Gtk >= 2.12.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_buildable_iface_custom_tag_end(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_builder, USER_OBJECT_ s_child, USER_OBJECT_ s_tagname)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 12, 0)
  GtkBuildableIface* object_class = ((GtkBuildableIface*)getPtrValue(s_object_class));
  GtkBuildable* object = GTK_BUILDABLE(getPtrValue(s_object));
  GtkBuilder* builder = GTK_BUILDER(getPtrValue(s_builder));
  GObject* child = G_OBJECT(getPtrValue(s_child));
  const gchar* tagname = ((const gchar*)asCString(s_tagname));

  gpointer data;

  object_class->custom_tag_end(object, builder, child, tagname, &data);


  _result = retByVal(PROTECT(_result), "data", PROTECT(data), NULL);
  UNPROTECT(2);
  ;
#else
  error("gtk_buildable_custom_tag_end exists only in Gtk >= 2.12.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_buildable_iface_custom_finished(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_builder, USER_OBJECT_ s_child, USER_OBJECT_ s_tagname, USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 12, 0)
  GtkBuildableIface* object_class = ((GtkBuildableIface*)getPtrValue(s_object_class));
  GtkBuildable* object = GTK_BUILDABLE(getPtrValue(s_object));
  GtkBuilder* builder = GTK_BUILDER(getPtrValue(s_builder));
  GObject* child = G_OBJECT(getPtrValue(s_child));
  const gchar* tagname = ((const gchar*)asCString(s_tagname));
  gpointer data = ((gpointer)asCGenericData(s_data));


  object_class->custom_finished(object, builder, child, tagname, data);

#else
  error("gtk_buildable_custom_finished exists only in Gtk >= 2.12.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_buildable_iface_parser_finished(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_builder)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 12, 0)
  GtkBuildableIface* object_class = ((GtkBuildableIface*)getPtrValue(s_object_class));
  GtkBuildable* object = GTK_BUILDABLE(getPtrValue(s_object));
  GtkBuilder* builder = GTK_BUILDER(getPtrValue(s_builder));


  object_class->parser_finished(object, builder);

#else
  error("gtk_buildable_parser_finished exists only in Gtk >= 2.12.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_buildable_iface_get_internal_child(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_builder, USER_OBJECT_ s_childname)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 12, 0)
  GtkBuildableIface* object_class = ((GtkBuildableIface*)getPtrValue(s_object_class));
  GtkBuildable* object = GTK_BUILDABLE(getPtrValue(s_object));
  GtkBuilder* builder = GTK_BUILDER(getPtrValue(s_builder));
  const gchar* childname = ((const gchar*)asCString(s_childname));

  GObject* ans;

  ans = object_class->get_internal_child(object, builder, childname);

  _result = toRPointerWithRef(ans, "GObject");
#else
  error("gtk_buildable_get_internal_child exists only in Gtk >= 2.12.0");
#endif

  return(_result);
}
 

#if GTK_CHECK_VERSION(2, 14, 0)
static SEXP S_GtkToolShell_symbol;

static GtkIconSize
S_virtual_gtk_tool_shell_get_icon_size(GtkToolShell* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkToolShell_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkToolShell")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GtkIconSize)0));
  return(((GtkIconSize)asCEnum(s_ans, GTK_TYPE_ICON_SIZE)));
}

static GtkOrientation
S_virtual_gtk_tool_shell_get_orientation(GtkToolShell* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkToolShell_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkToolShell")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GtkOrientation)0));
  return(((GtkOrientation)asCEnum(s_ans, GTK_TYPE_ORIENTATION)));
}

static GtkToolbarStyle
S_virtual_gtk_tool_shell_get_style(GtkToolShell* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkToolShell_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkToolShell")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GtkToolbarStyle)0));
  return(((GtkToolbarStyle)asCEnum(s_ans, GTK_TYPE_TOOLBAR_STYLE)));
}

static GtkReliefStyle
S_virtual_gtk_tool_shell_get_relief_style(GtkToolShell* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkToolShell_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkToolShell")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GtkReliefStyle)0));
  return(((GtkReliefStyle)asCEnum(s_ans, GTK_TYPE_RELIEF_STYLE)));
}

static void
S_virtual_gtk_tool_shell_rebuild_menu(GtkToolShell* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkToolShell_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkToolShell")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_tool_shell_class_init(GtkToolShellIface * c, SEXP e)
{
  SEXP s;

  S_GtkToolShell_symbol = install("GtkToolShell");
  s = PROTECT(findVar(S_GtkToolShell_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkToolShellIface)) = e;

  UNPROTECT(1);

#if GTK_CHECK_VERSION(2, 14, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_icon_size = S_virtual_gtk_tool_shell_get_icon_size;
#endif
#if GTK_CHECK_VERSION(2, 14, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_orientation = S_virtual_gtk_tool_shell_get_orientation;
#endif
#if GTK_CHECK_VERSION(2, 14, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_style = S_virtual_gtk_tool_shell_get_style;
#endif
#if GTK_CHECK_VERSION(2, 14, 0)
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->get_relief_style = S_virtual_gtk_tool_shell_get_relief_style;
#endif
#if GTK_CHECK_VERSION(2, 14, 0)
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->rebuild_menu = S_virtual_gtk_tool_shell_rebuild_menu;
#endif
}
#endif
USER_OBJECT_
S_gtk_tool_shell_iface_get_icon_size(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 14, 0)
  GtkToolShellIface* object_class = ((GtkToolShellIface*)getPtrValue(s_object_class));
  GtkToolShell* object = GTK_TOOL_SHELL(getPtrValue(s_object));

  GtkIconSize ans;

  ans = object_class->get_icon_size(object);

  _result = asREnum(ans, GTK_TYPE_ICON_SIZE);
#else
  error("gtk_tool_shell_get_icon_size exists only in Gtk >= 2.14.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_tool_shell_iface_get_orientation(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 14, 0)
  GtkToolShellIface* object_class = ((GtkToolShellIface*)getPtrValue(s_object_class));
  GtkToolShell* object = GTK_TOOL_SHELL(getPtrValue(s_object));

  GtkOrientation ans;

  ans = object_class->get_orientation(object);

  _result = asREnum(ans, GTK_TYPE_ORIENTATION);
#else
  error("gtk_tool_shell_get_orientation exists only in Gtk >= 2.14.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_tool_shell_iface_get_style(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 14, 0)
  GtkToolShellIface* object_class = ((GtkToolShellIface*)getPtrValue(s_object_class));
  GtkToolShell* object = GTK_TOOL_SHELL(getPtrValue(s_object));

  GtkToolbarStyle ans;

  ans = object_class->get_style(object);

  _result = asREnum(ans, GTK_TYPE_TOOLBAR_STYLE);
#else
  error("gtk_tool_shell_get_style exists only in Gtk >= 2.14.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_tool_shell_iface_get_relief_style(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 14, 0)
  GtkToolShellIface* object_class = ((GtkToolShellIface*)getPtrValue(s_object_class));
  GtkToolShell* object = GTK_TOOL_SHELL(getPtrValue(s_object));

  GtkReliefStyle ans;

  ans = object_class->get_relief_style(object);

  _result = asREnum(ans, GTK_TYPE_RELIEF_STYLE);
#else
  error("gtk_tool_shell_get_relief_style exists only in Gtk >= 2.14.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_tool_shell_iface_rebuild_menu(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 14, 0)
  GtkToolShellIface* object_class = ((GtkToolShellIface*)getPtrValue(s_object_class));
  GtkToolShell* object = GTK_TOOL_SHELL(getPtrValue(s_object));


  object_class->rebuild_menu(object);

#else
  error("gtk_tool_shell_rebuild_menu exists only in Gtk >= 2.14.0");
#endif

  return(_result);
}
 

#if GTK_CHECK_VERSION(2, 16, 0)
static SEXP S_GtkActivatable_symbol;

static void
S_virtual_gtk_activatable_update(GtkActivatable* s_object, GtkAction* s_action, const gchar* s_property_name)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkActivatable_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkActivatable")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_action, "GtkAction"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_property_name));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_gtk_activatable_sync_action_properties(GtkActivatable* s_object, GtkAction* s_action)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GtkActivatable_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GtkActivatable")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_action, "GtkAction"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gtk_activatable_class_init(GtkActivatableIface * c, SEXP e)
{
  SEXP s;

  S_GtkActivatable_symbol = install("GtkActivatable");
  s = PROTECT(findVar(S_GtkActivatable_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkActivatableIface)) = e;

  UNPROTECT(1);

#if GTK_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->update = S_virtual_gtk_activatable_update;
#endif
#if GTK_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->sync_action_properties = S_virtual_gtk_activatable_sync_action_properties;
#endif
}
#endif
USER_OBJECT_
S_gtk_activatable_iface_update(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_action, USER_OBJECT_ s_property_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 16, 0)
  GtkActivatableIface* object_class = ((GtkActivatableIface*)getPtrValue(s_object_class));
  GtkActivatable* object = GTK_ACTIVATABLE(getPtrValue(s_object));
  GtkAction* action = GTK_ACTION(getPtrValue(s_action));
  const gchar* property_name = ((const gchar*)asCString(s_property_name));


  object_class->update(object, action, property_name);

#else
  error("gtk_activatable_update exists only in Gtk >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gtk_activatable_iface_sync_action_properties(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_action)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 16, 0)
  GtkActivatableIface* object_class = ((GtkActivatableIface*)getPtrValue(s_object_class));
  GtkActivatable* object = GTK_ACTIVATABLE(getPtrValue(s_object));
  GtkAction* action = GTK_ACTION(getPtrValue(s_action));


  object_class->sync_action_properties(object, action);

#else
  error("gtk_activatable_sync_action_properties exists only in Gtk >= 2.16.0");
#endif

  return(_result);
}
 

#if GTK_CHECK_VERSION(2, 16, 0)
static SEXP S_GtkOrientable_symbol;
void
S_gtk_orientable_class_init(GtkOrientableIface * c, SEXP e)
{
  SEXP s;

  S_GtkOrientable_symbol = install("GtkOrientable");
  s = PROTECT(findVar(S_GtkOrientable_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GtkOrientableIface)) = e;

  UNPROTECT(1);

}
#endif 

