# Explicit
dialog <- gtkDialogNewWithButtons("My dialog", main_app_window,
	c("modal", "destroy-with-parent"), "gtk-ok", "accept", "gtk-cancel", "reject")
# Also via collapsed constructor
dialog <- gtkDialog("My dialog", main_app_window,
	c("modal", "destroy-with-parent"), "gtk-ok", "accept", "gtk-cancel", "reject")

