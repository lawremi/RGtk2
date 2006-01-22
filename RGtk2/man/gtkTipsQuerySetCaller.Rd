\alias{gtkTipsQuerySetCaller}
\name{gtkTipsQuerySetCaller}
\title{gtkTipsQuerySetCaller}
\description{
Sets the widget which initiates the query, usually a button.
If the \code{caller} is selected while the query is running, the query is
automatically stopped.
\strong{WARNING: \code{gtk_tips_query_set_caller} is deprecated and should not be used in newly-written code.  
Sets the widget which initiates the query, usually a button.
If the \code{caller} is selected while the query is running, the query is
automatically stopped.}
}
\usage{gtkTipsQuerySetCaller(object, caller)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTipsQuery}}] a \code{\link{GtkTipsQuery}}.}
\item{\code{caller}}{[\code{\link{GtkWidget}}] the widget which initiates the query.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
