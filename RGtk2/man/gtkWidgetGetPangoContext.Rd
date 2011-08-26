\alias{gtkWidgetGetPangoContext}
\name{gtkWidgetGetPangoContext}
\title{gtkWidgetGetPangoContext}
\description{Gets a \code{\link{PangoContext}} with the appropriate font map, font description,
and base direction for this widget. Unlike the context returned
by \code{\link{gtkWidgetCreatePangoContext}}, and will be updated to
match any changes to the widget's attributes.}
\usage{gtkWidgetGetPangoContext(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\details{If you create and keep a \code{\link{PangoLayout}} using this context, you must
deal with changes to the context by calling \code{\link{pangoLayoutContextChanged}}
on the layout in response to the \verb{"style-set"} and 
\verb{"direction-changed"} signals for the widget.}
\value{[\code{\link{PangoContext}}] the \code{\link{PangoContext}} for the widget. \emph{[  \acronym{transfer none}  ]}}
\note{Unlike the context returned by \code{\link{gtkWidgetCreatePangoContext}}, 
this context is owned by the widget (it can be used until the screen for 
the widget changes or the widget is removed from its toplevel), and will 
be updated to match any changes to the widget's attributes.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
