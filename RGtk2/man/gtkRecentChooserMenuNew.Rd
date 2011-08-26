\alias{gtkRecentChooserMenuNew}
\name{gtkRecentChooserMenuNew}
\title{gtkRecentChooserMenuNew}
\description{Creates a new \code{\link{GtkRecentChooserMenu}} widget.}
\usage{gtkRecentChooserMenuNew()}
\details{This kind of widget shows the list of recently used resources as
a menu, each item as a menu item.  Each item inside the menu might
have an icon, representing its MIME type, and a number, for mnemonic
access.
  
This widget implements the \code{\link{GtkRecentChooser}} interface.
  
This widget creates its own \code{\link{GtkRecentManager}} object.  See the
\code{\link{gtkRecentChooserMenuNewForManager}} function to know how to create
a \code{\link{GtkRecentChooserMenu}} widget bound to another \code{\link{GtkRecentManager}} object.
  Since 2.10}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkRecentChooserMenu}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
