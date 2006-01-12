\alias{gtkScrolledWindowGetPolicy}
\name{gtkScrolledWindowGetPolicy}
\title{gtkScrolledWindowGetPolicy}
\description{Retrieves the current policy values for the horizontal and vertical
scrollbars. See \code{\link{gtkScrolledWindowSetPolicy}}.}
\usage{gtkScrolledWindowGetPolicy(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkScrolledWindow}}]  a \code{\link{GtkScrolledWindow}}}}
\value{
A list containing the following elements:
\item{\code{hscrollbar.policy}}{[\code{\link{GtkPolicyType}}]  location to store the policy for the horizontal scrollbar, or \code{NULL}.}
\item{\code{vscrollbar.policy}}{[\code{\link{GtkPolicyType}}]  location to store the policy for the horizontal scrollbar, or \code{NULL}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
