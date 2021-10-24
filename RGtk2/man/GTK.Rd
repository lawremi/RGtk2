\alias{GTK}
\name{GTK}
\title{GTK}
\description{The GTK+ library itself contains widgets, that is, GUI components such as \code{\link{GtkButton}} or \code{\link{GtkTextView}}.}
\details{
The RGtk binding to the GTK library consists of the following components:
\describe{
\item{\link{chap-drawing-model}}{    The GTK+ drawing model in detail}
\item{\link{gtk-Filesystem-utilities}}{Functions for working with GIO}
\item{\link{GtkAboutDialog}}{Display information about an application}
\item{\link{gtk-Keyboard-Accelerators}}{Groups of global keyboard accelerators for an entire GtkWindow}
\item{\link{GtkAccelLabel}}{A label which displays an accelerator key on the right of the text}
\item{\link{gtk-Accelerator-Maps}}{Loadable keyboard accelerator specifications}
\item{\link{GtkAccessible}}{Accessibility support for widgets}
\item{\link{GtkAction}}{An action which can be triggered by a menu or toolbar item}
\item{\link{GtkActionGroup}}{A group of actions}
\item{\link{GtkActivatable}}{An interface for activatable widgets}
\item{\link{GtkAdjustment}}{A GtkObject representing an adjustable bounded value}
\item{\link{GtkAlignment}}{A widget which controls the alignment and size of its child}
\item{\link{GtkArrow}}{Displays an arrow}
\item{\link{GtkAspectFrame}}{A frame that constrains its child to a particular aspect ratio}
\item{\link{GtkAssistant}}{A widget used to guide users through multi-step operations}
\item{\link{GtkButtonBox}}{Base class for GtkHButtonBox and GtkVButtonBox}
\item{\link{GtkBin}}{A container with just one child}
\item{\link{GtkBox}}{Base class for box containers}
\item{\link{gtk-gtkbuildable}}{Interface for objects that can be built by GtkBuilder}
\item{\link{GtkBuilder}}{Build an interface from an XML UI definition}
\item{\link{GtkButton}}{A widget that creates a signal when clicked on}
\item{\link{GtkCalendar}}{Displays a calendar and allows the user to select a date}
\item{\link{GtkCellEditable}}{Interface for widgets which can are used for editing cells}
\item{\link{GtkCellLayout}}{An interface for packing cells}
\item{\link{GtkCellRenderer}}{An object for rendering a single cell on a GdkDrawable}
\item{\link{GtkCellRendererAccel}}{Renders a keyboard accelerator in a cell}
\item{\link{GtkCellRendererCombo}}{Renders a combobox in a cell}
\item{\link{GtkCellRendererPixbuf}}{Renders a pixbuf in a cell}
\item{\link{GtkCellRendererProgress}}{Renders numbers as progress bars}
\item{\link{GtkCellRendererSpin}}{Renders a spin button in a cell}
\item{\link{GtkCellRendererSpinner}}{Renders a spinning animation in a cell}
\item{\link{GtkCellRendererText}}{Renders text in a cell}
\item{\link{GtkCellRendererToggle}}{Renders a toggle button in a cell}
\item{\link{GtkCellView}}{A widget displaying a single row of a GtkTreeModel}
\item{\link{GtkCheckButton}}{Create widgets with a discrete toggle button}
\item{\link{gtk-gtkcheckmenuitem}}{A menu item with a check box}
\item{\link{gtk-Clipboards}}{Storing data on clipboards}
\item{\link{GtkCList}}{A multi-columned scrolling list widget}
\item{\link{GtkColorButton}}{A button to launch a color selection dialog}
\item{\link{GtkColorSelection}}{A widget used to select a color}
\item{\link{GtkColorSelectionDialog}}{A standard dialog box for selecting a color}
\item{\link{GtkCombo}}{A text entry field with a dropdown list}
\item{\link{GtkComboBox}}{A widget used to choose from a list of items}
\item{\link{GtkComboBoxEntry}}{A text entry field with a dropdown list}
\item{\link{GtkContainer}}{Base class for widgets which contain other widgets}
\item{\link{GtkCTree}}{A widget displaying a hierarchical tree}
\item{\link{GtkCurve}}{Allows direct editing of a curve}
\item{\link{GtkDialog}}{Create popup windows}
\item{\link{gtk-Drag-and-Drop}}{Functions for controlling drag and drop handling}
\item{\link{GtkDrawingArea}}{A widget for custom user interface elements}
\item{\link{GtkEditable}}{Interface for text-editing widgets}
\item{\link{GtkEntry}}{A single line text entry field}
\item{\link{GtkEntryBuffer}}{Text buffer for GtkEntry}
\item{\link{GtkEntryCompletion}}{Completion functionality for GtkEntry}
\item{\link{gtk-Standard-Enumerations}}{Public enumerated types used throughout GTK+}
\item{\link{GtkEventBox}}{A widget used to catch events for widgets which do not have their own window}
\item{\link{GtkExpander}}{A container which can hide its child}
\item{\link{GtkFileChooser}}{File chooser interface used by GtkFileChooserWidget and GtkFileChooserDialog}
\item{\link{GtkFileChooserButton}}{A button to launch a file selection dialog}
\item{\link{GtkFileChooserDialog}}{A file chooser dialog, suitable for "File/Open" or "File/Save" commands}
\item{\link{GtkFileChooserWidget}}{File chooser widget that can be embedded in other widgets}
\item{\link{gtk-gtkfilefilter}}{A filter for selecting a file subset}
\item{\link{GtkFileSelection}}{Prompt the user for a file or directory name}
\item{\link{GtkFixed}}{A container which allows you to position widgets at fixed coordinates}
\item{\link{GtkFontButton}}{A button to launch a font selection dialog}
\item{\link{GtkFontSelection}}{A widget for selecting fonts}
\item{\link{GtkFontSelectionDialog}}{A dialog box for selecting fonts}
\item{\link{GtkFrame}}{A bin with a decorative frame and optional label}
\item{\link{GtkGammaCurve}}{A subclass of GtkCurve for editing gamma curves}
\item{\link{gtk-Graphics-Contexts}}{A shared pool of GdkGC objects}
\item{\link{GtkHandleBox}}{a widget for detachable window portions}
\item{\link{GtkHButtonBox}}{A container for arranging buttons horizontally}
\item{\link{GtkHBox}}{A horizontal container box}
\item{\link{GtkHPaned}}{A container with two panes arranged horizontally}
\item{\link{GtkHRuler}}{A horizontal ruler}
\item{\link{GtkHScale}}{A horizontal slider widget for selecting a value from a range}
\item{\link{GtkHScrollbar}}{A horizontal scrollbar}
\item{\link{GtkHSeparator}}{A horizontal separator}
\item{\link{GtkHSV}}{A 'color wheel' widget}
\item{\link{gtk-Themeable-Stock-Images}}{Manipulating stock icons}
\item{\link{GtkIconTheme}}{Looking up icons by name}
\item{\link{GtkIconView}}{A widget which displays a list of icons in a grid}
\item{\link{GtkImage}}{A widget displaying an image}
\item{\link{GtkImageMenuItem}}{A menu item with an icon}
\item{\link{GtkIMContext}}{Base class for input method contexts}
\item{\link{GtkIMContextSimple}}{An input method context supporting table-based input methods}
\item{\link{GtkIMMulticontext}}{An input method context supporting multiple, loadable input methods}
\item{\link{GtkInfoBar}}{Report important messages to the user}
\item{\link{GtkInputDialog}}{Configure devices for the XInput extension}
\item{\link{GtkInvisible}}{A widget which is not displayed}
\item{\link{GtkItem}}{Abstract base class for GtkMenuItem, GtkListItem and GtkTreeItem}
\item{\link{GtkItemFactory}}{A factory for menus}
\item{\link{GtkLabel}}{A widget that displays a small to medium amount of text}
\item{\link{GtkLayout}}{Infinite scrollable area containing child widgets and/or custom drawing}
\item{\link{GtkLinkButton}}{Create buttons bound to a URL}
\item{\link{GtkList}}{Widget for packing a list of selectable items}
\item{\link{GtkListItem}}{An item in a GtkList}
\item{\link{GtkListStore}}{A list-like data structure that can be used with the GtkTreeView}
\item{\link{gtk-General}}{Library initialization, main event loop, and events}
\item{\link{GtkMenu}}{A menu widget}
\item{\link{GtkMenuBar}}{A subclass widget for GtkMenuShell which holds GtkMenuItem widgets}
\item{\link{GtkMenuItem}}{The widget used for item in menus}
\item{\link{GtkMenuShell}}{A base class for menu objects}
\item{\link{GtkMenuToolButton}}{A GtkToolItem containing a button with an additional dropdown menu}
\item{\link{GtkMessageDialog}}{A convenient message window}
\item{\link{GtkMisc}}{Base class for widgets with alignments and padding}
\item{\link{GtkNotebook}}{A tabbed notebook container}
\item{\link{GtkOffscreenWindow}}{A toplevel container widget used to manage offscreen
   rendering of child widgets.}
\item{\link{GtkOldEditable}}{Base class for text-editing widgets}
\item{\link{GtkOptionMenu}}{A widget used to choose from a list of valid choices}
\item{\link{gtk-Orientable}}{An interface for flippable widgets}
\item{\link{GtkPageSetup}}{Stores page setup information}
\item{\link{GtkPaned}}{Base class for widgets with two adjustable panes}
\item{\link{GtkPaperSize}}{Support for named paper sizes}
\item{\link{GtkPixmap}}{A widget displaying a graphical image or icon}
\item{\link{GtkPlug}}{Toplevel for embedding into other processes}
\item{\link{GtkPreview}}{A widget to display RGB or grayscale data}
\item{\link{GtkPrintContext}}{Encapsulates context for drawing pages}
\item{\link{gtk-High-level-Printing-API}}{High-level Printing API}
\item{\link{GtkPrintSettings}}{Stores print settings}
\item{\link{GtkProgress}}{Base class for GtkProgressBar}
\item{\link{GtkProgressBar}}{A widget which indicates progress visually}
\item{\link{GtkRadioAction}}{An action of which only one in a group can be active}
\item{\link{GtkRadioButton}}{A choice from multiple check buttons}
\item{\link{GtkRadioMenuItem}}{A choice from multiple check menu items}
\item{\link{GtkRadioToolButton}}{A toolbar item that contains a radio button}
\item{\link{GtkRange}}{Base class for widgets which visualize an adjustment}
\item{\link{gtk-Resource-Files}}{Routines for handling resource files}
\item{\link{GtkRecentAction}}{An action of which represents a list of recently used files}
\item{\link{GtkRecentChooser}}{Interface implemented by widgets displaying recently used files}
\item{\link{GtkRecentChooserDialog}}{Displays recently used files in a dialog}
\item{\link{GtkRecentChooserMenu}}{Displays recently used files in a menu}
\item{\link{GtkRecentChooserWidget}}{Displays recently used files}
\item{\link{GtkRecentFilter}}{A filter for selecting a subset of recently used files}
\item{\link{GtkRecentManager}}{Managing Recently Used Files}
\item{\link{GtkRuler}}{Base class for horizontal or vertical rulers}
\item{\link{GtkScale}}{Base class for GtkHScale and GtkVScale}
\item{\link{GtkScaleButton}}{A button which pops up a scale}
\item{\link{GtkScrollbar}}{Base class for GtkHScrollbar and GtkVScrollbar}
\item{\link{GtkScrolledWindow}}{Adds scrollbars to its child widget}
\item{\link{gtk-Selections}}{Functions for handling inter-process communication via selections}
\item{\link{GtkSeparator}}{Base class for GtkHSeparator and GtkVSeparator}
\item{\link{GtkSeparatorMenuItem}}{A separator used in menus}
\item{\link{GtkSeparatorToolItem}}{A toolbar item that separates groups of other toolbar items}
\item{\link{GtkSettings}}{Sharing settings between applications}
\item{\link{GtkSizeGroup}}{Grouping widgets so they request the same size}
\item{\link{GtkSocket}}{Container for widgets from other processes}
\item{\link{GtkSpinButton}}{Retrieve an integer or floating-point number from the user}
\item{\link{GtkSpinner}}{Show a spinner animation}
\item{\link{GtkStatusbar}}{Report messages of minor importance to the user}
\item{\link{GtkStatusIcon}}{Display an icon in the system tray}
\item{\link{gtk-Stock-Items}}{Prebuilt common menu/toolbar items and corresponding icons}
\item{\link{GtkStyle}}{Functions for drawing widget parts}
\item{\link{GtkTable}}{Pack widgets in regular patterns}
\item{\link{GtkTearoffMenuItem}}{A menu item used to tear off and reattach its menu}
\item{\link{gtk-Testing}}{Utilities for testing GTK+ applications}
\item{\link{GtkTextBuffer}}{Stores attributed text for display in a GtkTextView}
\item{\link{GtkTextIter}}{Text buffer iterator}
\item{\link{GtkTextMark}}{A position in the buffer preserved across buffer modifications}
\item{\link{GtkTextTag}}{A tag that can be applied to text in a GtkTextBuffer}
\item{\link{GtkTextTagTable}}{Collection of tags that can be used together}
\item{\link{GtkTextView}}{Widget that displays a GtkTextBuffer}
\item{\link{GtkTipsQuery}}{Displays help about widgets in the user interface}
\item{\link{GtkToggleAction}}{An action which can be toggled between two states}
\item{\link{GtkToggleButton}}{Create buttons which retain their state}
\item{\link{GtkToggleToolButton}}{A GtkToolItem containing a toggle button}
\item{\link{GtkToolbar}}{Create bars of buttons and other widgets}
\item{\link{GtkToolButton}}{A GtkToolItem subclass that displays buttons}
\item{\link{GtkToolItem}}{The base class of widgets that can be added to GtkToolShell}
\item{\link{GtkToolItemGroup}}{A sub container used in a tool palette}
\item{\link{GtkToolPalette}}{A tool palette with categories}
\item{\link{GtkToolShell}}{Interface for containers containing GtkToolItem widgets}
\item{\link{GtkTooltip}}{Add tips to your widgets}
\item{\link{GtkTooltips}}{Add tips to your widgets}
\item{\link{gtk-GtkTreeView-drag-and-drop}}{Interfaces for drag-and-drop support in GtkTreeView}
\item{\link{GtkTreeModel}}{The tree interface used by GtkTreeView}
\item{\link{GtkTreeModelFilter}}{A GtkTreeModel which hides parts of an underlying tree model}
\item{\link{GtkTreeModelSort}}{A GtkTreeModel which makes an underlying tree model sortable}
\item{\link{GtkTreeSelection}}{The selection object for GtkTreeView}
\item{\link{GtkTreeSortable}}{The interface for sortable models used by GtkTreeView}
\item{\link{GtkTreeStore}}{A tree-like data structure that can be used with the GtkTreeView}
\item{\link{GtkTreeView}}{A widget for displaying both trees and lists}
\item{\link{GtkTreeViewColumn}}{A visible column in a GtkTreeView widget}
\item{\link{GtkUIManager}}{Constructing menus and toolbars from an XML description}
\item{\link{GtkVButtonBox}}{A container for arranging buttons vertically}
\item{\link{GtkVBox}}{A vertical container box}
\item{\link{GtkViewport}}{An adapter which makes widgets scrollable}
\item{\link{GtkVolumeButton}}{A button which pops up a volume control}
\item{\link{GtkVPaned}}{A container with two panes arranged vertically}
\item{\link{GtkVRuler}}{A vertical ruler}
\item{\link{GtkVScale}}{A vertical slider widget for selecting a value from a range}
\item{\link{GtkVScrollbar}}{A vertical scrollbar}
\item{\link{GtkVSeparator}}{A vertical separator}
\item{\link{GtkWidget}}{Base class for all widgets}
\item{\link{GtkWindow}}{Toplevel which can contain other widgets}
\item{\link{GtkWindowGroup}}{Limit the effect of grabs}
}
}
\references{\url{https://developer-old.gnome.org/gtk/}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{interface}
