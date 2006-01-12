\alias{gtkScrolledWindowSetPolicy}
\name{gtkScrolledWindowSetPolicy}
\title{gtkScrolledWindowSetPolicy}
\description{Sets the scrollbar policy for the horizontal and vertical scrollbars. 
The policy determines when the scrollbar should appear; it is a value
from the \code{\link{GtkPolicyType}} enumeration. If \code{GTK_POLICY_ALWAYS}, the
scrollbar is always present; if \code{GTK_POLICY_NEVER}, the scrollbar is
never present; if \code{GTK_POLICY_AUTOMATIC}, the scrollbar is present only
if needed (that is, if the slider part of the bar would be smaller
than the trough - the display is larger than the page size).}
\usage{gtkScrolledWindowSetPolicy(object, hscrollbar.policy, vscrollbar.policy)}
\arguments{
\item{\code{object}}{[\code{\link{GtkScrolledWindow}}] A \code{\link{GtkScrolledWindow}}.}
\item{\code{hscrollbar.policy}}{[\code{\link{GtkPolicyType}}] Policy for horizontal bar.}
\item{\code{vscrollbar.policy}}{[\code{\link{GtkPolicyType}}] Policy for vertical bar.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
