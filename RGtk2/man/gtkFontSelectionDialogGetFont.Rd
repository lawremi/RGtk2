\alias{gtkFontSelectionDialogGetFont}
\name{gtkFontSelectionDialogGetFont}
\title{gtkFontSelectionDialogGetFont}
\description{
Gets the currently-selected font.
\strong{WARNING: \code{gtk_font_selection_dialog_get_font} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkFontSelectionDialogGetFontName}} instead.}
}
\usage{gtkFontSelectionDialogGetFont(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkFontSelectionDialog}}}}
\value{[\code{\link{GdkFont}}] the \code{\link{GdkFont}} from the \code{\link{GtkFontSelection}} for the
currently selected font in the dialog, or \code{NULL} if no font is selected}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
