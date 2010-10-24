\alias{gtkTipsQuerySetCaller}
\name{gtkTipsQuerySetCaller}
\title{gtkTipsQuerySetCaller}
\description{
Sets the widget which initiates the query, usually a button.
If the \code{caller} is selected while the query is running, the query is
automatically stopped.
\strong{WARNING: \code{gtk_tips_query_set_caller} is deprecated and should not be used in newly-written code.}
}
\usage{gtkTipsQuerySetCaller(object, caller)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTipsQuery}}.}
\item{\verb{caller}}{the widget which initiates the query.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
