 result <- dialog$run()
 if (result == "accept")
	 do_application_specific_something()
 else do_nothing_since_dialog_was_cancelled()
 dialog$destroy()