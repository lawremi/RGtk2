\alias{GtkFileChooser}
\alias{GtkFileChooserAction}
\alias{GtkFileChooserConfirmation}
\alias{GtkFileChooserError}
\name{GtkFileChooser}
\title{GtkFileChooser}
\description{File chooser interface used by GtkFileChooserWidget and GtkFileChooserDialog}
\section{Methods and Functions}{
\code{\link{gtkFileChooserSetAction}(object, action)}\cr
\code{\link{gtkFileChooserGetAction}(object)}\cr
\code{\link{gtkFileChooserSetLocalOnly}(object, local.only)}\cr
\code{\link{gtkFileChooserGetLocalOnly}(object)}\cr
\code{\link{gtkFileChooserSetSelectMultiple}(object, select.multiple)}\cr
\code{\link{gtkFileChooserGetSelectMultiple}(object)}\cr
\code{\link{gtkFileChooserSetShowHidden}(object, show.hidden)}\cr
\code{\link{gtkFileChooserGetShowHidden}(object)}\cr
\code{\link{gtkFileChooserSetDoOverwriteConfirmation}(object, do.overwrite.confirmation)}\cr
\code{\link{gtkFileChooserGetDoOverwriteConfirmation}(object)}\cr
\code{\link{gtkFileChooserSetCurrentName}(object, name)}\cr
\code{\link{gtkFileChooserGetFilename}(object)}\cr
\code{\link{gtkFileChooserSetFilename}(object, filename)}\cr
\code{\link{gtkFileChooserSelectFilename}(object, filename)}\cr
\code{\link{gtkFileChooserUnselectFilename}(object, filename)}\cr
\code{\link{gtkFileChooserSelectAll}(object)}\cr
\code{\link{gtkFileChooserUnselectAll}(object)}\cr
\code{\link{gtkFileChooserGetFilenames}(object)}\cr
\code{\link{gtkFileChooserSetCurrentFolder}(object, filename)}\cr
\code{\link{gtkFileChooserGetCurrentFolder}(object)}\cr
\code{\link{gtkFileChooserGetUri}(object)}\cr
\code{\link{gtkFileChooserSetUri}(object, uri)}\cr
\code{\link{gtkFileChooserSelectUri}(object, uri)}\cr
\code{\link{gtkFileChooserUnselectUri}(object, uri)}\cr
\code{\link{gtkFileChooserGetUris}(object)}\cr
\code{\link{gtkFileChooserSetCurrentFolderUri}(object, uri)}\cr
\code{\link{gtkFileChooserGetCurrentFolderUri}(object)}\cr
\code{\link{gtkFileChooserSetPreviewWidget}(object, preview.widget)}\cr
\code{\link{gtkFileChooserGetPreviewWidget}(object)}\cr
\code{\link{gtkFileChooserSetPreviewWidgetActive}(object, active)}\cr
\code{\link{gtkFileChooserGetPreviewWidgetActive}(object)}\cr
\code{\link{gtkFileChooserSetUsePreviewLabel}(object, use.label)}\cr
\code{\link{gtkFileChooserGetUsePreviewLabel}(object)}\cr
\code{\link{gtkFileChooserGetPreviewFilename}(object)}\cr
\code{\link{gtkFileChooserGetPreviewUri}(object)}\cr
\code{\link{gtkFileChooserSetExtraWidget}(object, extra.widget)}\cr
\code{\link{gtkFileChooserGetExtraWidget}(object)}\cr
\code{\link{gtkFileChooserAddFilter}(object, filter)}\cr
\code{\link{gtkFileChooserRemoveFilter}(object, filter)}\cr
\code{\link{gtkFileChooserListFilters}(object)}\cr
\code{\link{gtkFileChooserSetFilter}(object, filter)}\cr
\code{\link{gtkFileChooserGetFilter}(object)}\cr
\code{\link{gtkFileChooserAddShortcutFolder}(object, folder, .errwarn = TRUE)}\cr
\code{\link{gtkFileChooserRemoveShortcutFolder}(object, folder, .errwarn = TRUE)}\cr
\code{\link{gtkFileChooserListShortcutFolders}(object)}\cr
\code{\link{gtkFileChooserAddShortcutFolderUri}(object, uri, .errwarn = TRUE)}\cr
\code{\link{gtkFileChooserRemoveShortcutFolderUri}(object, uri, .errwarn = TRUE)}\cr
\code{\link{gtkFileChooserListShortcutFolderUris}(object)}\cr
}
\section{Hierarchy}{\preformatted{  GInterface
   +----GtkFileChooser}}
\section{Implementations}{GtkFileChooser is implemented by
 \code{\link{GtkFileChooserButton}},  \code{\link{GtkFileChooserWidget}} and  \code{\link{GtkFileChooserDialog}}.}
\section{Detailed Description}{      \code{\link{GtkFileChooser}} is an interface that can be implemented by file
      selection widgets.  In GTK+, the main objects that implement this
      interface are \code{\link{GtkFileChooserWidget}}, \code{\link{GtkFileChooserDialog}}, and
      \code{\link{GtkFileChooserButton}}.  You do not need to write an object that
      implements the \code{\link{GtkFileChooser}} interface unless you are trying to
      adapt an existing file selector to expose a standard programming
      interface.
      
      \code{\link{GtkFileChooser}} allows for shortcuts to various places in the filesystem.
      In the default implementation these are displayed in the left pane. It
      may be a bit confusing at first taht these shortcuts come from various 
      sources and in various flavours, so lets explain the terminology here:
      \describe{
\item{Bookmarks}{             are created by the user, by dragging folders from the 
             right pane to the left pane, or by using the "Add". Bookmarks
             can be renamed and deleted by the user.
           }
\item{Shortcuts}{ 
             can be provided by the application or by the underlying filesystem
             abstraction (e.g. both the gnome-vfs and the Windows filesystems 
             provide "Desktop" shortcuts). Shortcuts cannot be modified by the 
             user.
           }
\item{Volumes}{             are provided by the underlying filesystem abstraction. They are
             the "roots" of the filesystem. 
           }
}}
\section{File Names and Encodings}{	When the user is finished selecting files in a
	\code{\link{GtkFileChooser}}, your program can get the selected names
	either as filenames or as URIs.  For URIs, the normal escaping
	rules are applied if the URI contains non-ASCII characters.
	However, filenames are \emph{always} returned in
	the character set specified by the
	\env{G\_FILENAME\_ENCODING} environment variable.
	Please see the Glib documentation for more details about this
	variable.
        \strong{PLEASE NOTE:} 	  
	  This means that while you can pass the result of
	  \code{\link{gtkFileChooserGetFilename}} to
	  \code{open(2)} or
	  \code{fopen(3)}, you may not be able to
	  directly set it as the text of a \code{\link{GtkLabel}} widget unless you
	  convert it first to UTF-8, which all GTK+ widgets expect.
	  You should use \code{gFilenameToUtf8()} to convert filenames
	  into strings that can be passed to GTK+ widgets.
	  
      }
\section{Adding a Preview Widget}{	You can add a custom preview widget to a file chooser and then
	get notification about when the preview needs to be updated.
	To install a preview widget, use
	\code{\link{gtkFileChooserSetPreviewWidget}}.  Then, connect to the
	\code{::update-preview} signal to get notified when
	you need to update the contents of the preview.
        
	Your callback should use
	\code{\link{gtkFileChooserGetPreviewFilename}} to see what needs
	previewing.  Once you have generated the preview for the
	corresponding file, you must call
	\code{\link{gtkFileChooserSetPreviewWidgetActive}} with a boolean
	flag that indicates whether your callback could successfully
	generate a preview.
        \preformatted{
update_preview_cb <- function(file_chooser, preview)
{
  filename <- file_chooser$getPreviewFilename()

  pixbuf <- gdkPixbuf(file=filename, w=128, h=128)[[1]]
  have_preview <- !is.null(pixbuf)

  preview$setFromPixbuf(pixbuf)

  file_chooser$setPreviewWidgetActive(have_preview)
}

preview <- gtkImage()
my_file_chooser$setPreviewWidget(preview)
gSignalConnect(my_file_chooser, "update-preview", update_preview_cb, preview)
}}
\section{Adding Extra Widgets}{	You can add extra widgets to a file chooser to provide options
	that are not present in the default design.  For example, you
	can add a toggle button to give the user the option to open a
	file in read-only mode.  You can use
	\code{\link{gtkFileChooserSetExtraWidget}} to insert additional
	widgets in a file chooser.
        \preformatted{
toggle <- gtkCheckButton("Open file read-only")
my_file_chooser$setExtraWidget(toggle)
}  \strong{PLEASE NOTE:} 	  
	  If you want to set more than one extra widget in the file
	  chooser, you can a container such as a GtkVBox or a GtkTable
	  and include your widgets in it.  Then, set the container as
	  the whole extra widget.
	  
      }
\section{Key Bindings}{	Internally, GTK+ implements a file chooser's graphical user
	interface with the private
	\code{GtkFileChooserDefaultClass}.  This
	widget has several key
	bindings and their associated signals.  This section
	describes the available key binding signals.
        
	\emph{GtkFileChooser key binding example}

	
	  The default keys that activate the key-binding signals in
	  \code{GtkFileChooserDefaultClass} are as
	  follows:
	

	\tabular{ll}{
Signal name \tab Default key combinations \cr
location-popup \tab 		    \kbd{Control}-\kbd{L}-\kbd{/}-\kbd{~}   (empty path);
		    \kbd{/}   (path of "/")  \strong{PLEASE NOTE:} 		      
		      Both the individual \kbd{/} key and the
		      numeric keypad's "divide" key are supported.
		      
		    ;
		    \kbd{~}   (path of "~")
		 \cr
up-folder \tab 		    \kbd{Alt}-\kbd{Up}-\kbd{Backspace}  \strong{PLEASE NOTE:} 		      
		      Both the individual Up key and the numeric
		      keypad's Up key are supported.
		      
		    
		  ;
		    \kbd{Backspace}  
		 \cr
down-folder \tab \kbd{Alt}-\kbd{Down} \cr
home-folder \tab \kbd{Alt}-\kbd{Home} \cr
desktop-folder \tab \kbd{Alt}-\kbd{D} \cr
quick-bookmark \tab \kbd{Alt}-\kbd{1}   through   \kbd{Alt}-\kbd{0} \cr
}

	
	  You can change these defaults to something else.  For
	  example, to add a \kbd{Shift} modifier to a few
	  of the default bindings, you can include the following
	  fragment in your \file{.gtkrc-2.0} file:
	

	\preformatted{binding "my-own-gtkfilechooser-bindings" {
	bind "<Alt><Shift>Up" {
		"up-folder" ()
	}
	bind "<Alt><Shift>Down" {
		"down-folder" ()
	}
	bind "<Alt><Shift>Home" {
		"home-folder" ()
	}
}

class "GtkFileChooserDefault" binding "my-own-gtkfilechooser-bindings"
	
}
        
	\emph{The "GtkFileChooserDefault::location-popup" signal}

	\preformatted{          void user_function (GtkFileChooserDefault *chooser,
                              const char            *path,
                                gpointer   user_data);
	
}

	
	  This is used to make the file chooser show a "Location"
	  dialog which the user can use to manually type the name of
	  the file he wishes to select.  The
	  \code{path} argument is a string that gets
	  put in the text entry for the file name.  By default this is bound to
	  \kbd{Control}-\kbd{L}-\kbd{/}-\kbd{/}-\kbd{~}
	  with a \code{path} string of "" (the empty
	  string).  It is also bound to \kbd{/} with a
	  \code{path} string of "\code{/}"
	  (a slash):  this lets you type \kbd{/} and
	  immediately type a path name.  On Unix systems, this is bound to
	  \kbd{~} (tilde) with a \code{path} string
	  of "~" itself for access to home directories.
	

	\describe{
\item{\code{chooser} :}{		the object which received the signal.
	      }
\item{\code{path} :}{		default contents for the text entry for the file name
	      }
\item{\code{user.data} :}{		user data set when the signal handler was connected.
	      }
}

	\strong{PLEASE NOTE:} 	    
	    You can create your own bindings for the
	    \code{location-popup} signal with custom
	    \code{path} strings, and have a crude form
	    of easily-to-type bookmarks.  For example, say you access
	    the path \file{/home/username/misc} very
	    frequently.  You could then create an \kbd{Alt}-\kbd{M}
	    shortcut by including the following in your
	    \file{.gtkrc-2.0}:
	    

	    \preformatted{binding "misc-shortcut" {
	bind "<Alt>M" {
		"location-popup" ("/home/username/misc")
	}
}

class "GtkFileChooserDefault" binding "misc-shortcut"
	  
}  
	
        
	\emph{The "GtkFileChooserDefault::up-folder" signal}

	\preformatted{          void user_function (GtkFileChooserDefault *chooser,
                                gpointer   user_data);
	
}

	
	  This is used to make the file chooser go to the parent of
	  the current folder in the file hierarchy.  By default this
	  is bound to \kbd{Backspace} and
	  \kbd{Alt}-\kbd{Up}
	  (the Up key in the numeric keypad also works).
	

	\describe{
\item{\code{chooser} :}{		the object which received the signal.
	      }
\item{\code{user.data} :}{		user data set when the signal handler was connected.
	      }
}
        
	\emph{The "GtkFileChooserDefault::down-folder" signal}

	\preformatted{          void user_function (GtkFileChooserDefault *chooser,
                                gpointer   user_data);
	
}

	
	  This is used to make the file chooser go to a child of the
	  current folder in the file hierarchy.  The subfolder that
	  will be used is displayed in the path bar widget of the file
	  chooser.  For example, if the path bar is showing
	  "/foo/\emph{bar/}baz", then this will cause
	  the file chooser to switch to the "baz" subfolder.  By
	  default this is bound to
	  \kbd{Alt}-\kbd{Down}
	  (the Down key in the numeric keypad also works).
	

	\describe{
\item{\code{chooser} :}{		the object which received the signal.
	      }
\item{\code{user.data} :}{		user data set when the signal handler was connected.
	      }
}
        
	\emph{The "GtkFileChooserDefault::home-folder" signal}

	\preformatted{          void user_function (GtkFileChooserDefault *chooser,
                                gpointer   user_data);
	
}

	
	  This is used to make the file chooser show the user's home
	  folder in the file list.  By default this is bound to
	  \kbd{Alt}-\kbd{Home}
	  (the Home key in the numeric keypad also works).
	

	\describe{
\item{\code{chooser} :}{		the object which received the signal.
	      }
\item{\code{user.data} :}{		user data set when the signal handler was connected.
	      }
}
        
	\emph{The "GtkFileChooserDefault::desktop-folder" signal}

	\preformatted{          void user_function (GtkFileChooserDefault *chooser,
                                gpointer   user_data);
	
}

	
	  This is used to make the file chooser show the user's Desktop
	  folder in the file list.  By default this is bound to
	  \kbd{Alt}-\kbd{D}.
	

	\describe{
\item{\code{chooser} :}{		the object which received the signal.
	      }
\item{\code{user.data} :}{		user data set when the signal handler was connected.
	      }
}
        
	\emph{The "GtkFileChooserDefault::quick-bookmark" signal}

	\preformatted{          void user_function (GtkFileChooserDefault *chooser,
                              gint bookmark_index,
                                gpointer   user_data);
	
}

	
	  This is used to make the file chooser switch to the bookmark
	  specified in the \code{bookmark.index} parameter.
	  For example, if you have three bookmarks, you can pass 0, 1, 2 to
	  this signal to switch to each of them, respectively.  By default this is bound to
	  \kbd{Alt}-\kbd{1},
	  \kbd{Alt}-\kbd{2}, 
	  etc. until
	  \kbd{Alt}-\kbd{0}.  Note
	  that in the default binding,
	  that \kbd{Alt}-\kbd{1} is
	  actually defined to switch to the bookmark at index 0, and so on
	  successively;
	  \kbd{Alt}-\kbd{0} is
	  defined to switch to the bookmark at index 10.
	

	\describe{
\item{\code{chooser} :}{		the object which received the signal.
	      }
\item{\code{bookmark.indes} :}{		index of the bookmark to switch to; the indices start at 0.
	      }
\item{\code{user.data} :}{		user data set when the signal handler was connected.
	      }
}
      }
\section{Structures}{\describe{\item{\code{GtkFileChooser}}{
\emph{undocumented
}

}}}
\section{Enums and Flags}{\describe{
\item{\code{GtkFileChooserAction}}{
      Describes whether a \code{\link{GtkFileChooser}} is being used to open
      existing files or to save to a possibly new file.
    

\describe{
\item{\code{open}}{Indicates open mode.  The file chooser
    will only let the user pick an existing file.}
\item{\code{save}}{Indicates save mode.  The file chooser
    will let the user pick an existing file, or type in a new
    filename.}
\item{\code{select-folder}}{Indicates an Open mode for
    selecting folders.  The file chooser will let the user pick an
    existing folder.}
\item{\code{create-folder}}{Indicates a mode for creating a
    new folder.  The file chooser will let the user name an existing or
    new folder.}
}

}
\item{\code{GtkFileChooserConfirmation}}{
      Used as a return value of handlers for the confirm-overwrite
      signal of a \code{GtkFileChooser}.  This value
      determines whether the file chooser will present the stock
      confirmation dialog, accept the user's choice of a filename, or
      let the user choose another filename.
    

\describe{
\item{\code{confirm}}{The file chooser will present
    its stock dialog to confirm about overwriting an existing file.}
\item{\code{accept-filename}}{The file chooser will
    terminate and accept the user's choice of a file name.}
\item{\code{select-again}}{The file chooser will
    continue running, so as to let the user select another file name.

    
      Since 2.8
    }
}

}
\item{\code{GtkFileChooserError}}{
      These identify the various errors that can occur while calling
      \code{\link{GtkFileChooser}} functions.
    

\describe{
\item{\code{nonexistent}}{Indicates that a file does not exist.}
\item{\code{bad-filename}}{Indicates a malformed filename.}
}

}
}}
\section{Signals}{\describe{
\item{\code{The (filechooser, user.data)}}{
      This signal gets emitted whenever it is appropriate to present a
      confirmation dialog when the user has selected a file name that
      already exists.  The signal only gets emitted when the file
      chooser is in \code{GTK_FILE_CHOOSER_ACTION_SAVE} mode.
      
      Most applications just need to turn on the do-overwrite-confirmation
      property (or call the
      \code{\link{gtkFileChooserSetDoOverwriteConfirmation}} function), and
      they will automatically get a stock confirmation dialog.
      Applications which need to customize this behavior should do
      that, and also connect to the \code{confirm-overwrite}
      signal.
      
      A signal handler for this signal must return a
      \code{\link{GtkFileChooserConfirmation}} value, which indicates the action to
      take.  If the handler determines that the user wants to select a
      different filename, it should return
      \code{GTK_FILE_CHOOSER_CONFIRMATION_SELECT_AGAIN}.  If it determines
      that the user is satisfied with his choice of file name, it
      should return \code{GTK_FILE_CHOOSER_CONFIRMATION_ACCEPT_FILENAME}.
      On the other hand, if it determines that the stock confirmation
      dialog should be used, it should return
      \code{GTK_FILE_CHOOSER_CONFIRMATION_CONFIRM}.  The following example
      illustrates this.
    

\describe{
\item{\code{filechooser}}{[\code{\link{GtkFileChooser}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

\emph{Returns:} [\code{\link{GtkFileChooserConfirmation}}] \code{\link{GtkFileChooserConfirmation}} value that indicates which
    action to take after emitting the signal.

    
      Since 2.8
    

}
\item{\code{The (chooser, user.data)}}{
This signal is emitted when the current folder in a \code{\link{GtkFileChooser}}
changes.  This can happen due to the user performing some action that
changes folders, such as selecting a bookmark or visiting a folder on the
file list.  It can also happen as a result of calling a function to
explicitly change the current folder in a file chooser.
  
Normally you do not need to connect to this signal, unless you need to keep
track of which folder a file chooser is showing.
  
See also:  \code{\link{gtkFileChooserSetCurrentFolder}},
\code{\link{gtkFileChooserGetCurrentFolder}},
\code{\link{gtkFileChooserSetCurrentFolderUri}},
\code{\link{gtkFileChooserGetCurrentFolderUri}}.  

\describe{
\item{\code{chooser}}{[\code{\link{GtkFileChooser}}]  the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (chooser, user.data)}}{
This signal is emitted when the user "activates" a file in the file
chooser.  This can happen by double-clicking on a file in the file list, or
by pressing \kbd{Enter}.
  
Normally you do not need to connect to this signal.  It is used internally
by \code{\link{GtkFileChooserDialog}} to know when to activate the default button in the
dialog.
  
See also: \code{\link{gtkFileChooserGetFilename}},
\code{\link{gtkFileChooserGetFilenames}}, \code{\link{gtkFileChooserGetUri}},
\code{\link{gtkFileChooserGetUris}}.  

\describe{
\item{\code{chooser}}{[\code{\link{GtkFileChooser}}]  the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (chooser, user.data)}}{
This signal is emitted when there is a change in the set of selected files
in a \code{\link{GtkFileChooser}}.  This can happen when the user modifies the selection
with the mouse or the keyboard, or when explicitly calling functions to
change the selection.
  
Normally you do not need to connect to this signal, as it is easier to wait
for the file chooser to finish running, and then to get the list of
selected files using the functions mentioned below.
  
See also: \code{\link{gtkFileChooserSelectFilename}},
\code{\link{gtkFileChooserUnselectFilename}}, \code{\link{gtkFileChooserGetFilename}},
\code{\link{gtkFileChooserGetFilenames}}, \code{\link{gtkFileChooserSelectUri}},
\code{\link{gtkFileChooserUnselectUri}}, \code{\link{gtkFileChooserGetUri}},
\code{\link{gtkFileChooserGetUris}}.  

\describe{
\item{\code{chooser}}{[\code{\link{GtkFileChooser}}]  the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (chooser, user.data)}}{
This signal is emitted when the preview in a file chooser should be
regenerated.  For example, this can happen when the currently selected file
changes.  You should use this signal if you want your file chooser to have
a preview widget.
  
Once you have installed a preview widget with
\code{\link{gtkFileChooserSetPreviewWidget}}, you should update it when this
signal is emitted.  You can use the functions
\code{\link{gtkFileChooserGetPreviewFilename}} or
\code{\link{gtkFileChooserGetPreviewUri}} to get the name of the file to preview.
Your widget may not be able to preview all kinds of files; your callback
must call \code{\link{gtkFileChooserSetPreviewWidgetActive}} to inform the file
chooser about whether the preview was generated successfully or not.
  
Please see the example code in .
  
See also: \code{\link{gtkFileChooserSetPreviewWidget}},
\code{\link{gtkFileChooserSetPreviewWidgetActive}},
\code{\link{gtkFileChooserSetUsePreviewLabel}},
\code{\link{gtkFileChooserGetPreviewFilename}},
\code{\link{gtkFileChooserGetPreviewUri}}.  

\describe{
\item{\code{chooser}}{[\code{\link{GtkFileChooser}}]  the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkFileChooser.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkFileChooserDialog}}
\code{\link{GtkFileChooserWidget}}
\code{\link{GtkFileChooserButton}}
}
\keyword{internal}
