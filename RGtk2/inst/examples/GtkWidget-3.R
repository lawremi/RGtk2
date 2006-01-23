drag_data_received <- function(widget, drag_context, x, y, data, info, time)
{
  if ((data[["length"]] >= 0) && (data[["format"]] == 8))
    {
      if (drag_context[["action"]] == "ask") 
        {
          dialog <- gtkMessageDialog(NULL, c("modal", "destroy-with-parent"),
          				"info", "yes-no", "Move the data ?")
          response <- dialog$run()
          dialog$destroy()
		  
		  gtkDragFinish(drag_context, TRUE, response == "yes", time)
		}
    } else gtkDragFinish(drag_context, FALSE, FALSE, time)
}

