\alias{gtkEntryGetText}
\name{gtkEntryGetText}
\title{gtkEntryGetText}
\description{Retrieves the contents of the entry widget.
See also \code{\link{gtkEditableGetChars}}.}
\usage{gtkEntryGetText(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkEntry}}}}
\details{This is equivalent to:
  \preformatted{gtk_entry_buffer_get_text (gtk_entry_get_buffer (entry));
}}
\value{[character] a pointer to the contents of the widget as a
string. This string points to internally allocated
storage in the widget and must not be freed, modified or
stored.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
