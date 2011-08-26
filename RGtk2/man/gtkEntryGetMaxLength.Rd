\alias{gtkEntryGetMaxLength}
\name{gtkEntryGetMaxLength}
\title{gtkEntryGetMaxLength}
\description{Retrieves the maximum allowed length of the text in
\code{entry}. See \code{\link{gtkEntrySetMaxLength}}.}
\usage{gtkEntryGetMaxLength(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkEntry}}}}
\details{This is equivalent to:
  \preformatted{gtk_entry_buffer_get_max_length (gtk_entry_get_buffer (entry));
}}
\value{[integer] the maximum allowed number of characters
in \code{\link{GtkEntry}}, or 0 if there is no maximum.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
