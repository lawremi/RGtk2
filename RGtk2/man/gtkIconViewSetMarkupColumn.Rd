\alias{gtkIconViewSetMarkupColumn}
\name{gtkIconViewSetMarkupColumn}
\title{gtkIconViewSetMarkupColumn}
\description{Sets the column with markup information for \code{icon.view} to be
\code{column}. The markup column must be of type \verb{G_TYPE_STRING}.
If the markup column is set to something, it overrides
the text column set by \code{\link{gtkIconViewSetTextColumn}}.}
\usage{gtkIconViewSetMarkupColumn(object, column)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkIconView}}.}
\item{\verb{column}}{A column in the currently used model, or -1 to display no text}
}
\details{Since 2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
