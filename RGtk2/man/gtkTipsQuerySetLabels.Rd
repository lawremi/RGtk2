\alias{gtkTipsQuerySetLabels}
\name{gtkTipsQuerySetLabels}
\title{gtkTipsQuerySetLabels}
\description{
Sets the text to display when the query is not in effect,
and the text to display when the query is in effect but the widget beneath
the pointer has no tooltip.
\strong{WARNING: \code{gtk_tips_query_set_labels} is deprecated and should not be used in newly-written code.}
}
\usage{gtkTipsQuerySetLabels(object, label.inactive, label.no.tip)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTipsQuery}}.}
\item{\verb{label.inactive}}{the text to display when the query is not running.}
\item{\verb{label.no.tip}}{the text to display when the query is running but the widget
beneath the pointer has no tooltip.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
