\alias{gtkListItemNewWithLabel}
\name{gtkListItemNewWithLabel}
\title{gtkListItemNewWithLabel}
\description{
Creates a new \verb{\link{GtkListItem}} with a child label containing the given string.
\strong{WARNING: \code{gtk_list_item_new_with_label} is deprecated and should not be used in newly-written code.}
}
\usage{gtkListItemNewWithLabel(label, show = TRUE)}
\arguments{\item{\verb{label}}{[character] the string to use for the child label.}}
\value{[\verb{\link{GtkWidget}}] a new \verb{\link{GtkListItem}} with a child \verb{\link{GtkLabel}} with the text set to
\code{label}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
