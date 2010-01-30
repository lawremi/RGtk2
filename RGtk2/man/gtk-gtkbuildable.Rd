\alias{gtk-gtkbuildable}
\alias{GtkBuildable}
\name{gtk-gtkbuildable}
\title{GtkBuildable}
\description{Interface for objects that can be built by GtkBuilder}
\section{Methods and Functions}{
\code{\link{gtkBuildableSetName}(object, name)}\cr
\code{\link{gtkBuildableGetName}(object)}\cr
\code{\link{gtkBuildableAddChild}(object, builder, child, type)}\cr
\code{\link{gtkBuildableSetBuildableProperty}(object, builder, name, value)}\cr
\code{\link{gtkBuildableConstructChild}(object, builder, name)}\cr
\code{\link{gtkBuildableCustomTagStart}(object, builder, child, tagname, parser, data)}\cr
\code{\link{gtkBuildableCustomTagEnd}(object, builder, child, tagname, data)}\cr
\code{\link{gtkBuildableCustomFinished}(object, builder, child, tagname, data)}\cr
\code{\link{gtkBuildableParserFinished}(object, builder)}\cr
\code{\link{gtkBuildableGetInternalChild}(object, builder, childname)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----GtkBuildable}}
\section{Implementations}{GtkBuildable is implemented by
 \verb{\link{GtkListItem}},  \verb{\link{GtkBin}},  \verb{\link{GtkTreeView}},  \verb{\link{GtkButtonBox}},  \verb{\link{GtkPaned}},  \verb{\link{GtkColorSelectionDialog}},  \verb{\link{GtkVButtonBox}},  \verb{\link{GtkTearoffMenuItem}},  \verb{\link{GtkEntry}},  \verb{\link{GtkOptionMenu}},  \verb{\link{GtkImage}},  \verb{\link{GtkCalendar}},  \verb{\link{GtkFixed}},  \verb{\link{GtkLinkButton}},  \verb{\link{GtkHButtonBox}},  \verb{\link{GtkInputDialog}},  \verb{\link{GtkRadioButton}},  \verb{\link{GtkVRuler}},  \verb{\link{GtkVSeparator}},  \verb{\link{GtkVBox}},  \verb{\link{GtkCurve}},  \verb{\link{GtkRadioToolButton}},  \verb{\link{GtkHRuler}},  \verb{\link{GtkToggleButton}},  \verb{\link{GtkSeparatorMenuItem}},  \verb{\link{GtkHScale}},  \verb{\link{GtkTable}},  \verb{\link{GtkTreeViewColumn}},  \verb{\link{GtkImageMenuItem}},  \verb{\link{GtkFileChooserButton}},  \verb{\link{GtkCheckButton}},  \verb{\link{GtkRadioMenuItem}},  \verb{\link{GtkMenuShell}},  \verb{\link{GtkStatusbar}},  \verb{\link{GtkDrawingArea}},  \verb{\link{GtkButton}},  \verb{\link{GtkIconView}},  \verb{\link{GtkNotebook}},  \verb{\link{GtkUIManager}},  GtkTree,  \verb{\link{GtkSocket}},  \verb{\link{GtkVScale}},  \verb{\link{GtkProgress}},  \verb{\link{GtkGammaCurve}},  GtkText,  \verb{\link{GtkCList}},  \verb{\link{GtkAlignment}},  \verb{\link{GtkMenuToolButton}},  \verb{\link{GtkMenuItem}},  GtkPageSetupUnixDialog,  \verb{\link{GtkRecentChooserMenu}},  \verb{\link{GtkToolItem}},  \verb{\link{GtkHSeparator}},  \verb{\link{GtkProgressBar}},  \verb{\link{GtkCTree}},  \verb{\link{GtkActionGroup}},  \verb{\link{GtkRange}},  \verb{\link{GtkAssistant}},  \verb{\link{GtkFileSelection}},  \verb{\link{GtkToolbar}},  GtkTreeItem,  \verb{\link{GtkAccelLabel}},  \verb{\link{GtkPreview}},  \verb{\link{GtkRecentChooserDialog}},  \verb{\link{GtkExpander}},  \verb{\link{GtkScale}},  \verb{\link{GtkTreeStore}},  \verb{\link{GtkMessageDialog}},  \verb{\link{GtkSeparator}},  \verb{\link{GtkLayout}},  \verb{\link{GtkFontSelection}},  \verb{\link{GtkCellView}},  \verb{\link{GtkInvisible}},  \verb{\link{GtkWindow}},  \verb{\link{GtkSeparatorToolItem}},  \verb{\link{GtkFileChooserWidget}},  \verb{\link{GtkCheckMenuItem}},  \verb{\link{GtkToolButton}},  \verb{\link{GtkMisc}},  \verb{\link{GtkEventBox}},  \verb{\link{GtkFontButton}},  \verb{\link{GtkEntryCompletion}},  \verb{\link{GtkDialog}},  \verb{\link{GtkHBox}},  \verb{\link{GtkCombo}},  \verb{\link{GtkOldEditable}},  \verb{\link{GtkAspectFrame}},  \verb{\link{GtkAboutDialog}},  \verb{\link{GtkHScrollbar}},  \verb{\link{GtkListStore}},  \verb{\link{GtkScaleButton}},  \verb{\link{GtkRecentChooserWidget}},  \verb{\link{GtkToggleToolButton}},  \verb{\link{GtkComboBox}},  \verb{\link{GtkVScrollbar}},  \verb{\link{GtkFrame}},  \verb{\link{GtkSpinButton}},  \verb{\link{GtkList}},  \verb{\link{GtkLabel}},  \verb{\link{GtkFontSelectionDialog}},  \verb{\link{GtkTipsQuery}},  \verb{\link{GtkColorSelection}},  \verb{\link{GtkItem}},  \verb{\link{GtkWidget}},  \verb{\link{GtkRecentAction}},  \verb{\link{GtkVolumeButton}},  \verb{\link{GtkMenuBar}},  \verb{\link{GtkTextView}},  \verb{\link{GtkArrow}},  \verb{\link{GtkToggleAction}},  \verb{\link{GtkRadioAction}},  \verb{\link{GtkPlug}},  \verb{\link{GtkHPaned}},  \verb{\link{GtkBox}},  \verb{\link{GtkMenu}},  \verb{\link{GtkAction}},  GtkPrintUnixDialog,  \verb{\link{GtkComboBoxEntry}},  \verb{\link{GtkColorButton}},  \verb{\link{GtkPixmap}},  \verb{\link{GtkFileChooserDialog}},  \verb{\link{GtkRuler}},  \verb{\link{GtkVPaned}},  \verb{\link{GtkHandleBox}},  \verb{\link{GtkScrollbar}},  \verb{\link{GtkContainer}},  \verb{\link{GtkSizeGroup}},  \verb{\link{GtkViewport}} and  \verb{\link{GtkScrolledWindow}}.}
\section{Detailed Description}{In order to allow construction from a GtkBuilder 
UI description, an object class must implement the 
GtkBuildable interface. The interface includes methods for setting 
names and properties of objects, parsing custom tags, constructing 
child objects.
  
The GtkBuildable interface is implemented by all widgets and 
many of the non-widget objects that are provided by GTK+. The
main user of this interface is \verb{\link{GtkBuilder}}, there should be
very little need for applications to call any 
\code{gtkBuildable...} functions.}
\section{Structures}{\describe{\item{\verb{GtkBuildable}}{
\emph{undocumented
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/gtk-gtkbuildable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
