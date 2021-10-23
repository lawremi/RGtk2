\alias{GtkFileSelection}
\alias{gtkFileSelection}
\name{GtkFileSelection}
\title{GtkFileSelection}
\description{Prompt the user for a file or directory name}
\section{Methods and Functions}{
\code{\link{gtkFileSelectionNew}(title = NULL, show = TRUE)}\cr
\code{\link{gtkFileSelectionComplete}(object, pattern)}\cr
\code{\link{gtkFileSelectionShowFileopButtons}(object)}\cr
\code{\link{gtkFileSelectionHideFileopButtons}(object)}\cr
\code{\link{gtkFileSelectionSetSelectMultiple}(object, select.multiple)}\cr
\code{\link{gtkFileSelectionGetSelectMultiple}(object)}\cr
\code{gtkFileSelection(title = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkWindow
                                       +----GtkDialog
                                             +----GtkFileSelection}}
\section{Interfaces}{GtkFileSelection implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{\code{\link{GtkFileSelection}} has been superseded by the newer \code{\link{GtkFileChooser}} family
of widgets.
  \code{\link{GtkFileSelection}} should be used to retrieve file or directory names from
the user. It will create a new dialog window containing a directory list,
and a file list corresponding to the current working directory. The filesystem
can be navigated using the directory list or the drop-down history menu.
Alternatively, the TAB key can be used to navigate using filename
completion - common in text based editors such as emacs and jed.
  
File selection dialogs are created with a call to \code{\link{gtkFileSelectionNew}}.
  
The default filename can be set using \code{\link{gtkFileSelectionSetFilename}} and the selected filename retrieved using \code{\link{gtkFileSelectionGetFilename}}.
  
Use \code{\link{gtkFileSelectionComplete}} to display files and directories
that match a given pattern. This can be used for example, to show only
*.txt files, or only files beginning with gtk*.
  
Simple file operations; create directory, delete file, and rename file, are available from buttons at the top of the dialog. These can be hidden using \code{\link{gtkFileSelectionHideFileopButtons}} and shown again using \code{\link{gtkFileSelectionShowFileopButtons}}.
  
 \emph{Getting a filename from the user.}
\preformatted{
# Getting a filename from a user
# Note how much easier GtkFileChooser is to use

store_filename <- function(widget, file_selector) {
   selected_filename <- file_selector$getFilename();
   print(paste("Selected filename:", selected_filename))
}

create_file_selection <- function() {

  ## Create the selector
   
  file_selector <- gtkFileSelection("Please select a file for editing.",
                                    show = FALSE)
   
  gSignalConnect(file_selector[["ok_button"]], "clicked", store_filename,
                 file_selector)
   			   
  ## Ensure that the dialog box is destroyed when the user clicks a button.
   
  gSignalConnect(file_selector[["ok_button"]], "clicked", gtkWidgetDestroy, 
                 file_selector, user.data.first = TRUE)
  
  gSignalConnect(file_selector[["cancel_button"]], "clicked", gtkWidgetDestroy,
                 file_selector, user.data.first = TRUE) 
   
  ## Display that dialog
   
  file_selector$show()
}
}}
\section{Structures}{\describe{\item{\verb{GtkFileSelection}}{
\strong{WARNING: \code{GtkFileSelection} is deprecated and should not be used in newly-written code.}
The \code{\link{GtkFileSelection}} struct contains the following \code{\link{GtkWidget}} fields:

\describe{
\item{\verb{dirList}}{[\code{\link{GtkWidget}}] }
\item{\verb{fileList}}{[\code{\link{GtkWidget}}] }
\item{\verb{selectionEntry}}{[\code{\link{GtkWidget}}] }
\item{\verb{selectionText}}{[\code{\link{GtkWidget}}] }
\item{\verb{mainVbox}}{[\code{\link{GtkWidget}}] }
\item{\verb{okButton}}{[\code{\link{GtkWidget}}] }
\item{\verb{cancelButton}}{[\code{\link{GtkWidget}}] the two main buttons that signals should be connected
to in order to perform an action when the user hits either OK or
Cancel.}
\item{\verb{helpButton}}{[\code{\link{GtkWidget}}] }
\item{\verb{historyPulldown}}{[\code{\link{GtkWidget}}] the \code{\link{GtkOptionMenu}} used to create the drop-down
directory history.}
\item{\verb{historyMenu}}{[\code{\link{GtkWidget}}] }
\item{\verb{fileopDialog}}{[\code{\link{GtkWidget}}] }
\item{\verb{fileopEntry}}{[\code{\link{GtkWidget}}] the dialog box used to display the \code{\link{GtkFileSelection}}.
It can be customized by adding/removing widgets from it using the
standard \code{\link{GtkDialog}} functions.}
\item{\verb{fileopFile}}{[character] }
\item{\verb{fileopCDir}}{[\code{\link{GtkWidget}}] }
\item{\verb{fileopDelFile}}{[\code{\link{GtkWidget}}] }
\item{\verb{fileopRenFile}}{[\code{\link{GtkWidget}}] }
\item{\verb{buttonArea}}{[\code{\link{GtkWidget}}] }
\item{\verb{actionArea}}{[\code{\link{GtkWidget}}] the buttons that appear at the top of the file
selection dialog. These "operation buttons" can be hidden and
redisplayed with \code{\link{gtkFileSelectionHideFileopButtons}} and
\code{\link{gtkFileSelectionShowFileopButtons}} respectively.}
}

}}}
\section{Convenient Construction}{\code{gtkFileSelection} is the equivalent of \code{\link{gtkFileSelectionNew}}.}
\section{Properties}{\describe{
\item{\verb{filename} [character : *                : Read / Write]}{

The currently selected filename.  Default value: NULL

}
\item{\verb{select-multiple} [logical : Read / Write]}{

Whether to allow multiple files to be selected.  Default value: FALSE

}
\item{\verb{show-fileops} [logical : Read / Write]}{

Whether buttons for creating/manipulating files should be displayed.  Default value: TRUE

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkFileSelection.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
