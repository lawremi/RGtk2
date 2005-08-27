# reason: we need to hide the text length parameter
PangoGetLogAttrs <-
function(text, level, language, .flush = TRUE, .depwarn = TRUE)
{
        text <- as.character(text)
        level <- as.integer(level)
        checkPtrType(language, "PangoLanguage")

        w <- .RGtkCall("S_pango_get_log_attrs", text, level, language, PACKAGE = "RGtk", .flush = .flush)

        return(invisible(w))
}
pangoGlyphStringGetLogicalWidths <-
function(object, text, embedding.level, .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "PangoGlyphString")
        text <- as.character(text)
        embedding.level <- as.integer(embedding.level)

        w <- .RGtkCall("S_pango_glyph_string_get_logical_widths", object, text, embedding.level, PACKAGE = "RGtk", .flush = .flush)

        return(w)
}

# reason: removed text length and attrs length parameters
PangoBreak <-
function(text, analysis, .flush = TRUE, .depwarn = TRUE)
{
        text <- as.character(text)
        checkPtrType(analysis, "PangoAnalysis")

        w <- .RGtkCall("S_pango_break", text, analysis, PACKAGE = "RGtk", .flush = .flush)

        return(invisible(w))
}

# reason: PangoMatrix is a boxed type that needs to be treated as a reference,
# but there is no way to create one from an API function
# This mimics the aliased static initializer in the API.

pangoMatrixInit <-
function(.flush = TRUE, .depwarn = TRUE)
{
	w <- .RGtkCall("S_pango_matrix_init", PACKAGE = "RGtk", .flush = .flush)
	
	return(w)
}

# Here are some Pango constants
.PangoScale <- 1024
.PangoScaleXXSmall <-  (1 / (1.2 * 1.2 * 1.2))
.PangoScaleXSmall <- (1 / (1.2 * 1.2))
.PangoScaleSmall <- (1 / 1.2)
.PangoScaleMedium <- 1
.PangoScaleLarge <- 1 * 1.2
.PangoScaleXLarge <- 1 * 1.2 * 1.2
.PangoScaleXXLarge <- 1 * 1.2 * 1.2 * 1.2

# pygtk's defs parser should be extended to support arbitrary integer values for enums

PangoWeight <- c( "ultralight" = 200,
	"light" = 300,
	"normal" = 400,
	"semibold" = 600,
	"bold" = 700,
	"ultrabold" = 800,
	"heavy" = 900 )
storage.mode( PangoWeight ) <- 'integer'
.PangoWeight <- c( "PANGO_WEIGHT_ULTRALIGHT" = 200,
	"PANGO_WEIGHT_LIGHT" = 300,
	"PANGO_WEIGHT_NORMAL" = 400,
	"PANGO_WEIGHT_SEMIBOLD" = 600,
	"PANGO_WEIGHT_BOLD" = 700,
	"PANGO_WEIGHT_ULTRABOLD" = 800,
	"PANGO_WEIGHT_HEAVY" = 900 )
storage.mode( .PangoWeight ) <- 'integer'

# reason: now let's handle the functions where the text length is omitted
pangoLayoutSetMarkupWithAccel <-
function(object, markup, accel.marker, .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "PangoLayout")
        markup <- as.character(markup)
        length <- -1
        accel.marker <- as.character(accel.marker)

        w <- .RGtkCall("S_pango_layout_set_markup_with_accel", object, markup, length, accel.marker, PACKAGE = "RGtk", .flush = .flush)

        return(w)
}
PangoParseMarkup <-
function(markup.text, accel.marker, .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
        markup.text <- as.character(markup.text)
        length <- -1
        accel.marker <- as.character(accel.marker)

        w <- .RGtkCall("S_pango_parse_markup", markup.text, length, accel.marker, PACKAGE = "RGtk", .flush = .flush)

        if(.errwarn && !is.null(w$error))
                warning(w$error[["message"]])

        return(w)
}
pangoGlyphStringIndexToX <-
function(object, text, analysis, index, trailing, .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "PangoGlyphString")
        text <- as.character(text)
        length <- nchar(text)
        checkPtrType(analysis, "PangoAnalysis")
        index <- as.integer(index)
        trailing <- as.logical(trailing)

        w <- .RGtkCall("S_pango_glyph_string_index_to_x", object, text, length, analysis, index, trailing, PACKAGE = "RGtk", .flush = .flush)

        return(w)
}
pangoGlyphStringXToIndex <-
function(object, text, analysis, x.pos, .flush = TRUE, .depwarn = TRUE)
{
        checkPtrType(object, "PangoGlyphString")
        text <- as.character(text)
        length <- nchar(text)
        checkPtrType(analysis, "PangoAnalysis")
        x.pos <- as.integer(x.pos)

        w <- .RGtkCall("S_pango_glyph_string_x_to_index", object, text, length, analysis, x.pos, PACKAGE = "RGtk", .flush = .flush)

        return(invisible(w))
}
PangoShape <-
function(text, analysis, glyphs, .flush = TRUE, .depwarn = TRUE)
{
        text <- as.character(text)
        length <- nchar(text)
        checkPtrType(analysis, "PangoAnalysis")
        checkPtrType(glyphs, "PangoGlyphString")

        w <- .RGtkCall("S_pango_shape", text, length, analysis, glyphs, PACKAGE = "RGtk", .flush = .flush)

        return(w)
}

# these are macros that seem simple enough to reimplement in R
# of course, if they change this will also need to be updated

.PangoAscent <- function(x)
{
	rect <- as.PangoRectangle(x)
	-rect$y
}
.PangoDescent <- function(x)
{
	rect <- as.PangoRectangle(x)
	rect$y + rect$height
}
.PangoLBearing <- function(x)
{
	rect <- as.PangoRectangle(x)
	rect$x
}
.PangoRBearing <- function(x)
{
	rect <- as.PangoRectangle(x)
	rect$x + rect$width
}
