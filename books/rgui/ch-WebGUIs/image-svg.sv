<svg version="1.1"
     baseProfile="full"
     xmlns="http://www.w3.org/2000/svg"
     xmlns:xlink="http://www.w3.org/1999/xlink"
     xmlns:ev="http://www.w3.org/2001/xml-events"
     width="505.89" height="505.89"
     viewBox="0,0,505.89,505.89"
     font-family="Arial, Helvetica, sans-serif"
     onload='Init(evt)'
>
<title>R SVG Plot</title>
<desc>R SVG Plot with tooltips! (mode=2)</desc>
<script type="text/ecmascript"><![CDATA[
   // This code for a title + two-line tooltip mode displays OK in
   // the default SVG renderers in Firefox and Safari, but does not
   // display in the Batik standalone SVG viewer. It probably needs
   // some declarations to extend XML elements to make it fully
   // compliant with the SVG specs, see man/RSVGTipsDevice.future.Rd.
   var SVGDocument = null;
   var SVGRoot = null;
   var SVGViewBox = null;
   var svgns = 'http://www.w3.org/2000/svg';
   var xlinkns = 'http://www.w3.org/1999/xlink';
   var toolTip = null;
   var TrueCoords = null;
   var tipBox = null;
   var tipText = null;
   var tipTitle = null;
   var tipDesc1 = null;
   var tipDesc2 = null;

   var lastElement = null;
   var titleText = '';
   var titleDesc = '';


   function Init(evt)
   {
      SVGDocument = evt.target.ownerDocument;
      SVGRoot = SVGDocument.documentElement;
      TrueCoords = SVGRoot.createSVGPoint();

      toolTip = SVGDocument.getElementById('ToolTip');
      tipBox = SVGDocument.getElementById('tipbox');
      tipText = SVGDocument.getElementById('tipText');
      tipText.setAttributeNS(null, 'font-family', 'Arial, sans-serif' );
      tipTitle = SVGDocument.getElementById('tipTitle');
      tipDesc1 = SVGDocument.getElementById('tipDesc1');
      tipDesc2 = SVGDocument.getElementById('tipDesc2');
      //window.status = (TrueCoords);

      //create event for object
      SVGRoot.addEventListener('mousemove', ShowTooltip, false);
      SVGRoot.addEventListener('mouseout', HideTooltip, false);
   };


   function GetTrueCoords(evt)
   {
      // find the current zoom level and pan setting, and adjust the reported
      //    mouse position accordingly
      var newScale = SVGRoot.currentScale;
      var translation = SVGRoot.currentTranslate;
      TrueCoords.x = (evt.clientX - translation.x)/newScale;
      TrueCoords.y = (evt.clientY - translation.y)/newScale;
   };


   function HideTooltip( evt )
   {
      toolTip.setAttributeNS(null, 'visibility', 'hidden');
   };


   function ShowTooltip( evt )
   {
      GetTrueCoords( evt );

      var tipScale = 1/SVGRoot.currentScale;
      var textWidth = 0;
      var tspanWidth = 0;
      var boxHeight = 20;

      tipBox.setAttributeNS(null, 'transform', 'scale(' + tipScale + ',' + tipScale + ')' );
      tipText.setAttributeNS(null, 'transform', 'scale(' + tipScale + ',' + tipScale + ')' );

      var titleValue = '';
      var desc1Value = '';
      var desc2Value = '';
      var targetElement = evt.target;
      if ( lastElement != targetElement )
      {
	 var targetTitle = targetElement.getElementsByTagNameNS(svgns, 'title').item(0);
	 if ( targetTitle )
	 {
	    // if there is a 'title' element, use its contents for the tooltip title
	    titleValue = targetTitle.firstChild.nodeValue;
	 }

	 var targetDesc1 = targetElement.getElementsByTagNameNS(svgns, 'desc1').item(0);
	 if ( targetDesc1 )
	 {
	    // if there is a 'desc1' element, use its contents for the tooltip desc1
	    desc1Value = targetDesc1.firstChild.nodeValue;

	    if ( '' == titleValue )
	    {
	       // if there is no 'title' element, use the contents of the 'desc1' element for the tooltip title instead
	       titleValue = desc1Value;
	       desc1Value = '';
	    }
	 }
	 var targetDesc2 = targetElement.getElementsByTagNameNS(svgns, 'desc2').item(0);
	 if ( targetDesc2 )
	 {
	    // if there is a 'desc2' element, use its contents for the tooltip desc
	    desc2Value = targetDesc2.firstChild.nodeValue;
	 }

	 // if there is still no 'title' element, use the contents of the 'id' attribute for the tooltip title
	 if ( '' == titleValue )
	 {
	    titleValue = targetElement.getAttributeNS(null, 'id');
	 }

	 // selectively assign the tooltip title and desc the proper values,
	 //   and hide those which don't have text values
	 //
	 var titleDisplay = 'none';
	 if ( '' != titleValue )
	 {
	    tipTitle.firstChild.nodeValue = titleValue;
	    titleDisplay = 'inline';
	 }
	 tipTitle.setAttributeNS(null, 'display', titleDisplay );

	 var desc1Display = 'none';
	 if ( '' != desc1Value )
	 {
	    tipDesc1.firstChild.nodeValue = desc1Value;
	    desc1Display = 'inline';
	 }
	 tipDesc1.setAttributeNS(null, 'display', desc1Display );

	 var desc2Display = 'none';
	 if ( '' != desc2Value )
	 {
	    tipDesc2.firstChild.nodeValue = desc2Value;
	    desc2Display = 'inline';
	 }
	 tipDesc2.setAttributeNS(null, 'display', desc2Display );
      }

      // if there are tooltip contents to be displayed, adjust the size and position of the box
      if ( '' != titleValue )
      {
	 var xPos = TrueCoords.x + (10 * tipScale);
	 var yPos = TrueCoords.y + (10 * tipScale);

	 //return rectangle around text as SVGRect object
	 var outline = tipText.getBBox();
	 tipBox.setAttributeNS(null, 'width', Number(outline.width) + 10);
	 tipBox.setAttributeNS(null, 'height', Number(outline.height) + 10);

	 // update position
	 toolTip.setAttributeNS(null, 'transform', 'translate(' + xPos + ',' + yPos + ')');
	 toolTip.setAttributeNS(null, 'visibility', 'visible');
      }
   };

]]></script>
<rect width="100%" height="100%" style="fill:#FFFFFF"/>
<line x1="111.25" y1="450.64" x2="422.85" y2="450.64" stroke-width="1px" stroke="#000000" fill="#000000" stroke-opacity="1.000000" fill-opacity="0.000000"/>
<line x1="111.25" y1="450.64" x2="111.25" y2="456.06" stroke-width="1px" stroke="#000000" fill="#000000" stroke-opacity="1.000000" fill-opacity="0.000000"/>
<line x1="215.12" y1="450.64" x2="215.12" y2="456.06" stroke-width="1px" stroke="#000000" fill="#000000" stroke-opacity="1.000000" fill-opacity="0.000000"/>
<line x1="318.98" y1="450.64" x2="318.98" y2="456.06" stroke-width="1px" stroke="#000000" fill="#000000" stroke-opacity="1.000000" fill-opacity="0.000000"/>
<line x1="422.85" y1="450.64" x2="422.85" y2="456.06" stroke-width="1px" stroke="#000000" fill="#000000" stroke-opacity="1.000000" fill-opacity="0.000000"/>
<text transform="translate(107.72,472.31) " fill="#000000"  style="font-size:10pt" >2</text>
<text transform="translate(211.59,472.31) " fill="#000000"  style="font-size:10pt" >3</text>
<text transform="translate(315.46,472.31) " fill="#000000"  style="font-size:10pt" >4</text>
<text transform="translate(419.32,472.31) " fill="#000000"  style="font-size:10pt" >5</text>
<line x1="44.42" y1="442.00" x2="44.42" y2="121.88" stroke-width="1px" stroke="#000000" fill="#000000" stroke-opacity="1.000000" fill-opacity="0.000000"/>
<line x1="44.42" y1="442.00" x2="39.00" y2="442.00" stroke-width="1px" stroke="#000000" fill="#000000" stroke-opacity="1.000000" fill-opacity="0.000000"/>
<line x1="44.42" y1="361.97" x2="39.00" y2="361.97" stroke-width="1px" stroke="#000000" fill="#000000" stroke-opacity="1.000000" fill-opacity="0.000000"/>
<line x1="44.42" y1="281.94" x2="39.00" y2="281.94" stroke-width="1px" stroke="#000000" fill="#000000" stroke-opacity="1.000000" fill-opacity="0.000000"/>
<line x1="44.42" y1="201.91" x2="39.00" y2="201.91" stroke-width="1px" stroke="#000000" fill="#000000" stroke-opacity="1.000000" fill-opacity="0.000000"/>
<line x1="44.42" y1="121.88" x2="39.00" y2="121.88" stroke-width="1px" stroke="#000000" fill="#000000" stroke-opacity="1.000000" fill-opacity="0.000000"/>
<text transform="translate(33.58,449.05)  rotate(-90)" fill="#000000"  style="font-size:10pt" >10</text>
<text transform="translate(33.58,369.02)  rotate(-90)" fill="#000000"  style="font-size:10pt" >15</text>
<text transform="translate(33.58,289.00)  rotate(-90)" fill="#000000"  style="font-size:10pt" >20</text>
<text transform="translate(33.58,208.97)  rotate(-90)" fill="#000000"  style="font-size:10pt" >25</text>
<text transform="translate(33.58,128.94)  rotate(-90)" fill="#000000"  style="font-size:10pt" >30</text>
<polyline points="44.42 , 450.64 483.14 , 450.64 483.14 , 44.42 44.42 , 44.42 44.42 , 450.64 " stroke-width="1px" stroke="#000000" fill="#000000" stroke-opacity="1.000000" fill-opacity="0.000000"/>
<text transform="translate(256.72,493.97) " fill="#000000"  style="font-size:10pt" >wt</text>
<text transform="translate(11.92,260.04)  rotate(-90)" fill="#000000"  style="font-size:10pt" >mpg</text>
<a xlink:href="http://www.google.com"
>
<circle cx="175.65" cy="265.93" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Mazda RX4</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="202.13" cy="265.93" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Mazda RX4 Wag</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="144.49" cy="237.12" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Datsun 710</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="237.45" cy="259.53" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Hornet 4 Drive</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="260.82" cy="302.75" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Hornet Sportabout</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="262.90" cy="312.35" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Valiant</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="274.32" cy="373.17" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Duster 360</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="234.85" cy="211.52" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Merc 240D</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="230.70" cy="237.12" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Merc 230</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="260.82" cy="294.74" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Merc 280</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="260.82" cy="317.15" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Merc 280C</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="326.25" cy="339.56" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Merc 450SE</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="290.94" cy="325.16" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Merc 450SL</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="296.13" cy="358.77" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Merc 450SLC</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="448.82" cy="435.59" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Cadillac Fleetwood</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="466.89" cy="435.59" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Lincoln Continental</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="458.69" cy="366.77" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Chrysler Imperial</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="132.02" cy="83.47" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Fiat 128</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="71.26" cy="115.48" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Honda Civic</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="94.11" cy="59.46" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Toyota Corolla</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="159.55" cy="257.93" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Toyota Corona</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="269.13" cy="353.97" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Dodge Challenger</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="260.30" cy="358.77" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>AMC Javelin</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="302.37" cy="389.18" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Camaro Z28</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="302.88" cy="294.74" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Pontiac Firebird</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="104.50" cy="165.10" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Fiat X1-9</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="125.79" cy="185.91" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Porsche 914-2</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="60.67" cy="115.48" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Lotus Europa</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="232.77" cy="349.16" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Ford Pantera L</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="191.23" cy="286.74" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Ferrari Dino</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="274.32" cy="361.97" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Maserati Bora</title>
</circle>
</a>
<a xlink:href="http://www.google.com"
>
<circle cx="192.27" cy="259.53" r="6.09" stroke-width="1px" stroke="#FFFFFF" fill="#000000" stroke-opacity="0.000000" fill-opacity="1.000000">
<title>Volvo 142E</title>
</circle>
</a>
<g id='ToolTip' opacity='0.8' visibility='hidden' pointer-events='none'>
   <rect id='tipbox' x='0' y='5' width='88' height='20' rx='2' ry='2' fill='white' stroke='black'/>
   <text id='tipText' x='5' y='20' font-family='Arial' font-size='10pt' fill='blue'>
      <tspan id='tipTitle' x='5' font-weight='bold' fill='black'><![CDATA[]]></tspan>
      <tspan id='tipDesc1' x='5' dy='13'><![CDATA[]]></tspan>
      <tspan id='tipDesc2' x='5' dy='13'><![CDATA[]]></tspan>
   </text>
</g>
</svg>
