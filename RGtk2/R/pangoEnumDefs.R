PangoAttrType<-c("invalid" = 0,
	"language" = 1,
	"family" = 2,
	"style" = 3,
	"weight" = 4,
	"variant" = 5,
	"stretch" = 6,
	"size" = 7,
	"font-desc" = 8,
	"foreground" = 9,
	"background" = 10,
	"underline" = 11,
	"strikethrough" = 12,
	"rise" = 13,
	"shape" = 14,
	"scale" = 15)
storage.mode(PangoAttrType) <- 'integer'
class(PangoAttrType) <- 'enums' 

PangoUnderline<-c("none" = 0,
	"single" = 1,
	"double" = 2,
	"low" = 3)
storage.mode(PangoUnderline) <- 'integer'
class(PangoUnderline) <- 'enums' 

PangoCoverageLevel<-c("none" = 0,
	"fallback" = 1,
	"approximate" = 2,
	"exact" = 3)
storage.mode(PangoCoverageLevel) <- 'integer'
class(PangoCoverageLevel) <- 'enums' 

PangoRenderPart<-c("foreground" = 0,
	"background" = 1,
	"underline" = 2,
	"strikethrough" = 3)
storage.mode(PangoRenderPart) <- 'integer'
class(PangoRenderPart) <- 'enums' 

PangoStyle<-c("normal" = 0,
	"oblique" = 1,
	"italic" = 2)
storage.mode(PangoStyle) <- 'integer'
class(PangoStyle) <- 'enums' 

PangoVariant<-c("normal" = 0,
	"small-caps" = 1)
storage.mode(PangoVariant) <- 'integer'
class(PangoVariant) <- 'enums' 

PangoWeight<-c("ultralight" = 200,
	"light" = 300,
	"normal" = 400,
	"semibold" = 600,
	"bold" = 700,
	"ultrabold" = 800,
	"heavy" = 900)
storage.mode(PangoWeight) <- 'integer'
class(PangoWeight) <- 'enums' 

PangoStretch<-c("ultra-condensed" = 0,
	"extra-condensed" = 1,
	"condensed" = 2,
	"semi-condensed" = 3,
	"normal" = 4,
	"semi-expanded" = 5,
	"expanded" = 6,
	"extra-expanded" = 7,
	"ultra-expanded" = 8)
storage.mode(PangoStretch) <- 'integer'
class(PangoStretch) <- 'enums' 

PangoAlignment<-c("left" = 0,
	"center" = 1,
	"right" = 2)
storage.mode(PangoAlignment) <- 'integer'
class(PangoAlignment) <- 'enums' 

PangoWrapMode<-c("word" = 0,
	"char" = 1)
storage.mode(PangoWrapMode) <- 'integer'
class(PangoWrapMode) <- 'enums' 

PangoTabAlign<-c("left" = 0)
storage.mode(PangoTabAlign) <- 'integer'
class(PangoTabAlign) <- 'enums' 

PangoDirection<-c("ltr" = 0,
	"rtl" = 1,
	"ttb-ltr" = 2,
	"ttb-rtl" = 3)
storage.mode(PangoDirection) <- 'integer'
class(PangoDirection) <- 'enums' 

PangoEllipsizeMode<-c("none" = 0,
	"start" = 1,
	"middle" = 2,
	"end" = 3)
storage.mode(PangoEllipsizeMode) <- 'integer'
class(PangoEllipsizeMode) <- 'enums' 

PangoFontMask<-c("family" = 1,
	"style" = 2,
	"variant" = 4,
	"weight" = 8,
	"stretch" = 16,
	"size" = 32)
storage.mode(PangoFontMask) <- 'numeric'
class(PangoFontMask) <- 'flags' 

