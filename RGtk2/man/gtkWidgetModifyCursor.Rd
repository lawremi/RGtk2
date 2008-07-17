\alias{gtkWidgetModifyCursor}
\name{gtkWidgetModifyCursor}
\title{gtkWidgetModifyCursor}
\description{Sets the cursor color to use in a widget, overriding the
\code{"cursor-color"} and \code{"secondary-cursor-color"}
style properties. All other style values are left untouched. 
See also \code{\link{gtkWidgetModifyStyle}}.}
\usage{gtkWidgetModifyCursor(object, primary, secondary)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}
\item{\code{primary}}{[\code{\link{GdkColor}}]  the color to use for primary cursor (does not need to be
          allocated), or \code{NULL} to undo the effect of previous calls to
          of \code{\link{gtkWidgetModifyCursor}}.}
\item{\code{secondary}}{[\code{\link{GdkColor}}]  the color to use for secondary cursor (does not need to be
            allocated), or \code{NULL} to undo the effect of previous calls to
            of \code{\link{gtkWidgetModifyCursor}}.}
}
\details{  Since  2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
