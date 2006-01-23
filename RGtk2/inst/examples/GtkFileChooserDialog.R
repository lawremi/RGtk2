######
# Request a file from the user and open it
######

# This is how one creates a dialog with buttons and associated response codes.
# (Please ignore the C "Response Code" example in the next section)
dialog <- gtkFileChooserDialog("Open File", parent_window, "open",
				      "gtk-cancel", "cancel", "gtk-open", "accept")

if (dialog$run() == "accept")
  {
    filename <- dialog$getFileName()
    f <- file(filename)
  }

dialog$destroy()
