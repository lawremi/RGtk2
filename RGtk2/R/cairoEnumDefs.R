CairoStatus<-c("success" = 0,
	"no-memory" = 1,
	"invalid-restore" = 2,
	"invalid-pop-group" = 3,
	"no-current-point" = 4,
	"invalid-matrix" = 5,
	"invalid-status" = 6,
	"null-pointer" = 7,
	"invalid-string" = 8,
	"invalid-path-data" = 9,
	"read-error" = 10,
	"write-error" = 11,
	"surface-finished" = 12,
	"surface-type-mismatch" = 13,
	"pattern-type-mismatch" = 14)
storage.mode(CairoStatus) <- 'integer'
.CairoStatus<-c("CAIRO_STATUS_SUCCESS" = 0,
	"CAIRO_STATUS_NO_MEMORY" = 1,
	"CAIRO_STATUS_INVALID_RESTORE" = 2,
	"CAIRO_STATUS_INVALID_POP_GROUP" = 3,
	"CAIRO_STATUS_NO_CURRENT_POINT" = 4,
	"CAIRO_STATUS_INVALID_MATRIX" = 5,
	"CAIRO_STATUS_INVALID_STATUS" = 6,
	"CAIRO_STATUS_NULL_POINTER" = 7,
	"CAIRO_STATUS_INVALID_STRING" = 8,
	"CAIRO_STATUS_INVALID_PATH_DATA" = 9,
	"CAIRO_STATUS_READ_ERROR" = 10,
	"CAIRO_STATUS_WRITE_ERROR" = 11,
	"CAIRO_STATUS_SURFACE_FINISHED" = 12,
	"CAIRO_STATUS_SURFACE_TYPE_MISMATCH" = 13,
	"CAIRO_STATUS_PATTERN_TYPE_MISMATCH" = 14)
storage.mode(.CairoStatus) <- 'integer'
 

CairoOperator<-c("clear" = 0,
	"source" = 1,
	"over" = 2,
	"in" = 3,
	"out" = 4,
	"atop" = 5,
	"dest" = 6,
	"dest-over" = 7,
	"dest-in" = 8,
	"dest-out" = 9,
	"dest-atop" = 10,
	"xor" = 11,
	"add" = 12,
	"saturate" = 13)
storage.mode(CairoOperator) <- 'integer'
.CairoOperator<-c("CAIRO_OPERATOR_CLEAR" = 0,
	"CAIRO_OPERATOR_SOURCE" = 1,
	"CAIRO_OPERATOR_OVER" = 2,
	"CAIRO_OPERATOR_IN" = 3,
	"CAIRO_OPERATOR_OUT" = 4,
	"CAIRO_OPERATOR_ATOP" = 5,
	"CAIRO_OPERATOR_DEST" = 6,
	"CAIRO_OPERATOR_DEST_OVER" = 7,
	"CAIRO_OPERATOR_DEST_IN" = 8,
	"CAIRO_OPERATOR_DEST_OUT" = 9,
	"CAIRO_OPERATOR_DEST_ATOP" = 10,
	"CAIRO_OPERATOR_XOR" = 11,
	"CAIRO_OPERATOR_ADD" = 12,
	"CAIRO_OPERATOR_SATURATE" = 13)
storage.mode(.CairoOperator) <- 'integer'
 

CairoFillRule<-c("winding" = 0,
	"even-odd" = 1)
storage.mode(CairoFillRule) <- 'integer'
.CairoFillRule<-c("CAIRO_FILL_RULE_WINDING" = 0,
	"CAIRO_FILL_RULE_EVEN_ODD" = 1)
storage.mode(.CairoFillRule) <- 'integer'
 

CairoLineCap<-c("butt" = 0,
	"round" = 1,
	"square" = 2)
storage.mode(CairoLineCap) <- 'integer'
.CairoLineCap<-c("CAIRO_LINE_CAP_BUTT" = 0,
	"CAIRO_LINE_CAP_ROUND" = 1,
	"CAIRO_LINE_CAP_SQUARE" = 2)
storage.mode(.CairoLineCap) <- 'integer'
 

CairoLineJoin<-c("miter" = 0,
	"round" = 1,
	"bevel" = 2)
storage.mode(CairoLineJoin) <- 'integer'
.CairoLineJoin<-c("CAIRO_LINE_JOIN_MITER" = 0,
	"CAIRO_LINE_JOIN_ROUND" = 1,
	"CAIRO_LINE_JOIN_BEVEL" = 2)
storage.mode(.CairoLineJoin) <- 'integer'
 

CairoFontSlant<-c("normal" = 0,
	"italic" = 1,
	"oblique" = 2)
storage.mode(CairoFontSlant) <- 'integer'
.CairoFontSlant<-c("CAIRO_FONT_SLANT_NORMAL" = 0,
	"CAIRO_FONT_SLANT_ITALIC" = 1,
	"CAIRO_FONT_SLANT_OBLIQUE" = 2)
storage.mode(.CairoFontSlant) <- 'integer'
 

CairoFontWeight<-c("normal" = 0,
	"bold" = 1)
storage.mode(CairoFontWeight) <- 'integer'
.CairoFontWeight<-c("CAIRO_FONT_WEIGHT_NORMAL" = 0,
	"CAIRO_FONT_WEIGHT_BOLD" = 1)
storage.mode(.CairoFontWeight) <- 'integer'
 

CairoAntialias<-c("default" = 0,
	"none" = 1,
	"gray" = 2,
	"subpixel" = 3)
storage.mode(CairoAntialias) <- 'integer'
.CairoAntialias<-c("CAIRO_ANTIALIAS_DEFAULT" = 0,
	"CAIRO_ANTIALIAS_NONE" = 1,
	"CAIRO_ANTIALIAS_GRAY" = 2,
	"CAIRO_ANTIALIAS_SUBPIXEL" = 3)
storage.mode(.CairoAntialias) <- 'integer'
 

CairoSubpixelOrder<-c("default" = 0,
	"rgb" = 1,
	"bgr" = 2,
	"vrgb" = 3,
	"vbgr" = 4)
storage.mode(CairoSubpixelOrder) <- 'integer'
.CairoSubpixelOrder<-c("CAIRO_SUBPIXEL_ORDER_DEFAULT" = 0,
	"CAIRO_SUBPIXEL_ORDER_RGB" = 1,
	"CAIRO_SUBPIXEL_ORDER_BGR" = 2,
	"CAIRO_SUBPIXEL_ORDER_VRGB" = 3,
	"CAIRO_SUBPIXEL_ORDER_VBGR" = 4)
storage.mode(.CairoSubpixelOrder) <- 'integer'
 

CairoHintStyle<-c("default" = 0,
	"none" = 1,
	"slight" = 2,
	"medium" = 3,
	"full" = 4)
storage.mode(CairoHintStyle) <- 'integer'
.CairoHintStyle<-c("CAIRO_HINT_STYLE_DEFAULT" = 0,
	"CAIRO_HINT_STYLE_NONE" = 1,
	"CAIRO_HINT_STYLE_SLIGHT" = 2,
	"CAIRO_HINT_STYLE_MEDIUM" = 3,
	"CAIRO_HINT_STYLE_FULL" = 4)
storage.mode(.CairoHintStyle) <- 'integer'
 

CairoHintMetrics<-c("default" = 0,
	"off" = 1,
	"on" = 2)
storage.mode(CairoHintMetrics) <- 'integer'
.CairoHintMetrics<-c("CAIRO_HINT_METRICS_DEFAULT" = 0,
	"CAIRO_HINT_METRICS_OFF" = 1,
	"CAIRO_HINT_METRICS_ON" = 2)
storage.mode(.CairoHintMetrics) <- 'integer'
 

CairoPathDataType<-c("move-to" = 0,
	"line-to" = 1,
	"curve-to" = 2,
	"close-path" = 3)
storage.mode(CairoPathDataType) <- 'integer'
.CairoPathDataType<-c("CAIRO_PATH_MOVE_TO" = 0,
	"CAIRO_PATH_LINE_TO" = 1,
	"CAIRO_PATH_CURVE_TO" = 2,
	"CAIRO_PATH_CLOSE_PATH" = 3)
storage.mode(.CairoPathDataType) <- 'integer'
 

CairoFormat<-c("argb32" = 0,
	"rgb24" = 1,
	"a8" = 2,
	"a1" = 3)
storage.mode(CairoFormat) <- 'integer'
.CairoFormat<-c("CAIRO_FORMAT_ARGB32" = 0,
	"CAIRO_FORMAT_RGB24" = 1,
	"CAIRO_FORMAT_A8" = 2,
	"CAIRO_FORMAT_A1" = 3)
storage.mode(.CairoFormat) <- 'integer'
 

CairoExtend<-c("none" = 0,
	"repeat" = 1,
	"reflect" = 2)
storage.mode(CairoExtend) <- 'integer'
.CairoExtend<-c("CAIRO_EXTEND_NONE" = 0,
	"CAIRO_EXTEND_REPEAT" = 1,
	"CAIRO_EXTEND_REFLECT" = 2)
storage.mode(.CairoExtend) <- 'integer'
 

CairoFilter<-c("fast" = 0,
	"good" = 1,
	"best" = 2,
	"nearest" = 3,
	"bilinear" = 4,
	"gaussian" = 5)
storage.mode(CairoFilter) <- 'integer'
.CairoFilter<-c("CAIRO_FILTER_FAST" = 0,
	"CAIRO_FILTER_GOOD" = 1,
	"CAIRO_FILTER_BEST" = 2,
	"CAIRO_FILTER_NEAREST" = 3,
	"CAIRO_FILTER_BILINEAR" = 4,
	"CAIRO_FILTER_GAUSSIAN" = 5)
storage.mode(.CairoFilter) <- 'integer'
 

