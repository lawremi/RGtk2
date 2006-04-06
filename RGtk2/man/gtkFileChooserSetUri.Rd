\alias{gtkFileChooserSetUri}
\name{gtkFileChooserSetUri}
\title{gtkFileChooserSetUri}
\description{Sets the file referred to by \code{uri} as the current file for the file chooser,
by changing to the URI's parent folder and actually selecting the URI in the
list.  If the \code{chooser} is \code{GTK_FILE_CHOOSER_ACTION_SAVE} mode, the URI's base
name will also appear in the dialog's file name entry.}
\usage{gtkFileChooserSetUri(object, uri)}
\arguments{
\item{\code{object}}{[\code{\link{GtkFileChooser}}]  a \code{\link{GtkFileChooser}}}
\item{\code{uri}}{[char]  the URI to set as current}
}
\details{If the URI isn't in the current folder of \code{chooser}, then the current folder
of \code{chooser} will be changed to the folder containing \code{uri}. This is equivalent
to a sequence of \code{\link{gtkFileChooserUnselectAll}} followed by
\code{\link{gtkFileChooserSelectUri}}.
  
Note that the URI must exist, or nothing will be done except
for the directory change.
If you are implementing a \emph{File/Save As...} dialog, you
should use this function if you already have a file name to which the user may save; for example,
when the user opens an existing file and then does \emph{File/Save As...}
on it.  If you don't have a file name already -- for example, if the user just created
a new file and is saving it for the first time, do not call this function.  Instead, use
something similar to this:
  
\preformatted{if (document\_is\_new)
  {
    /    * the user just created a new document *    /
    gtk\_file\_chooser\_set\_current\_folder\_uri (chooser, default\_folder\_for\_saving);
    gtk\_file\_chooser\_set\_current\_name (chooser, "Untitled document");
  }
else
  {
    /    * the user edited an existing document *    / 
    gtk\_file\_chooser\_set\_uri (chooser, existing\_uri);
  }}  

  Since  2.4}
\value{[logical]  \code{TRUE} if both the folder could be changed and the URI was
selected successfully, \code{FALSE} otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
