\alias{GtkTextIter}
\alias{GtkTextCharPredicate}
\alias{GtkTextSearchFlags}
\name{GtkTextIter}
\title{GtkTextIter}
\description{Text buffer iterator}
\section{Methods and Functions}{
\code{\link{gtkTextIterGetBuffer}(object)}\cr
\code{\link{gtkTextIterCopy}(object)}\cr
\code{\link{gtkTextIterGetOffset}(object)}\cr
\code{\link{gtkTextIterGetLine}(object)}\cr
\code{\link{gtkTextIterGetLineOffset}(object)}\cr
\code{\link{gtkTextIterGetLineIndex}(object)}\cr
\code{\link{gtkTextIterGetVisibleLineIndex}(object)}\cr
\code{\link{gtkTextIterGetVisibleLineOffset}(object)}\cr
\code{\link{gtkTextIterGetChar}(object)}\cr
\code{\link{gtkTextIterGetSlice}(object, end)}\cr
\code{\link{gtkTextIterGetText}(object, end)}\cr
\code{\link{gtkTextIterGetVisibleSlice}(object, end)}\cr
\code{\link{gtkTextIterGetVisibleText}(object, end)}\cr
\code{\link{gtkTextIterGetPixbuf}(object)}\cr
\code{\link{gtkTextIterGetMarks}(object)}\cr
\code{\link{gtkTextIterGetToggledTags}(object, toggled.on)}\cr
\code{\link{gtkTextIterGetChildAnchor}(object)}\cr
\code{\link{gtkTextIterBeginsTag}(object, tag = NULL)}\cr
\code{\link{gtkTextIterEndsTag}(object, tag = NULL)}\cr
\code{\link{gtkTextIterTogglesTag}(object, tag = NULL)}\cr
\code{\link{gtkTextIterHasTag}(object, tag)}\cr
\code{\link{gtkTextIterGetTags}(object)}\cr
\code{\link{gtkTextIterEditable}(object, default.setting)}\cr
\code{\link{gtkTextIterCanInsert}(object, default.editability)}\cr
\code{\link{gtkTextIterStartsWord}(object)}\cr
\code{\link{gtkTextIterEndsWord}(object)}\cr
\code{\link{gtkTextIterInsideWord}(object)}\cr
\code{\link{gtkTextIterStartsLine}(object)}\cr
\code{\link{gtkTextIterEndsLine}(object)}\cr
\code{\link{gtkTextIterStartsSentence}(object)}\cr
\code{\link{gtkTextIterEndsSentence}(object)}\cr
\code{\link{gtkTextIterInsideSentence}(object)}\cr
\code{\link{gtkTextIterIsCursorPosition}(object)}\cr
\code{\link{gtkTextIterGetCharsInLine}(object)}\cr
\code{\link{gtkTextIterGetBytesInLine}(object)}\cr
\code{\link{gtkTextIterGetAttributes}(object, values)}\cr
\code{\link{gtkTextIterGetLanguage}(object)}\cr
\code{\link{gtkTextIterIsEnd}(object)}\cr
\code{\link{gtkTextIterIsStart}(object)}\cr
\code{\link{gtkTextIterForwardChar}(object)}\cr
\code{\link{gtkTextIterBackwardChar}(object)}\cr
\code{\link{gtkTextIterForwardChars}(object, count)}\cr
\code{\link{gtkTextIterBackwardChars}(object, count)}\cr
\code{\link{gtkTextIterForwardLine}(object)}\cr
\code{\link{gtkTextIterBackwardLine}(object)}\cr
\code{\link{gtkTextIterForwardLines}(object, count)}\cr
\code{\link{gtkTextIterBackwardLines}(object, count)}\cr
\code{\link{gtkTextIterForwardWordEnds}(object, count)}\cr
\code{\link{gtkTextIterBackwardWordStarts}(object, count)}\cr
\code{\link{gtkTextIterForwardWordEnd}(object)}\cr
\code{\link{gtkTextIterBackwardWordStart}(object)}\cr
\code{\link{gtkTextIterForwardCursorPosition}(object)}\cr
\code{\link{gtkTextIterBackwardCursorPosition}(object)}\cr
\code{\link{gtkTextIterForwardCursorPositions}(object, count)}\cr
\code{\link{gtkTextIterBackwardCursorPositions}(object, count)}\cr
\code{\link{gtkTextIterBackwardSentenceStart}(object)}\cr
\code{\link{gtkTextIterBackwardSentenceStarts}(object, count)}\cr
\code{\link{gtkTextIterForwardSentenceEnd}(object)}\cr
\code{\link{gtkTextIterForwardSentenceEnds}(object, count)}\cr
\code{\link{gtkTextIterForwardVisibleWordEnds}(object, count)}\cr
\code{\link{gtkTextIterBackwardVisibleWordStarts}(object, count)}\cr
\code{\link{gtkTextIterForwardVisibleWordEnd}(object)}\cr
\code{\link{gtkTextIterBackwardVisibleWordStart}(object)}\cr
\code{\link{gtkTextIterForwardVisibleCursorPosition}(object)}\cr
\code{\link{gtkTextIterBackwardVisibleCursorPosition}(object)}\cr
\code{\link{gtkTextIterForwardVisibleCursorPositions}(object, count)}\cr
\code{\link{gtkTextIterBackwardVisibleCursorPositions}(object, count)}\cr
\code{\link{gtkTextIterForwardVisibleLine}(object)}\cr
\code{\link{gtkTextIterBackwardVisibleLine}(object)}\cr
\code{\link{gtkTextIterForwardVisibleLines}(object, count)}\cr
\code{\link{gtkTextIterBackwardVisibleLines}(object, count)}\cr
\code{\link{gtkTextIterSetOffset}(object, char.offset)}\cr
\code{\link{gtkTextIterSetLine}(object, line.number)}\cr
\code{\link{gtkTextIterSetLineOffset}(object, char.on.line)}\cr
\code{\link{gtkTextIterSetLineIndex}(object, byte.on.line)}\cr
\code{\link{gtkTextIterSetVisibleLineIndex}(object, byte.on.line)}\cr
\code{\link{gtkTextIterSetVisibleLineOffset}(object, char.on.line)}\cr
\code{\link{gtkTextIterForwardToEnd}(object)}\cr
\code{\link{gtkTextIterForwardToLineEnd}(object)}\cr
\code{\link{gtkTextIterForwardToTagToggle}(object, tag = NULL)}\cr
\code{\link{gtkTextIterBackwardToTagToggle}(object, tag = NULL)}\cr
\code{\link{gtkTextIterForwardFindChar}(object, pred, user.data = NULL, limit)}\cr
\code{\link{gtkTextIterBackwardFindChar}(object, pred, user.data = NULL, limit)}\cr
\code{\link{gtkTextIterForwardSearch}(object, str, flags, limit = NULL)}\cr
\code{\link{gtkTextIterBackwardSearch}(object, str, flags, limit = NULL)}\cr
\code{\link{gtkTextIterEqual}(object, rhs)}\cr
\code{\link{gtkTextIterCompare}(object, rhs)}\cr
\code{\link{gtkTextIterInRange}(object, start, end)}\cr
\code{\link{gtkTextIterOrder}(object, second)}\cr
}
\section{Hierarchy}{\preformatted{GBoxed
   +----GtkTextIter}}
\section{Detailed Description}{You may wish to begin by reading the text widget
conceptual overview which gives an overview of all the objects and data
types related to the text widget and how they work together.
  }
\section{Structures}{\describe{\item{\verb{GtkTextIter}}{
\emph{undocumented
}

}}}
\section{Enums and Flags}{\describe{\item{\verb{GtkTextSearchFlags}}{
\emph{undocumented
}

\describe{
\item{\verb{visible-only}}{\emph{undocumented
}}
\item{\verb{text-only}}{\emph{undocumented
}}
}

}}}
\section{User Functions}{\describe{\item{\code{GtkTextCharPredicate()}}{
\emph{undocumented
}




}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkTextIter.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
