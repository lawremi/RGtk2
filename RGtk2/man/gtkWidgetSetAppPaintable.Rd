\alias{gtkWidgetSetAppPaintable}
\name{gtkWidgetSetAppPaintable}
\title{gtkWidgetSetAppPaintable}
\description{Sets whether the application intends to draw on the widget in
an ::expose-event handler. }
\usage{gtkWidgetSetAppPaintable(object, app.paintable)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}
\item{\code{app.paintable}}{[logical]  \code{TRUE} if the application will paint on the widget}
}
\details{This is a hint to the widget and does not affect the behavior of 
the GTK+ core; many widgets ignore this flag entirely. For widgets 
that do pay attention to the flag, such as \code{\link{GtkEventBox}} and \code{\link{GtkWindow}}, 
the effect is to suppress default themed drawing of the widget's 
background. (Children of the widget will still be drawn.) The application 
is then entirely responsible for drawing the widget background.
  
Note that the background is still drawn when the widget is mapped.
If this is not suitable (e.g. because you want to make a transparent
window using an RGBA visual), you can work around this by doing:
\preformatted{
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

}  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
