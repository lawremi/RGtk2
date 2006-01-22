\alias{GtkFileChooser}
\alias{GtkFileChooserAction}
\alias{GtkFileChooserConfirmation}
\alias{GtkFileChooserError}
\name{GtkFileChooser}
\title{GtkFileChooser}
\description{File chooser interface used by GtkFileChooserWidget and GtkFileChooserDialog}
\section{Methods and Functions}{
\link{gtkFileChooserErrorQuark}()
\link{gtkFileChooserSetAction}(object, action)
\link{gtkFileChooserGetAction}(object)
\link{gtkFileChooserSetLocalOnly}(object, local.only)
\link{gtkFileChooserGetLocalOnly}(object)
\link{gtkFileChooserSetSelectMultiple}(object, select.multiple)
\link{gtkFileChooserGetSelectMultiple}(object)
\link{gtkFileChooserSetShowHidden}(object, show.hidden)
\link{gtkFileChooserGetShowHidden}(object)
\link{gtkFileChooserSetDoOverwriteConfirmation}(object, do.overwrite.confirmation)
\link{gtkFileChooserGetDoOverwriteConfirmation}(object)
\link{gtkFileChooserSetCurrentName}(object, name)
\link{gtkFileChooserGetFilename}(object)
\link{gtkFileChooserSetFilename}(object, filename)
\link{gtkFileChooserSelectFilename}(object, filename)
\link{gtkFileChooserUnselectFilename}(object, filename)
\link{gtkFileChooserSelectAll}(object)
\link{gtkFileChooserUnselectAll}(object)
\link{gtkFileChooserGetFilenames}(object)
\link{gtkFileChooserSetCurrentFolder}(object, filename)
\link{gtkFileChooserGetCurrentFolder}(object)
\link{gtkFileChooserGetUri}(object)
\link{gtkFileChooserSetUri}(object, uri)
\link{gtkFileChooserSelectUri}(object, uri)
\link{gtkFileChooserUnselectUri}(object, uri)
\link{gtkFileChooserGetUris}(object)
\link{gtkFileChooserSetCurrentFolderUri}(object, uri)
\link{gtkFileChooserGetCurrentFolderUri}(object)
\link{gtkFileChooserSetPreviewWidget}(object, preview.widget)
\link{gtkFileChooserGetPreviewWidget}(object)
\link{gtkFileChooserSetPreviewWidgetActive}(object, active)
\link{gtkFileChooserGetPreviewWidgetActive}(object)
\link{gtkFileChooserSetUsePreviewLabel}(object, use.label)
\link{gtkFileChooserGetUsePreviewLabel}(object)
\link{gtkFileChooserGetPreviewFilename}(object)
\link{gtkFileChooserGetPreviewUri}(object)
\link{gtkFileChooserSetExtraWidget}(object, extra.widget)
\link{gtkFileChooserGetExtraWidget}(object)
\link{gtkFileChooserAddFilter}(object, filter)
\link{gtkFileChooserRemoveFilter}(object, filter)
\link{gtkFileChooserListFilters}(object)
\link{gtkFileChooserSetFilter}(object, filter)
\link{gtkFileChooserGetFilter}(object)
\link{gtkFileChooserAddShortcutFolder}(object, folder)
\link{gtkFileChooserRemoveShortcutFolder}(object, folder)
\link{gtkFileChooserListShortcutFolders}(object)
\link{gtkFileChooserAddShortcutFolderUri}(object, uri)
\link{gtkFileChooserRemoveShortcutFolderUri}(object, uri)
\link{gtkFileChooserListShortcutFolderUris}(object)
}
\section{Hierarchy}{\preformatted{  GInterface
   +----GtkFileChooser}}
\section{Implementations}{GtkFileChooser is implemented by
 \code{\link{GtkFileChooserWidget}},  \code{\link{GtkFileChooserButton}} and  \code{\link{GtkFileChooserDialog}}.}
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
	\env{G_FILENAME_ENCODING} environment variable.
	Please see the Glib documentation for more details about this
	variable.
        \emph{	  
	  This means that while you can pass the result of
	  \code{\link{gtkFileChooserGetFilename}} to
	  \code{open(2)} or
	  \code{fopen(3)}, you may not be able to
	  directly set it as the text of a \code{\link{GtkLabel}} widget unless you
	  convert it first to UTF-8, which all GTK+ widgets expect.
	  You should use \code{gFilenameToUtf8()} to convert filenames
	  into strings that can be passed to GTK+ widgets.
	  
      }}
\section{Adding a Preview Widget}{	You can add a custom preview widget to a file chooser and then
	get notification about when the preview needs to be updated.
	To install a preview widget, use
	\code{\link{gtkFileChooserSetPreviewWidget}}.  Then, connect to the
	\code{\link{GtkFileChooser}}::update-preview signal to get notified when
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
}  \emph{	  
	  If you want to set more than one extra widget in the file
	  chooser, you can a container such as a GtkVBox or a GtkTable
	  and include your widgets in it.  Then, set the container as
	  the whole extra widget.
	  
      }}
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
location-popup \tab 		    \kbd{Control}-\kbd{L}-\kbd{/}  ;
		    \kbd{/}  
		 \cr
up-folder \tab 		    \kbd{Alt}-\kbd{Up}-\kbd{Backspace}  \emph{		      
		      Both the individual Up key and the numeric
		      keypad's Up key are supported.
		      
		  }  
		  ;
		    \kbd{Backspace}  
		 \cr
down-folder \tab \kbd{Alt}-\kbd{Down} \cr
home-folder \tab \kbd{Alt}-\kbd{Home} \cr
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
	  \kbd{Control}-\kbd{L}-\kbd{/}-\kbd{/}
	  with a \code{path} string of "" (the empty
	  string); it is also bound to \kbd{/} with a
	  \code{path} string of "\code{/}"
	  (a slash):  this lets you type \kbd{/} and
	  immediately type a path name.
	

	\describe{
\item{\code{chooser} :}{		the object which received the signal.
	      }
\item{\code{path} :}{		default contents for the text entry for the file name
	      }
\item{\code{user.data} :}{		user data set when the signal handler was connected.
	      }
}

	\emph{	    
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
      }
\section{Structures}{\describe{\item{\code{GtkFileChooser}}{\emph{undocumented
}}}}
\section{Enums and Flags}{\describe{
\item{\code{enum GtkFileChooserAction}}{
      Describes whether a \code{\link{GtkFileChooser}} is being used to open
      existing files or to save to a possibly new file.
    

\describe{
\item{\code{GTK_FILE_CHOOSER_ACTION_OPEN (open)}}{Indicates open mode.  The file chooser
    will only let the user pick an existing file.}
\item{\code{GTK_FILE_CHOOSER_ACTION_SAVE (save)}}{Indicates save mode.  The file chooser
    will let the user pick an existing file, or type in a new
    filename.}
\item{\code{GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER (select-folder)}}{Indicates an Open mode for
    selecting folders.  The file chooser will let the user pick an
    existing folder.}
\item{\code{GTK_FILE_CHOOSER_ACTION_CREATE_FOLDER (create-folder)}}{Indicates a mode for creating a
    new folder.  The file chooser will let the user name an existing or
    new folder.}
}

}
\item{\code{enum GtkFileChooserConfirmation}}{
      Used as a return value of handlers for the confirm-overwrite
      signal of a \code{GtkFileChooser}.  This value
      determines whether the file chooser will present the stock
      confirmation dialog, accept the user's choice of a filename, or
      let the user choose another filename.
    

\describe{
\item{\code{GTK_TYPE_FILE_CHOOSER_CONFIRMATION_CONFIRM (confirm)}}{The file chooser will present
    its stock dialog to confirm about overwriting an existing file.}
\item{\code{GTK_TYPE_FILE_CHOOSER_CONFIRMATION_ACCEPT_FILENAME (accept-filename)}}{The file chooser will
    terminate and accept the user's choice of a file name.}
\item{\code{GTK_TYPE_FILE_CHOOSER_CONFIRMATION_SELECT_AGAIN (select-again)}}{The file chooser will
    continue running, so as to let the user select another file name.

    
      Since 2.8
    }
}

}
\item{\code{enum GtkFileChooserError}}{
      These identify the various errors that can occur while calling
      \code{\link{GtkFileChooser}} functions.
    

\describe{
\item{\code{GTK_FILE_CHOOSER_ERROR_NONEXISTENT (nonexistent)}}{Indicates that a file does not exist.}
\item{\code{GTK_FILE_CHOOSER_ERROR_BAD_FILENAME (bad-filename)}}{Indicates a malformed filename.}
}

}
}}
\section{Signals}{\describe{
\item{\code{confirm-overwrite(filechooser, user.data)}}{
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

}
\item{\code{current-folder-changed(chooser, user.data)}}{
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
\item{\code{file-activated(chooser, user.data)}}{
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
\item{\code{selection-changed(chooser, user.data)}}{
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
\item{\code{update-preview(chooser, user.data)}}{
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
must call \code{gtkFileChooserSetPreviewWigetActive()} to inform the file
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
\section{Properties}{\describe{
\item{\code{action} [\code{\link{GtkFileChooserAction}} : Read / Write]}{

The type of operation that the file selector is performing.  Default value: GTK_FILE_CHOOSER_ACTION_OPEN

}
\item{\code{do-overwrite-confirmation} [logical : Read / Write]}{

Whether a file chooser in GTK_FILE_CHOOSER_ACTION_SAVE
will present an overwrite confirmation dialog if the user
selects a file name that already exists.  

  Default value: FALSE  Since  2.8

}
\item{\code{extra-widget} [\code{\link{GtkWidget}} : Read / Write]}{

Application supplied widget for extra options.

}
\item{\code{file-system-backend} [character : Write / Construct Only]}{

Name of file system backend to use.  Default value: NULL

}
\item{\code{filter} [\code{\link{GtkFileFilter}} : Read / Write]}{

The current filter for selecting which files are displayed.

}
\item{\code{local-only} [logical : Read / Write]}{

Whether the selected file(s) should be limited to local file: URLs.  Default value: TRUE

}
\item{\code{preview-widget} [\code{\link{GtkWidget}} : Read / Write]}{

Application supplied widget for custom previews.

}
\item{\code{preview-widget-active} [logical : Read / Write]}{

Whether the application supplied widget for custom previews should be shown.  Default value: TRUE

}
\item{\code{select-multiple} [logical : Read / Write]}{

Whether to allow multiple files to be selected.  Default value: FALSE

}
\item{\code{show-hidden} [logical : Read / Write]}{

Whether the hidden files and folders should be displayed.  Default value: FALSE

}
\item{\code{use-preview-label} [logical : Read / Write]}{

Whether to display a stock label with the name of the previewed file.  Default value: TRUE

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
