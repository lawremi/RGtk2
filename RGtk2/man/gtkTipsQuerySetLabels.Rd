\alias{gtkTipsQuerySetLabels}
\name{gtkTipsQuerySetLabels}
\title{gtkTipsQuerySetLabels}
\description{
Sets the text to display when the query is not in effect,
and the text to display when the query is in effect but the widget beneath
the pointer has no tooltip.
\strong{WARNING: \code{gtk_tips_query_set_labels} is deprecated and should not be used in newly-written code.  
Sets the text to display when the query is not in effect,
and the text to display when the query is in effect but the widget beneath
the pointer has no tooltip.}
}
\usage{gtkTipsQuerySetLabels(object, label.inactive, label.no.tip)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTipsQuery}}] a \code{\link{GtkTipsQuery}}.}
\item{\code{label.inactive}}{[character] the text to display when the query is not running.}
\item{\code{label.no.tip}}{[character] the text to display when the query is running but the widget
beneath the pointer has no tooltip.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
