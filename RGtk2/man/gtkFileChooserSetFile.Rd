\alias{gtkFileChooserSetFile}
\name{gtkFileChooserSetFile}
\title{gtkFileChooserSetFile}
\description{Sets \code{file} as the current filename for the file chooser, by changing
to the file's parent folder and actually selecting the file in list.  If
the \code{chooser} is in \code{GTK_FILE_CHOOSER_ACTION_SAVE} mode, the file's base name
will also appear in the dialog's file name entry.}
\usage{gtkFileChooserSetFile(object, file, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkFileChooser}}}
\item{\verb{file}}{the \code{\link{GFile}} to set as current}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If the file name isn't in the current folder of \code{chooser}, then the current
folder of \code{chooser} will be changed to the folder containing \code{filename}. This
is equivalent to a sequence of \code{\link{gtkFileChooserUnselectAll}} followed by
\code{\link{gtkFileChooserSelectFilename}}.
  
Note that the file must exist, or nothing will be done except
for the directory change.
  
If you are implementing a \emph{File/Save As...} dialog,
you should use this function if you already have a file name to which the
user may save; for example, when the user opens an existing file and then
does \emph{File/Save As...} on it.  If you don't have
a file name already -- for example, if the user just created a new
file and is saving it for the first time, do not call this function.
Instead, use something similar to this:
\preformatted{if (document_is_new)
  {
    /* the user just created a new document */
    gtk_file_chooser_set_current_folder_file (chooser, default_file_for_saving);
    gtk_file_chooser_set_current_name (chooser, "Untitled document");
  }
else
  {
    /* the user edited an existing document */
    gtk_file_chooser_set_file (chooser, existing_file);
  }
}
  Since 2.14}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if both the folder could be changed and the file was
selected successfully, \code{FALSE} otherwise.}
\item{\verb{error}}{location to store the error, or \code{NULL} to ignore errors. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
