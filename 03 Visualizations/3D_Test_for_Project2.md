
```r
library(knitr)
knit_hooks$set(webgl = hook_webgl)
```

This works fine.


```r
library(rgl)
x <- sort(rnorm(1000))
y <- rnorm(1000)
z <- rnorm(1000) + atan2(x,y)
plot3d(x, y, z, col=rainbow(1000))
```

<script src="CanvasMatrix.js" type="text/javascript"></script>
<canvas id="testgltextureCanvas" style="display: none;" width="256" height="256">
Your browser does not support the HTML5 canvas element.</canvas>
<!-- ****** points object 7 ****** -->
<script id="testglvshader7" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
gl_PointSize = 3.;
vCol = aCol;
}
</script>
<script id="testglfshader7" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** text object 9 ****** -->
<script id="testglvshader9" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="testglfshader9" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** text object 10 ****** -->
<script id="testglvshader10" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="testglfshader10" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** text object 11 ****** -->
<script id="testglvshader11" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="testglfshader11" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** lines object 12 ****** -->
<script id="testglvshader12" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="testglfshader12" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** text object 13 ****** -->
<script id="testglvshader13" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="testglfshader13" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** lines object 14 ****** -->
<script id="testglvshader14" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="testglfshader14" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** text object 15 ****** -->
<script id="testglvshader15" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="testglfshader15" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** lines object 16 ****** -->
<script id="testglvshader16" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="testglfshader16" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** text object 17 ****** -->
<script id="testglvshader17" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="testglfshader17" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** lines object 18 ****** -->
<script id="testglvshader18" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="testglfshader18" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<script type="text/javascript">
var min = Math.min;
var max = Math.max;
var sqrt = Math.sqrt;
var sin = Math.sin;
var acos = Math.acos;
var tan = Math.tan;
var SQRT2 = Math.SQRT2;
var PI = Math.PI;
var log = Math.log;
var exp = Math.exp;
var rglClass = function() {
this.zoom = new Array();
this.FOV  = new Array();
this.userMatrix = new Array();
this.viewport = new Array();
this.listeners = new Array();
this.clipplanes = new Array();
this.opaque = new Array();
this.transparent = new Array();
this.subscenes = new Array();
this.flags = new Array();
this.prog = new Array();
this.ofsLoc = new Array();
this.origLoc = new Array();
this.sizeLoc = new Array();
this.usermatLoc = new Array();
this.vClipplane = new Array();
this.texture = new Array();
this.texLoc = new Array();
this.sampler = new Array();
this.origsize = new Array();
this.values = new Array();
this.normLoc = new Array();
this.clipLoc = new Array();
this.centers = new Array();
this.f = new Array();
this.buf = new Array();
this.ibuf = new Array();
this.mvMatLoc = new Array();
this.prMatLoc = new Array();
this.textScaleLoc = new Array();
this.normMatLoc = new Array();
this.IMVClip = new Array();
this.drawFns = new Array();
this.clipFns = new Array();
this.prMatrix = new CanvasMatrix4();
this.mvMatrix = new CanvasMatrix4();
this.vp = null;
this.prmvMatrix = null;
this.origs = null;
};
(function() {
this.getShader = function( gl, id ){
var shaderScript = document.getElementById ( id );
var str = "";
var k = shaderScript.firstChild;
while ( k ){
if ( k.nodeType == 3 ) str += k.textContent;
k = k.nextSibling;
}
var shader;
if ( shaderScript.type == "x-shader/x-fragment" )
shader = gl.createShader ( gl.FRAGMENT_SHADER );
else if ( shaderScript.type == "x-shader/x-vertex" )
shader = gl.createShader(gl.VERTEX_SHADER);
else return null;
gl.shaderSource(shader, str);
gl.compileShader(shader);
if (gl.getShaderParameter(shader, gl.COMPILE_STATUS) == 0)
alert(gl.getShaderInfoLog(shader));
return shader;
}
this.multMV = function(M, v) {
return [M.m11*v[0] + M.m12*v[1] + M.m13*v[2] + M.m14*v[3],
M.m21*v[0] + M.m22*v[1] + M.m23*v[2] + M.m24*v[3],
M.m31*v[0] + M.m32*v[1] + M.m33*v[2] + M.m34*v[3],
M.m41*v[0] + M.m42*v[1] + M.m43*v[2] + M.m44*v[3]];
}
this.f_is_lit = 1;
this.f_is_smooth = 2;
this.f_has_texture = 4;
this.f_is_indexed = 8;
this.f_depth_sort = 16;
this.f_fixed_quads = 32;
this.f_is_transparent = 64;
this.f_is_lines = 128;
this.f_sprites_3d = 256;
this.f_sprite_3d = 512;
this.f_is_subscene = 1024;
this.f_is_clipplanes = 2048;
this.f_reuse = 4096;
this.whichList = function(id) {
if (this.flags[id] & this.f_is_subscene)
return "subscenes";
else if (this.flags[id] & this.f_is_clipplanes)
return "clipplanes";
else if (this.flags[id] & this.f_is_transparent)
return "transparent";
else
return "opaque"; 
}
this.inSubscene = function(id, subscene) {
var thelist = this.whichList(id);
return this[thelist][subscene].indexOf(id) > -1;
}
this.addToSubscene = function(id, subscene) {
var thelist = this.whichList(id);
if (this[thelist][subscene].indexOf(id) == -1)
this[thelist][subscene].push(id);
}
this.delFromSubscene = function(id, subscene) {
var thelist = this.whichList(id);
var i = this[thelist][subscene].indexOf(id);
if (i > -1)
this[thelist][subscene].splice(i, 1);
}	      
}).call(rglClass.prototype);
var testglrgl = new rglClass();
testglrgl.start = function() {
var debug = function(msg) {
document.getElementById("testgldebug").innerHTML = msg;
}
debug("");
var canvas = document.getElementById("testglcanvas");
if (!window.WebGLRenderingContext){
debug(" Your browser does not support WebGL. See <a href=\"http://get.webgl.org\">http://get.webgl.org</a>");
return;
}
var gl;
try {
// Try to grab the standard context. If it fails, fallback to experimental.
gl = canvas.getContext("webgl") 
|| canvas.getContext("experimental-webgl");
}
catch(e) {}
if ( !gl ) {
debug(" Your browser appears to support WebGL, but did not create a WebGL context.  See <a href=\"http://get.webgl.org\">http://get.webgl.org</a>");
return;
}
var width = 673;  var height = 481;
canvas.width = width;   canvas.height = height;
var normMatrix = new CanvasMatrix4();
var saveMat = new Object();
var distance;
var posLoc = 0;
var colLoc = 1;
var activeSubscene = 1;
this.flags[1] = 1192;
this.zoom[1] = 1;
this.FOV[1] = 30;
this.viewport[1] = [0, 0, 672, 480];
this.userMatrix[1] = new CanvasMatrix4();
this.userMatrix[1].load([
1, 0, 0, 0,
0, 0.3420201, -0.9396926, 0,
0, 0.9396926, 0.3420201, 0,
0, 0, 0, 1
]);
this.clipplanes[1] = [];
this.opaque[1] = [7,9,10,11,12,13,14,15,16,17,18];
this.transparent[1] = [];
this.subscenes[1] = [];
function getPowerOfTwo(value) {
var pow = 1;
while(pow<value) {
pow *= 2;
}
return pow;
}
function handleLoadedTexture(texture, textureCanvas) {
gl.pixelStorei(gl.UNPACK_FLIP_Y_WEBGL, true);
gl.bindTexture(gl.TEXTURE_2D, texture);
gl.texImage2D(gl.TEXTURE_2D, 0, gl.RGBA, gl.RGBA, gl.UNSIGNED_BYTE, textureCanvas);
gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MAG_FILTER, gl.LINEAR);
gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MIN_FILTER, gl.LINEAR_MIPMAP_NEAREST);
gl.generateMipmap(gl.TEXTURE_2D);
gl.bindTexture(gl.TEXTURE_2D, null);
}
function loadImageToTexture(filename, texture) {   
var canvas = document.getElementById("testgltextureCanvas");
var ctx = canvas.getContext("2d");
var image = new Image();
image.onload = function() {
var w = image.width;
var h = image.height;
var canvasX = getPowerOfTwo(w);
var canvasY = getPowerOfTwo(h);
canvas.width = canvasX;
canvas.height = canvasY;
ctx.imageSmoothingEnabled = true;
ctx.drawImage(image, 0, 0, canvasX, canvasY);
handleLoadedTexture(texture, canvas);
testglrgl.drawScene();
}
image.src = filename;
}  	   
function drawTextToCanvas(text, cex) {
var canvasX, canvasY;
var textX, textY;
var textHeight = 20 * cex;
var textColour = "white";
var fontFamily = "Arial";
var backgroundColour = "rgba(0,0,0,0)";
var canvas = document.getElementById("testgltextureCanvas");
var ctx = canvas.getContext("2d");
ctx.font = textHeight+"px "+fontFamily;
canvasX = 1;
var widths = [];
for (var i = 0; i < text.length; i++)  {
widths[i] = ctx.measureText(text[i]).width;
canvasX = (widths[i] > canvasX) ? widths[i] : canvasX;
}	  
canvasX = getPowerOfTwo(canvasX);
var offset = 2*textHeight; // offset to first baseline
var skip = 2*textHeight;   // skip between baselines	  
canvasY = getPowerOfTwo(offset + text.length*skip);
canvas.width = canvasX;
canvas.height = canvasY;
ctx.fillStyle = backgroundColour;
ctx.fillRect(0, 0, ctx.canvas.width, ctx.canvas.height);
ctx.fillStyle = textColour;
ctx.textAlign = "left";
ctx.textBaseline = "alphabetic";
ctx.font = textHeight+"px "+fontFamily;
for(var i = 0; i < text.length; i++) {
textY = i*skip + offset;
ctx.fillText(text[i], 0,  textY);
}
return {canvasX:canvasX, canvasY:canvasY,
widths:widths, textHeight:textHeight,
offset:offset, skip:skip};
}
// ****** points object 7 ******
this.flags[7] = 0;
this.prog[7]  = gl.createProgram();
gl.attachShader(this.prog[7], this.getShader( gl, "testglvshader7" ));
gl.attachShader(this.prog[7], this.getShader( gl, "testglfshader7" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[7], 0, "aPos");
gl.bindAttribLocation(this.prog[7], 1, "aCol");
gl.linkProgram(this.prog[7]);
var v=new Float32Array([
<<<<<<< HEAD
-4.004113, -0.4519024, -2.560224, 1, 0, 0, 1,
-2.963282, -1.238452, -3.918952, 1, 0.007843138, 0, 1,
-2.913826, 0.9497079, -1.0786, 1, 0.01176471, 0, 1,
-2.674692, -0.1064956, -1.900613, 1, 0.01960784, 0, 1,
-2.457499, 1.587991, -0.6189132, 1, 0.02352941, 0, 1,
-2.411187, 0.8079309, -0.7170224, 1, 0.03137255, 0, 1,
-2.322917, -1.296227, -3.431767, 1, 0.03529412, 0, 1,
-2.257308, 0.04687494, -0.1697228, 1, 0.04313726, 0, 1,
-2.245189, -0.4636353, -2.282286, 1, 0.04705882, 0, 1,
-2.224729, -0.2658116, -0.9582263, 1, 0.05490196, 0, 1,
-2.215771, -0.3663732, -0.5424602, 1, 0.05882353, 0, 1,
-2.206897, -1.848617, -0.4523383, 1, 0.06666667, 0, 1,
-2.199162, 0.1706673, -1.327194, 1, 0.07058824, 0, 1,
-2.194554, -0.5681325, -2.36983, 1, 0.07843138, 0, 1,
-2.186949, -0.01827551, -2.757624, 1, 0.08235294, 0, 1,
-2.168548, 0.9642818, -1.265471, 1, 0.09019608, 0, 1,
-2.114048, 0.08023176, -1.515315, 1, 0.09411765, 0, 1,
-2.044847, 1.104356, -0.848801, 1, 0.1019608, 0, 1,
-2.043122, 0.8781194, -0.9985762, 1, 0.1098039, 0, 1,
-2.028192, -1.679692, -1.781797, 1, 0.1137255, 0, 1,
-2.02321, 1.676582, -3.069283, 1, 0.1215686, 0, 1,
-2.016868, 2.130225, -1.56818, 1, 0.1254902, 0, 1,
-1.992249, -0.3363093, -2.535588, 1, 0.1333333, 0, 1,
-1.982829, 1.317629, -0.4272959, 1, 0.1372549, 0, 1,
-1.941344, -0.2682791, -1.2452, 1, 0.145098, 0, 1,
-1.929363, -0.3869388, -1.442369, 1, 0.1490196, 0, 1,
-1.883587, 0.1067889, -1.207716, 1, 0.1568628, 0, 1,
-1.881066, 0.03081323, -0.6505378, 1, 0.1607843, 0, 1,
-1.87797, 0.642441, -1.564535, 1, 0.1686275, 0, 1,
-1.875939, 2.079728, -0.8274196, 1, 0.172549, 0, 1,
-1.840159, -1.4717, -1.871695, 1, 0.1803922, 0, 1,
-1.834037, -0.254814, -0.8309864, 1, 0.1843137, 0, 1,
-1.812581, -0.4540595, -2.792621, 1, 0.1921569, 0, 1,
-1.796017, -0.2821814, -2.034228, 1, 0.1960784, 0, 1,
-1.794788, 0.8577258, -1.831869, 1, 0.2039216, 0, 1,
-1.789085, 0.4873675, -0.9144318, 1, 0.2117647, 0, 1,
-1.782467, 1.089792, -1.259363, 1, 0.2156863, 0, 1,
-1.771425, 1.053842, -1.303029, 1, 0.2235294, 0, 1,
-1.771281, 0.7357277, -0.5914348, 1, 0.227451, 0, 1,
-1.763545, 0.1030135, -1.582798, 1, 0.2352941, 0, 1,
-1.721527, -0.8166181, -3.969439, 1, 0.2392157, 0, 1,
-1.720075, -0.7316666, -1.411726, 1, 0.2470588, 0, 1,
-1.702586, -1.621226, -1.530691, 1, 0.2509804, 0, 1,
-1.683607, 0.7169487, -0.1103567, 1, 0.2588235, 0, 1,
-1.68122, 0.1076411, -1.063349, 1, 0.2627451, 0, 1,
-1.673806, -1.868879, -1.280098, 1, 0.2705882, 0, 1,
-1.669064, -0.2959146, -1.291494, 1, 0.2745098, 0, 1,
-1.666686, -0.3461616, -0.6009688, 1, 0.282353, 0, 1,
-1.661011, 0.4321772, -1.177662, 1, 0.2862745, 0, 1,
-1.635289, -0.2478664, -2.743606, 1, 0.2941177, 0, 1,
-1.621978, 0.7307754, -0.3667972, 1, 0.3019608, 0, 1,
-1.62191, -0.01987723, -2.077588, 1, 0.3058824, 0, 1,
-1.604732, 0.8115342, -1.588065, 1, 0.3137255, 0, 1,
-1.604696, -0.07281393, 1.43279, 1, 0.3176471, 0, 1,
-1.602895, 0.1997042, -2.289292, 1, 0.3254902, 0, 1,
-1.600246, 0.01672434, -1.717728, 1, 0.3294118, 0, 1,
-1.592529, 0.8683903, -0.9351632, 1, 0.3372549, 0, 1,
-1.591475, 1.784213, 0.1392118, 1, 0.3411765, 0, 1,
-1.578858, 1.249161, -1.83514, 1, 0.3490196, 0, 1,
-1.578336, -0.4195282, -0.8772083, 1, 0.3529412, 0, 1,
-1.571696, 1.544829, 0.3680328, 1, 0.3607843, 0, 1,
-1.569819, -1.103994, -1.368267, 1, 0.3647059, 0, 1,
-1.560994, 2.793542, -0.3603908, 1, 0.372549, 0, 1,
-1.538352, 1.269305, -2.434787, 1, 0.3764706, 0, 1,
-1.520886, -1.487116, -4.60543, 1, 0.3843137, 0, 1,
-1.519318, 1.377691, -0.6132969, 1, 0.3882353, 0, 1,
-1.516042, 0.4314333, -2.91613, 1, 0.3960784, 0, 1,
-1.496042, 0.6245227, -0.9573382, 1, 0.4039216, 0, 1,
-1.468661, -0.164241, 0.6166863, 1, 0.4078431, 0, 1,
-1.468566, -1.254363, -2.510956, 1, 0.4156863, 0, 1,
-1.455483, 0.7586623, -0.1611502, 1, 0.4196078, 0, 1,
-1.449494, -0.2164677, -1.918236, 1, 0.427451, 0, 1,
-1.442058, 0.2957664, -1.64127, 1, 0.4313726, 0, 1,
-1.441464, -0.8388707, -1.196654, 1, 0.4392157, 0, 1,
-1.43092, -0.06446647, -1.092493, 1, 0.4431373, 0, 1,
-1.428805, -1.523553, -2.959939, 1, 0.4509804, 0, 1,
-1.428599, 0.7603785, -1.659204, 1, 0.454902, 0, 1,
-1.424514, 0.7763948, -1.643434, 1, 0.4627451, 0, 1,
-1.422045, -1.074091, -2.770445, 1, 0.4666667, 0, 1,
-1.419743, 0.2743589, -1.660076, 1, 0.4745098, 0, 1,
-1.419722, 0.5470588, -2.731156, 1, 0.4784314, 0, 1,
-1.398479, -0.1779203, -2.339952, 1, 0.4862745, 0, 1,
-1.398403, 1.001406, 0.4823247, 1, 0.4901961, 0, 1,
-1.396342, -0.9278196, -0.8194799, 1, 0.4980392, 0, 1,
-1.395125, 1.044404, -1.304842, 1, 0.5058824, 0, 1,
-1.394062, -1.281465, -2.125751, 1, 0.509804, 0, 1,
-1.386677, -0.8529776, -2.36717, 1, 0.5176471, 0, 1,
-1.38345, 1.303767, -0.6572283, 1, 0.5215687, 0, 1,
-1.381997, -0.3155326, -2.560666, 1, 0.5294118, 0, 1,
-1.376927, 1.073848, -1.964145, 1, 0.5333334, 0, 1,
-1.369403, -0.1502356, -2.918295, 1, 0.5411765, 0, 1,
-1.365222, -1.051751, -2.027022, 1, 0.5450981, 0, 1,
-1.349441, 1.201812, -0.6211532, 1, 0.5529412, 0, 1,
-1.349025, 1.089171, -1.134671, 1, 0.5568628, 0, 1,
-1.339843, -0.560832, -1.69434, 1, 0.5647059, 0, 1,
-1.333722, -0.9808387, -2.946456, 1, 0.5686275, 0, 1,
-1.329345, 0.1941559, -2.918801, 1, 0.5764706, 0, 1,
-1.32492, -0.6718727, -2.863221, 1, 0.5803922, 0, 1,
-1.324114, -0.9131275, -0.3976955, 1, 0.5882353, 0, 1,
-1.300421, 0.5553323, -2.034158, 1, 0.5921569, 0, 1,
-1.295498, 0.8862043, -1.104885, 1, 0.6, 0, 1,
-1.292172, -0.6215366, -1.550444, 1, 0.6078432, 0, 1,
-1.282416, 1.6451, -0.8837476, 1, 0.6117647, 0, 1,
-1.282287, 0.674743, -1.19277, 1, 0.6196079, 0, 1,
-1.28124, -0.352266, -2.438862, 1, 0.6235294, 0, 1,
-1.277938, 0.4758895, -2.041883, 1, 0.6313726, 0, 1,
-1.274306, -0.6573736, -1.412687, 1, 0.6352941, 0, 1,
-1.268411, -0.3191679, -2.08261, 1, 0.6431373, 0, 1,
-1.267244, -1.2512, -3.451337, 1, 0.6470588, 0, 1,
-1.266936, -0.6840343, -3.506492, 1, 0.654902, 0, 1,
-1.263379, 1.0038, -0.6293903, 1, 0.6588235, 0, 1,
-1.252022, 1.114944, -1.60248, 1, 0.6666667, 0, 1,
-1.250485, -0.4616291, -1.964377, 1, 0.6705883, 0, 1,
-1.249944, -0.4272889, -3.509915, 1, 0.6784314, 0, 1,
-1.247651, 0.0525305, -0.8190795, 1, 0.682353, 0, 1,
-1.246915, 1.423458, -1.42534, 1, 0.6901961, 0, 1,
-1.24335, -1.070394, -1.84548, 1, 0.6941177, 0, 1,
-1.242996, -0.7013069, -1.356792, 1, 0.7019608, 0, 1,
-1.227794, -0.09191443, -2.001431, 1, 0.7098039, 0, 1,
-1.227481, 0.04564446, 0.06156743, 1, 0.7137255, 0, 1,
-1.227472, 0.8336801, -1.110763, 1, 0.7215686, 0, 1,
-1.225664, -0.4281205, -2.863641, 1, 0.7254902, 0, 1,
-1.217773, 0.6662644, -1.661731, 1, 0.7333333, 0, 1,
-1.215462, 0.8052106, 0.4135129, 1, 0.7372549, 0, 1,
-1.21457, 1.516999, -1.422255, 1, 0.7450981, 0, 1,
-1.213319, 0.4148644, -1.036266, 1, 0.7490196, 0, 1,
-1.209671, 0.2028899, -1.410695, 1, 0.7568628, 0, 1,
-1.209366, -0.906066, -4.000398, 1, 0.7607843, 0, 1,
-1.198286, 1.103669, -2.113048, 1, 0.7686275, 0, 1,
-1.19447, 2.013128, -1.574065, 1, 0.772549, 0, 1,
-1.182994, 0.117162, -2.06102, 1, 0.7803922, 0, 1,
-1.179558, -0.06425056, 0.4673148, 1, 0.7843137, 0, 1,
-1.176279, 0.03268156, -1.432531, 1, 0.7921569, 0, 1,
-1.174887, -1.199136, -2.356441, 1, 0.7960784, 0, 1,
-1.168998, -0.2934701, -2.311612, 1, 0.8039216, 0, 1,
-1.161723, -0.07255542, -0.0196222, 1, 0.8117647, 0, 1,
-1.160004, 0.6511965, -3.267567, 1, 0.8156863, 0, 1,
-1.158778, -1.10107, -1.785223, 1, 0.8235294, 0, 1,
-1.154743, 2.427441, -0.7236224, 1, 0.827451, 0, 1,
-1.142194, 1.412143, -0.5412905, 1, 0.8352941, 0, 1,
-1.142153, -1.530449, -1.709584, 1, 0.8392157, 0, 1,
-1.134688, -0.02861694, -1.728553, 1, 0.8470588, 0, 1,
-1.129414, 1.351463, 0.09524565, 1, 0.8509804, 0, 1,
-1.128679, 0.6582514, -1.762609, 1, 0.8588235, 0, 1,
-1.127575, -0.9335358, -1.132637, 1, 0.8627451, 0, 1,
-1.123718, -1.48261, -1.704058, 1, 0.8705882, 0, 1,
-1.117177, -0.532623, -2.509929, 1, 0.8745098, 0, 1,
-1.114538, -1.431625, -2.648308, 1, 0.8823529, 0, 1,
-1.114147, 0.932382, -0.6768382, 1, 0.8862745, 0, 1,
-1.113167, 0.7236778, -0.7078592, 1, 0.8941177, 0, 1,
-1.11248, -1.194872, -3.592638, 1, 0.8980392, 0, 1,
-1.111004, -0.5541942, -1.976236, 1, 0.9058824, 0, 1,
-1.098607, -0.2185661, -0.8709072, 1, 0.9137255, 0, 1,
-1.094013, 0.4513902, -1.014861, 1, 0.9176471, 0, 1,
-1.092687, -2.426732, -2.623444, 1, 0.9254902, 0, 1,
-1.0898, 2.065027, 0.6451238, 1, 0.9294118, 0, 1,
-1.080451, -1.178766, -2.546149, 1, 0.9372549, 0, 1,
-1.079648, -0.1707624, -1.699924, 1, 0.9411765, 0, 1,
-1.079466, 2.266826, -0.3791242, 1, 0.9490196, 0, 1,
-1.069798, 0.06488594, -2.451157, 1, 0.9529412, 0, 1,
-1.067615, 0.2037003, -2.259707, 1, 0.9607843, 0, 1,
-1.056238, 0.705395, -1.033681, 1, 0.9647059, 0, 1,
-1.054276, -1.398559, -4.258968, 1, 0.972549, 0, 1,
-1.050972, 0.9526753, -0.01936843, 1, 0.9764706, 0, 1,
-1.047167, -0.5900483, -2.903237, 1, 0.9843137, 0, 1,
-1.046694, -0.34167, -2.204865, 1, 0.9882353, 0, 1,
-1.046557, -1.384212, -1.019765, 1, 0.9960784, 0, 1,
-1.038804, 0.7005526, -0.8997924, 0.9960784, 1, 0, 1,
-1.031655, -1.652495, -2.185709, 0.9921569, 1, 0, 1,
-1.030241, -0.8353032, -3.713935, 0.9843137, 1, 0, 1,
-1.026622, 0.2898617, -1.862929, 0.9803922, 1, 0, 1,
-1.025424, 0.9741395, -1.625364, 0.972549, 1, 0, 1,
-1.018751, 0.167472, -0.3644607, 0.9686275, 1, 0, 1,
-1.012392, 2.206695, -0.08096554, 0.9607843, 1, 0, 1,
-1.010225, -0.9773971, -2.853873, 0.9568627, 1, 0, 1,
-1.000027, 1.050295, -3.226097, 0.9490196, 1, 0, 1,
-0.9982399, 1.095707, -1.840291, 0.945098, 1, 0, 1,
-0.987936, -1.552628, -2.870539, 0.9372549, 1, 0, 1,
-0.9833565, 1.583806, -1.140765, 0.9333333, 1, 0, 1,
-0.9830527, -0.1800409, -2.170645, 0.9254902, 1, 0, 1,
-0.9765702, 1.408088, -0.7048233, 0.9215686, 1, 0, 1,
-0.9764874, 0.1508236, -2.917715, 0.9137255, 1, 0, 1,
-0.9749789, -0.5214756, -3.191328, 0.9098039, 1, 0, 1,
-0.9722655, -0.2932639, -1.519801, 0.9019608, 1, 0, 1,
-0.9631153, 2.169913, -0.5240619, 0.8941177, 1, 0, 1,
-0.9569286, 0.8148676, -0.4723414, 0.8901961, 1, 0, 1,
-0.954435, 0.3749085, -1.351456, 0.8823529, 1, 0, 1,
-0.9534127, 1.581715, -0.02809403, 0.8784314, 1, 0, 1,
-0.9359592, -0.2258835, -2.244752, 0.8705882, 1, 0, 1,
-0.9340079, -0.9551062, -2.09606, 0.8666667, 1, 0, 1,
-0.9339029, -0.08447135, 1.19451, 0.8588235, 1, 0, 1,
-0.9215834, 0.8294396, -1.622227, 0.854902, 1, 0, 1,
-0.9215692, -1.249081, -3.699012, 0.8470588, 1, 0, 1,
-0.9173602, 0.2680563, 2.166569, 0.8431373, 1, 0, 1,
-0.9140005, -0.3837205, -2.276869, 0.8352941, 1, 0, 1,
-0.9133426, 0.3424272, -1.152209, 0.8313726, 1, 0, 1,
-0.9130924, 2.615838, -0.3312446, 0.8235294, 1, 0, 1,
-0.9062839, -0.1539123, -2.657685, 0.8196079, 1, 0, 1,
-0.9057956, -0.8573501, -3.519958, 0.8117647, 1, 0, 1,
-0.9054766, 1.484718, -0.5274096, 0.8078431, 1, 0, 1,
-0.8995533, -0.9712459, -1.767341, 0.8, 1, 0, 1,
-0.8940936, -2.396002, -3.677287, 0.7921569, 1, 0, 1,
-0.8932261, -1.058056, -1.611996, 0.7882353, 1, 0, 1,
-0.8890954, -0.7286159, -2.251029, 0.7803922, 1, 0, 1,
-0.886261, 1.206427, 0.5784403, 0.7764706, 1, 0, 1,
-0.8776354, -0.5426756, -0.7444944, 0.7686275, 1, 0, 1,
-0.8666083, -0.6854262, -2.872697, 0.7647059, 1, 0, 1,
-0.8600881, 0.1473789, 0.006569916, 0.7568628, 1, 0, 1,
-0.8600368, 0.1717403, -1.308163, 0.7529412, 1, 0, 1,
-0.8586074, -0.3261549, -1.055865, 0.7450981, 1, 0, 1,
-0.856622, 0.6535408, -1.337674, 0.7411765, 1, 0, 1,
-0.8547024, -0.01894851, -0.8166965, 0.7333333, 1, 0, 1,
-0.8501551, -0.7149867, -3.37641, 0.7294118, 1, 0, 1,
-0.8453519, 0.307716, -1.308105, 0.7215686, 1, 0, 1,
-0.8448614, -0.2647681, -1.90302, 0.7176471, 1, 0, 1,
-0.8340947, 1.095809, -0.8663281, 0.7098039, 1, 0, 1,
-0.8283611, -1.474009, -1.940882, 0.7058824, 1, 0, 1,
-0.8283119, 0.7883534, -0.6078743, 0.6980392, 1, 0, 1,
-0.8235657, -1.106111, -2.136695, 0.6901961, 1, 0, 1,
-0.8218604, 1.108614, -0.2500149, 0.6862745, 1, 0, 1,
-0.8008866, -1.200768, -2.510809, 0.6784314, 1, 0, 1,
-0.7998282, -2.091226, -3.547507, 0.6745098, 1, 0, 1,
-0.7984349, -1.976621, -1.400045, 0.6666667, 1, 0, 1,
-0.7970619, 0.8252524, -1.353776, 0.6627451, 1, 0, 1,
-0.7887442, 1.406795, -1.691987, 0.654902, 1, 0, 1,
-0.7871459, -0.348007, -1.957031, 0.6509804, 1, 0, 1,
-0.7847611, 0.6226116, -1.527025, 0.6431373, 1, 0, 1,
-0.7819682, -0.2113892, -0.7866545, 0.6392157, 1, 0, 1,
-0.7817667, 1.30796, 0.1737098, 0.6313726, 1, 0, 1,
-0.7784286, 1.110766, 0.7698151, 0.627451, 1, 0, 1,
-0.7716073, -1.840485, -4.404753, 0.6196079, 1, 0, 1,
-0.7703301, 0.8489344, -1.550233, 0.6156863, 1, 0, 1,
-0.7638795, -1.270479, -2.864975, 0.6078432, 1, 0, 1,
-0.7636037, -0.2266026, -1.78041, 0.6039216, 1, 0, 1,
-0.761647, -1.897049, -1.885049, 0.5960785, 1, 0, 1,
-0.7581353, 0.8308755, -0.693101, 0.5882353, 1, 0, 1,
-0.7492446, 0.09461556, -0.8592463, 0.5843138, 1, 0, 1,
-0.7437311, -0.6938869, -1.967945, 0.5764706, 1, 0, 1,
-0.7434905, -0.04891275, -1.261809, 0.572549, 1, 0, 1,
-0.7382615, -0.1170346, 0.2726733, 0.5647059, 1, 0, 1,
-0.7366624, -0.5543666, -0.4859434, 0.5607843, 1, 0, 1,
-0.7349621, 0.6715541, -0.7232226, 0.5529412, 1, 0, 1,
-0.7292485, 0.5308879, 0.2687449, 0.5490196, 1, 0, 1,
-0.7292052, -0.1411923, -1.336198, 0.5411765, 1, 0, 1,
-0.7274171, -0.05231503, -3.184571, 0.5372549, 1, 0, 1,
-0.7217753, 0.2563477, -1.778126, 0.5294118, 1, 0, 1,
-0.7091438, 1.275523, -0.9357812, 0.5254902, 1, 0, 1,
-0.7091315, -1.949466, -3.244286, 0.5176471, 1, 0, 1,
-0.7082105, -0.300575, -1.24602, 0.5137255, 1, 0, 1,
-0.704412, -1.28884, -2.358433, 0.5058824, 1, 0, 1,
-0.7015778, 1.527731, -1.558093, 0.5019608, 1, 0, 1,
-0.6994174, 1.41325, 0.4293453, 0.4941176, 1, 0, 1,
-0.6991561, -0.1687052, -1.068913, 0.4862745, 1, 0, 1,
-0.6918806, -0.6587145, 0.2191693, 0.4823529, 1, 0, 1,
-0.6883647, 0.8505906, -0.5122281, 0.4745098, 1, 0, 1,
-0.6876351, -0.2733552, -2.406721, 0.4705882, 1, 0, 1,
-0.6857137, -0.5273147, -2.245262, 0.4627451, 1, 0, 1,
-0.6845647, 0.5669379, 0.6666927, 0.4588235, 1, 0, 1,
-0.6840441, -0.9639169, -3.252702, 0.4509804, 1, 0, 1,
-0.6818028, -1.36379, -2.2514, 0.4470588, 1, 0, 1,
-0.6730448, -0.6620398, -2.808936, 0.4392157, 1, 0, 1,
-0.6684003, -0.7338453, -2.677226, 0.4352941, 1, 0, 1,
-0.6631266, 0.04325077, -1.487681, 0.427451, 1, 0, 1,
-0.659255, 0.05882241, -1.082876, 0.4235294, 1, 0, 1,
-0.6586599, 0.5415008, -2.153094, 0.4156863, 1, 0, 1,
-0.6566778, -0.999676, -3.032927, 0.4117647, 1, 0, 1,
-0.6535348, 1.622001, 0.6077346, 0.4039216, 1, 0, 1,
-0.6513658, 0.364454, 1.072312, 0.3960784, 1, 0, 1,
-0.6505305, 0.045029, -3.336697, 0.3921569, 1, 0, 1,
-0.6501994, 0.0962211, -0.8520549, 0.3843137, 1, 0, 1,
-0.6427698, 0.2911121, -0.6507931, 0.3803922, 1, 0, 1,
-0.6370626, -0.9616757, -2.149074, 0.372549, 1, 0, 1,
-0.6355097, 0.02051328, -1.320664, 0.3686275, 1, 0, 1,
-0.6310735, 0.9682775, -0.8692435, 0.3607843, 1, 0, 1,
-0.6273226, -0.9662276, -2.44629, 0.3568628, 1, 0, 1,
-0.6266209, -0.9958172, -1.440301, 0.3490196, 1, 0, 1,
-0.6251513, 0.3593805, -0.5862669, 0.345098, 1, 0, 1,
-0.6239921, 0.2507189, -1.680971, 0.3372549, 1, 0, 1,
-0.6210147, 0.3241542, -1.121229, 0.3333333, 1, 0, 1,
-0.6206949, 0.02473614, -1.117032, 0.3254902, 1, 0, 1,
-0.6193575, -0.5207941, -2.184742, 0.3215686, 1, 0, 1,
-0.6118327, 0.2311595, -2.460343, 0.3137255, 1, 0, 1,
-0.6114014, -0.8844492, -1.878672, 0.3098039, 1, 0, 1,
-0.6071632, 2.040119, -0.3816862, 0.3019608, 1, 0, 1,
-0.6053372, 0.1465864, -0.5478114, 0.2941177, 1, 0, 1,
-0.6048409, -0.9808204, -2.485523, 0.2901961, 1, 0, 1,
-0.6027766, -0.4047822, -3.00796, 0.282353, 1, 0, 1,
-0.5996851, 0.1106398, -1.387513, 0.2784314, 1, 0, 1,
-0.5976434, 0.01525732, -1.453528, 0.2705882, 1, 0, 1,
-0.5901405, -0.7931185, -3.822554, 0.2666667, 1, 0, 1,
-0.58813, -0.138752, -1.418005, 0.2588235, 1, 0, 1,
-0.5870586, 1.776889, 0.7921721, 0.254902, 1, 0, 1,
-0.5835894, 0.3388988, 0.5865744, 0.2470588, 1, 0, 1,
-0.5833563, -0.1165132, -0.881465, 0.2431373, 1, 0, 1,
-0.5816157, 0.4598074, -1.214247, 0.2352941, 1, 0, 1,
-0.5814949, -1.713559, -2.064272, 0.2313726, 1, 0, 1,
-0.5780601, -0.3618152, -2.493391, 0.2235294, 1, 0, 1,
-0.5775599, -1.561599, -2.769701, 0.2196078, 1, 0, 1,
-0.5748545, 1.320078, -0.2238465, 0.2117647, 1, 0, 1,
-0.571054, 0.3859929, -2.497647, 0.2078431, 1, 0, 1,
-0.569229, 0.6664803, -1.632977, 0.2, 1, 0, 1,
-0.5660633, 0.838851, -1.286957, 0.1921569, 1, 0, 1,
-0.5616559, 1.135816, -1.094603, 0.1882353, 1, 0, 1,
-0.5602658, -1.293293, -3.902899, 0.1803922, 1, 0, 1,
-0.5600014, 0.9678004, -1.031463, 0.1764706, 1, 0, 1,
-0.5558542, 0.05912373, -0.2820821, 0.1686275, 1, 0, 1,
-0.555631, -0.0403011, -2.607098, 0.1647059, 1, 0, 1,
-0.5532866, -0.1579082, -1.264977, 0.1568628, 1, 0, 1,
-0.5530918, -1.302949, -4.112806, 0.1529412, 1, 0, 1,
-0.5529118, 1.890901, 0.5723187, 0.145098, 1, 0, 1,
-0.5525285, -0.009758235, -1.253156, 0.1411765, 1, 0, 1,
-0.5519401, 2.097627, -0.4285558, 0.1333333, 1, 0, 1,
-0.5507786, -1.143346, -4.729837, 0.1294118, 1, 0, 1,
-0.5406374, 0.2033525, -0.5268643, 0.1215686, 1, 0, 1,
-0.5319368, 1.20864, 0.475297, 0.1176471, 1, 0, 1,
-0.5311564, 0.7084095, -0.2742006, 0.1098039, 1, 0, 1,
-0.52878, 0.5863945, -1.786331, 0.1058824, 1, 0, 1,
-0.526898, -0.2788497, -3.360507, 0.09803922, 1, 0, 1,
-0.5266919, 0.04009393, -1.438177, 0.09019608, 1, 0, 1,
-0.52619, -0.8994027, -3.782249, 0.08627451, 1, 0, 1,
-0.5241591, 1.157652, 0.2146372, 0.07843138, 1, 0, 1,
-0.523822, 0.5859156, -1.223557, 0.07450981, 1, 0, 1,
-0.5233546, -0.7266796, -2.376827, 0.06666667, 1, 0, 1,
-0.5230177, 0.2689134, -0.08776315, 0.0627451, 1, 0, 1,
-0.5197858, -0.3002124, -1.860401, 0.05490196, 1, 0, 1,
-0.5164721, -0.1348372, -2.812132, 0.05098039, 1, 0, 1,
-0.4991963, 0.05471845, -1.974523, 0.04313726, 1, 0, 1,
-0.4980252, -0.9893097, -1.486894, 0.03921569, 1, 0, 1,
-0.4963014, -2.440534, -2.631132, 0.03137255, 1, 0, 1,
-0.493648, -0.8090127, -2.401908, 0.02745098, 1, 0, 1,
-0.4910564, 0.5654725, -0.8163709, 0.01960784, 1, 0, 1,
-0.4896803, 0.8026373, -0.2704779, 0.01568628, 1, 0, 1,
-0.4894972, 0.3681282, -0.9284505, 0.007843138, 1, 0, 1,
-0.4873848, -0.6921056, -3.821558, 0.003921569, 1, 0, 1,
-0.4867326, 1.676612, 0.2864113, 0, 1, 0.003921569, 1,
-0.4846791, 0.7326415, -0.4910567, 0, 1, 0.01176471, 1,
-0.4834346, 1.392382, 1.602289, 0, 1, 0.01568628, 1,
-0.4812173, 0.2208127, -2.698169, 0, 1, 0.02352941, 1,
-0.4739718, 1.275695, 0.07868083, 0, 1, 0.02745098, 1,
-0.4704623, -0.5107157, -1.981466, 0, 1, 0.03529412, 1,
-0.4683257, -0.3102581, -3.894703, 0, 1, 0.03921569, 1,
-0.4672942, 0.7156421, -0.9733247, 0, 1, 0.04705882, 1,
-0.4653121, 1.218308, 1.134906, 0, 1, 0.05098039, 1,
-0.4646441, -0.2238999, -0.9993823, 0, 1, 0.05882353, 1,
-0.4623416, -2.444814, -2.838938, 0, 1, 0.0627451, 1,
-0.4577164, -0.06186011, -3.135546, 0, 1, 0.07058824, 1,
-0.4555325, 0.4150888, -1.163032, 0, 1, 0.07450981, 1,
-0.4528654, 0.7068665, -0.6147349, 0, 1, 0.08235294, 1,
-0.4497261, 0.4498335, 0.1810997, 0, 1, 0.08627451, 1,
-0.4454708, -1.052817, -3.43808, 0, 1, 0.09411765, 1,
-0.4406302, -0.1987978, -2.245766, 0, 1, 0.1019608, 1,
-0.4374383, -0.1550801, -1.40376, 0, 1, 0.1058824, 1,
-0.4350766, 0.2894112, -0.2953435, 0, 1, 0.1137255, 1,
-0.429226, -0.7511973, -3.375117, 0, 1, 0.1176471, 1,
-0.4289978, -1.364715, -3.848095, 0, 1, 0.1254902, 1,
-0.424913, -1.006054, -1.940633, 0, 1, 0.1294118, 1,
-0.4233291, 0.6152832, -0.9145494, 0, 1, 0.1372549, 1,
-0.4228465, -0.607613, -4.068016, 0, 1, 0.1411765, 1,
-0.4190251, -1.625561, -3.573979, 0, 1, 0.1490196, 1,
-0.4181779, -1.261461, -2.86697, 0, 1, 0.1529412, 1,
-0.4180006, 0.7510144, -0.8379794, 0, 1, 0.1607843, 1,
-0.4174991, -1.287549, -3.29548, 0, 1, 0.1647059, 1,
-0.4171953, -1.080058, -2.642053, 0, 1, 0.172549, 1,
-0.4167414, -0.5505713, -2.758117, 0, 1, 0.1764706, 1,
-0.4119102, -1.310161, -3.540797, 0, 1, 0.1843137, 1,
-0.4066198, 0.4041939, 0.422945, 0, 1, 0.1882353, 1,
-0.4062789, -0.1855507, 0.56313, 0, 1, 0.1960784, 1,
-0.4049402, 0.7544968, -0.4953083, 0, 1, 0.2039216, 1,
-0.395225, -0.6948709, -1.277306, 0, 1, 0.2078431, 1,
-0.3903397, -0.5880532, -1.952052, 0, 1, 0.2156863, 1,
-0.3887145, -0.3605922, -2.442429, 0, 1, 0.2196078, 1,
-0.3871154, -1.271008, -1.74155, 0, 1, 0.227451, 1,
-0.3849291, 0.1215795, -0.6984959, 0, 1, 0.2313726, 1,
-0.3843186, -1.893635, -2.223017, 0, 1, 0.2392157, 1,
-0.3842522, -1.809797, -1.732219, 0, 1, 0.2431373, 1,
-0.3780878, -1.353627, -3.658543, 0, 1, 0.2509804, 1,
-0.3761583, 0.6775747, -1.451232, 0, 1, 0.254902, 1,
-0.3692349, -0.4517564, -3.215147, 0, 1, 0.2627451, 1,
-0.3685915, -2.175675, -2.974929, 0, 1, 0.2666667, 1,
-0.3653949, 0.4737047, -0.05883053, 0, 1, 0.2745098, 1,
-0.3610714, 0.4384187, -0.6877837, 0, 1, 0.2784314, 1,
-0.3606754, -1.265118, -2.023327, 0, 1, 0.2862745, 1,
-0.3574165, 0.4310351, -0.4789259, 0, 1, 0.2901961, 1,
-0.3518069, -0.3035755, -1.179841, 0, 1, 0.2980392, 1,
-0.3512302, -0.1849737, 0.3367178, 0, 1, 0.3058824, 1,
-0.3507167, -0.4291665, -2.907898, 0, 1, 0.3098039, 1,
-0.3491907, 0.2757774, -0.2508122, 0, 1, 0.3176471, 1,
-0.3482939, 2.106892, -2.469305, 0, 1, 0.3215686, 1,
-0.338477, 1.332544, -0.9122638, 0, 1, 0.3294118, 1,
-0.3286925, -0.2435095, -2.536883, 0, 1, 0.3333333, 1,
-0.3267647, -1.041109, -3.852413, 0, 1, 0.3411765, 1,
-0.3267556, 0.2953129, 0.9464054, 0, 1, 0.345098, 1,
-0.3260049, 0.2190214, -1.799055, 0, 1, 0.3529412, 1,
-0.3250856, 0.7999592, -1.286323, 0, 1, 0.3568628, 1,
-0.3244334, 0.8935775, -0.6498017, 0, 1, 0.3647059, 1,
-0.3207918, 0.4672426, -0.7261214, 0, 1, 0.3686275, 1,
-0.3198435, 1.070171, -0.2770266, 0, 1, 0.3764706, 1,
-0.3186472, -1.474011, -2.528234, 0, 1, 0.3803922, 1,
-0.3077306, -1.626758, -2.346571, 0, 1, 0.3882353, 1,
-0.3066878, -0.6713132, -2.617323, 0, 1, 0.3921569, 1,
-0.3048342, 1.413494, -0.2281228, 0, 1, 0.4, 1,
-0.302503, -0.8340524, -1.577414, 0, 1, 0.4078431, 1,
-0.3007878, 1.311865, -1.444238, 0, 1, 0.4117647, 1,
-0.295697, 0.2024301, -0.6682901, 0, 1, 0.4196078, 1,
-0.294975, -0.1861931, -2.002553, 0, 1, 0.4235294, 1,
-0.2948669, 0.3897344, -1.952475, 0, 1, 0.4313726, 1,
-0.2947015, 1.913087, -0.2209826, 0, 1, 0.4352941, 1,
-0.2915789, -1.798329, -1.807045, 0, 1, 0.4431373, 1,
-0.2905847, -0.1707535, -1.767664, 0, 1, 0.4470588, 1,
-0.2904099, 0.1203365, -3.370028, 0, 1, 0.454902, 1,
-0.2895421, -0.1105729, -2.862222, 0, 1, 0.4588235, 1,
-0.2873231, 1.024897, 0.1391952, 0, 1, 0.4666667, 1,
-0.2807604, 1.30139, -0.5235886, 0, 1, 0.4705882, 1,
-0.2747059, 0.2955041, -0.9903318, 0, 1, 0.4784314, 1,
-0.268719, 0.2208158, -0.5023315, 0, 1, 0.4823529, 1,
-0.252506, 0.5933245, 0.014579, 0, 1, 0.4901961, 1,
-0.248376, 1.523384, 1.720931, 0, 1, 0.4941176, 1,
-0.2479183, -2.474342, -2.037998, 0, 1, 0.5019608, 1,
-0.2446224, -0.1093888, -0.6833528, 0, 1, 0.509804, 1,
-0.2434247, 1.290269, -0.1894328, 0, 1, 0.5137255, 1,
-0.2424865, 0.1157562, -1.33239, 0, 1, 0.5215687, 1,
-0.2417776, -1.399143, -3.025277, 0, 1, 0.5254902, 1,
-0.2411457, 0.07720116, -1.095249, 0, 1, 0.5333334, 1,
-0.2387897, 0.5979556, -1.58887, 0, 1, 0.5372549, 1,
-0.2332518, -0.3528621, -2.934355, 0, 1, 0.5450981, 1,
-0.2313872, -0.7945991, -1.398788, 0, 1, 0.5490196, 1,
-0.226769, 0.1392037, -1.950903, 0, 1, 0.5568628, 1,
-0.2257262, -0.8738861, -3.990703, 0, 1, 0.5607843, 1,
-0.2256915, 0.2411225, 0.09796803, 0, 1, 0.5686275, 1,
-0.2240069, 1.180753, -1.103574, 0, 1, 0.572549, 1,
-0.2197379, -0.522952, -1.985178, 0, 1, 0.5803922, 1,
-0.2158466, 0.3113507, -1.679772, 0, 1, 0.5843138, 1,
-0.2150301, -2.207824, -2.094525, 0, 1, 0.5921569, 1,
-0.2100398, -0.5649439, -3.170222, 0, 1, 0.5960785, 1,
-0.208492, -1.412091, -2.969696, 0, 1, 0.6039216, 1,
-0.2075943, -0.2491855, -3.356029, 0, 1, 0.6117647, 1,
-0.2051436, 0.4402979, -1.963057, 0, 1, 0.6156863, 1,
-0.2016651, 1.019474, 0.8227107, 0, 1, 0.6235294, 1,
-0.1983371, 0.02504468, -1.455292, 0, 1, 0.627451, 1,
-0.1981313, -0.2370186, -1.492065, 0, 1, 0.6352941, 1,
-0.1960216, -0.6965042, -1.746213, 0, 1, 0.6392157, 1,
-0.1958487, -0.6139219, -5.135416, 0, 1, 0.6470588, 1,
-0.1933034, -0.04960266, -2.55577, 0, 1, 0.6509804, 1,
-0.1914245, 0.9989663, 0.318042, 0, 1, 0.6588235, 1,
-0.1883674, -0.2948988, -2.854554, 0, 1, 0.6627451, 1,
-0.1876969, -0.7565913, -2.722625, 0, 1, 0.6705883, 1,
-0.1801205, 0.08011078, 0.01918587, 0, 1, 0.6745098, 1,
-0.1776431, 0.4406804, 0.2613614, 0, 1, 0.682353, 1,
-0.1773189, 1.235912, 0.8584235, 0, 1, 0.6862745, 1,
-0.173914, -0.3254279, -3.30381, 0, 1, 0.6941177, 1,
-0.1711895, 0.9302593, 0.2166961, 0, 1, 0.7019608, 1,
-0.168926, -0.7669209, -2.863713, 0, 1, 0.7058824, 1,
-0.1640609, -0.01811241, -1.442389, 0, 1, 0.7137255, 1,
-0.1636659, -1.205871, -2.727667, 0, 1, 0.7176471, 1,
-0.1605285, -1.307397, -3.051441, 0, 1, 0.7254902, 1,
-0.1602534, 0.4238087, 0.2106923, 0, 1, 0.7294118, 1,
-0.1602163, 0.3442405, 0.8445886, 0, 1, 0.7372549, 1,
-0.1594405, 0.2791213, -1.415047, 0, 1, 0.7411765, 1,
-0.1473271, 0.2449531, -0.5015532, 0, 1, 0.7490196, 1,
-0.1469274, 0.8294988, -0.004308951, 0, 1, 0.7529412, 1,
-0.1446851, -0.3308035, -2.159528, 0, 1, 0.7607843, 1,
-0.1434485, 0.4600805, -0.6644328, 0, 1, 0.7647059, 1,
-0.1427766, 0.8312391, 1.802297, 0, 1, 0.772549, 1,
-0.138974, -0.7136154, -4.48137, 0, 1, 0.7764706, 1,
-0.1322033, -1.031923, -1.997576, 0, 1, 0.7843137, 1,
-0.1317089, 1.793606, 2.692632, 0, 1, 0.7882353, 1,
-0.1219135, -1.321566, -3.842665, 0, 1, 0.7960784, 1,
-0.1218852, 0.6743917, -0.869419, 0, 1, 0.8039216, 1,
-0.1200377, -0.838414, -3.002172, 0, 1, 0.8078431, 1,
-0.1130751, 1.631113, 1.803056, 0, 1, 0.8156863, 1,
-0.110694, 1.16132, -0.09049194, 0, 1, 0.8196079, 1,
-0.1105595, -1.625841, -2.191567, 0, 1, 0.827451, 1,
-0.1086579, 0.9421, 0.5376864, 0, 1, 0.8313726, 1,
-0.1053857, 0.7247942, -0.1803318, 0, 1, 0.8392157, 1,
-0.1039929, -1.949566, -2.796522, 0, 1, 0.8431373, 1,
-0.102294, -1.376814, -4.102357, 0, 1, 0.8509804, 1,
-0.1013706, -0.7214958, -2.45892, 0, 1, 0.854902, 1,
-0.09970312, -0.7691095, -2.699232, 0, 1, 0.8627451, 1,
-0.09842752, 0.8652316, -0.1143982, 0, 1, 0.8666667, 1,
-0.09556779, 0.5460607, -0.3995885, 0, 1, 0.8745098, 1,
-0.0951977, 0.9774364, 0.04083028, 0, 1, 0.8784314, 1,
-0.09510131, -0.252393, -3.124333, 0, 1, 0.8862745, 1,
-0.09380382, 0.5927131, 0.1336839, 0, 1, 0.8901961, 1,
-0.09065907, 0.4862714, 1.168228, 0, 1, 0.8980392, 1,
-0.08903895, -0.9905705, -2.940459, 0, 1, 0.9058824, 1,
-0.08804652, 0.9097475, -1.105672, 0, 1, 0.9098039, 1,
-0.0857323, 0.4662355, 0.5102236, 0, 1, 0.9176471, 1,
-0.07934183, -1.759216, -2.094166, 0, 1, 0.9215686, 1,
-0.07848166, -1.066769, -3.511393, 0, 1, 0.9294118, 1,
-0.07816162, -1.065679, -2.663835, 0, 1, 0.9333333, 1,
-0.07205123, 0.8249732, -0.7834693, 0, 1, 0.9411765, 1,
-0.06960674, 1.070976, 0.6192325, 0, 1, 0.945098, 1,
-0.06204841, -0.6225863, -4.304742, 0, 1, 0.9529412, 1,
-0.0580326, 0.9116611, -1.411089, 0, 1, 0.9568627, 1,
-0.05781133, -1.289693, -0.364139, 0, 1, 0.9647059, 1,
-0.05317095, -1.354649, -2.214249, 0, 1, 0.9686275, 1,
-0.05212639, -0.1135738, -3.847462, 0, 1, 0.9764706, 1,
-0.05190513, -0.3457814, -0.4031323, 0, 1, 0.9803922, 1,
-0.0500885, 2.559354, 0.9212683, 0, 1, 0.9882353, 1,
-0.04954436, 1.129526, -0.01541203, 0, 1, 0.9921569, 1,
-0.04335535, -0.2087142, -2.375468, 0, 1, 1, 1,
-0.04318424, -1.424505, -2.593669, 0, 0.9921569, 1, 1,
-0.03808266, 0.6579612, 0.6208295, 0, 0.9882353, 1, 1,
-0.03768617, 0.05613448, -2.034429, 0, 0.9803922, 1, 1,
-0.0376238, 2.270891, -1.163899, 0, 0.9764706, 1, 1,
-0.02951565, -0.08161783, -3.510033, 0, 0.9686275, 1, 1,
-0.0288324, -3.199738, -1.956578, 0, 0.9647059, 1, 1,
-0.0274132, -0.1382072, -2.950802, 0, 0.9568627, 1, 1,
-0.02312699, -0.6524522, -5.224228, 0, 0.9529412, 1, 1,
-0.02291826, 0.04498344, 0.9746627, 0, 0.945098, 1, 1,
-0.02161023, 0.2706234, 0.6069065, 0, 0.9411765, 1, 1,
-0.02065524, -0.6062881, -2.852162, 0, 0.9333333, 1, 1,
-0.01805569, -0.01274914, -1.442912, 0, 0.9294118, 1, 1,
-0.01489693, 1.135559, -0.2584566, 0, 0.9215686, 1, 1,
-0.01164486, 0.8527775, 1.33825, 0, 0.9176471, 1, 1,
-0.01104678, 1.133773, -0.7433352, 0, 0.9098039, 1, 1,
-0.009842413, 0.1223126, -0.6593876, 0, 0.9058824, 1, 1,
-0.007718151, -0.2982318, -2.469422, 0, 0.8980392, 1, 1,
-0.006694937, 1.848547, -0.08120136, 0, 0.8901961, 1, 1,
-0.004689726, -0.7462787, -3.526387, 0, 0.8862745, 1, 1,
-0.003795967, -0.1822465, -3.273517, 0, 0.8784314, 1, 1,
0.001471371, 0.462998, 0.1766455, 0, 0.8745098, 1, 1,
0.005480482, 0.3937568, -1.695124, 0, 0.8666667, 1, 1,
0.006333965, -0.243502, 4.864837, 0, 0.8627451, 1, 1,
0.01406289, 0.07487251, 2.623684, 0, 0.854902, 1, 1,
0.01622872, 0.6814462, -1.51385, 0, 0.8509804, 1, 1,
0.02398115, -0.6936211, 4.342429, 0, 0.8431373, 1, 1,
0.02821236, 0.7485025, -0.5956042, 0, 0.8392157, 1, 1,
0.02861286, 0.6165725, 0.05788647, 0, 0.8313726, 1, 1,
0.03041563, 1.99834, 0.1382743, 0, 0.827451, 1, 1,
0.03237768, 0.2462606, 1.07507, 0, 0.8196079, 1, 1,
0.03836947, 1.060363, -1.175352, 0, 0.8156863, 1, 1,
0.0386755, -0.956463, 3.799003, 0, 0.8078431, 1, 1,
0.03999561, -0.240649, 2.241236, 0, 0.8039216, 1, 1,
0.04065229, -0.0926506, 2.953301, 0, 0.7960784, 1, 1,
0.04502603, -1.441268, 1.730426, 0, 0.7882353, 1, 1,
0.04980233, -0.5902465, 2.38646, 0, 0.7843137, 1, 1,
0.04993885, 0.4394244, -0.1237455, 0, 0.7764706, 1, 1,
0.05128939, 0.7145371, -0.2310414, 0, 0.772549, 1, 1,
0.05164435, 0.07106168, 1.046331, 0, 0.7647059, 1, 1,
0.05187852, -1.573948, 2.706173, 0, 0.7607843, 1, 1,
0.05792726, -0.3610045, 4.445393, 0, 0.7529412, 1, 1,
0.0629738, 0.4357189, 1.239786, 0, 0.7490196, 1, 1,
0.06391841, 1.11742, -0.08848163, 0, 0.7411765, 1, 1,
0.06482752, -1.771369, 2.976068, 0, 0.7372549, 1, 1,
0.06975798, 1.201944, -1.483768, 0, 0.7294118, 1, 1,
0.07033042, -0.9561632, 2.332543, 0, 0.7254902, 1, 1,
0.07102481, -0.4337821, 2.21534, 0, 0.7176471, 1, 1,
0.07109806, 0.6599354, 0.03945603, 0, 0.7137255, 1, 1,
0.07474644, -0.04942327, 1.208042, 0, 0.7058824, 1, 1,
0.07664635, -0.2343828, 2.545563, 0, 0.6980392, 1, 1,
0.08097057, 1.915741, 0.8959556, 0, 0.6941177, 1, 1,
0.08262798, 0.6762006, 1.508473, 0, 0.6862745, 1, 1,
0.08301141, 0.8822771, 0.2470017, 0, 0.682353, 1, 1,
0.08313017, 0.1199094, -0.4626305, 0, 0.6745098, 1, 1,
0.08446421, -1.153002, 3.786718, 0, 0.6705883, 1, 1,
0.08731297, -1.408866, 2.024175, 0, 0.6627451, 1, 1,
0.08736208, -0.1410767, 4.000007, 0, 0.6588235, 1, 1,
0.09043784, -0.02513996, 3.191934, 0, 0.6509804, 1, 1,
0.09429374, 2.02264, -1.070495, 0, 0.6470588, 1, 1,
0.1023926, -0.7953988, 5.823842, 0, 0.6392157, 1, 1,
0.1027028, 1.005751, -0.759707, 0, 0.6352941, 1, 1,
0.1044721, 0.3316371, -1.069306, 0, 0.627451, 1, 1,
0.1061563, 1.562374, 1.479056, 0, 0.6235294, 1, 1,
0.1068619, 0.7988297, 0.6152607, 0, 0.6156863, 1, 1,
0.1072175, -1.212822, 3.486525, 0, 0.6117647, 1, 1,
0.1074909, -0.518512, 2.481117, 0, 0.6039216, 1, 1,
0.1086352, 0.02660977, 1.139125, 0, 0.5960785, 1, 1,
0.1125916, -0.8008058, 2.690491, 0, 0.5921569, 1, 1,
0.1160693, 0.4587142, 0.9228292, 0, 0.5843138, 1, 1,
0.1166044, -0.1845177, 2.964135, 0, 0.5803922, 1, 1,
0.117566, -1.2546, 5.242412, 0, 0.572549, 1, 1,
0.1202556, -0.8949248, 1.963995, 0, 0.5686275, 1, 1,
0.1246374, -1.411549, 2.733878, 0, 0.5607843, 1, 1,
0.1249628, 0.3010376, 1.625631, 0, 0.5568628, 1, 1,
0.1282306, -0.9774428, 2.372832, 0, 0.5490196, 1, 1,
0.1298303, -0.3686703, 2.848527, 0, 0.5450981, 1, 1,
0.1312149, -1.208092, 2.339584, 0, 0.5372549, 1, 1,
0.1333806, 0.2555947, -0.4670115, 0, 0.5333334, 1, 1,
0.1343167, 0.9027891, -1.891236, 0, 0.5254902, 1, 1,
0.146048, -0.4122252, 1.734588, 0, 0.5215687, 1, 1,
0.1481951, 0.7354232, 0.518185, 0, 0.5137255, 1, 1,
0.1499588, 0.7044064, -0.4475965, 0, 0.509804, 1, 1,
0.1500929, -0.4352878, 4.348728, 0, 0.5019608, 1, 1,
0.1528435, -0.5860299, 4.015899, 0, 0.4941176, 1, 1,
0.1578643, -0.03219828, 2.932357, 0, 0.4901961, 1, 1,
0.1629357, 0.3186121, -1.700711, 0, 0.4823529, 1, 1,
0.1656305, -0.53815, 2.404283, 0, 0.4784314, 1, 1,
0.1673342, -1.093796, 3.134116, 0, 0.4705882, 1, 1,
0.1677112, -0.1546168, 1.513585, 0, 0.4666667, 1, 1,
0.1725323, -0.9400852, 1.933557, 0, 0.4588235, 1, 1,
0.1737251, 1.622222, 1.495894, 0, 0.454902, 1, 1,
0.1742269, -0.2841048, 1.066045, 0, 0.4470588, 1, 1,
0.1770473, 0.7726032, 0.03285206, 0, 0.4431373, 1, 1,
0.1772004, -1.180374, 5.054342, 0, 0.4352941, 1, 1,
0.1789863, 1.180234, 0.438992, 0, 0.4313726, 1, 1,
0.1791549, -0.4744948, 2.014113, 0, 0.4235294, 1, 1,
0.185293, -1.458444, 3.4726, 0, 0.4196078, 1, 1,
0.1878826, 0.4205758, 0.6730061, 0, 0.4117647, 1, 1,
0.1891691, -0.4955311, 1.258851, 0, 0.4078431, 1, 1,
0.1895193, 0.3980565, 1.621686, 0, 0.4, 1, 1,
0.1917949, -0.9128441, 0.9258017, 0, 0.3921569, 1, 1,
0.1926021, -2.409416, 3.878804, 0, 0.3882353, 1, 1,
0.1970811, -0.5683997, 2.890967, 0, 0.3803922, 1, 1,
0.198069, -1.467467, 1.983, 0, 0.3764706, 1, 1,
0.2047524, -1.428985, 1.595321, 0, 0.3686275, 1, 1,
0.208019, 2.129504, -1.090232, 0, 0.3647059, 1, 1,
0.213306, 1.15274, 1.82608, 0, 0.3568628, 1, 1,
0.2143133, 1.442098, 1.77178, 0, 0.3529412, 1, 1,
0.2175216, 1.230536, -1.229119, 0, 0.345098, 1, 1,
0.2179824, 0.7338502, 0.3610501, 0, 0.3411765, 1, 1,
0.2219766, -1.363453, 2.069733, 0, 0.3333333, 1, 1,
0.2234435, -0.2107596, 2.920717, 0, 0.3294118, 1, 1,
0.2325505, 0.9379821, 2.318079, 0, 0.3215686, 1, 1,
0.2333531, 2.642495, 0.5653318, 0, 0.3176471, 1, 1,
0.2371174, -0.1220335, 3.246958, 0, 0.3098039, 1, 1,
0.239871, -0.883173, 3.511122, 0, 0.3058824, 1, 1,
0.2444365, 0.4931234, -0.5810944, 0, 0.2980392, 1, 1,
0.2452309, 0.2511592, 0.2128325, 0, 0.2901961, 1, 1,
0.2458451, 1.18572, -0.1275633, 0, 0.2862745, 1, 1,
0.2468096, 0.1179093, 1.264575, 0, 0.2784314, 1, 1,
0.249415, 0.01998319, 1.8049, 0, 0.2745098, 1, 1,
0.2523152, 0.6466177, 0.027738, 0, 0.2666667, 1, 1,
0.2556566, 0.4975024, 0.2176055, 0, 0.2627451, 1, 1,
0.2565874, -1.308595, 1.71111, 0, 0.254902, 1, 1,
0.2584166, -0.1379625, 2.299048, 0, 0.2509804, 1, 1,
0.2622437, -0.2057796, 2.507186, 0, 0.2431373, 1, 1,
0.2669059, -0.6426236, -0.05395436, 0, 0.2392157, 1, 1,
0.2726293, 0.9009996, 0.1174628, 0, 0.2313726, 1, 1,
0.2754976, 0.9789684, -1.118, 0, 0.227451, 1, 1,
0.2757028, 0.006643314, 2.310741, 0, 0.2196078, 1, 1,
0.2759985, 1.803808, -0.4325765, 0, 0.2156863, 1, 1,
0.2784592, -1.479568, 2.159653, 0, 0.2078431, 1, 1,
0.2793879, 0.3880971, 0.9050652, 0, 0.2039216, 1, 1,
0.2853887, -0.06267004, 1.283951, 0, 0.1960784, 1, 1,
0.2865292, -0.6594985, 2.726476, 0, 0.1882353, 1, 1,
0.2876719, -0.06209753, 3.788217, 0, 0.1843137, 1, 1,
0.2885713, 1.451301, 0.5424954, 0, 0.1764706, 1, 1,
0.2968104, 0.8503845, 1.465602, 0, 0.172549, 1, 1,
0.298747, -0.09425613, 2.01083, 0, 0.1647059, 1, 1,
0.3128915, -0.106655, -0.3726689, 0, 0.1607843, 1, 1,
0.3140654, -0.7243342, 2.706988, 0, 0.1529412, 1, 1,
0.3163629, 0.355512, 0.9269113, 0, 0.1490196, 1, 1,
0.3183992, 0.6920204, 1.580591, 0, 0.1411765, 1, 1,
0.3192154, -0.3601571, -1.791465, 0, 0.1372549, 1, 1,
0.3207683, -0.412944, 2.924722, 0, 0.1294118, 1, 1,
0.3231662, 1.191082, -0.7258828, 0, 0.1254902, 1, 1,
0.3268729, -0.6423696, 3.840878, 0, 0.1176471, 1, 1,
0.3298416, 0.9176958, -0.2184735, 0, 0.1137255, 1, 1,
0.3304418, -0.9847296, 4.63125, 0, 0.1058824, 1, 1,
0.3304555, 2.263565, 0.3793519, 0, 0.09803922, 1, 1,
0.3325901, 1.614223, -0.1723078, 0, 0.09411765, 1, 1,
0.3377346, -0.2130923, 4.153638, 0, 0.08627451, 1, 1,
0.3384988, 0.9067611, -1.888799, 0, 0.08235294, 1, 1,
0.3410703, -0.2538952, 1.707527, 0, 0.07450981, 1, 1,
0.3501182, 1.26641, 0.5803279, 0, 0.07058824, 1, 1,
0.3585073, -0.3332715, 3.418886, 0, 0.0627451, 1, 1,
0.3620382, 0.1755046, 1.340061, 0, 0.05882353, 1, 1,
0.3715147, -1.072297, 1.602974, 0, 0.05098039, 1, 1,
0.3743808, 1.795819, 1.382505, 0, 0.04705882, 1, 1,
0.3768184, 0.7698619, 0.6044713, 0, 0.03921569, 1, 1,
0.3781651, 1.141746, 1.590956, 0, 0.03529412, 1, 1,
0.3809941, -1.045011, 4.192343, 0, 0.02745098, 1, 1,
0.3824196, 0.1676277, 0.6497126, 0, 0.02352941, 1, 1,
0.385484, -0.3916272, 2.635957, 0, 0.01568628, 1, 1,
0.3873064, -0.008836494, 1.210563, 0, 0.01176471, 1, 1,
0.3887583, 0.4251088, 0.5484201, 0, 0.003921569, 1, 1,
0.3918472, 0.3132609, 0.1055191, 0.003921569, 0, 1, 1,
0.3923065, -0.01135581, 1.443283, 0.007843138, 0, 1, 1,
0.3941137, -1.002072, 3.659547, 0.01568628, 0, 1, 1,
0.3998887, 0.4425852, 0.7433019, 0.01960784, 0, 1, 1,
0.4027526, 0.8283974, 0.6148969, 0.02745098, 0, 1, 1,
0.4041362, -0.8369856, 3.842287, 0.03137255, 0, 1, 1,
0.4048579, -0.3024289, 2.781373, 0.03921569, 0, 1, 1,
0.4076787, 1.286295, 1.476337, 0.04313726, 0, 1, 1,
0.4082682, 1.117283, -0.9746462, 0.05098039, 0, 1, 1,
0.4104121, 0.6010722, 1.95916, 0.05490196, 0, 1, 1,
0.4113405, 1.629858, 0.704748, 0.0627451, 0, 1, 1,
0.4149489, 0.3321836, 0.9660087, 0.06666667, 0, 1, 1,
0.4203091, -1.170831, 3.078271, 0.07450981, 0, 1, 1,
0.4208947, 1.177888, 0.8622342, 0.07843138, 0, 1, 1,
0.4212134, 0.4952459, -0.03818776, 0.08627451, 0, 1, 1,
0.4221173, 0.353139, 1.092767, 0.09019608, 0, 1, 1,
0.4289656, 1.393426, -0.9035863, 0.09803922, 0, 1, 1,
0.4302598, -1.521057, 3.814536, 0.1058824, 0, 1, 1,
0.4305356, -1.911461, 3.255379, 0.1098039, 0, 1, 1,
0.4334741, 0.7672192, -1.019763, 0.1176471, 0, 1, 1,
0.437094, 0.6053455, -0.4549827, 0.1215686, 0, 1, 1,
0.4410689, -1.085501, 2.714101, 0.1294118, 0, 1, 1,
0.4414702, 1.419732, -1.114303, 0.1333333, 0, 1, 1,
0.4418051, 0.4280643, 0.2847523, 0.1411765, 0, 1, 1,
0.442965, -0.9949322, 3.155077, 0.145098, 0, 1, 1,
0.4439022, -0.2096846, 1.178698, 0.1529412, 0, 1, 1,
0.4443748, 1.327249, 0.1980135, 0.1568628, 0, 1, 1,
0.4532484, -1.109506, 1.357417, 0.1647059, 0, 1, 1,
0.4536203, -0.596048, 2.555845, 0.1686275, 0, 1, 1,
0.4618888, -0.005409539, 2.090081, 0.1764706, 0, 1, 1,
0.4701949, -0.3158728, 2.636836, 0.1803922, 0, 1, 1,
0.4721246, -0.6536805, 1.616779, 0.1882353, 0, 1, 1,
0.4756604, 1.618377, -0.3685651, 0.1921569, 0, 1, 1,
0.4781597, 0.6256304, 1.424095, 0.2, 0, 1, 1,
0.4785092, -0.1672231, 0.6593756, 0.2078431, 0, 1, 1,
0.482114, -0.7400311, 2.247374, 0.2117647, 0, 1, 1,
0.4843558, 0.8103437, 1.640931, 0.2196078, 0, 1, 1,
0.4876776, 0.1573733, -0.03940486, 0.2235294, 0, 1, 1,
0.4885429, -0.4139843, 2.75403, 0.2313726, 0, 1, 1,
0.4892059, 0.900753, 1.35326, 0.2352941, 0, 1, 1,
0.4913443, 0.2476195, 3.627269, 0.2431373, 0, 1, 1,
0.4927927, 0.410291, 2.361047, 0.2470588, 0, 1, 1,
0.4935395, 0.5849266, 0.004370955, 0.254902, 0, 1, 1,
0.500174, -1.936476, 1.655668, 0.2588235, 0, 1, 1,
0.5012959, -1.308384, 0.5352314, 0.2666667, 0, 1, 1,
0.5014497, 1.750623, 1.38233, 0.2705882, 0, 1, 1,
0.5033383, 0.1756102, 0.09683535, 0.2784314, 0, 1, 1,
0.5034125, 1.416363, -0.9838786, 0.282353, 0, 1, 1,
0.5062336, 0.1090564, 1.81859, 0.2901961, 0, 1, 1,
0.5068316, 0.1309969, 0.9699851, 0.2941177, 0, 1, 1,
0.5079189, 1.12906, 2.125734, 0.3019608, 0, 1, 1,
0.5095841, -0.2266094, 1.433588, 0.3098039, 0, 1, 1,
0.5144095, -0.8637938, 3.414307, 0.3137255, 0, 1, 1,
0.5177264, -0.6484663, 2.011685, 0.3215686, 0, 1, 1,
0.5186257, 0.133891, 2.739536, 0.3254902, 0, 1, 1,
0.5216579, 1.325413, 0.9310895, 0.3333333, 0, 1, 1,
0.5246438, -1.653248, 4.758407, 0.3372549, 0, 1, 1,
0.5294176, 0.8305409, -1.168366, 0.345098, 0, 1, 1,
0.5317382, -1.974623, 2.606054, 0.3490196, 0, 1, 1,
0.531871, 0.1744101, 1.659251, 0.3568628, 0, 1, 1,
0.5323199, -0.4569429, 2.291854, 0.3607843, 0, 1, 1,
0.5372579, -0.04127989, 2.730805, 0.3686275, 0, 1, 1,
0.5432622, 0.7237687, -0.08444463, 0.372549, 0, 1, 1,
0.5432851, 1.154321, 0.4210813, 0.3803922, 0, 1, 1,
0.5478902, -1.631064, 2.2802, 0.3843137, 0, 1, 1,
0.5534283, -0.9621872, 4.348224, 0.3921569, 0, 1, 1,
0.5548762, -1.206924, 1.419012, 0.3960784, 0, 1, 1,
0.5596499, 0.01015952, 0.01103143, 0.4039216, 0, 1, 1,
0.5653203, 0.5280735, 2.169637, 0.4117647, 0, 1, 1,
0.565837, 0.558879, -0.57872, 0.4156863, 0, 1, 1,
0.5666522, -0.2002256, 1.432167, 0.4235294, 0, 1, 1,
0.5677124, 1.878999, 1.102968, 0.427451, 0, 1, 1,
0.5690799, 0.4702033, 1.228199, 0.4352941, 0, 1, 1,
0.5723718, 1.939939, 0.779762, 0.4392157, 0, 1, 1,
0.5818053, 1.690986, 0.9473324, 0.4470588, 0, 1, 1,
0.587155, -1.109918, 1.485331, 0.4509804, 0, 1, 1,
0.5948483, -0.4302511, 1.951196, 0.4588235, 0, 1, 1,
0.5953214, -0.5615348, 3.18156, 0.4627451, 0, 1, 1,
0.5960951, -0.5695999, 2.330503, 0.4705882, 0, 1, 1,
0.5978279, -1.738849, 2.356178, 0.4745098, 0, 1, 1,
0.5982527, 0.8825565, 1.625271, 0.4823529, 0, 1, 1,
0.5988317, -0.4854369, 3.43489, 0.4862745, 0, 1, 1,
0.6003154, 0.1641638, 1.452907, 0.4941176, 0, 1, 1,
0.6020256, -0.8673372, 3.728063, 0.5019608, 0, 1, 1,
0.603162, 1.98555, 0.3198996, 0.5058824, 0, 1, 1,
0.6126813, 0.8402103, 1.582983, 0.5137255, 0, 1, 1,
0.6132417, 0.6710394, 2.893085, 0.5176471, 0, 1, 1,
0.6132559, 0.5156972, 1.534479, 0.5254902, 0, 1, 1,
0.6135867, 0.1835832, -0.3784327, 0.5294118, 0, 1, 1,
0.6149294, -0.2600493, 2.082551, 0.5372549, 0, 1, 1,
0.6174302, 0.215929, 0.03035692, 0.5411765, 0, 1, 1,
0.6188737, 1.011972, -0.98456, 0.5490196, 0, 1, 1,
0.6225966, 0.08108857, 1.434654, 0.5529412, 0, 1, 1,
0.6235324, -0.622179, 2.593165, 0.5607843, 0, 1, 1,
0.6238431, 0.5202757, 2.976613, 0.5647059, 0, 1, 1,
0.6260356, 0.9757441, 0.9956359, 0.572549, 0, 1, 1,
0.6279267, 0.4042869, 0.2593958, 0.5764706, 0, 1, 1,
0.6283318, 0.325979, -0.5331782, 0.5843138, 0, 1, 1,
0.6289632, -0.3877378, 1.986228, 0.5882353, 0, 1, 1,
0.6296409, 2.251729, 2.106505, 0.5960785, 0, 1, 1,
0.6301952, -0.0913364, 1.674835, 0.6039216, 0, 1, 1,
0.6324269, -2.299407, 0.7643542, 0.6078432, 0, 1, 1,
0.6367139, 1.064808, 1.034041, 0.6156863, 0, 1, 1,
0.6409117, -0.02990055, 1.283533, 0.6196079, 0, 1, 1,
0.6468945, 0.1582652, 1.395652, 0.627451, 0, 1, 1,
0.6479055, -0.3656162, 1.171757, 0.6313726, 0, 1, 1,
0.6533662, 0.4908687, 1.29783, 0.6392157, 0, 1, 1,
0.6614183, -1.904594, 2.912352, 0.6431373, 0, 1, 1,
0.6659399, -0.4975773, 1.226405, 0.6509804, 0, 1, 1,
0.6717507, -0.3365103, 3.925042, 0.654902, 0, 1, 1,
0.6751702, 1.056385, 1.872615, 0.6627451, 0, 1, 1,
0.676311, -0.1175232, 0.2793496, 0.6666667, 0, 1, 1,
0.676803, 0.4115142, 1.69049, 0.6745098, 0, 1, 1,
0.6795849, -0.9982861, 2.531286, 0.6784314, 0, 1, 1,
0.68063, -0.9387904, 1.880216, 0.6862745, 0, 1, 1,
0.6830178, 0.4391876, -0.3247885, 0.6901961, 0, 1, 1,
0.6840051, 0.1380988, 0.545954, 0.6980392, 0, 1, 1,
0.6856559, -0.3423923, 2.813687, 0.7058824, 0, 1, 1,
0.6862605, -0.1858157, 2.723271, 0.7098039, 0, 1, 1,
0.6872154, 0.5888745, -0.3574777, 0.7176471, 0, 1, 1,
0.6919904, -0.8072649, 2.625735, 0.7215686, 0, 1, 1,
0.6941682, -0.3337528, 3.385772, 0.7294118, 0, 1, 1,
0.6948311, 1.344272, -0.526175, 0.7333333, 0, 1, 1,
0.6993282, 1.089271, -0.7832678, 0.7411765, 0, 1, 1,
0.7002193, 0.3858624, 1.791848, 0.7450981, 0, 1, 1,
0.7040696, 0.1121634, 1.430863, 0.7529412, 0, 1, 1,
0.705738, -1.466027, 2.091509, 0.7568628, 0, 1, 1,
0.7142953, -0.9752184, 3.410805, 0.7647059, 0, 1, 1,
0.7152777, 0.5679119, 0.3308286, 0.7686275, 0, 1, 1,
0.7161121, -0.1911258, 2.381927, 0.7764706, 0, 1, 1,
0.7209436, -0.3244278, 1.749767, 0.7803922, 0, 1, 1,
0.7366245, 0.6776966, 0.412167, 0.7882353, 0, 1, 1,
0.7376482, -0.3516264, 3.884552, 0.7921569, 0, 1, 1,
0.7383559, -1.185996, 3.382116, 0.8, 0, 1, 1,
0.7424684, 0.350154, 0.5801668, 0.8078431, 0, 1, 1,
0.7464417, 0.8115302, 1.012841, 0.8117647, 0, 1, 1,
0.747924, 0.1573758, 4.12394, 0.8196079, 0, 1, 1,
0.752843, 1.107262, -0.1730782, 0.8235294, 0, 1, 1,
0.7573121, 0.4962731, 0.5820013, 0.8313726, 0, 1, 1,
0.7579816, 1.6635, 2.015231, 0.8352941, 0, 1, 1,
0.7614393, -3.133715, 2.585646, 0.8431373, 0, 1, 1,
0.763071, 1.711881, 0.08091379, 0.8470588, 0, 1, 1,
0.764561, 0.299768, 1.561162, 0.854902, 0, 1, 1,
0.7661796, -0.6187451, 4.285042, 0.8588235, 0, 1, 1,
0.7675322, 1.770618, 0.7557422, 0.8666667, 0, 1, 1,
0.7706085, -0.3954693, 1.058646, 0.8705882, 0, 1, 1,
0.7754595, -0.02800183, 1.815213, 0.8784314, 0, 1, 1,
0.782814, 0.6496675, 0.8064308, 0.8823529, 0, 1, 1,
0.7864211, 2.075725, 1.362056, 0.8901961, 0, 1, 1,
0.786628, 0.04553588, 2.403814, 0.8941177, 0, 1, 1,
0.7868266, -0.08567932, 0.8019384, 0.9019608, 0, 1, 1,
0.7883347, -0.9740761, 2.667859, 0.9098039, 0, 1, 1,
0.7900108, -0.3218491, 1.390899, 0.9137255, 0, 1, 1,
0.7906039, 0.01356726, 2.265255, 0.9215686, 0, 1, 1,
0.7908618, -2.676799, 3.643879, 0.9254902, 0, 1, 1,
0.7938673, -1.515918, 1.370946, 0.9333333, 0, 1, 1,
0.799478, 0.5530878, 0.8528556, 0.9372549, 0, 1, 1,
0.8054968, -1.810145, 3.974398, 0.945098, 0, 1, 1,
0.8061829, 0.8445992, -0.01049628, 0.9490196, 0, 1, 1,
0.807941, 0.364637, 0.6049185, 0.9568627, 0, 1, 1,
0.8129039, 0.01636557, 1.420165, 0.9607843, 0, 1, 1,
0.8169432, -1.243051, 1.801276, 0.9686275, 0, 1, 1,
0.8279107, -0.2703933, 1.984785, 0.972549, 0, 1, 1,
0.8358437, 0.6522399, 1.111201, 0.9803922, 0, 1, 1,
0.8358554, -0.2040193, 2.336062, 0.9843137, 0, 1, 1,
0.8388451, 0.2398368, 2.188936, 0.9921569, 0, 1, 1,
0.8400818, 0.4416485, 2.701901, 0.9960784, 0, 1, 1,
0.8448565, 0.7663054, 0.6845886, 1, 0, 0.9960784, 1,
0.8464251, 0.404765, 0.5054374, 1, 0, 0.9882353, 1,
0.8578797, -0.6287896, 0.8693, 1, 0, 0.9843137, 1,
0.8591028, -0.3331184, 3.39374, 1, 0, 0.9764706, 1,
0.861954, 0.7339915, 2.101288, 1, 0, 0.972549, 1,
0.8786733, 0.3738788, 2.440568, 1, 0, 0.9647059, 1,
0.8821927, 0.5114498, 3.092047, 1, 0, 0.9607843, 1,
0.885307, 1.062589, 0.6485716, 1, 0, 0.9529412, 1,
0.8876104, 1.342585, 1.721562, 1, 0, 0.9490196, 1,
0.8896284, 2.138766, -0.2649575, 1, 0, 0.9411765, 1,
0.8905181, -1.673413, 3.419711, 1, 0, 0.9372549, 1,
0.8938807, 0.4239986, -0.8206812, 1, 0, 0.9294118, 1,
0.8939155, 1.552469, 0.9076924, 1, 0, 0.9254902, 1,
0.8977621, 1.450768, -0.7559015, 1, 0, 0.9176471, 1,
0.901446, 0.7922674, 0.103102, 1, 0, 0.9137255, 1,
0.9092017, -0.0305172, 1.98494, 1, 0, 0.9058824, 1,
0.9125299, -0.3260157, 2.291737, 1, 0, 0.9019608, 1,
0.9160357, 1.473076, 0.9962652, 1, 0, 0.8941177, 1,
0.9211335, 0.5837313, 0.8668486, 1, 0, 0.8862745, 1,
0.9251055, 0.7019888, 1.023411, 1, 0, 0.8823529, 1,
0.9272147, 0.450801, -0.8880683, 1, 0, 0.8745098, 1,
0.9299427, -0.4078546, 1.735123, 1, 0, 0.8705882, 1,
0.9315044, -0.08897562, 1.893137, 1, 0, 0.8627451, 1,
0.9338306, 1.19665, -0.07526841, 1, 0, 0.8588235, 1,
0.9338373, -0.3759921, 1.174571, 1, 0, 0.8509804, 1,
0.9342933, 0.008663132, 2.291863, 1, 0, 0.8470588, 1,
0.9373002, -0.5062755, 1.941586, 1, 0, 0.8392157, 1,
0.9436499, -0.8360635, 2.432451, 1, 0, 0.8352941, 1,
0.9484079, 0.4035118, 0.8098846, 1, 0, 0.827451, 1,
0.9504896, -0.9995585, 1.957397, 1, 0, 0.8235294, 1,
0.9516717, 1.018768, 1.297661, 1, 0, 0.8156863, 1,
0.965745, 0.4703177, 1.300184, 1, 0, 0.8117647, 1,
0.968726, 0.390121, 1.906383, 1, 0, 0.8039216, 1,
0.9842886, -0.330119, 1.930988, 1, 0, 0.7960784, 1,
0.9849304, -1.5302, 2.759946, 1, 0, 0.7921569, 1,
0.993669, -0.2574883, 2.890753, 1, 0, 0.7843137, 1,
0.999531, 0.7963763, -0.8754679, 1, 0, 0.7803922, 1,
1.001461, 1.197953, 1.820885, 1, 0, 0.772549, 1,
1.00304, 0.2168048, 1.891589, 1, 0, 0.7686275, 1,
1.016285, 0.3930479, 1.257022, 1, 0, 0.7607843, 1,
1.017527, -0.1597007, 2.808167, 1, 0, 0.7568628, 1,
1.01879, -0.1361377, 1.930854, 1, 0, 0.7490196, 1,
1.024194, -1.059213, 1.940372, 1, 0, 0.7450981, 1,
1.025044, 0.5293175, 0.1612766, 1, 0, 0.7372549, 1,
1.049893, 0.2011242, 4.018926, 1, 0, 0.7333333, 1,
1.056612, 0.03747264, 1.73218, 1, 0, 0.7254902, 1,
1.059819, 0.01764164, 0.7179459, 1, 0, 0.7215686, 1,
1.063167, -0.6996447, 4.678217, 1, 0, 0.7137255, 1,
1.074872, 0.3273695, 2.802964, 1, 0, 0.7098039, 1,
1.075632, 0.3710223, 2.594982, 1, 0, 0.7019608, 1,
1.077873, 0.9153499, 0.6418998, 1, 0, 0.6941177, 1,
1.07865, 0.9432656, 1.500479, 1, 0, 0.6901961, 1,
1.081234, 0.08138836, 1.39714, 1, 0, 0.682353, 1,
1.082726, -0.4850988, 0.1087273, 1, 0, 0.6784314, 1,
1.084677, -0.5961897, -0.8062449, 1, 0, 0.6705883, 1,
1.090044, -0.8859697, 1.679661, 1, 0, 0.6666667, 1,
1.096061, -0.08461118, 2.899049, 1, 0, 0.6588235, 1,
1.111127, -1.819498, 2.496029, 1, 0, 0.654902, 1,
1.11166, -0.06029555, -0.007641259, 1, 0, 0.6470588, 1,
1.115266, -1.051673, 1.311929, 1, 0, 0.6431373, 1,
1.120818, 0.2229048, 1.34765, 1, 0, 0.6352941, 1,
1.124036, 0.6484606, 1.425413, 1, 0, 0.6313726, 1,
1.126307, 0.7155291, 0.5109839, 1, 0, 0.6235294, 1,
1.138337, -1.121451, 2.757832, 1, 0, 0.6196079, 1,
1.138732, 0.5714312, 1.450465, 1, 0, 0.6117647, 1,
1.148069, 1.258274, -0.4609647, 1, 0, 0.6078432, 1,
1.150774, 2.558617, -0.6173258, 1, 0, 0.6, 1,
1.161073, -1.46967, 3.078057, 1, 0, 0.5921569, 1,
1.177446, 0.9137245, -0.07508083, 1, 0, 0.5882353, 1,
1.192251, -0.3835203, 0.5113786, 1, 0, 0.5803922, 1,
1.210098, 0.7406627, 0.6488539, 1, 0, 0.5764706, 1,
1.213493, -1.650022, 4.478048, 1, 0, 0.5686275, 1,
1.22264, -0.6038153, 0.9064814, 1, 0, 0.5647059, 1,
1.223867, -0.07761958, -0.137119, 1, 0, 0.5568628, 1,
1.233581, 0.6558431, 1.095177, 1, 0, 0.5529412, 1,
1.247538, 0.9366813, 1.414477, 1, 0, 0.5450981, 1,
1.249403, -2.140371, 5.157727, 1, 0, 0.5411765, 1,
1.267364, 1.165364, -0.1247794, 1, 0, 0.5333334, 1,
1.273069, -0.4254724, 1.099518, 1, 0, 0.5294118, 1,
1.281516, -0.1719026, 3.613485, 1, 0, 0.5215687, 1,
1.282312, -0.4769043, 2.413397, 1, 0, 0.5176471, 1,
1.307425, 0.2427194, 1.54863, 1, 0, 0.509804, 1,
1.320042, -0.999458, 2.950976, 1, 0, 0.5058824, 1,
1.327985, 1.21538, 0.769046, 1, 0, 0.4980392, 1,
1.338988, -1.383152, 1.870767, 1, 0, 0.4901961, 1,
1.34129, -0.4734035, 2.245895, 1, 0, 0.4862745, 1,
1.356046, 1.630694, 0.3306259, 1, 0, 0.4784314, 1,
1.35865, -1.68803, 2.916181, 1, 0, 0.4745098, 1,
1.362448, -0.299655, 1.255561, 1, 0, 0.4666667, 1,
1.374138, -1.016446, 3.38284, 1, 0, 0.4627451, 1,
1.413168, -0.2419682, 1.180456, 1, 0, 0.454902, 1,
1.415064, -0.02807917, 1.620649, 1, 0, 0.4509804, 1,
1.418038, -1.470948, 4.280532, 1, 0, 0.4431373, 1,
1.419398, 0.9455135, -0.07819463, 1, 0, 0.4392157, 1,
1.42108, 0.178227, 2.080678, 1, 0, 0.4313726, 1,
1.424159, 0.04905101, -0.318804, 1, 0, 0.427451, 1,
1.429295, -1.256701, 1.529913, 1, 0, 0.4196078, 1,
1.431992, -1.155364, 2.885668, 1, 0, 0.4156863, 1,
1.434442, -0.005560961, 1.701764, 1, 0, 0.4078431, 1,
1.448192, 0.3793757, -0.01735101, 1, 0, 0.4039216, 1,
1.46445, 0.3169583, 2.754476, 1, 0, 0.3960784, 1,
1.465177, 0.7487065, 1.872347, 1, 0, 0.3882353, 1,
1.467206, 1.021275, 1.557625, 1, 0, 0.3843137, 1,
1.471596, -0.6002413, 1.071294, 1, 0, 0.3764706, 1,
1.480805, -0.004713469, 2.38513, 1, 0, 0.372549, 1,
1.485583, -0.9517919, 1.981019, 1, 0, 0.3647059, 1,
1.49261, -0.1115505, 1.719435, 1, 0, 0.3607843, 1,
1.508473, -0.4125843, 2.725377, 1, 0, 0.3529412, 1,
1.510983, -2.405869, 2.751817, 1, 0, 0.3490196, 1,
1.517404, 0.8786578, 0.5202979, 1, 0, 0.3411765, 1,
1.521458, 0.6415266, 1.468317, 1, 0, 0.3372549, 1,
1.527287, 1.723171, -0.01293729, 1, 0, 0.3294118, 1,
1.535213, 1.423171, 1.36581, 1, 0, 0.3254902, 1,
1.538549, -1.669629, 2.36568, 1, 0, 0.3176471, 1,
1.5586, -2.388339, 3.810257, 1, 0, 0.3137255, 1,
1.588729, 2.385372, 0.2440477, 1, 0, 0.3058824, 1,
1.599177, -1.603682, 2.17621, 1, 0, 0.2980392, 1,
1.605097, -0.3916128, 3.64598, 1, 0, 0.2941177, 1,
1.611467, 0.3860256, 0.3497914, 1, 0, 0.2862745, 1,
1.622614, 0.7441496, 2.226041, 1, 0, 0.282353, 1,
1.623845, -0.0234666, 2.054098, 1, 0, 0.2745098, 1,
1.641867, -0.5680889, 1.160669, 1, 0, 0.2705882, 1,
1.64274, -1.362603, 3.475588, 1, 0, 0.2627451, 1,
1.657226, -1.740058, 1.92554, 1, 0, 0.2588235, 1,
1.666138, 0.3942803, 0.4165943, 1, 0, 0.2509804, 1,
1.683457, -1.377469, 2.674885, 1, 0, 0.2470588, 1,
1.684674, 0.288746, -0.771691, 1, 0, 0.2392157, 1,
1.687327, 0.6071745, 1.699008, 1, 0, 0.2352941, 1,
1.699882, -0.9630874, 2.42378, 1, 0, 0.227451, 1,
1.794947, -0.4501628, 1.185352, 1, 0, 0.2235294, 1,
1.824118, -0.6609726, 1.589923, 1, 0, 0.2156863, 1,
1.847826, -0.00997819, 3.601313, 1, 0, 0.2117647, 1,
1.851289, -0.1911473, 2.739198, 1, 0, 0.2039216, 1,
1.855961, -0.2550461, 2.200232, 1, 0, 0.1960784, 1,
1.861208, 0.09511277, 1.603254, 1, 0, 0.1921569, 1,
1.872313, -0.1191042, 2.811632, 1, 0, 0.1843137, 1,
1.904671, 0.6298363, 2.227041, 1, 0, 0.1803922, 1,
1.932477, -0.5507607, 1.332774, 1, 0, 0.172549, 1,
1.934404, -0.6758329, 1.639238, 1, 0, 0.1686275, 1,
1.941007, 0.5779375, 0.4642004, 1, 0, 0.1607843, 1,
1.948157, 1.343763, -0.04940603, 1, 0, 0.1568628, 1,
1.963191, 0.8109549, 0.602516, 1, 0, 0.1490196, 1,
1.968812, -0.6495799, 2.797343, 1, 0, 0.145098, 1,
1.999046, -1.159967, 2.069421, 1, 0, 0.1372549, 1,
2.001641, 0.4226599, 1.551217, 1, 0, 0.1333333, 1,
2.013121, -0.07298797, 1.791207, 1, 0, 0.1254902, 1,
2.07417, 2.101098, 1.291687, 1, 0, 0.1215686, 1,
2.080551, 0.3409926, 1.998559, 1, 0, 0.1137255, 1,
2.110664, 2.176818, 0.3275674, 1, 0, 0.1098039, 1,
2.140264, -0.2119342, 4.337463, 1, 0, 0.1019608, 1,
2.150649, 1.502956, 0.08188416, 1, 0, 0.09411765, 1,
2.155683, -0.4839317, 1.311528, 1, 0, 0.09019608, 1,
2.237347, -1.770448, 3.8008, 1, 0, 0.08235294, 1,
2.258741, 1.81947, -0.2782223, 1, 0, 0.07843138, 1,
2.334707, 0.6540644, 2.412355, 1, 0, 0.07058824, 1,
2.354195, -0.9438071, 3.290361, 1, 0, 0.06666667, 1,
2.443502, 0.3984933, 1.674225, 1, 0, 0.05882353, 1,
2.492082, -0.8127894, 0.6438267, 1, 0, 0.05490196, 1,
2.514194, 1.572108, 1.933594, 1, 0, 0.04705882, 1,
2.514727, 1.327229, 0.6608008, 1, 0, 0.04313726, 1,
2.683093, 0.2593018, 2.711067, 1, 0, 0.03529412, 1,
2.708941, -0.8340068, 1.525655, 1, 0, 0.03137255, 1,
2.930321, 0.1915905, 0.7446341, 1, 0, 0.02352941, 1,
2.972977, -1.20763, 2.868363, 1, 0, 0.01960784, 1,
3.164404, 1.973134, 1.566756, 1, 0, 0.01176471, 1,
3.536445, 0.2814407, 2.80749, 1, 0, 0.007843138, 1
=======
-2.715706, 0.09773953, -0.5014562, 1, 0, 0, 1,
-2.59858, -0.03160495, -1.88341, 1, 0.007843138, 0, 1,
-2.595652, 1.149082, -0.9755363, 1, 0.01176471, 0, 1,
-2.504839, -0.6085352, -1.122403, 1, 0.01960784, 0, 1,
-2.427758, 0.5555805, -0.7976934, 1, 0.02352941, 0, 1,
-2.422987, -2.472687, -2.141932, 1, 0.03137255, 0, 1,
-2.399384, 1.538586, -2.441228, 1, 0.03529412, 0, 1,
-2.167244, -0.9271089, -3.931145, 1, 0.04313726, 0, 1,
-2.127672, 0.8655376, -2.241365, 1, 0.04705882, 0, 1,
-2.127573, 1.321928, -0.4913332, 1, 0.05490196, 0, 1,
-2.096889, -0.1130947, -3.787278, 1, 0.05882353, 0, 1,
-2.096615, 2.497798, -2.341569, 1, 0.06666667, 0, 1,
-2.096272, -0.2957483, -3.340071, 1, 0.07058824, 0, 1,
-2.067258, -1.712853, -3.434294, 1, 0.07843138, 0, 1,
-2.051269, 1.072543, -1.037944, 1, 0.08235294, 0, 1,
-2.031537, 0.7714521, -1.217636, 1, 0.09019608, 0, 1,
-2.014467, 1.591265, -3.074082, 1, 0.09411765, 0, 1,
-1.990606, 0.9621137, 0.02619696, 1, 0.1019608, 0, 1,
-1.974766, -0.06267107, -1.270191, 1, 0.1098039, 0, 1,
-1.974586, -1.19578, -1.907204, 1, 0.1137255, 0, 1,
-1.947075, 0.1512953, -0.8781347, 1, 0.1215686, 0, 1,
-1.940485, 0.3546417, -0.2831526, 1, 0.1254902, 0, 1,
-1.893381, 0.6067155, -2.207156, 1, 0.1333333, 0, 1,
-1.878356, -2.216611, -1.244138, 1, 0.1372549, 0, 1,
-1.869504, -0.1224922, -1.874266, 1, 0.145098, 0, 1,
-1.866537, -0.002014179, -0.1455121, 1, 0.1490196, 0, 1,
-1.863428, 0.4854238, -1.834837, 1, 0.1568628, 0, 1,
-1.855802, 0.9594647, -1.706951, 1, 0.1607843, 0, 1,
-1.845969, -0.34772, 0.09727135, 1, 0.1686275, 0, 1,
-1.802824, -0.7840043, -1.724665, 1, 0.172549, 0, 1,
-1.786416, 1.948823, -1.762662, 1, 0.1803922, 0, 1,
-1.781695, -1.459147, -3.072876, 1, 0.1843137, 0, 1,
-1.768071, 0.4463336, -0.1633467, 1, 0.1921569, 0, 1,
-1.760463, -1.739534, -1.343861, 1, 0.1960784, 0, 1,
-1.75292, -0.3727952, -2.081929, 1, 0.2039216, 0, 1,
-1.748415, -1.275491, -2.989467, 1, 0.2117647, 0, 1,
-1.74712, 0.8579987, -1.236514, 1, 0.2156863, 0, 1,
-1.742847, -1.269826, -1.087569, 1, 0.2235294, 0, 1,
-1.737888, 0.3051043, 0.1209166, 1, 0.227451, 0, 1,
-1.686242, -0.6713045, -1.806526, 1, 0.2352941, 0, 1,
-1.681944, 1.247653, 0.1457929, 1, 0.2392157, 0, 1,
-1.67566, 0.6221087, -2.128044, 1, 0.2470588, 0, 1,
-1.66804, 0.3020096, -1.965543, 1, 0.2509804, 0, 1,
-1.663965, 1.359002, -0.1143577, 1, 0.2588235, 0, 1,
-1.656748, -0.7161603, -1.431204, 1, 0.2627451, 0, 1,
-1.646057, -1.175722, -1.83457, 1, 0.2705882, 0, 1,
-1.63865, -0.3268665, -0.8847638, 1, 0.2745098, 0, 1,
-1.635572, -0.4991215, -0.7061546, 1, 0.282353, 0, 1,
-1.615074, -1.078228, -0.9524606, 1, 0.2862745, 0, 1,
-1.614919, -0.4895675, -0.6939102, 1, 0.2941177, 0, 1,
-1.603989, -0.695852, -2.028433, 1, 0.3019608, 0, 1,
-1.596597, 1.210612, -2.277013, 1, 0.3058824, 0, 1,
-1.5929, 0.2713177, -2.955191, 1, 0.3137255, 0, 1,
-1.591513, -0.9027206, -2.338302, 1, 0.3176471, 0, 1,
-1.590627, -0.554166, -1.976285, 1, 0.3254902, 0, 1,
-1.590401, 0.5500113, -0.7131512, 1, 0.3294118, 0, 1,
-1.589444, -0.5607934, -2.410104, 1, 0.3372549, 0, 1,
-1.587263, -0.6758373, -2.241914, 1, 0.3411765, 0, 1,
-1.578569, 0.6418265, -0.5016376, 1, 0.3490196, 0, 1,
-1.574279, 1.605399, 0.4178688, 1, 0.3529412, 0, 1,
-1.562826, -0.6536143, -2.303784, 1, 0.3607843, 0, 1,
-1.536753, 0.5349848, -1.652837, 1, 0.3647059, 0, 1,
-1.534741, -1.56074, -2.10521, 1, 0.372549, 0, 1,
-1.525103, 0.7857376, -0.8104743, 1, 0.3764706, 0, 1,
-1.515084, -1.02717, -4.193365, 1, 0.3843137, 0, 1,
-1.504613, -1.285487, -2.799407, 1, 0.3882353, 0, 1,
-1.484271, -1.614336, -2.295745, 1, 0.3960784, 0, 1,
-1.474754, -1.990781, -2.974234, 1, 0.4039216, 0, 1,
-1.45885, -0.424309, -1.947267, 1, 0.4078431, 0, 1,
-1.453551, 1.605302, 0.78596, 1, 0.4156863, 0, 1,
-1.450379, -1.621037, -0.5213754, 1, 0.4196078, 0, 1,
-1.448877, 0.4314692, -2.005584, 1, 0.427451, 0, 1,
-1.437821, -0.1882658, -0.9348395, 1, 0.4313726, 0, 1,
-1.433291, -1.109555, -2.175903, 1, 0.4392157, 0, 1,
-1.424607, -0.9681651, -0.9307789, 1, 0.4431373, 0, 1,
-1.424187, -0.9072573, -2.22244, 1, 0.4509804, 0, 1,
-1.421815, 1.117444, 0.3287121, 1, 0.454902, 0, 1,
-1.413693, -0.1399282, -1.72984, 1, 0.4627451, 0, 1,
-1.412311, -0.1107533, -2.160548, 1, 0.4666667, 0, 1,
-1.409634, 0.7673885, -0.3791613, 1, 0.4745098, 0, 1,
-1.384057, -0.5865045, -2.345193, 1, 0.4784314, 0, 1,
-1.383866, -0.4281342, -3.00642, 1, 0.4862745, 0, 1,
-1.380026, 1.923845, 0.1747327, 1, 0.4901961, 0, 1,
-1.379607, 1.134004, -1.016001, 1, 0.4980392, 0, 1,
-1.376973, -1.95262, -4.625336, 1, 0.5058824, 0, 1,
-1.375804, -0.521294, -2.570283, 1, 0.509804, 0, 1,
-1.370769, -1.063479, -1.515507, 1, 0.5176471, 0, 1,
-1.352882, 0.4443614, -1.442917, 1, 0.5215687, 0, 1,
-1.333885, -0.5002137, -1.32853, 1, 0.5294118, 0, 1,
-1.332021, 0.5308252, -3.216402, 1, 0.5333334, 0, 1,
-1.327413, -0.1932855, -2.255248, 1, 0.5411765, 0, 1,
-1.323489, 0.6948117, -0.1133195, 1, 0.5450981, 0, 1,
-1.315812, 0.3941222, -2.586824, 1, 0.5529412, 0, 1,
-1.315682, 0.2110084, -1.392063, 1, 0.5568628, 0, 1,
-1.314275, -0.3335869, -2.454534, 1, 0.5647059, 0, 1,
-1.301563, 0.5233287, -1.265249, 1, 0.5686275, 0, 1,
-1.297135, 2.166151, 0.965434, 1, 0.5764706, 0, 1,
-1.295876, -0.9197605, -0.03870141, 1, 0.5803922, 0, 1,
-1.293345, -1.121425, -2.367318, 1, 0.5882353, 0, 1,
-1.286562, 1.068773, -0.4151425, 1, 0.5921569, 0, 1,
-1.274518, 0.4535272, -2.515082, 1, 0.6, 0, 1,
-1.270659, 0.4671775, -0.7293344, 1, 0.6078432, 0, 1,
-1.263989, 0.3827495, -0.6483575, 1, 0.6117647, 0, 1,
-1.263837, 0.8031766, -1.229959, 1, 0.6196079, 0, 1,
-1.263134, -1.910087, -3.537962, 1, 0.6235294, 0, 1,
-1.260795, 0.6433311, 0.4526138, 1, 0.6313726, 0, 1,
-1.256215, -1.303959, -2.770492, 1, 0.6352941, 0, 1,
-1.248424, 0.007871537, -2.359271, 1, 0.6431373, 0, 1,
-1.244939, -1.098599, -2.831812, 1, 0.6470588, 0, 1,
-1.235054, 0.7838922, 0.3269379, 1, 0.654902, 0, 1,
-1.232357, 0.1701737, -0.1566146, 1, 0.6588235, 0, 1,
-1.204711, 0.4124328, -0.6528923, 1, 0.6666667, 0, 1,
-1.201711, 0.7228184, 0.38015, 1, 0.6705883, 0, 1,
-1.199743, -0.2949971, -2.881621, 1, 0.6784314, 0, 1,
-1.174268, -0.8592299, -1.387342, 1, 0.682353, 0, 1,
-1.171978, -0.4056696, -1.111753, 1, 0.6901961, 0, 1,
-1.164034, 1.280237, -0.7954099, 1, 0.6941177, 0, 1,
-1.161594, 0.2186807, -2.355739, 1, 0.7019608, 0, 1,
-1.142786, 0.7679536, -0.7765083, 1, 0.7098039, 0, 1,
-1.136109, 0.4735759, -2.111093, 1, 0.7137255, 0, 1,
-1.135381, 0.5974415, -1.688983, 1, 0.7215686, 0, 1,
-1.127802, -1.349052, -3.226874, 1, 0.7254902, 0, 1,
-1.124314, -3.195509, -2.382004, 1, 0.7333333, 0, 1,
-1.123324, -0.4389553, -3.675823, 1, 0.7372549, 0, 1,
-1.11112, 1.162821, -1.621699, 1, 0.7450981, 0, 1,
-1.109812, -0.329187, -1.742063, 1, 0.7490196, 0, 1,
-1.10082, 0.03806128, -2.079523, 1, 0.7568628, 0, 1,
-1.098266, -1.15124, -1.69856, 1, 0.7607843, 0, 1,
-1.095799, -0.640222, -2.324672, 1, 0.7686275, 0, 1,
-1.091514, 1.127356, 0.7595886, 1, 0.772549, 0, 1,
-1.089302, -1.56854, -3.907978, 1, 0.7803922, 0, 1,
-1.086459, -0.2836663, -0.7013453, 1, 0.7843137, 0, 1,
-1.061095, -0.8688441, -0.4361868, 1, 0.7921569, 0, 1,
-1.058593, 0.089287, -1.469548, 1, 0.7960784, 0, 1,
-1.056377, -1.88976, -2.60135, 1, 0.8039216, 0, 1,
-1.051055, -1.494915, -2.135914, 1, 0.8117647, 0, 1,
-1.046305, -0.4049926, -2.974528, 1, 0.8156863, 0, 1,
-1.045861, -1.450599, -2.431268, 1, 0.8235294, 0, 1,
-1.04473, -0.5287374, -2.591503, 1, 0.827451, 0, 1,
-1.039435, -1.852101, -3.168998, 1, 0.8352941, 0, 1,
-1.039345, -0.2355995, -1.528106, 1, 0.8392157, 0, 1,
-1.03719, 0.3619452, -2.569889, 1, 0.8470588, 0, 1,
-1.035781, -0.482843, -3.46986, 1, 0.8509804, 0, 1,
-1.028996, 0.2709692, 1.040917, 1, 0.8588235, 0, 1,
-1.028923, -0.9453232, -4.076963, 1, 0.8627451, 0, 1,
-1.028238, -0.6346638, -2.49931, 1, 0.8705882, 0, 1,
-1.026823, -1.427057, -4.591386, 1, 0.8745098, 0, 1,
-1.024083, -1.728134, -2.633357, 1, 0.8823529, 0, 1,
-1.022158, -0.5748197, -1.475542, 1, 0.8862745, 0, 1,
-1.022054, -0.2426787, -3.969241, 1, 0.8941177, 0, 1,
-1.01638, 1.322336, -1.0567, 1, 0.8980392, 0, 1,
-1.004552, 1.765185, -2.438558, 1, 0.9058824, 0, 1,
-1.004478, 0.388775, -1.800385, 1, 0.9137255, 0, 1,
-1.002465, -0.874703, -3.198714, 1, 0.9176471, 0, 1,
-0.9950815, 0.08974318, -1.947803, 1, 0.9254902, 0, 1,
-0.9903029, 0.6324395, 0.4148208, 1, 0.9294118, 0, 1,
-0.9901111, -0.4957317, -1.429233, 1, 0.9372549, 0, 1,
-0.9861799, -0.649802, -2.03175, 1, 0.9411765, 0, 1,
-0.9775941, 0.1359822, -3.360729, 1, 0.9490196, 0, 1,
-0.9773327, 0.08717862, -0.5944605, 1, 0.9529412, 0, 1,
-0.9763133, 0.09915364, -2.775733, 1, 0.9607843, 0, 1,
-0.976086, 0.0220433, -0.7284828, 1, 0.9647059, 0, 1,
-0.9729179, 1.404337, -2.023554, 1, 0.972549, 0, 1,
-0.968258, 0.5283965, 0.6938516, 1, 0.9764706, 0, 1,
-0.9603555, 0.891251, -0.05680395, 1, 0.9843137, 0, 1,
-0.954338, -0.08197236, -0.8000239, 1, 0.9882353, 0, 1,
-0.9522883, 1.276766, -1.523971, 1, 0.9960784, 0, 1,
-0.9519972, 0.9229999, -0.9224836, 0.9960784, 1, 0, 1,
-0.95181, -0.0212742, -2.62974, 0.9921569, 1, 0, 1,
-0.950402, 0.6204188, -2.227742, 0.9843137, 1, 0, 1,
-0.9462588, -1.650587, -2.182895, 0.9803922, 1, 0, 1,
-0.9412833, 0.4871114, -0.3480613, 0.972549, 1, 0, 1,
-0.9403212, -1.432983, -2.708448, 0.9686275, 1, 0, 1,
-0.9381159, 0.9163655, -1.25475, 0.9607843, 1, 0, 1,
-0.9369824, -0.1815562, -1.675031, 0.9568627, 1, 0, 1,
-0.935523, 0.9695055, -0.308054, 0.9490196, 1, 0, 1,
-0.9184189, 0.6304274, -0.2476389, 0.945098, 1, 0, 1,
-0.9157801, 1.071666, -0.2400994, 0.9372549, 1, 0, 1,
-0.9141053, 1.437913, -1.938419, 0.9333333, 1, 0, 1,
-0.9102598, 0.03889718, -2.097648, 0.9254902, 1, 0, 1,
-0.8912609, 0.5247316, -1.126323, 0.9215686, 1, 0, 1,
-0.8804651, 1.477808, 1.171273, 0.9137255, 1, 0, 1,
-0.873245, 0.02393692, -0.8030442, 0.9098039, 1, 0, 1,
-0.8706683, -0.1731642, -2.723512, 0.9019608, 1, 0, 1,
-0.8686358, -0.1305903, -2.287724, 0.8941177, 1, 0, 1,
-0.8677523, -0.6965271, -2.75934, 0.8901961, 1, 0, 1,
-0.8672, -0.568816, -1.975208, 0.8823529, 1, 0, 1,
-0.8620968, 0.4111447, -0.803618, 0.8784314, 1, 0, 1,
-0.8612434, -1.176464, -2.977911, 0.8705882, 1, 0, 1,
-0.8517608, 0.632088, -1.187712, 0.8666667, 1, 0, 1,
-0.8498356, 0.09239727, -0.1282066, 0.8588235, 1, 0, 1,
-0.8496159, 0.1677892, -0.4639033, 0.854902, 1, 0, 1,
-0.8488837, 1.402721, -0.6666018, 0.8470588, 1, 0, 1,
-0.8466491, 1.022279, -1.208649, 0.8431373, 1, 0, 1,
-0.8457311, -1.040174, -2.456498, 0.8352941, 1, 0, 1,
-0.8425339, -0.02640795, -0.9497333, 0.8313726, 1, 0, 1,
-0.8423293, -1.671272, -3.037147, 0.8235294, 1, 0, 1,
-0.8319721, 0.3638001, -2.15578, 0.8196079, 1, 0, 1,
-0.8291337, 1.230862, -0.7356809, 0.8117647, 1, 0, 1,
-0.820564, -0.5814162, -2.155932, 0.8078431, 1, 0, 1,
-0.8205618, 1.205973, -1.90496, 0.8, 1, 0, 1,
-0.820002, 1.102623, -0.1794142, 0.7921569, 1, 0, 1,
-0.818124, 1.480082, -1.078219, 0.7882353, 1, 0, 1,
-0.8178378, 0.6258281, -1.094903, 0.7803922, 1, 0, 1,
-0.816657, -1.163843, -1.523209, 0.7764706, 1, 0, 1,
-0.8061485, -0.196188, -1.587538, 0.7686275, 1, 0, 1,
-0.8056191, 1.83282, -2.225254, 0.7647059, 1, 0, 1,
-0.7770292, 1.647517, 0.4053294, 0.7568628, 1, 0, 1,
-0.7765216, 2.11407, -0.669175, 0.7529412, 1, 0, 1,
-0.7748754, 0.212587, -1.607471, 0.7450981, 1, 0, 1,
-0.7738848, -0.7809499, -1.896788, 0.7411765, 1, 0, 1,
-0.7644742, -0.1510589, -0.8001621, 0.7333333, 1, 0, 1,
-0.7640686, -0.8774915, -2.419068, 0.7294118, 1, 0, 1,
-0.7626778, -1.88831, -3.702931, 0.7215686, 1, 0, 1,
-0.7617722, -0.8577803, -2.975027, 0.7176471, 1, 0, 1,
-0.753906, 0.7697838, -1.068186, 0.7098039, 1, 0, 1,
-0.7529324, 0.4980936, -0.8389857, 0.7058824, 1, 0, 1,
-0.7517374, 0.08290965, -1.664399, 0.6980392, 1, 0, 1,
-0.7477074, -1.458313, -2.284722, 0.6901961, 1, 0, 1,
-0.7456726, -0.9801837, -2.340014, 0.6862745, 1, 0, 1,
-0.7454653, 0.5359606, -1.616645, 0.6784314, 1, 0, 1,
-0.7448105, -1.156876, -1.930632, 0.6745098, 1, 0, 1,
-0.7376468, -1.012415, -1.606378, 0.6666667, 1, 0, 1,
-0.7312903, 0.3399471, -1.360464, 0.6627451, 1, 0, 1,
-0.73103, 0.8849413, -1.640738, 0.654902, 1, 0, 1,
-0.7283812, 1.179049, -0.7743961, 0.6509804, 1, 0, 1,
-0.7237961, 0.688085, 0.1347622, 0.6431373, 1, 0, 1,
-0.7205212, 0.5949144, -0.6258035, 0.6392157, 1, 0, 1,
-0.7193186, 0.2232075, -0.9385162, 0.6313726, 1, 0, 1,
-0.7161733, 1.134243, -1.768915, 0.627451, 1, 0, 1,
-0.7159731, 0.2775652, -0.7584762, 0.6196079, 1, 0, 1,
-0.7140608, 0.8574021, 0.449946, 0.6156863, 1, 0, 1,
-0.7113225, -1.05378, -2.623331, 0.6078432, 1, 0, 1,
-0.7012615, 0.4058288, 1.234047, 0.6039216, 1, 0, 1,
-0.6983486, 1.371161, -0.5406619, 0.5960785, 1, 0, 1,
-0.6948144, 0.02952735, -0.8260061, 0.5882353, 1, 0, 1,
-0.6947465, 0.4316877, -1.157486, 0.5843138, 1, 0, 1,
-0.6925377, 0.03151926, 0.1397196, 0.5764706, 1, 0, 1,
-0.6912789, -0.2513308, -2.260825, 0.572549, 1, 0, 1,
-0.6910214, -0.7435235, -2.806824, 0.5647059, 1, 0, 1,
-0.6902486, 1.792163, 1.011193, 0.5607843, 1, 0, 1,
-0.6895378, -0.8329107, -2.179572, 0.5529412, 1, 0, 1,
-0.6847931, -0.1649672, -1.783651, 0.5490196, 1, 0, 1,
-0.6706985, -0.2755959, -1.627947, 0.5411765, 1, 0, 1,
-0.6705944, 1.197795, 0.5799659, 0.5372549, 1, 0, 1,
-0.6703762, 0.5499429, -2.46011, 0.5294118, 1, 0, 1,
-0.6703431, 0.6622258, 1.208311, 0.5254902, 1, 0, 1,
-0.6702306, 0.409573, -1.662144, 0.5176471, 1, 0, 1,
-0.6681007, -0.2888755, -2.614484, 0.5137255, 1, 0, 1,
-0.6666027, -1.074339, -2.682798, 0.5058824, 1, 0, 1,
-0.656696, 0.5435417, -1.19326, 0.5019608, 1, 0, 1,
-0.6537797, -0.2469192, -1.878279, 0.4941176, 1, 0, 1,
-0.6424316, -0.8040378, -3.450575, 0.4862745, 1, 0, 1,
-0.6410119, -0.2929298, -2.228679, 0.4823529, 1, 0, 1,
-0.6391572, -0.6449452, -3.903912, 0.4745098, 1, 0, 1,
-0.6315409, -0.5620654, -0.7627263, 0.4705882, 1, 0, 1,
-0.6305711, 0.3962623, -0.7649499, 0.4627451, 1, 0, 1,
-0.6294877, 1.632402, 0.9051763, 0.4588235, 1, 0, 1,
-0.628795, 1.049245, -0.01658335, 0.4509804, 1, 0, 1,
-0.6268272, -1.785259, -1.316681, 0.4470588, 1, 0, 1,
-0.6251683, -0.8453385, -1.426343, 0.4392157, 1, 0, 1,
-0.6178424, 0.7493806, -0.6285006, 0.4352941, 1, 0, 1,
-0.6175371, -2.644232, -2.396458, 0.427451, 1, 0, 1,
-0.6155261, -0.485261, -2.152902, 0.4235294, 1, 0, 1,
-0.6115525, 1.645278, 0.1727653, 0.4156863, 1, 0, 1,
-0.6084678, -0.2803819, -2.397297, 0.4117647, 1, 0, 1,
-0.606194, 1.537284, -0.4849496, 0.4039216, 1, 0, 1,
-0.6047121, -0.8917052, -0.6613731, 0.3960784, 1, 0, 1,
-0.6044977, -0.2583902, -0.5085229, 0.3921569, 1, 0, 1,
-0.6011604, -2.133232, -2.140783, 0.3843137, 1, 0, 1,
-0.6000373, 1.383142, 0.2993676, 0.3803922, 1, 0, 1,
-0.5974576, -1.1496, -1.794088, 0.372549, 1, 0, 1,
-0.5966448, 1.118241, -1.223346, 0.3686275, 1, 0, 1,
-0.5959597, -0.2117152, -3.281641, 0.3607843, 1, 0, 1,
-0.5880459, 0.4152732, -0.9818165, 0.3568628, 1, 0, 1,
-0.5821552, 0.2673193, 0.7931513, 0.3490196, 1, 0, 1,
-0.5813959, -2.263127, -2.599242, 0.345098, 1, 0, 1,
-0.5798377, 0.2613735, -1.319496, 0.3372549, 1, 0, 1,
-0.5791707, -0.2671123, -1.728004, 0.3333333, 1, 0, 1,
-0.5766668, -2.171587, -1.508978, 0.3254902, 1, 0, 1,
-0.5754479, -1.753845, -2.493046, 0.3215686, 1, 0, 1,
-0.575177, -0.5098389, -2.865453, 0.3137255, 1, 0, 1,
-0.5734047, -0.04892713, -2.081961, 0.3098039, 1, 0, 1,
-0.5731573, -0.4765889, -1.443436, 0.3019608, 1, 0, 1,
-0.5688986, 0.9573232, -1.935032, 0.2941177, 1, 0, 1,
-0.5684037, 3.243176, -0.5532603, 0.2901961, 1, 0, 1,
-0.5654156, 0.2686227, -1.369347, 0.282353, 1, 0, 1,
-0.5618622, -0.1926039, -1.647242, 0.2784314, 1, 0, 1,
-0.5582246, 0.06956536, 0.5099737, 0.2705882, 1, 0, 1,
-0.5550719, 0.6909149, -0.03625278, 0.2666667, 1, 0, 1,
-0.5542799, -0.8832841, -2.429396, 0.2588235, 1, 0, 1,
-0.5511339, -0.6284181, -2.78361, 0.254902, 1, 0, 1,
-0.5499826, 0.4734215, -0.4930591, 0.2470588, 1, 0, 1,
-0.5469953, 0.1865609, -2.365508, 0.2431373, 1, 0, 1,
-0.5426558, -0.9701449, -3.648147, 0.2352941, 1, 0, 1,
-0.5400071, 2.338608, 1.558946, 0.2313726, 1, 0, 1,
-0.5394116, 0.2440713, -0.9826808, 0.2235294, 1, 0, 1,
-0.5389761, 0.3963124, -1.044909, 0.2196078, 1, 0, 1,
-0.5374561, 1.198896, -0.4285914, 0.2117647, 1, 0, 1,
-0.536981, 0.1338591, -2.549417, 0.2078431, 1, 0, 1,
-0.5337939, 0.5008385, -2.31644, 0.2, 1, 0, 1,
-0.5278296, -0.4913862, -1.365745, 0.1921569, 1, 0, 1,
-0.5244648, -0.0838832, -2.697321, 0.1882353, 1, 0, 1,
-0.5224673, 0.8962002, 0.7753602, 0.1803922, 1, 0, 1,
-0.520942, -0.02467523, -1.101051, 0.1764706, 1, 0, 1,
-0.5185187, 0.5068277, -2.700543, 0.1686275, 1, 0, 1,
-0.5162672, -0.109751, -2.507461, 0.1647059, 1, 0, 1,
-0.5154774, -1.340441, -1.979785, 0.1568628, 1, 0, 1,
-0.5123327, -0.1703475, -1.596099, 0.1529412, 1, 0, 1,
-0.508907, -1.995097, -2.672887, 0.145098, 1, 0, 1,
-0.5073156, -1.523184, -3.100375, 0.1411765, 1, 0, 1,
-0.5031708, -0.3853161, -2.587822, 0.1333333, 1, 0, 1,
-0.5023104, 0.9035218, -1.18916, 0.1294118, 1, 0, 1,
-0.4999578, 0.2283032, -0.8068084, 0.1215686, 1, 0, 1,
-0.497559, -0.4397576, -1.297612, 0.1176471, 1, 0, 1,
-0.495201, -0.2296026, -0.8020592, 0.1098039, 1, 0, 1,
-0.4940511, -0.5825161, -4.24816, 0.1058824, 1, 0, 1,
-0.4913918, -0.2470442, -3.425251, 0.09803922, 1, 0, 1,
-0.4903956, -0.7277582, -2.553838, 0.09019608, 1, 0, 1,
-0.4892198, 1.894177, -0.3949234, 0.08627451, 1, 0, 1,
-0.4866872, 0.73203, -2.575655, 0.07843138, 1, 0, 1,
-0.4831274, 0.8705039, -1.949315, 0.07450981, 1, 0, 1,
-0.4817215, 0.4043749, 0.1770034, 0.06666667, 1, 0, 1,
-0.4782757, -1.007723, -4.016578, 0.0627451, 1, 0, 1,
-0.4775074, 1.940945, -0.214361, 0.05490196, 1, 0, 1,
-0.4723449, 0.0296252, -1.023125, 0.05098039, 1, 0, 1,
-0.4655256, 0.9917517, -0.7710266, 0.04313726, 1, 0, 1,
-0.4654634, -0.6036203, -1.928832, 0.03921569, 1, 0, 1,
-0.4625573, -0.4181504, -1.674468, 0.03137255, 1, 0, 1,
-0.4609586, -0.4112991, -1.554821, 0.02745098, 1, 0, 1,
-0.4592079, 1.052945, -2.121571, 0.01960784, 1, 0, 1,
-0.454191, 0.7491977, -2.696645, 0.01568628, 1, 0, 1,
-0.4540146, 1.163052, -1.476983, 0.007843138, 1, 0, 1,
-0.4531765, 0.9291916, 0.2758653, 0.003921569, 1, 0, 1,
-0.4507626, 0.925859, -1.668614, 0, 1, 0.003921569, 1,
-0.4474497, 0.3404391, -0.282505, 0, 1, 0.01176471, 1,
-0.4430725, 2.439732, 1.363424, 0, 1, 0.01568628, 1,
-0.4404881, -1.879098, -2.364279, 0, 1, 0.02352941, 1,
-0.4331599, -0.5453324, -3.410088, 0, 1, 0.02745098, 1,
-0.4278129, 0.1724019, -1.215462, 0, 1, 0.03529412, 1,
-0.4182282, 0.4153407, -1.471257, 0, 1, 0.03921569, 1,
-0.4161229, 0.3936093, 0.3244731, 0, 1, 0.04705882, 1,
-0.4141407, 0.7594169, 1.611893, 0, 1, 0.05098039, 1,
-0.4065081, -0.02739798, -2.072863, 0, 1, 0.05882353, 1,
-0.4037024, 1.308228, 0.6418226, 0, 1, 0.0627451, 1,
-0.3984018, -0.8873454, -3.261352, 0, 1, 0.07058824, 1,
-0.3901011, -1.148139, -2.956954, 0, 1, 0.07450981, 1,
-0.3886637, -0.4595692, -1.076349, 0, 1, 0.08235294, 1,
-0.3882253, -0.1689667, -1.082956, 0, 1, 0.08627451, 1,
-0.3799823, -1.31192, -2.285009, 0, 1, 0.09411765, 1,
-0.3791197, -1.129597, -3.003899, 0, 1, 0.1019608, 1,
-0.3750156, 1.044915, 1.195657, 0, 1, 0.1058824, 1,
-0.3708557, -0.5339191, -2.118308, 0, 1, 0.1137255, 1,
-0.3667912, 0.222147, -1.397831, 0, 1, 0.1176471, 1,
-0.3640749, 0.1486951, 0.1530825, 0, 1, 0.1254902, 1,
-0.3599325, 1.074368, 0.1779044, 0, 1, 0.1294118, 1,
-0.3595897, 1.757375, -0.619079, 0, 1, 0.1372549, 1,
-0.359547, -0.7974168, -3.160555, 0, 1, 0.1411765, 1,
-0.3548262, 0.5811455, -0.05024391, 0, 1, 0.1490196, 1,
-0.3496238, 0.5715888, 0.5960295, 0, 1, 0.1529412, 1,
-0.3447793, 0.7509378, -0.7731031, 0, 1, 0.1607843, 1,
-0.3436202, -0.4365906, -2.107619, 0, 1, 0.1647059, 1,
-0.3426823, 0.4311038, -1.238188, 0, 1, 0.172549, 1,
-0.3419104, 0.852169, -0.1946416, 0, 1, 0.1764706, 1,
-0.3362072, -0.5651034, -3.043103, 0, 1, 0.1843137, 1,
-0.334005, -0.6199591, -0.4110527, 0, 1, 0.1882353, 1,
-0.3327324, -0.1118621, -1.524343, 0, 1, 0.1960784, 1,
-0.3265613, 0.2120116, 0.4373578, 0, 1, 0.2039216, 1,
-0.3218094, 0.8353391, -0.1616767, 0, 1, 0.2078431, 1,
-0.3195536, 0.355727, 0.02931008, 0, 1, 0.2156863, 1,
-0.3189076, -0.3683821, -3.620728, 0, 1, 0.2196078, 1,
-0.3125209, -0.4639058, -3.175388, 0, 1, 0.227451, 1,
-0.3121048, 0.1969499, 0.2370189, 0, 1, 0.2313726, 1,
-0.3118925, 0.7613772, 0.7893059, 0, 1, 0.2392157, 1,
-0.3090214, 1.811386, -0.3825151, 0, 1, 0.2431373, 1,
-0.3083372, -0.5831288, -0.5773947, 0, 1, 0.2509804, 1,
-0.3065713, -0.7049195, -2.045436, 0, 1, 0.254902, 1,
-0.2974584, -0.1875074, -3.956376, 0, 1, 0.2627451, 1,
-0.2968585, -0.3473277, -2.051305, 0, 1, 0.2666667, 1,
-0.2933461, 1.745664, 0.858285, 0, 1, 0.2745098, 1,
-0.2892338, 1.103852, -1.219677, 0, 1, 0.2784314, 1,
-0.2826711, 1.189158, -0.3524446, 0, 1, 0.2862745, 1,
-0.281488, -0.6764809, -2.555386, 0, 1, 0.2901961, 1,
-0.2813202, 1.520015, -0.2012607, 0, 1, 0.2980392, 1,
-0.2803563, 0.7914293, -0.9530293, 0, 1, 0.3058824, 1,
-0.2800142, -0.5926346, -3.534721, 0, 1, 0.3098039, 1,
-0.2766763, 0.4192047, 0.4922101, 0, 1, 0.3176471, 1,
-0.2715465, -0.9775466, -3.209521, 0, 1, 0.3215686, 1,
-0.2707274, -1.325827, -3.747361, 0, 1, 0.3294118, 1,
-0.2697349, 0.4839835, 0.8392131, 0, 1, 0.3333333, 1,
-0.2687718, -0.2428174, -3.46503, 0, 1, 0.3411765, 1,
-0.2674234, 1.660253, -0.8658601, 0, 1, 0.345098, 1,
-0.2656819, 0.3986633, -1.55042, 0, 1, 0.3529412, 1,
-0.2654009, -1.406362, -3.070922, 0, 1, 0.3568628, 1,
-0.2628676, -0.08973654, -2.826034, 0, 1, 0.3647059, 1,
-0.2607758, -1.140855, -3.328295, 0, 1, 0.3686275, 1,
-0.2603653, -0.8806782, -2.27314, 0, 1, 0.3764706, 1,
-0.2572663, 1.541359, 0.5123491, 0, 1, 0.3803922, 1,
-0.2533984, -0.39843, -1.652645, 0, 1, 0.3882353, 1,
-0.2518783, -1.161104, -4.459548, 0, 1, 0.3921569, 1,
-0.2498104, -0.543035, -3.489842, 0, 1, 0.4, 1,
-0.2494687, -0.5434235, -4.119656, 0, 1, 0.4078431, 1,
-0.249224, -0.2337474, -3.915327, 0, 1, 0.4117647, 1,
-0.2469999, -1.145602, -2.576505, 0, 1, 0.4196078, 1,
-0.246633, -0.6884264, -2.798351, 0, 1, 0.4235294, 1,
-0.246157, -1.890567, -2.101743, 0, 1, 0.4313726, 1,
-0.2419804, -0.2960747, -3.8416, 0, 1, 0.4352941, 1,
-0.2402532, -0.5348345, -2.029377, 0, 1, 0.4431373, 1,
-0.2399034, 0.45726, -0.6797636, 0, 1, 0.4470588, 1,
-0.2385865, -0.5757, -3.896264, 0, 1, 0.454902, 1,
-0.2325997, 1.403913, -0.4414263, 0, 1, 0.4588235, 1,
-0.2311345, -1.526348, -2.451211, 0, 1, 0.4666667, 1,
-0.2302004, -2.829486, -4.396877, 0, 1, 0.4705882, 1,
-0.2296269, 0.9619318, -0.5024155, 0, 1, 0.4784314, 1,
-0.2278272, -2.00971, -2.657677, 0, 1, 0.4823529, 1,
-0.2254217, -1.503778, -2.816249, 0, 1, 0.4901961, 1,
-0.2250166, 0.6052322, -0.3183298, 0, 1, 0.4941176, 1,
-0.2247638, -1.908042, -2.821636, 0, 1, 0.5019608, 1,
-0.2223659, -1.190436, -3.088312, 0, 1, 0.509804, 1,
-0.2195225, -0.5360448, -4.414132, 0, 1, 0.5137255, 1,
-0.2175663, -0.3355681, -3.813412, 0, 1, 0.5215687, 1,
-0.2122074, 0.1607276, -0.5954818, 0, 1, 0.5254902, 1,
-0.2117823, 0.4081378, -0.5223976, 0, 1, 0.5333334, 1,
-0.2114475, -1.320175, -4.324195, 0, 1, 0.5372549, 1,
-0.2097614, -0.1234854, -2.205148, 0, 1, 0.5450981, 1,
-0.2092689, -0.6808497, -0.6846296, 0, 1, 0.5490196, 1,
-0.2055907, -0.1311365, -2.238726, 0, 1, 0.5568628, 1,
-0.2017261, 0.7688311, 0.03096824, 0, 1, 0.5607843, 1,
-0.2006179, -0.07677628, -1.906725, 0, 1, 0.5686275, 1,
-0.1909822, -0.2983675, -0.4706365, 0, 1, 0.572549, 1,
-0.1904758, 1.157213, 0.9884869, 0, 1, 0.5803922, 1,
-0.1859558, 0.6374498, -0.8847234, 0, 1, 0.5843138, 1,
-0.1818037, -1.134264, -0.5816344, 0, 1, 0.5921569, 1,
-0.1810215, -1.368766, -1.648013, 0, 1, 0.5960785, 1,
-0.1796439, -0.3480916, -1.755064, 0, 1, 0.6039216, 1,
-0.178338, -0.01375345, -0.2167611, 0, 1, 0.6117647, 1,
-0.1778247, 1.128894, -0.2283638, 0, 1, 0.6156863, 1,
-0.1709826, -0.7086046, -3.844342, 0, 1, 0.6235294, 1,
-0.1697595, 0.1865372, 1.874439, 0, 1, 0.627451, 1,
-0.1630133, -0.5868453, -1.60484, 0, 1, 0.6352941, 1,
-0.159811, -0.6233601, -3.233706, 0, 1, 0.6392157, 1,
-0.1574237, -1.562453, -3.21633, 0, 1, 0.6470588, 1,
-0.1559776, -0.3089357, -1.594027, 0, 1, 0.6509804, 1,
-0.1558372, -0.5034633, -3.48071, 0, 1, 0.6588235, 1,
-0.1556148, 0.7073777, 0.7291428, 0, 1, 0.6627451, 1,
-0.1518444, 1.300577, -1.549396, 0, 1, 0.6705883, 1,
-0.1495797, 1.878755, 0.8396625, 0, 1, 0.6745098, 1,
-0.1416994, 0.6818238, 0.9718508, 0, 1, 0.682353, 1,
-0.1412847, 0.03806423, -2.662923, 0, 1, 0.6862745, 1,
-0.1400906, 0.1283637, -1.62375, 0, 1, 0.6941177, 1,
-0.1394362, 0.3640634, -0.2483695, 0, 1, 0.7019608, 1,
-0.1299413, -1.133909, -2.419447, 0, 1, 0.7058824, 1,
-0.1223123, 1.982491, 1.660494, 0, 1, 0.7137255, 1,
-0.1183323, -0.9371096, -3.488855, 0, 1, 0.7176471, 1,
-0.1126702, -0.63359, -3.520839, 0, 1, 0.7254902, 1,
-0.1112685, 0.719616, 0.509464, 0, 1, 0.7294118, 1,
-0.1106342, 0.6768573, -0.9199408, 0, 1, 0.7372549, 1,
-0.1105992, -0.07951553, -2.601864, 0, 1, 0.7411765, 1,
-0.1078801, 0.886386, 0.9211816, 0, 1, 0.7490196, 1,
-0.1071886, -2.619411, -3.021491, 0, 1, 0.7529412, 1,
-0.1031422, 1.018631, -0.5786567, 0, 1, 0.7607843, 1,
-0.1015723, -1.014688, -4.486075, 0, 1, 0.7647059, 1,
-0.09732457, 0.4746647, -0.8069713, 0, 1, 0.772549, 1,
-0.09407452, 0.7859367, 0.7986116, 0, 1, 0.7764706, 1,
-0.09003802, -0.2062402, -2.729528, 0, 1, 0.7843137, 1,
-0.08982012, 0.3583285, -0.9578869, 0, 1, 0.7882353, 1,
-0.08978505, -0.7999585, 0.2539626, 0, 1, 0.7960784, 1,
-0.08134151, -0.7466773, -4.186122, 0, 1, 0.8039216, 1,
-0.08061549, 0.6744151, -0.9481004, 0, 1, 0.8078431, 1,
-0.08057071, -1.18476, -2.047306, 0, 1, 0.8156863, 1,
-0.07353055, 1.257387, -0.5889524, 0, 1, 0.8196079, 1,
-0.07075507, 0.3642568, 0.59747, 0, 1, 0.827451, 1,
-0.07013086, 0.0613425, -0.5935449, 0, 1, 0.8313726, 1,
-0.06938371, 0.3579137, -0.2894689, 0, 1, 0.8392157, 1,
-0.06923558, -0.2030554, -0.9856775, 0, 1, 0.8431373, 1,
-0.06712868, 0.1266975, 1.812525, 0, 1, 0.8509804, 1,
-0.06630512, 1.208995, 0.2493007, 0, 1, 0.854902, 1,
-0.06105733, -1.033493, -2.058447, 0, 1, 0.8627451, 1,
-0.05609345, 0.08574632, -0.2234561, 0, 1, 0.8666667, 1,
-0.05115794, 1.154616, 1.667977, 0, 1, 0.8745098, 1,
-0.0432252, 0.1029196, -1.360762, 0, 1, 0.8784314, 1,
-0.04289418, 0.3051439, -0.3698563, 0, 1, 0.8862745, 1,
-0.04004813, -1.579409, -4.443735, 0, 1, 0.8901961, 1,
-0.03732419, 0.7831432, -0.531688, 0, 1, 0.8980392, 1,
-0.03178624, -0.7281401, -2.961257, 0, 1, 0.9058824, 1,
-0.030629, 0.3142802, -1.554969, 0, 1, 0.9098039, 1,
-0.02467374, -0.377068, -2.764973, 0, 1, 0.9176471, 1,
-0.02031828, 0.4315116, -0.2864114, 0, 1, 0.9215686, 1,
-0.01908865, -1.429863, -3.811885, 0, 1, 0.9294118, 1,
-0.01849711, 0.5314363, -1.590138, 0, 1, 0.9333333, 1,
-0.01653746, -0.5417074, -2.083727, 0, 1, 0.9411765, 1,
-0.01408973, 0.08807947, 1.00885, 0, 1, 0.945098, 1,
-0.01041472, -2.25927, -3.257094, 0, 1, 0.9529412, 1,
-0.01024781, 0.05302369, -0.1742243, 0, 1, 0.9568627, 1,
-0.01022114, -0.1537214, -3.189161, 0, 1, 0.9647059, 1,
-0.008626148, -1.037703, -1.942566, 0, 1, 0.9686275, 1,
-0.007770197, -0.4126704, -2.086448, 0, 1, 0.9764706, 1,
-0.002446193, 1.105005, -0.8367767, 0, 1, 0.9803922, 1,
0.002099923, 0.2772127, 0.06900337, 0, 1, 0.9882353, 1,
0.003437522, -1.428217, 2.806494, 0, 1, 0.9921569, 1,
0.006212229, 2.548276, 0.9934841, 0, 1, 1, 1,
0.007197666, 0.5053557, -0.6577212, 0, 0.9921569, 1, 1,
0.008096728, 0.8412492, 0.4629239, 0, 0.9882353, 1, 1,
0.01127154, -1.847094, 4.313265, 0, 0.9803922, 1, 1,
0.01720769, -2.774306, 1.334291, 0, 0.9764706, 1, 1,
0.02059738, 0.3895303, 1.604528, 0, 0.9686275, 1, 1,
0.02070804, -2.872324, 3.54949, 0, 0.9647059, 1, 1,
0.02469744, -0.6120891, 1.911541, 0, 0.9568627, 1, 1,
0.0303539, -0.008551832, 1.104099, 0, 0.9529412, 1, 1,
0.03106031, 1.113855, 1.502399, 0, 0.945098, 1, 1,
0.0351653, 0.00625508, 2.539443, 0, 0.9411765, 1, 1,
0.0351852, -1.112205, 2.664067, 0, 0.9333333, 1, 1,
0.03547689, -0.6439757, 2.799936, 0, 0.9294118, 1, 1,
0.03900173, 0.8043429, 0.6353037, 0, 0.9215686, 1, 1,
0.03977031, -2.245105, 2.452548, 0, 0.9176471, 1, 1,
0.04260325, -0.2844251, 4.358876, 0, 0.9098039, 1, 1,
0.04433203, 1.332638, 0.07764574, 0, 0.9058824, 1, 1,
0.04904322, 0.07248068, 0.4774459, 0, 0.8980392, 1, 1,
0.04946225, 0.2210376, -0.9291394, 0, 0.8901961, 1, 1,
0.05544778, 0.4816844, 1.945174, 0, 0.8862745, 1, 1,
0.05598335, -2.246164, 1.679772, 0, 0.8784314, 1, 1,
0.06228235, -0.2743182, 3.32046, 0, 0.8745098, 1, 1,
0.06616217, 1.080614, 0.3269587, 0, 0.8666667, 1, 1,
0.07136598, -0.3539752, 3.477689, 0, 0.8627451, 1, 1,
0.07196453, 0.5581983, 1.311639, 0, 0.854902, 1, 1,
0.07632948, 0.7929692, -1.464523, 0, 0.8509804, 1, 1,
0.0780329, 1.511204, 0.1954015, 0, 0.8431373, 1, 1,
0.08200289, -0.540276, 4.615002, 0, 0.8392157, 1, 1,
0.08251013, 1.327414, -0.3170066, 0, 0.8313726, 1, 1,
0.08333068, -1.533529, 4.488839, 0, 0.827451, 1, 1,
0.08352922, -0.7726362, 3.287126, 0, 0.8196079, 1, 1,
0.08597712, -0.1054566, 3.42628, 0, 0.8156863, 1, 1,
0.0864845, -0.01221873, 2.357673, 0, 0.8078431, 1, 1,
0.09092014, -0.7955879, 4.361393, 0, 0.8039216, 1, 1,
0.09155297, -0.5070045, 3.879568, 0, 0.7960784, 1, 1,
0.0945956, 0.004188812, 0.3606468, 0, 0.7882353, 1, 1,
0.09984438, -0.8232068, 4.227156, 0, 0.7843137, 1, 1,
0.1020658, -2.133995, 4.287251, 0, 0.7764706, 1, 1,
0.107435, 1.125293, 0.4027663, 0, 0.772549, 1, 1,
0.1148344, -0.8614774, 3.470619, 0, 0.7647059, 1, 1,
0.114998, 0.8201305, 0.7653909, 0, 0.7607843, 1, 1,
0.1153759, 1.26315, -0.9034199, 0, 0.7529412, 1, 1,
0.1164658, -0.9367073, 4.000218, 0, 0.7490196, 1, 1,
0.1164887, -0.2569641, 2.99764, 0, 0.7411765, 1, 1,
0.1222194, -1.470481, 4.459228, 0, 0.7372549, 1, 1,
0.1253681, 1.754295, 0.1613305, 0, 0.7294118, 1, 1,
0.1312488, -1.314662, 3.339583, 0, 0.7254902, 1, 1,
0.1335093, -0.004463264, 1.458943, 0, 0.7176471, 1, 1,
0.1398687, -1.298657, 3.404526, 0, 0.7137255, 1, 1,
0.1411839, -0.2309888, 2.927461, 0, 0.7058824, 1, 1,
0.1472759, 0.5062315, -1.457863, 0, 0.6980392, 1, 1,
0.1500342, -0.7352922, 3.864045, 0, 0.6941177, 1, 1,
0.1554927, 0.7050636, 0.7677287, 0, 0.6862745, 1, 1,
0.1599361, 1.755025, -0.3062507, 0, 0.682353, 1, 1,
0.1643229, -1.268734, 2.987406, 0, 0.6745098, 1, 1,
0.1661331, -1.366041, 2.333965, 0, 0.6705883, 1, 1,
0.1673359, -0.09251225, 1.206444, 0, 0.6627451, 1, 1,
0.1674664, -0.09280332, 2.443814, 0, 0.6588235, 1, 1,
0.1718131, -0.6038575, 4.379255, 0, 0.6509804, 1, 1,
0.17206, -0.357475, 2.595145, 0, 0.6470588, 1, 1,
0.1737564, -2.570248, 1.948328, 0, 0.6392157, 1, 1,
0.1840051, 1.492621, 0.05005783, 0, 0.6352941, 1, 1,
0.1877958, 0.9573592, 2.523905, 0, 0.627451, 1, 1,
0.1889073, -0.8981594, 2.508099, 0, 0.6235294, 1, 1,
0.1890836, 0.6458334, 1.01119, 0, 0.6156863, 1, 1,
0.1942855, 0.8501425, 2.212801, 0, 0.6117647, 1, 1,
0.1989971, -0.5797774, 1.978039, 0, 0.6039216, 1, 1,
0.1990165, 1.524956, 0.5451451, 0, 0.5960785, 1, 1,
0.2048947, -0.8358294, 3.070566, 0, 0.5921569, 1, 1,
0.2063191, -0.4310507, 1.170387, 0, 0.5843138, 1, 1,
0.2064399, 0.7952607, -1.355189, 0, 0.5803922, 1, 1,
0.2065833, -1.375804, 2.777282, 0, 0.572549, 1, 1,
0.209475, -0.8290962, 1.862394, 0, 0.5686275, 1, 1,
0.2096046, -1.30476, 4.114652, 0, 0.5607843, 1, 1,
0.2145912, -0.5890781, 2.632198, 0, 0.5568628, 1, 1,
0.2149626, 0.217529, 0.3310944, 0, 0.5490196, 1, 1,
0.2175181, 0.4721842, -0.05747333, 0, 0.5450981, 1, 1,
0.2188104, -0.991009, 3.834021, 0, 0.5372549, 1, 1,
0.2217555, 0.9168659, 1.367356, 0, 0.5333334, 1, 1,
0.2324816, 0.3069811, 0.7523174, 0, 0.5254902, 1, 1,
0.2344426, 0.5559165, 0.4683735, 0, 0.5215687, 1, 1,
0.2344445, -0.6739126, 1.702377, 0, 0.5137255, 1, 1,
0.2344581, -1.021497, 2.023901, 0, 0.509804, 1, 1,
0.2369355, 1.764897, 0.09791411, 0, 0.5019608, 1, 1,
0.2379216, -1.875284, 3.282998, 0, 0.4941176, 1, 1,
0.2380243, -0.796414, 4.389589, 0, 0.4901961, 1, 1,
0.2459623, -0.8500062, 4.436508, 0, 0.4823529, 1, 1,
0.2486388, -0.6415853, 3.7228, 0, 0.4784314, 1, 1,
0.2496361, -0.6502458, 2.240041, 0, 0.4705882, 1, 1,
0.2499172, -0.1785596, 2.857873, 0, 0.4666667, 1, 1,
0.2509657, -0.9975005, 2.662867, 0, 0.4588235, 1, 1,
0.254095, 2.372694, 0.07877069, 0, 0.454902, 1, 1,
0.2555322, 1.697516, 0.1233934, 0, 0.4470588, 1, 1,
0.2586994, 1.850058, 1.707192, 0, 0.4431373, 1, 1,
0.2625756, -0.1558553, 4.030987, 0, 0.4352941, 1, 1,
0.2632188, -0.870162, 3.408632, 0, 0.4313726, 1, 1,
0.2664725, 0.5855982, -0.3164651, 0, 0.4235294, 1, 1,
0.2673203, -0.458537, 2.035873, 0, 0.4196078, 1, 1,
0.2693329, 0.5497307, 0.8264365, 0, 0.4117647, 1, 1,
0.2709933, -0.9045855, 3.362406, 0, 0.4078431, 1, 1,
0.2713127, -0.8900186, 2.23491, 0, 0.4, 1, 1,
0.2728693, -1.214324, 2.724292, 0, 0.3921569, 1, 1,
0.2780753, -1.012273, 1.994515, 0, 0.3882353, 1, 1,
0.2794476, 0.5341368, -0.8716886, 0, 0.3803922, 1, 1,
0.2805929, -0.1219173, 2.791715, 0, 0.3764706, 1, 1,
0.2809622, -0.2541912, 1.658433, 0, 0.3686275, 1, 1,
0.284817, -0.09753945, 3.725448, 0, 0.3647059, 1, 1,
0.2856593, 0.8930369, 0.06876721, 0, 0.3568628, 1, 1,
0.2960542, -0.2942837, 2.080975, 0, 0.3529412, 1, 1,
0.300843, 0.8411145, 0.8919387, 0, 0.345098, 1, 1,
0.302628, 0.278617, 1.06261, 0, 0.3411765, 1, 1,
0.3034647, 0.07935219, 0.6373336, 0, 0.3333333, 1, 1,
0.3109385, 0.2768918, 0.5139621, 0, 0.3294118, 1, 1,
0.3128294, -1.989731, 2.632886, 0, 0.3215686, 1, 1,
0.3152687, 0.5862286, 1.523622, 0, 0.3176471, 1, 1,
0.3172794, 0.5805123, 1.091602, 0, 0.3098039, 1, 1,
0.3194086, 0.0241741, 1.99681, 0, 0.3058824, 1, 1,
0.3282055, 0.1554299, 1.405015, 0, 0.2980392, 1, 1,
0.3282594, 1.036653, 1.491291, 0, 0.2901961, 1, 1,
0.3289647, 1.221929, 0.7519249, 0, 0.2862745, 1, 1,
0.3292061, -1.5893, 4.057831, 0, 0.2784314, 1, 1,
0.3368578, 1.744823, 0.2533898, 0, 0.2745098, 1, 1,
0.3373323, 0.5191337, 0.07686356, 0, 0.2666667, 1, 1,
0.343717, 0.8486068, -0.4721037, 0, 0.2627451, 1, 1,
0.3441752, 2.137704, 0.378931, 0, 0.254902, 1, 1,
0.3476081, 0.009895888, 2.553956, 0, 0.2509804, 1, 1,
0.3530526, 1.57046, -0.7483688, 0, 0.2431373, 1, 1,
0.353135, -0.01734999, 1.847664, 0, 0.2392157, 1, 1,
0.3607405, 0.4445971, -0.2102337, 0, 0.2313726, 1, 1,
0.3608778, 0.5929062, 1.319735, 0, 0.227451, 1, 1,
0.3611245, 0.03502182, 2.446415, 0, 0.2196078, 1, 1,
0.3632042, 1.241184, -0.3975683, 0, 0.2156863, 1, 1,
0.3664922, -0.8712969, 2.136794, 0, 0.2078431, 1, 1,
0.3668973, -0.6364562, 2.018833, 0, 0.2039216, 1, 1,
0.3677182, 0.5728642, -0.6188264, 0, 0.1960784, 1, 1,
0.3747285, 0.3166618, 0.662267, 0, 0.1882353, 1, 1,
0.3756197, -1.463585, 3.278477, 0, 0.1843137, 1, 1,
0.3764805, 0.474936, 0.2876288, 0, 0.1764706, 1, 1,
0.3766031, 0.3976331, 1.689903, 0, 0.172549, 1, 1,
0.3766411, 1.562538, 2.870921, 0, 0.1647059, 1, 1,
0.3793869, -1.314095, 3.209881, 0, 0.1607843, 1, 1,
0.3799887, 1.895872, 1.616336, 0, 0.1529412, 1, 1,
0.3804898, -2.14202, 3.583962, 0, 0.1490196, 1, 1,
0.3928214, -0.11752, 2.020652, 0, 0.1411765, 1, 1,
0.3958923, -1.409908, 3.338428, 0, 0.1372549, 1, 1,
0.4002832, -0.01619976, 2.623144, 0, 0.1294118, 1, 1,
0.403734, -0.4080411, 2.208781, 0, 0.1254902, 1, 1,
0.404248, -1.06333, 3.691359, 0, 0.1176471, 1, 1,
0.4079104, -0.02007995, -1.353245, 0, 0.1137255, 1, 1,
0.4162297, -0.6150659, 2.949387, 0, 0.1058824, 1, 1,
0.4185461, 2.538592, 0.4066238, 0, 0.09803922, 1, 1,
0.4189669, 0.7108647, -0.4106795, 0, 0.09411765, 1, 1,
0.4267416, -1.250766, 3.084516, 0, 0.08627451, 1, 1,
0.4297795, -0.5080505, 3.331677, 0, 0.08235294, 1, 1,
0.4307558, 1.558518, 0.01306568, 0, 0.07450981, 1, 1,
0.4325659, -0.1971397, 1.311944, 0, 0.07058824, 1, 1,
0.4337265, -0.3888888, 0.006278017, 0, 0.0627451, 1, 1,
0.4368245, -0.5786656, 3.045789, 0, 0.05882353, 1, 1,
0.4407015, 0.1406595, 1.689633, 0, 0.05098039, 1, 1,
0.4414485, -0.06978992, 0.2517271, 0, 0.04705882, 1, 1,
0.4415818, 0.4539436, 1.231585, 0, 0.03921569, 1, 1,
0.4420597, -0.2015478, 0.9745738, 0, 0.03529412, 1, 1,
0.4433324, 1.021625, -0.8505471, 0, 0.02745098, 1, 1,
0.4452905, 1.4597, -0.856471, 0, 0.02352941, 1, 1,
0.4518518, -0.9097518, 3.381075, 0, 0.01568628, 1, 1,
0.4520136, -1.591514, 3.348081, 0, 0.01176471, 1, 1,
0.4534923, 0.2322784, 0.2236616, 0, 0.003921569, 1, 1,
0.4550616, 1.555841, -0.3980834, 0.003921569, 0, 1, 1,
0.4556477, 1.221673, 0.2910859, 0.007843138, 0, 1, 1,
0.461248, 0.4075959, 1.538298, 0.01568628, 0, 1, 1,
0.4657084, -0.06203034, 2.567231, 0.01960784, 0, 1, 1,
0.471587, 0.005849501, 0.9910235, 0.02745098, 0, 1, 1,
0.4747539, 1.308582, 0.7922006, 0.03137255, 0, 1, 1,
0.4848984, 2.614107, 2.502589, 0.03921569, 0, 1, 1,
0.4937999, -0.7424436, 3.142716, 0.04313726, 0, 1, 1,
0.4995165, -1.220549, 3.74875, 0.05098039, 0, 1, 1,
0.5037667, -0.2502116, 1.087115, 0.05490196, 0, 1, 1,
0.5053051, 2.413292, 0.7592348, 0.0627451, 0, 1, 1,
0.5066121, 2.460774, -0.5955045, 0.06666667, 0, 1, 1,
0.508234, 1.997087, -0.9751697, 0.07450981, 0, 1, 1,
0.51085, -0.02262688, 3.022308, 0.07843138, 0, 1, 1,
0.5118427, -0.4893952, 2.700727, 0.08627451, 0, 1, 1,
0.5133151, 0.07105606, 2.017989, 0.09019608, 0, 1, 1,
0.5150921, 2.667914, 0.5209652, 0.09803922, 0, 1, 1,
0.5170386, -0.3780106, 2.342557, 0.1058824, 0, 1, 1,
0.5182393, 1.791983, 0.8466047, 0.1098039, 0, 1, 1,
0.5198483, 1.236113, -0.2484127, 0.1176471, 0, 1, 1,
0.5217115, -0.2186596, 2.164967, 0.1215686, 0, 1, 1,
0.5262521, 0.7387512, 0.7878705, 0.1294118, 0, 1, 1,
0.5263457, 1.051623, 1.235801, 0.1333333, 0, 1, 1,
0.5292007, -0.4284231, 3.921022, 0.1411765, 0, 1, 1,
0.5294631, -1.457535, 3.102878, 0.145098, 0, 1, 1,
0.5298861, -0.05775027, 3.08416, 0.1529412, 0, 1, 1,
0.5312287, 1.998052, 1.883302, 0.1568628, 0, 1, 1,
0.5414876, -1.639452, 4.387954, 0.1647059, 0, 1, 1,
0.5435206, 0.9541123, -1.213372, 0.1686275, 0, 1, 1,
0.5456959, -0.4876169, 1.665409, 0.1764706, 0, 1, 1,
0.5469584, -1.102946, 3.587156, 0.1803922, 0, 1, 1,
0.552738, -0.5009055, 1.598431, 0.1882353, 0, 1, 1,
0.552949, 1.86708, 2.342827, 0.1921569, 0, 1, 1,
0.5537764, 0.7339187, -0.09353982, 0.2, 0, 1, 1,
0.5577919, -0.04299938, 3.005, 0.2078431, 0, 1, 1,
0.560443, 0.3150939, -1.07225, 0.2117647, 0, 1, 1,
0.5610064, 0.2451333, 0.7074226, 0.2196078, 0, 1, 1,
0.5689089, -0.5952995, 2.029429, 0.2235294, 0, 1, 1,
0.5691029, -1.635114, 3.169181, 0.2313726, 0, 1, 1,
0.5715731, -1.459445, 3.97231, 0.2352941, 0, 1, 1,
0.5739932, -1.397629, 4.258545, 0.2431373, 0, 1, 1,
0.5751534, 1.010172, 0.4297236, 0.2470588, 0, 1, 1,
0.5770849, 1.970678, 0.4980172, 0.254902, 0, 1, 1,
0.5833079, 0.9169643, 0.001006975, 0.2588235, 0, 1, 1,
0.5849896, -1.088193, 2.42189, 0.2666667, 0, 1, 1,
0.5880705, 0.2317287, 2.858833, 0.2705882, 0, 1, 1,
0.5919212, 1.087872, -0.1372537, 0.2784314, 0, 1, 1,
0.5932645, -0.4113605, 3.604156, 0.282353, 0, 1, 1,
0.5986556, -0.002401385, 0.6805086, 0.2901961, 0, 1, 1,
0.600225, 0.1541155, 2.916367, 0.2941177, 0, 1, 1,
0.6043003, 0.413206, 1.646408, 0.3019608, 0, 1, 1,
0.6106786, -0.186811, 1.911604, 0.3098039, 0, 1, 1,
0.6108481, 0.5095476, 0.5693511, 0.3137255, 0, 1, 1,
0.6125894, 0.2752449, 2.589077, 0.3215686, 0, 1, 1,
0.6140979, -0.1075406, 1.481222, 0.3254902, 0, 1, 1,
0.6159436, -0.1479051, 0.9078748, 0.3333333, 0, 1, 1,
0.6161854, 0.9698918, 0.5647512, 0.3372549, 0, 1, 1,
0.6206224, 0.07359484, 2.542925, 0.345098, 0, 1, 1,
0.6237816, -1.03964, 1.420213, 0.3490196, 0, 1, 1,
0.6262498, 0.1438869, -0.454021, 0.3568628, 0, 1, 1,
0.6264924, 1.268394, 0.7502378, 0.3607843, 0, 1, 1,
0.6284325, -0.5889919, 4.207361, 0.3686275, 0, 1, 1,
0.6342478, -1.260946, 3.127847, 0.372549, 0, 1, 1,
0.6343421, 0.1783899, 1.68267, 0.3803922, 0, 1, 1,
0.6362531, -0.7752811, 2.245121, 0.3843137, 0, 1, 1,
0.6397961, 0.3606961, -0.03554562, 0.3921569, 0, 1, 1,
0.6451986, -0.7829588, 3.441571, 0.3960784, 0, 1, 1,
0.6477697, 0.9028524, 0.01251636, 0.4039216, 0, 1, 1,
0.6530521, 0.8991421, 0.4486299, 0.4117647, 0, 1, 1,
0.6573331, -0.9963844, 1.553755, 0.4156863, 0, 1, 1,
0.6597308, -3.319705, 3.262255, 0.4235294, 0, 1, 1,
0.6598057, 0.5183534, -0.04592442, 0.427451, 0, 1, 1,
0.6604812, 1.767308, 1.16541, 0.4352941, 0, 1, 1,
0.6665747, 1.419773, 3.016743, 0.4392157, 0, 1, 1,
0.6675798, -1.230771, 2.82218, 0.4470588, 0, 1, 1,
0.6682669, 1.66331, 0.1602526, 0.4509804, 0, 1, 1,
0.6719757, -0.07221892, 1.29264, 0.4588235, 0, 1, 1,
0.6811725, -0.3434183, 2.098786, 0.4627451, 0, 1, 1,
0.6823701, -0.4033686, 3.434837, 0.4705882, 0, 1, 1,
0.6859736, -0.5650339, 2.293249, 0.4745098, 0, 1, 1,
0.6898611, -0.3968651, 1.193565, 0.4823529, 0, 1, 1,
0.6926495, -0.2230024, 1.814146, 0.4862745, 0, 1, 1,
0.6972854, 0.2779641, 1.564816, 0.4941176, 0, 1, 1,
0.697501, -1.105757, 4.888397, 0.5019608, 0, 1, 1,
0.6990604, 2.12762, -0.4769489, 0.5058824, 0, 1, 1,
0.7035818, 0.7165813, 0.9975824, 0.5137255, 0, 1, 1,
0.7046002, -0.4897138, 3.26543, 0.5176471, 0, 1, 1,
0.709549, -0.5780851, 2.342685, 0.5254902, 0, 1, 1,
0.712319, 0.2853115, 1.612149, 0.5294118, 0, 1, 1,
0.7157112, -0.3039107, 2.554891, 0.5372549, 0, 1, 1,
0.7195462, 0.1617644, 2.973706, 0.5411765, 0, 1, 1,
0.7209302, -0.6250284, 2.311553, 0.5490196, 0, 1, 1,
0.7216128, 1.323991, 1.88855, 0.5529412, 0, 1, 1,
0.724833, -2.468278, 3.004671, 0.5607843, 0, 1, 1,
0.7258434, 0.4858386, 1.35611, 0.5647059, 0, 1, 1,
0.7279316, 0.4476924, 0.06291099, 0.572549, 0, 1, 1,
0.7338324, 1.460166, 0.3153851, 0.5764706, 0, 1, 1,
0.7362525, -0.3293057, 2.438296, 0.5843138, 0, 1, 1,
0.7382788, 1.250502, 0.3367028, 0.5882353, 0, 1, 1,
0.7395039, 0.937416, 0.650567, 0.5960785, 0, 1, 1,
0.7398572, -1.777026, 2.895275, 0.6039216, 0, 1, 1,
0.7612432, -0.2402639, 2.010017, 0.6078432, 0, 1, 1,
0.761859, -1.258542, 2.540348, 0.6156863, 0, 1, 1,
0.765648, -0.8795012, 1.96049, 0.6196079, 0, 1, 1,
0.7668836, -0.9738408, 3.997482, 0.627451, 0, 1, 1,
0.7686254, -0.4417742, 2.69092, 0.6313726, 0, 1, 1,
0.7722923, 0.4525504, 0.5226027, 0.6392157, 0, 1, 1,
0.7723019, -1.887907, 3.594561, 0.6431373, 0, 1, 1,
0.7763948, -0.06728874, 1.204812, 0.6509804, 0, 1, 1,
0.7808051, -1.188913, 3.164588, 0.654902, 0, 1, 1,
0.7840495, 0.5684736, 0.5030559, 0.6627451, 0, 1, 1,
0.7940833, 0.2274505, 0.4909634, 0.6666667, 0, 1, 1,
0.7990874, 1.277391, 0.9123292, 0.6745098, 0, 1, 1,
0.7994598, -1.999536, 3.052565, 0.6784314, 0, 1, 1,
0.8002329, 1.123168, 1.41393, 0.6862745, 0, 1, 1,
0.8023774, -0.2315125, 0.6682646, 0.6901961, 0, 1, 1,
0.803458, -0.172008, 0.8689251, 0.6980392, 0, 1, 1,
0.8076373, 0.2622935, -0.2057882, 0.7058824, 0, 1, 1,
0.8114589, 1.749229, -0.8319849, 0.7098039, 0, 1, 1,
0.8126646, -1.136027, 3.724625, 0.7176471, 0, 1, 1,
0.8131562, -0.854862, 3.208839, 0.7215686, 0, 1, 1,
0.8134009, 0.4789833, 3.922735, 0.7294118, 0, 1, 1,
0.8153793, -0.5582964, 1.367601, 0.7333333, 0, 1, 1,
0.8210766, -0.8011837, 3.080769, 0.7411765, 0, 1, 1,
0.8274907, -0.2631908, 1.567633, 0.7450981, 0, 1, 1,
0.8279402, 1.903823, 0.7362532, 0.7529412, 0, 1, 1,
0.8292292, 0.9365532, 0.8678102, 0.7568628, 0, 1, 1,
0.8294286, 0.1504157, 1.565329, 0.7647059, 0, 1, 1,
0.8295143, 0.07425275, 0.1975872, 0.7686275, 0, 1, 1,
0.8309852, 0.6934921, 1.332408, 0.7764706, 0, 1, 1,
0.8314523, 0.4208235, 2.517363, 0.7803922, 0, 1, 1,
0.8438428, -2.894496, 4.535855, 0.7882353, 0, 1, 1,
0.8474227, 1.818413, 0.7850266, 0.7921569, 0, 1, 1,
0.8507156, -0.2236107, 2.065692, 0.8, 0, 1, 1,
0.8520443, -0.441275, 1.255705, 0.8078431, 0, 1, 1,
0.8546796, 0.02466926, 0.3638388, 0.8117647, 0, 1, 1,
0.8549036, 0.6414713, 0.4991809, 0.8196079, 0, 1, 1,
0.8569022, 0.2823038, 0.7785319, 0.8235294, 0, 1, 1,
0.8591874, 0.3837492, 1.871927, 0.8313726, 0, 1, 1,
0.8600313, -0.1646978, 1.485872, 0.8352941, 0, 1, 1,
0.8638022, 0.4668194, 2.219038, 0.8431373, 0, 1, 1,
0.8733183, 0.9621468, 0.1183087, 0.8470588, 0, 1, 1,
0.878861, 0.09060486, 0.389889, 0.854902, 0, 1, 1,
0.8826742, 0.007748396, 2.007329, 0.8588235, 0, 1, 1,
0.883387, -0.9316987, 1.848168, 0.8666667, 0, 1, 1,
0.885314, -1.369832, 3.096345, 0.8705882, 0, 1, 1,
0.8888338, 1.431417, 0.6814021, 0.8784314, 0, 1, 1,
0.8901481, -1.471062, 0.3319196, 0.8823529, 0, 1, 1,
0.8931888, -0.702882, 3.42622, 0.8901961, 0, 1, 1,
0.8972571, -0.1198948, 2.194298, 0.8941177, 0, 1, 1,
0.9028111, 0.6122895, -1.338334, 0.9019608, 0, 1, 1,
0.9041021, 0.1609088, 2.544881, 0.9098039, 0, 1, 1,
0.9045942, 0.715413, 0.2143, 0.9137255, 0, 1, 1,
0.9127135, 0.7817022, 1.803512, 0.9215686, 0, 1, 1,
0.9259217, 0.002321991, -0.6052855, 0.9254902, 0, 1, 1,
0.9330636, 1.21187, 0.2208095, 0.9333333, 0, 1, 1,
0.9361047, 0.3484931, 0.6896674, 0.9372549, 0, 1, 1,
0.9369963, 2.013915, -1.276105, 0.945098, 0, 1, 1,
0.940221, 0.3817574, 1.399804, 0.9490196, 0, 1, 1,
0.9429141, 0.1559627, 2.305625, 0.9568627, 0, 1, 1,
0.9448478, -0.5164124, 2.104073, 0.9607843, 0, 1, 1,
0.9456838, -0.3001253, 1.442795, 0.9686275, 0, 1, 1,
0.9537894, -0.2289981, 2.208604, 0.972549, 0, 1, 1,
0.9602579, -0.2495002, 1.560015, 0.9803922, 0, 1, 1,
0.9653824, 0.3002905, 1.281235, 0.9843137, 0, 1, 1,
0.9776807, 0.814185, 1.557521, 0.9921569, 0, 1, 1,
0.9790516, 0.8751383, 0.8971743, 0.9960784, 0, 1, 1,
0.979277, 0.284586, 1.837028, 1, 0, 0.9960784, 1,
0.9848354, 0.6631638, 0.8523614, 1, 0, 0.9882353, 1,
0.9898669, 0.428958, 0.9404753, 1, 0, 0.9843137, 1,
0.9900798, 0.07088345, 1.464428, 1, 0, 0.9764706, 1,
0.9924538, 0.4261692, -0.5447735, 1, 0, 0.972549, 1,
0.9960731, 0.5649011, 4.113908, 1, 0, 0.9647059, 1,
0.9970499, 0.04284365, 2.538632, 1, 0, 0.9607843, 1,
1.001523, -0.708944, 2.702756, 1, 0, 0.9529412, 1,
1.006068, -0.1707477, 1.281404, 1, 0, 0.9490196, 1,
1.008463, 0.2471515, -0.2460509, 1, 0, 0.9411765, 1,
1.01663, -0.6895953, 0.5084203, 1, 0, 0.9372549, 1,
1.022854, 0.2414643, -0.3961089, 1, 0, 0.9294118, 1,
1.024209, -1.197055, 1.103107, 1, 0, 0.9254902, 1,
1.026853, -0.6710095, 3.647776, 1, 0, 0.9176471, 1,
1.026943, -1.736462, 2.55424, 1, 0, 0.9137255, 1,
1.027091, 0.8919411, 2.555262, 1, 0, 0.9058824, 1,
1.040124, -0.9663332, 0.7495515, 1, 0, 0.9019608, 1,
1.042624, -0.6725597, 2.332451, 1, 0, 0.8941177, 1,
1.053243, -1.458525, 3.017903, 1, 0, 0.8862745, 1,
1.054615, 0.7401797, 1.453319, 1, 0, 0.8823529, 1,
1.064986, -1.116809, 2.77401, 1, 0, 0.8745098, 1,
1.068295, 0.2827945, 0.7184179, 1, 0, 0.8705882, 1,
1.07135, -0.9322883, 1.234187, 1, 0, 0.8627451, 1,
1.07614, -0.6854066, 2.143971, 1, 0, 0.8588235, 1,
1.08812, -1.273964, 2.452152, 1, 0, 0.8509804, 1,
1.093788, 0.3332727, 1.746071, 1, 0, 0.8470588, 1,
1.107808, 1.177569, 0.9033862, 1, 0, 0.8392157, 1,
1.11305, 0.4111487, 2.605022, 1, 0, 0.8352941, 1,
1.124943, -0.9241143, 3.899637, 1, 0, 0.827451, 1,
1.126053, 1.647317, 0.08080774, 1, 0, 0.8235294, 1,
1.139914, -0.6972525, 1.970244, 1, 0, 0.8156863, 1,
1.144615, 0.7773402, 0.7479001, 1, 0, 0.8117647, 1,
1.14779, 0.7762362, 1.287883, 1, 0, 0.8039216, 1,
1.148783, -0.7359658, 3.931696, 1, 0, 0.7960784, 1,
1.155884, -0.8628986, 1.109914, 1, 0, 0.7921569, 1,
1.156404, -0.5989374, 3.002562, 1, 0, 0.7843137, 1,
1.15916, -1.206612, 4.193039, 1, 0, 0.7803922, 1,
1.162185, 0.6719616, -0.3733479, 1, 0, 0.772549, 1,
1.163789, 1.716052, 1.221044, 1, 0, 0.7686275, 1,
1.17305, -2.485537, 2.8319, 1, 0, 0.7607843, 1,
1.173166, 0.295189, 0.4991529, 1, 0, 0.7568628, 1,
1.176923, 1.987871, -1.938085, 1, 0, 0.7490196, 1,
1.186916, 1.208552, 0.5093889, 1, 0, 0.7450981, 1,
1.187582, -0.5509672, 2.474127, 1, 0, 0.7372549, 1,
1.197044, 0.3684432, 2.036713, 1, 0, 0.7333333, 1,
1.198011, 1.427168, 0.1132144, 1, 0, 0.7254902, 1,
1.202735, -0.7980875, 0.7876458, 1, 0, 0.7215686, 1,
1.221535, -0.4074583, 4.550175, 1, 0, 0.7137255, 1,
1.224151, 0.1387241, 1.586382, 1, 0, 0.7098039, 1,
1.228709, 1.323131, 0.930612, 1, 0, 0.7019608, 1,
1.229635, 1.223698, 0.4954582, 1, 0, 0.6941177, 1,
1.235995, -1.158366, 3.874202, 1, 0, 0.6901961, 1,
1.240424, -0.100968, 1.277304, 1, 0, 0.682353, 1,
1.251882, 0.4426808, 1.114167, 1, 0, 0.6784314, 1,
1.276223, -0.1715392, 0.7303212, 1, 0, 0.6705883, 1,
1.277932, -0.6567, 2.11352, 1, 0, 0.6666667, 1,
1.286696, -0.2598885, 0.9705946, 1, 0, 0.6588235, 1,
1.287853, -0.6908507, 4.37999, 1, 0, 0.654902, 1,
1.287912, -0.1005369, -0.6788917, 1, 0, 0.6470588, 1,
1.289755, -0.5173315, 3.115531, 1, 0, 0.6431373, 1,
1.301352, 0.00472995, 3.32917, 1, 0, 0.6352941, 1,
1.304137, 0.9329761, 1.082026, 1, 0, 0.6313726, 1,
1.30522, -1.934095, 3.231203, 1, 0, 0.6235294, 1,
1.318714, -1.072384, 1.45571, 1, 0, 0.6196079, 1,
1.326661, -0.5785944, 2.993336, 1, 0, 0.6117647, 1,
1.32852, 0.03020087, 1.862909, 1, 0, 0.6078432, 1,
1.332536, -0.1555163, 1.228385, 1, 0, 0.6, 1,
1.335856, 0.2102362, 1.662393, 1, 0, 0.5921569, 1,
1.343232, 0.03218193, 1.221619, 1, 0, 0.5882353, 1,
1.349774, 0.5942632, -0.3830042, 1, 0, 0.5803922, 1,
1.354847, 0.2517251, 1.673016, 1, 0, 0.5764706, 1,
1.356316, -1.622525, 2.06338, 1, 0, 0.5686275, 1,
1.380268, 0.0327124, 2.02658, 1, 0, 0.5647059, 1,
1.388724, -0.1889655, 3.056342, 1, 0, 0.5568628, 1,
1.390985, 0.9387901, 0.9558236, 1, 0, 0.5529412, 1,
1.408586, -0.4310254, 0.8152637, 1, 0, 0.5450981, 1,
1.414205, 0.1001731, 0.1333177, 1, 0, 0.5411765, 1,
1.414557, -0.3598012, 1.782541, 1, 0, 0.5333334, 1,
1.421619, 1.457378, 1.428049, 1, 0, 0.5294118, 1,
1.433441, -0.03021618, 2.819829, 1, 0, 0.5215687, 1,
1.450812, -0.4284295, 2.242222, 1, 0, 0.5176471, 1,
1.451826, -0.5044314, 0.7504742, 1, 0, 0.509804, 1,
1.45684, 0.1674649, 0.8564681, 1, 0, 0.5058824, 1,
1.466788, 0.7756671, 2.456262, 1, 0, 0.4980392, 1,
1.467139, 0.5051895, 0.2048857, 1, 0, 0.4901961, 1,
1.470515, 0.3068944, 2.292565, 1, 0, 0.4862745, 1,
1.470894, 1.329054, 0.1474112, 1, 0, 0.4784314, 1,
1.474702, 1.508198, 0.7652511, 1, 0, 0.4745098, 1,
1.480521, -0.2487182, 1.639784, 1, 0, 0.4666667, 1,
1.483823, 0.1262124, 1.394091, 1, 0, 0.4627451, 1,
1.484235, 0.7240024, 0.2161576, 1, 0, 0.454902, 1,
1.484704, -0.6270185, 3.274114, 1, 0, 0.4509804, 1,
1.486272, -1.197897, 2.611009, 1, 0, 0.4431373, 1,
1.496516, -1.002029, 3.098255, 1, 0, 0.4392157, 1,
1.498331, -0.6101294, 1.615912, 1, 0, 0.4313726, 1,
1.501053, 0.603563, 1.229499, 1, 0, 0.427451, 1,
1.50268, -1.878652, 3.745293, 1, 0, 0.4196078, 1,
1.503329, -0.3347767, 1.412774, 1, 0, 0.4156863, 1,
1.505956, -0.1215655, 2.867865, 1, 0, 0.4078431, 1,
1.511569, 0.6322783, 1.127687, 1, 0, 0.4039216, 1,
1.52173, 1.857898, 1.648983, 1, 0, 0.3960784, 1,
1.551885, -0.1918519, 2.469871, 1, 0, 0.3882353, 1,
1.558367, 1.333818, 0.9793903, 1, 0, 0.3843137, 1,
1.581546, 2.937697, 1.080889, 1, 0, 0.3764706, 1,
1.592832, 1.018387, 1.82569, 1, 0, 0.372549, 1,
1.601253, -0.4039111, -0.1654307, 1, 0, 0.3647059, 1,
1.623154, -0.4965809, 0.9593339, 1, 0, 0.3607843, 1,
1.62989, -0.8959217, 1.755568, 1, 0, 0.3529412, 1,
1.631095, -0.08905006, 1.667338, 1, 0, 0.3490196, 1,
1.633855, -0.5542222, 2.331883, 1, 0, 0.3411765, 1,
1.635432, -2.22758, 2.968592, 1, 0, 0.3372549, 1,
1.635886, -0.2038503, 1.664214, 1, 0, 0.3294118, 1,
1.637676, 0.3342935, 0.2623482, 1, 0, 0.3254902, 1,
1.658037, 0.1615613, 2.055107, 1, 0, 0.3176471, 1,
1.681205, 0.4289029, 1.225672, 1, 0, 0.3137255, 1,
1.698612, -0.7501754, 2.511813, 1, 0, 0.3058824, 1,
1.701015, 1.009399, 0.5122509, 1, 0, 0.2980392, 1,
1.704663, 1.30763, 1.973002, 1, 0, 0.2941177, 1,
1.709095, -0.06561625, 1.125305, 1, 0, 0.2862745, 1,
1.714489, 0.5372732, 0.04926232, 1, 0, 0.282353, 1,
1.753945, -1.89593, 1.33497, 1, 0, 0.2745098, 1,
1.801109, 0.9257692, 1.976763, 1, 0, 0.2705882, 1,
1.805043, -0.2996075, 0.2471294, 1, 0, 0.2627451, 1,
1.811091, 0.1646419, 0.7417825, 1, 0, 0.2588235, 1,
1.814582, -0.3198495, 0.6575744, 1, 0, 0.2509804, 1,
1.845185, 1.000958, -0.1521422, 1, 0, 0.2470588, 1,
1.845701, 1.691507, 0.1870244, 1, 0, 0.2392157, 1,
1.87076, 0.6923572, 0.7605422, 1, 0, 0.2352941, 1,
1.880813, 0.5009345, 1.449924, 1, 0, 0.227451, 1,
1.882226, -0.511796, 1.015382, 1, 0, 0.2235294, 1,
1.900018, -0.8791071, 1.661661, 1, 0, 0.2156863, 1,
1.919457, 0.02615926, -0.2381954, 1, 0, 0.2117647, 1,
1.943807, -1.550961, 2.232857, 1, 0, 0.2039216, 1,
1.967893, 0.6685609, 0.633902, 1, 0, 0.1960784, 1,
1.990502, -0.1220625, 2.3061, 1, 0, 0.1921569, 1,
2.000034, -0.1882989, 1.925773, 1, 0, 0.1843137, 1,
2.012368, 0.7678737, 2.663043, 1, 0, 0.1803922, 1,
2.017353, -0.5687086, 2.637477, 1, 0, 0.172549, 1,
2.054814, -1.199621, 3.296029, 1, 0, 0.1686275, 1,
2.055554, -1.854578, 0.901942, 1, 0, 0.1607843, 1,
2.05619, 0.09494741, 0.5287471, 1, 0, 0.1568628, 1,
2.061305, -1.052355, 0.4670321, 1, 0, 0.1490196, 1,
2.07792, 0.01053851, 2.029566, 1, 0, 0.145098, 1,
2.087245, -1.06011, 0.3713903, 1, 0, 0.1372549, 1,
2.118084, 0.704661, 2.127767, 1, 0, 0.1333333, 1,
2.141672, -1.489925, 2.15521, 1, 0, 0.1254902, 1,
2.162233, 0.1544033, 0.8995768, 1, 0, 0.1215686, 1,
2.165533, 0.254144, 1.693945, 1, 0, 0.1137255, 1,
2.171729, -0.2551301, 0.9478939, 1, 0, 0.1098039, 1,
2.176898, 1.359161, -0.8132815, 1, 0, 0.1019608, 1,
2.236207, -0.9351857, 0.7876064, 1, 0, 0.09411765, 1,
2.254123, -0.1652936, 1.933378, 1, 0, 0.09019608, 1,
2.263137, -0.471095, 2.7298, 1, 0, 0.08235294, 1,
2.339476, 0.02049151, 3.455615, 1, 0, 0.07843138, 1,
2.375906, -0.6450385, 1.512572, 1, 0, 0.07058824, 1,
2.378961, 0.535832, 1.743334, 1, 0, 0.06666667, 1,
2.423303, -1.088851, 2.48883, 1, 0, 0.05882353, 1,
2.426155, -0.9625636, 2.345, 1, 0, 0.05490196, 1,
2.456172, -1.506511, 0.9574764, 1, 0, 0.04705882, 1,
2.599, -1.410973, 0.5288612, 1, 0, 0.04313726, 1,
2.60045, -0.3481426, 1.350035, 1, 0, 0.03529412, 1,
2.637988, 0.163347, 2.252169, 1, 0, 0.03137255, 1,
2.767924, 0.1177829, 1.687849, 1, 0, 0.02352941, 1,
2.78596, 0.009181627, 2.630681, 1, 0, 0.01960784, 1,
2.843261, -2.342155, 1.40727, 1, 0, 0.01176471, 1,
3.089409, -1.075442, 1.124157, 1, 0, 0.007843138, 1
>>>>>>> origin/master
]);
this.buf[7] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[7]);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
this.mvMatLoc[7] = gl.getUniformLocation(this.prog[7],"mvMatrix");
this.prMatLoc[7] = gl.getUniformLocation(this.prog[7],"prMatrix");
// ****** text object 9 ******
this.flags[9] = 40;
this.prog[9]  = gl.createProgram();
gl.attachShader(this.prog[9], this.getShader( gl, "testglvshader9" ));
gl.attachShader(this.prog[9], this.getShader( gl, "testglfshader9" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[9], 0, "aPos");
gl.bindAttribLocation(this.prog[9], 1, "aCol");
gl.linkProgram(this.prog[9]);
var texts = [
"x"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[9] = gl.getAttribLocation(this.prog[9], "aOfs");
this.texture[9] = gl.createTexture();
this.texLoc[9] = gl.getAttribLocation(this.prog[9], "aTexcoord");
this.sampler[9] = gl.getUniformLocation(this.prog[9],"uSampler");
handleLoadedTexture(this.texture[9], document.getElementById("testgltextureCanvas"));
var v=new Float32Array([
<<<<<<< HEAD
-0.2338339, -4.215599, -7.096876, 0, -0.5, 0.5, 0.5,
-0.2338339, -4.215599, -7.096876, 1, -0.5, 0.5, 0.5,
-0.2338339, -4.215599, -7.096876, 1, 1.5, 0.5, 0.5,
-0.2338339, -4.215599, -7.096876, 0, 1.5, 0.5, 0.5
=======
0.1868515, -4.432113, -6.237913, 0, -0.5, 0.5, 0.5,
0.1868515, -4.432113, -6.237913, 1, -0.5, 0.5, 0.5,
0.1868515, -4.432113, -6.237913, 1, 1.5, 0.5, 0.5,
0.1868515, -4.432113, -6.237913, 0, 1.5, 0.5, 0.5
>>>>>>> origin/master
]);
for (var i=0; i<1; i++) 
for (var j=0; j<4; j++) {
var ind = 7*(4*i + j) + 3;
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
var f=new Uint16Array([
0, 1, 2, 0, 2, 3
]);
this.buf[9] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[9]);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
this.ibuf[9] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[9]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[9] = gl.getUniformLocation(this.prog[9],"mvMatrix");
this.prMatLoc[9] = gl.getUniformLocation(this.prog[9],"prMatrix");
this.textScaleLoc[9] = gl.getUniformLocation(this.prog[9],"textScale");
// ****** text object 10 ******
this.flags[10] = 40;
this.prog[10]  = gl.createProgram();
gl.attachShader(this.prog[10], this.getShader( gl, "testglvshader10" ));
gl.attachShader(this.prog[10], this.getShader( gl, "testglfshader10" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[10], 0, "aPos");
gl.bindAttribLocation(this.prog[10], 1, "aCol");
gl.linkProgram(this.prog[10]);
var texts = [
"y"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[10] = gl.getAttribLocation(this.prog[10], "aOfs");
this.texture[10] = gl.createTexture();
this.texLoc[10] = gl.getAttribLocation(this.prog[10], "aTexcoord");
this.sampler[10] = gl.getUniformLocation(this.prog[10],"uSampler");
handleLoadedTexture(this.texture[10], document.getElementById("testgltextureCanvas"));
var v=new Float32Array([
<<<<<<< HEAD
-5.282238, -0.2030982, -7.096876, 0, -0.5, 0.5, 0.5,
-5.282238, -0.2030982, -7.096876, 1, -0.5, 0.5, 0.5,
-5.282238, -0.2030982, -7.096876, 1, 1.5, 0.5, 0.5,
-5.282238, -0.2030982, -7.096876, 0, 1.5, 0.5, 0.5
=======
-3.699673, -0.03826416, -6.237913, 0, -0.5, 0.5, 0.5,
-3.699673, -0.03826416, -6.237913, 1, -0.5, 0.5, 0.5,
-3.699673, -0.03826416, -6.237913, 1, 1.5, 0.5, 0.5,
-3.699673, -0.03826416, -6.237913, 0, 1.5, 0.5, 0.5
>>>>>>> origin/master
]);
for (var i=0; i<1; i++) 
for (var j=0; j<4; j++) {
var ind = 7*(4*i + j) + 3;
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
var f=new Uint16Array([
0, 1, 2, 0, 2, 3
]);
this.buf[10] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[10]);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
this.ibuf[10] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[10]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[10] = gl.getUniformLocation(this.prog[10],"mvMatrix");
this.prMatLoc[10] = gl.getUniformLocation(this.prog[10],"prMatrix");
this.textScaleLoc[10] = gl.getUniformLocation(this.prog[10],"textScale");
// ****** text object 11 ******
this.flags[11] = 40;
this.prog[11]  = gl.createProgram();
gl.attachShader(this.prog[11], this.getShader( gl, "testglvshader11" ));
gl.attachShader(this.prog[11], this.getShader( gl, "testglfshader11" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[11], 0, "aPos");
gl.bindAttribLocation(this.prog[11], 1, "aCol");
gl.linkProgram(this.prog[11]);
var texts = [
"z"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[11] = gl.getAttribLocation(this.prog[11], "aOfs");
this.texture[11] = gl.createTexture();
this.texLoc[11] = gl.getAttribLocation(this.prog[11], "aTexcoord");
this.sampler[11] = gl.getUniformLocation(this.prog[11],"uSampler");
handleLoadedTexture(this.texture[11], document.getElementById("testgltextureCanvas"));
var v=new Float32Array([
<<<<<<< HEAD
-5.282238, -4.215599, 0.2998068, 0, -0.5, 0.5, 0.5,
-5.282238, -4.215599, 0.2998068, 1, -0.5, 0.5, 0.5,
-5.282238, -4.215599, 0.2998068, 1, 1.5, 0.5, 0.5,
-5.282238, -4.215599, 0.2998068, 0, 1.5, 0.5, 0.5
=======
-3.699673, -4.432113, 0.1315305, 0, -0.5, 0.5, 0.5,
-3.699673, -4.432113, 0.1315305, 1, -0.5, 0.5, 0.5,
-3.699673, -4.432113, 0.1315305, 1, 1.5, 0.5, 0.5,
-3.699673, -4.432113, 0.1315305, 0, 1.5, 0.5, 0.5
>>>>>>> origin/master
]);
for (var i=0; i<1; i++) 
for (var j=0; j<4; j++) {
var ind = 7*(4*i + j) + 3;
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
var f=new Uint16Array([
0, 1, 2, 0, 2, 3
]);
this.buf[11] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[11]);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
this.ibuf[11] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[11]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[11] = gl.getUniformLocation(this.prog[11],"mvMatrix");
this.prMatLoc[11] = gl.getUniformLocation(this.prog[11],"prMatrix");
this.textScaleLoc[11] = gl.getUniformLocation(this.prog[11],"textScale");
// ****** lines object 12 ******
this.flags[12] = 128;
this.prog[12]  = gl.createProgram();
gl.attachShader(this.prog[12], this.getShader( gl, "testglvshader12" ));
gl.attachShader(this.prog[12], this.getShader( gl, "testglfshader12" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[12], 0, "aPos");
gl.bindAttribLocation(this.prog[12], 1, "aCol");
gl.linkProgram(this.prog[12]);
var v=new Float32Array([
<<<<<<< HEAD
-4, -3.289637, -5.389949,
2, -3.289637, -5.389949,
-4, -3.289637, -5.389949,
-4, -3.443964, -5.674437,
-2, -3.289637, -5.389949,
-2, -3.443964, -5.674437,
0, -3.289637, -5.389949,
0, -3.443964, -5.674437,
2, -3.289637, -5.389949,
2, -3.443964, -5.674437
=======
-2, -3.418148, -4.768042,
3, -3.418148, -4.768042,
-2, -3.418148, -4.768042,
-2, -3.587142, -5.013021,
-1, -3.418148, -4.768042,
-1, -3.587142, -5.013021,
0, -3.418148, -4.768042,
0, -3.587142, -5.013021,
1, -3.418148, -4.768042,
1, -3.587142, -5.013021,
2, -3.418148, -4.768042,
2, -3.587142, -5.013021,
3, -3.418148, -4.768042,
3, -3.587142, -5.013021
>>>>>>> origin/master
]);
this.buf[12] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[12]);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
this.mvMatLoc[12] = gl.getUniformLocation(this.prog[12],"mvMatrix");
this.prMatLoc[12] = gl.getUniformLocation(this.prog[12],"prMatrix");
// ****** text object 13 ******
this.flags[13] = 40;
this.prog[13]  = gl.createProgram();
gl.attachShader(this.prog[13], this.getShader( gl, "testglvshader13" ));
gl.attachShader(this.prog[13], this.getShader( gl, "testglfshader13" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[13], 0, "aPos");
gl.bindAttribLocation(this.prog[13], 1, "aCol");
gl.linkProgram(this.prog[13]);
var texts = [
<<<<<<< HEAD
"-4",
=======
>>>>>>> origin/master
"-2",
"0",
<<<<<<< HEAD
"2"
=======
"1",
"2",
"3"
>>>>>>> origin/master
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[13] = gl.getAttribLocation(this.prog[13], "aOfs");
this.texture[13] = gl.createTexture();
this.texLoc[13] = gl.getAttribLocation(this.prog[13], "aTexcoord");
this.sampler[13] = gl.getUniformLocation(this.prog[13],"uSampler");
handleLoadedTexture(this.texture[13], document.getElementById("testgltextureCanvas"));
var v=new Float32Array([
<<<<<<< HEAD
-4, -3.752618, -6.243412, 0, -0.5, 0.5, 0.5,
-4, -3.752618, -6.243412, 1, -0.5, 0.5, 0.5,
-4, -3.752618, -6.243412, 1, 1.5, 0.5, 0.5,
-4, -3.752618, -6.243412, 0, 1.5, 0.5, 0.5,
-2, -3.752618, -6.243412, 0, -0.5, 0.5, 0.5,
-2, -3.752618, -6.243412, 1, -0.5, 0.5, 0.5,
-2, -3.752618, -6.243412, 1, 1.5, 0.5, 0.5,
-2, -3.752618, -6.243412, 0, 1.5, 0.5, 0.5,
0, -3.752618, -6.243412, 0, -0.5, 0.5, 0.5,
0, -3.752618, -6.243412, 1, -0.5, 0.5, 0.5,
0, -3.752618, -6.243412, 1, 1.5, 0.5, 0.5,
0, -3.752618, -6.243412, 0, 1.5, 0.5, 0.5,
2, -3.752618, -6.243412, 0, -0.5, 0.5, 0.5,
2, -3.752618, -6.243412, 1, -0.5, 0.5, 0.5,
2, -3.752618, -6.243412, 1, 1.5, 0.5, 0.5,
2, -3.752618, -6.243412, 0, 1.5, 0.5, 0.5
=======
-2, -3.92513, -5.502977, 0, -0.5, 0.5, 0.5,
-2, -3.92513, -5.502977, 1, -0.5, 0.5, 0.5,
-2, -3.92513, -5.502977, 1, 1.5, 0.5, 0.5,
-2, -3.92513, -5.502977, 0, 1.5, 0.5, 0.5,
-1, -3.92513, -5.502977, 0, -0.5, 0.5, 0.5,
-1, -3.92513, -5.502977, 1, -0.5, 0.5, 0.5,
-1, -3.92513, -5.502977, 1, 1.5, 0.5, 0.5,
-1, -3.92513, -5.502977, 0, 1.5, 0.5, 0.5,
0, -3.92513, -5.502977, 0, -0.5, 0.5, 0.5,
0, -3.92513, -5.502977, 1, -0.5, 0.5, 0.5,
0, -3.92513, -5.502977, 1, 1.5, 0.5, 0.5,
0, -3.92513, -5.502977, 0, 1.5, 0.5, 0.5,
1, -3.92513, -5.502977, 0, -0.5, 0.5, 0.5,
1, -3.92513, -5.502977, 1, -0.5, 0.5, 0.5,
1, -3.92513, -5.502977, 1, 1.5, 0.5, 0.5,
1, -3.92513, -5.502977, 0, 1.5, 0.5, 0.5,
2, -3.92513, -5.502977, 0, -0.5, 0.5, 0.5,
2, -3.92513, -5.502977, 1, -0.5, 0.5, 0.5,
2, -3.92513, -5.502977, 1, 1.5, 0.5, 0.5,
2, -3.92513, -5.502977, 0, 1.5, 0.5, 0.5,
3, -3.92513, -5.502977, 0, -0.5, 0.5, 0.5,
3, -3.92513, -5.502977, 1, -0.5, 0.5, 0.5,
3, -3.92513, -5.502977, 1, 1.5, 0.5, 0.5,
3, -3.92513, -5.502977, 0, 1.5, 0.5, 0.5
>>>>>>> origin/master
]);
for (var i=0; i<4; i++) 
for (var j=0; j<4; j++) {
var ind = 7*(4*i + j) + 3;
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15
]);
this.buf[13] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[13]);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
this.ibuf[13] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[13]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[13] = gl.getUniformLocation(this.prog[13],"mvMatrix");
this.prMatLoc[13] = gl.getUniformLocation(this.prog[13],"prMatrix");
this.textScaleLoc[13] = gl.getUniformLocation(this.prog[13],"textScale");
// ****** lines object 14 ******
this.flags[14] = 128;
this.prog[14]  = gl.createProgram();
gl.attachShader(this.prog[14], this.getShader( gl, "testglvshader14" ));
gl.attachShader(this.prog[14], this.getShader( gl, "testglfshader14" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[14], 0, "aPos");
gl.bindAttribLocation(this.prog[14], 1, "aCol");
gl.linkProgram(this.prog[14]);
var v=new Float32Array([
<<<<<<< HEAD
-4.117221, -3, -5.389949,
-4.117221, 2, -5.389949,
-4.117221, -3, -5.389949,
-4.311391, -3, -5.674437,
-4.117221, -2, -5.389949,
-4.311391, -2, -5.674437,
-4.117221, -1, -5.389949,
-4.311391, -1, -5.674437,
-4.117221, 0, -5.389949,
-4.311391, 0, -5.674437,
-4.117221, 1, -5.389949,
-4.311391, 1, -5.674437,
-4.117221, 2, -5.389949,
-4.311391, 2, -5.674437
=======
-2.802783, -3, -4.768042,
-2.802783, 3, -4.768042,
-2.802783, -3, -4.768042,
-2.952265, -3, -5.013021,
-2.802783, -2, -4.768042,
-2.952265, -2, -5.013021,
-2.802783, -1, -4.768042,
-2.952265, -1, -5.013021,
-2.802783, 0, -4.768042,
-2.952265, 0, -5.013021,
-2.802783, 1, -4.768042,
-2.952265, 1, -5.013021,
-2.802783, 2, -4.768042,
-2.952265, 2, -5.013021,
-2.802783, 3, -4.768042,
-2.952265, 3, -5.013021
>>>>>>> origin/master
]);
this.buf[14] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[14]);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
this.mvMatLoc[14] = gl.getUniformLocation(this.prog[14],"mvMatrix");
this.prMatLoc[14] = gl.getUniformLocation(this.prog[14],"prMatrix");
// ****** text object 15 ******
this.flags[15] = 40;
this.prog[15]  = gl.createProgram();
gl.attachShader(this.prog[15], this.getShader( gl, "testglvshader15" ));
gl.attachShader(this.prog[15], this.getShader( gl, "testglfshader15" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[15], 0, "aPos");
gl.bindAttribLocation(this.prog[15], 1, "aCol");
gl.linkProgram(this.prog[15]);
var texts = [
"-3",
"-2",
"-1",
"0",
"1",
"2"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[15] = gl.getAttribLocation(this.prog[15], "aOfs");
this.texture[15] = gl.createTexture();
this.texLoc[15] = gl.getAttribLocation(this.prog[15], "aTexcoord");
this.sampler[15] = gl.getUniformLocation(this.prog[15],"uSampler");
handleLoadedTexture(this.texture[15], document.getElementById("testgltextureCanvas"));
var v=new Float32Array([
<<<<<<< HEAD
-4.69973, -3, -6.243412, 0, -0.5, 0.5, 0.5,
-4.69973, -3, -6.243412, 1, -0.5, 0.5, 0.5,
-4.69973, -3, -6.243412, 1, 1.5, 0.5, 0.5,
-4.69973, -3, -6.243412, 0, 1.5, 0.5, 0.5,
-4.69973, -2, -6.243412, 0, -0.5, 0.5, 0.5,
-4.69973, -2, -6.243412, 1, -0.5, 0.5, 0.5,
-4.69973, -2, -6.243412, 1, 1.5, 0.5, 0.5,
-4.69973, -2, -6.243412, 0, 1.5, 0.5, 0.5,
-4.69973, -1, -6.243412, 0, -0.5, 0.5, 0.5,
-4.69973, -1, -6.243412, 1, -0.5, 0.5, 0.5,
-4.69973, -1, -6.243412, 1, 1.5, 0.5, 0.5,
-4.69973, -1, -6.243412, 0, 1.5, 0.5, 0.5,
-4.69973, 0, -6.243412, 0, -0.5, 0.5, 0.5,
-4.69973, 0, -6.243412, 1, -0.5, 0.5, 0.5,
-4.69973, 0, -6.243412, 1, 1.5, 0.5, 0.5,
-4.69973, 0, -6.243412, 0, 1.5, 0.5, 0.5,
-4.69973, 1, -6.243412, 0, -0.5, 0.5, 0.5,
-4.69973, 1, -6.243412, 1, -0.5, 0.5, 0.5,
-4.69973, 1, -6.243412, 1, 1.5, 0.5, 0.5,
-4.69973, 1, -6.243412, 0, 1.5, 0.5, 0.5,
-4.69973, 2, -6.243412, 0, -0.5, 0.5, 0.5,
-4.69973, 2, -6.243412, 1, -0.5, 0.5, 0.5,
-4.69973, 2, -6.243412, 1, 1.5, 0.5, 0.5,
-4.69973, 2, -6.243412, 0, 1.5, 0.5, 0.5
=======
-3.251228, -3, -5.502977, 0, -0.5, 0.5, 0.5,
-3.251228, -3, -5.502977, 1, -0.5, 0.5, 0.5,
-3.251228, -3, -5.502977, 1, 1.5, 0.5, 0.5,
-3.251228, -3, -5.502977, 0, 1.5, 0.5, 0.5,
-3.251228, -2, -5.502977, 0, -0.5, 0.5, 0.5,
-3.251228, -2, -5.502977, 1, -0.5, 0.5, 0.5,
-3.251228, -2, -5.502977, 1, 1.5, 0.5, 0.5,
-3.251228, -2, -5.502977, 0, 1.5, 0.5, 0.5,
-3.251228, -1, -5.502977, 0, -0.5, 0.5, 0.5,
-3.251228, -1, -5.502977, 1, -0.5, 0.5, 0.5,
-3.251228, -1, -5.502977, 1, 1.5, 0.5, 0.5,
-3.251228, -1, -5.502977, 0, 1.5, 0.5, 0.5,
-3.251228, 0, -5.502977, 0, -0.5, 0.5, 0.5,
-3.251228, 0, -5.502977, 1, -0.5, 0.5, 0.5,
-3.251228, 0, -5.502977, 1, 1.5, 0.5, 0.5,
-3.251228, 0, -5.502977, 0, 1.5, 0.5, 0.5,
-3.251228, 1, -5.502977, 0, -0.5, 0.5, 0.5,
-3.251228, 1, -5.502977, 1, -0.5, 0.5, 0.5,
-3.251228, 1, -5.502977, 1, 1.5, 0.5, 0.5,
-3.251228, 1, -5.502977, 0, 1.5, 0.5, 0.5,
-3.251228, 2, -5.502977, 0, -0.5, 0.5, 0.5,
-3.251228, 2, -5.502977, 1, -0.5, 0.5, 0.5,
-3.251228, 2, -5.502977, 1, 1.5, 0.5, 0.5,
-3.251228, 2, -5.502977, 0, 1.5, 0.5, 0.5,
-3.251228, 3, -5.502977, 0, -0.5, 0.5, 0.5,
-3.251228, 3, -5.502977, 1, -0.5, 0.5, 0.5,
-3.251228, 3, -5.502977, 1, 1.5, 0.5, 0.5,
-3.251228, 3, -5.502977, 0, 1.5, 0.5, 0.5
>>>>>>> origin/master
]);
for (var i=0; i<6; i++) 
for (var j=0; j<4; j++) {
var ind = 7*(4*i + j) + 3;
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23
]);
this.buf[15] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[15]);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
this.ibuf[15] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[15]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[15] = gl.getUniformLocation(this.prog[15],"mvMatrix");
this.prMatLoc[15] = gl.getUniformLocation(this.prog[15],"prMatrix");
this.textScaleLoc[15] = gl.getUniformLocation(this.prog[15],"textScale");
// ****** lines object 16 ******
this.flags[16] = 128;
this.prog[16]  = gl.createProgram();
gl.attachShader(this.prog[16], this.getShader( gl, "testglvshader16" ));
gl.attachShader(this.prog[16], this.getShader( gl, "testglfshader16" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[16], 0, "aPos");
gl.bindAttribLocation(this.prog[16], 1, "aCol");
gl.linkProgram(this.prog[16]);
var v=new Float32Array([
<<<<<<< HEAD
-4.117221, -3.289637, -4,
-4.117221, -3.289637, 4,
-4.117221, -3.289637, -4,
-4.311391, -3.443964, -4,
-4.117221, -3.289637, -2,
-4.311391, -3.443964, -2,
-4.117221, -3.289637, 0,
-4.311391, -3.443964, 0,
-4.117221, -3.289637, 2,
-4.311391, -3.443964, 2,
-4.117221, -3.289637, 4,
-4.311391, -3.443964, 4
=======
-2.802783, -3.418148, -4,
-2.802783, -3.418148, 4,
-2.802783, -3.418148, -4,
-2.952265, -3.587142, -4,
-2.802783, -3.418148, -2,
-2.952265, -3.587142, -2,
-2.802783, -3.418148, 0,
-2.952265, -3.587142, 0,
-2.802783, -3.418148, 2,
-2.952265, -3.587142, 2,
-2.802783, -3.418148, 4,
-2.952265, -3.587142, 4
>>>>>>> origin/master
]);
this.buf[16] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[16]);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
this.mvMatLoc[16] = gl.getUniformLocation(this.prog[16],"mvMatrix");
this.prMatLoc[16] = gl.getUniformLocation(this.prog[16],"prMatrix");
// ****** text object 17 ******
this.flags[17] = 40;
this.prog[17]  = gl.createProgram();
gl.attachShader(this.prog[17], this.getShader( gl, "testglvshader17" ));
gl.attachShader(this.prog[17], this.getShader( gl, "testglfshader17" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[17], 0, "aPos");
gl.bindAttribLocation(this.prog[17], 1, "aCol");
gl.linkProgram(this.prog[17]);
var texts = [
"-4",
"-2",
"0",
"2",
"4"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[17] = gl.getAttribLocation(this.prog[17], "aOfs");
this.texture[17] = gl.createTexture();
this.texLoc[17] = gl.getAttribLocation(this.prog[17], "aTexcoord");
this.sampler[17] = gl.getUniformLocation(this.prog[17],"uSampler");
handleLoadedTexture(this.texture[17], document.getElementById("testgltextureCanvas"));
var v=new Float32Array([
<<<<<<< HEAD
-4.69973, -3.752618, -4, 0, -0.5, 0.5, 0.5,
-4.69973, -3.752618, -4, 1, -0.5, 0.5, 0.5,
-4.69973, -3.752618, -4, 1, 1.5, 0.5, 0.5,
-4.69973, -3.752618, -4, 0, 1.5, 0.5, 0.5,
-4.69973, -3.752618, -2, 0, -0.5, 0.5, 0.5,
-4.69973, -3.752618, -2, 1, -0.5, 0.5, 0.5,
-4.69973, -3.752618, -2, 1, 1.5, 0.5, 0.5,
-4.69973, -3.752618, -2, 0, 1.5, 0.5, 0.5,
-4.69973, -3.752618, 0, 0, -0.5, 0.5, 0.5,
-4.69973, -3.752618, 0, 1, -0.5, 0.5, 0.5,
-4.69973, -3.752618, 0, 1, 1.5, 0.5, 0.5,
-4.69973, -3.752618, 0, 0, 1.5, 0.5, 0.5,
-4.69973, -3.752618, 2, 0, -0.5, 0.5, 0.5,
-4.69973, -3.752618, 2, 1, -0.5, 0.5, 0.5,
-4.69973, -3.752618, 2, 1, 1.5, 0.5, 0.5,
-4.69973, -3.752618, 2, 0, 1.5, 0.5, 0.5,
-4.69973, -3.752618, 4, 0, -0.5, 0.5, 0.5,
-4.69973, -3.752618, 4, 1, -0.5, 0.5, 0.5,
-4.69973, -3.752618, 4, 1, 1.5, 0.5, 0.5,
-4.69973, -3.752618, 4, 0, 1.5, 0.5, 0.5
=======
-3.251228, -3.92513, -4, 0, -0.5, 0.5, 0.5,
-3.251228, -3.92513, -4, 1, -0.5, 0.5, 0.5,
-3.251228, -3.92513, -4, 1, 1.5, 0.5, 0.5,
-3.251228, -3.92513, -4, 0, 1.5, 0.5, 0.5,
-3.251228, -3.92513, -2, 0, -0.5, 0.5, 0.5,
-3.251228, -3.92513, -2, 1, -0.5, 0.5, 0.5,
-3.251228, -3.92513, -2, 1, 1.5, 0.5, 0.5,
-3.251228, -3.92513, -2, 0, 1.5, 0.5, 0.5,
-3.251228, -3.92513, 0, 0, -0.5, 0.5, 0.5,
-3.251228, -3.92513, 0, 1, -0.5, 0.5, 0.5,
-3.251228, -3.92513, 0, 1, 1.5, 0.5, 0.5,
-3.251228, -3.92513, 0, 0, 1.5, 0.5, 0.5,
-3.251228, -3.92513, 2, 0, -0.5, 0.5, 0.5,
-3.251228, -3.92513, 2, 1, -0.5, 0.5, 0.5,
-3.251228, -3.92513, 2, 1, 1.5, 0.5, 0.5,
-3.251228, -3.92513, 2, 0, 1.5, 0.5, 0.5,
-3.251228, -3.92513, 4, 0, -0.5, 0.5, 0.5,
-3.251228, -3.92513, 4, 1, -0.5, 0.5, 0.5,
-3.251228, -3.92513, 4, 1, 1.5, 0.5, 0.5,
-3.251228, -3.92513, 4, 0, 1.5, 0.5, 0.5
>>>>>>> origin/master
]);
for (var i=0; i<5; i++) 
for (var j=0; j<4; j++) {
var ind = 7*(4*i + j) + 3;
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19
]);
this.buf[17] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[17]);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
this.ibuf[17] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[17]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[17] = gl.getUniformLocation(this.prog[17],"mvMatrix");
this.prMatLoc[17] = gl.getUniformLocation(this.prog[17],"prMatrix");
this.textScaleLoc[17] = gl.getUniformLocation(this.prog[17],"textScale");
// ****** lines object 18 ******
this.flags[18] = 128;
this.prog[18]  = gl.createProgram();
gl.attachShader(this.prog[18], this.getShader( gl, "testglvshader18" ));
gl.attachShader(this.prog[18], this.getShader( gl, "testglfshader18" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[18], 0, "aPos");
gl.bindAttribLocation(this.prog[18], 1, "aCol");
gl.linkProgram(this.prog[18]);
var v=new Float32Array([
<<<<<<< HEAD
-4.117221, -3.289637, -5.389949,
-4.117221, 2.883441, -5.389949,
-4.117221, -3.289637, 5.989563,
-4.117221, 2.883441, 5.989563,
-4.117221, -3.289637, -5.389949,
-4.117221, -3.289637, 5.989563,
-4.117221, 2.883441, -5.389949,
-4.117221, 2.883441, 5.989563,
-4.117221, -3.289637, -5.389949,
3.649554, -3.289637, -5.389949,
-4.117221, -3.289637, 5.989563,
3.649554, -3.289637, 5.989563,
-4.117221, 2.883441, -5.389949,
3.649554, 2.883441, -5.389949,
-4.117221, 2.883441, 5.989563,
3.649554, 2.883441, 5.989563,
3.649554, -3.289637, -5.389949,
3.649554, 2.883441, -5.389949,
3.649554, -3.289637, 5.989563,
3.649554, 2.883441, 5.989563,
3.649554, -3.289637, -5.389949,
3.649554, -3.289637, 5.989563,
3.649554, 2.883441, -5.389949,
3.649554, 2.883441, 5.989563
=======
-2.802783, -3.418148, -4.768042,
-2.802783, 3.341619, -4.768042,
-2.802783, -3.418148, 5.031103,
-2.802783, 3.341619, 5.031103,
-2.802783, -3.418148, -4.768042,
-2.802783, -3.418148, 5.031103,
-2.802783, 3.341619, -4.768042,
-2.802783, 3.341619, 5.031103,
-2.802783, -3.418148, -4.768042,
3.176486, -3.418148, -4.768042,
-2.802783, -3.418148, 5.031103,
3.176486, -3.418148, 5.031103,
-2.802783, 3.341619, -4.768042,
3.176486, 3.341619, -4.768042,
-2.802783, 3.341619, 5.031103,
3.176486, 3.341619, 5.031103,
3.176486, -3.418148, -4.768042,
3.176486, 3.341619, -4.768042,
3.176486, -3.418148, 5.031103,
3.176486, 3.341619, 5.031103,
3.176486, -3.418148, -4.768042,
3.176486, -3.418148, 5.031103,
3.176486, 3.341619, -4.768042,
3.176486, 3.341619, 5.031103
>>>>>>> origin/master
]);
this.buf[18] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[18]);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
this.mvMatLoc[18] = gl.getUniformLocation(this.prog[18],"mvMatrix");
this.prMatLoc[18] = gl.getUniformLocation(this.prog[18],"prMatrix");
gl.enable(gl.DEPTH_TEST);
gl.depthFunc(gl.LEQUAL);
gl.clearDepth(1.0);
gl.clearColor(1,1,1,1);
var drag  = 0;
this.drawScene = function() {
gl.depthMask(true);
gl.disable(gl.BLEND);
gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);
<<<<<<< HEAD
// ***** subscene 1 ****
gl.viewport(0, 0, 672, 480);
gl.scissor(0, 0, 672, 480);
gl.clearColor(1, 1, 1, 1);
gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);
var radius = 8.061568;
var distance = 35.86683;
var t = tan(fov[1]*PI/360);
var near = distance - radius;
var far = distance + radius;
var hlen = t*near;
var aspect = 1.4;
prMatrix.makeIdentity();
if (aspect > 1)
prMatrix.frustum(-hlen*aspect*zoom[1], hlen*aspect*zoom[1], 
-hlen*zoom[1], hlen*zoom[1], near, far);
else  
prMatrix.frustum(-hlen*zoom[1], hlen*zoom[1], 
-hlen*zoom[1]/aspect, hlen*zoom[1]/aspect, 
near, far);
mvMatrix.makeIdentity();
mvMatrix.translate( 0.2338339, 0.2030982, -0.2998068 );
mvMatrix.scale( 1.122258, 1.41199, 0.7659665 );   
mvMatrix.multRight( userMatrix[1] );
mvMatrix.translate(-0, -0, -35.86683);
=======
this.drawFns[1].call(this, 1)
gl.flush ();
}
>>>>>>> origin/master
// ****** points object 7 *******
this.drawFns[7] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.enableVertexAttribArray( colLoc );
gl.vertexAttribPointer(colLoc, 4, gl.FLOAT, false, 28, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 28,  0);
gl.drawArrays(gl.POINTS, 0, 1000);
}
// ****** text object 9 *******
this.drawFns[9] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 28, 12);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 28, 20);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 28,  0);
gl.drawElements(gl.TRIANGLES, 6, gl.UNSIGNED_SHORT, 0);
}
// ****** text object 10 *******
this.drawFns[10] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 28, 12);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 28, 20);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 28,  0);
gl.drawElements(gl.TRIANGLES, 6, gl.UNSIGNED_SHORT, 0);
}
// ****** text object 11 *******
this.drawFns[11] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 28, 12);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 28, 20);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 28,  0);
gl.drawElements(gl.TRIANGLES, 6, gl.UNSIGNED_SHORT, 0);
}
// ****** lines object 12 *******
this.drawFns[12] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 12,  0);
<<<<<<< HEAD
gl.drawArrays(gl.LINES, 0, 10);
=======
gl.drawArrays(gl.LINES, 0, 14);
}
>>>>>>> origin/master
// ****** text object 13 *******
this.drawFns[13] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 28, 12);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 28, 20);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 28,  0);
<<<<<<< HEAD
gl.drawElements(gl.TRIANGLES, 24, gl.UNSIGNED_SHORT, 0);
=======
gl.drawElements(gl.TRIANGLES, 36, gl.UNSIGNED_SHORT, 0);
}
>>>>>>> origin/master
// ****** lines object 14 *******
this.drawFns[14] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 12,  0);
<<<<<<< HEAD
gl.drawArrays(gl.LINES, 0, 14);
=======
gl.drawArrays(gl.LINES, 0, 16);
}
>>>>>>> origin/master
// ****** text object 15 *******
this.drawFns[15] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 28, 12);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 28, 20);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 28,  0);
<<<<<<< HEAD
gl.drawElements(gl.TRIANGLES, 36, gl.UNSIGNED_SHORT, 0);
=======
gl.drawElements(gl.TRIANGLES, 42, gl.UNSIGNED_SHORT, 0);
}
>>>>>>> origin/master
// ****** lines object 16 *******
this.drawFns[16] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 12,  0);
gl.drawArrays(gl.LINES, 0, 12);
<<<<<<< HEAD
=======
}
>>>>>>> origin/master
// ****** text object 17 *******
this.drawFns[17] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 28, 12);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 28, 20);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 28,  0);
gl.drawElements(gl.TRIANGLES, 30, gl.UNSIGNED_SHORT, 0);
<<<<<<< HEAD
=======
}
>>>>>>> origin/master
// ****** lines object 18 *******
this.drawFns[18] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 12,  0);
gl.drawArrays(gl.LINES, 0, 24);
}
// ***** subscene 1 ****
this.drawFns[1] = function(id) {
this.vp = this.viewport[id];
gl.viewport(this.vp[0], this.vp[1], this.vp[2], this.vp[3]);
gl.scissor(this.vp[0], this.vp[1], this.vp[2], this.vp[3]);
gl.clearColor(1, 1, 1, 1);
gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);
this.prMatrix.makeIdentity();
var radius = 7.113562;
var distance = 31.64904;
var t = tan(this.FOV[1]*PI/360);
var near = distance - radius;
var far = distance + radius;
var hlen = t*near;
var aspect = this.vp[2]/this.vp[3];
var z = this.zoom[1];
if (aspect > 1) 
this.prMatrix.frustum(-hlen*aspect*z, hlen*aspect*z, 
-hlen*z, hlen*z, near, far);
else  
this.prMatrix.frustum(-hlen*z, hlen*z, 
-hlen*z/aspect, hlen*z/aspect, 
near, far);
this.mvMatrix.makeIdentity();
this.mvMatrix.translate( -0.1868515, 0.03826416, -0.1315305 );
this.mvMatrix.scale( 1.286332, 1.137809, 0.7848974 );   
this.mvMatrix.multRight( testglrgl.userMatrix[1] );
this.mvMatrix.translate(-0, -0, -31.64904);
var clipids = this.clipplanes[id];
if (clipids.length > 0) {
this.invMatrix = new CanvasMatrix4(this.mvMatrix);
this.invMatrix.invert();
for (var i = 0; i < this.clipplanes[id].length; i++) 
this.drawFns[clipids[i]].call(this, clipids[i]);
}
var subids = this.opaque[id];
for (var i = 0; i < subids.length; i++) 
this.drawFns[subids[i]].call(this, subids[i], clipids);
subids = this.transparent[id];
if (subids.length > 0) {
gl.depthMask(false);
gl.blendFuncSeparate(gl.SRC_ALPHA, gl.ONE_MINUS_SRC_ALPHA,
gl.ONE, gl.ONE);
gl.enable(gl.BLEND);
for (var i = 0; i < subids.length; i++) 
this.drawFns[subids[i]].call(this, subids[i], clipids);
}
subids = this.subscenes[id];
for (var i = 0; i < subids.length; i++)
this.drawFns[subids[i]].call(this, subids[i]);
}
this.drawScene();
var vpx0 = {
1: 0
};
var vpy0 = {
1: 0
};
var vpWidths = {
1: 672
};
var vpHeights = {
1: 480
};
var activeModel = {
1: 1
};
var activeProjection = {
1: 1
};
testglrgl.listeners = {
1: [ 1 ]
};
var whichSubscene = function(coords){
if (0 <= coords.x && coords.x <= 672 && 0 <= coords.y && coords.y <= 480) return(1);
return(1);
}
var translateCoords = function(subsceneid, coords){
return {x:coords.x - vpx0[subsceneid], y:coords.y - vpy0[subsceneid]};
}
var vlen = function(v) {
return sqrt(v[0]*v[0] + v[1]*v[1] + v[2]*v[2])
}
var xprod = function(a, b) {
return [a[1]*b[2] - a[2]*b[1],
a[2]*b[0] - a[0]*b[2],
a[0]*b[1] - a[1]*b[0]];
}
var screenToVector = function(x, y) {
var width = vpWidths[activeSubscene];
var height = vpHeights[activeSubscene];
var radius = max(width, height)/2.0;
var cx = width/2.0;
var cy = height/2.0;
var px = (x-cx)/radius;
var py = (y-cy)/radius;
var plen = sqrt(px*px+py*py);
if (plen > 1.e-6) { 
px = px/plen;
py = py/plen;
}
var angle = (SQRT2 - plen)/SQRT2*PI/2;
var z = sin(angle);
var zlen = sqrt(1.0 - z*z);
px = px * zlen;
py = py * zlen;
return [px, py, z];
}
var rotBase;
var trackballdown = function(x,y) {
rotBase = screenToVector(x, y);
var l = testglrgl.listeners[activeModel[activeSubscene]];
saveMat = new Object();
for (var i = 0; i < l.length; i++) 
saveMat[l[i]] = new CanvasMatrix4(testglrgl.userMatrix[l[i]]);
}
var trackballmove = function(x,y) {
var rotCurrent = screenToVector(x,y);
var dot = rotBase[0]*rotCurrent[0] + 
rotBase[1]*rotCurrent[1] + 
rotBase[2]*rotCurrent[2];
var angle = acos( dot/vlen(rotBase)/vlen(rotCurrent) )*180./PI;
var axis = xprod(rotBase, rotCurrent);
var l = testglrgl.listeners[activeModel[activeSubscene]];
for (i = 0; i < l.length; i++) {
testglrgl.userMatrix[l[i]].load(saveMat[l[i]]);
testglrgl.userMatrix[l[i]].rotate(angle, axis[0], axis[1], axis[2]);
}
testglrgl.drawScene();
}
var trackballend = 0;
var y0zoom = 0;
var zoom0 = 0;
var zoomdown = function(x, y) {
y0zoom = y;
zoom0 = new Object();
l = testglrgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
zoom0[l[i]] = log(testglrgl.zoom[l[i]]);
}
var zoommove = function(x, y) {
l = testglrgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
testglrgl.zoom[l[i]] = exp(zoom0[l[i]] + (y-y0zoom)/height);
testglrgl.drawScene();
}
var zoomend = 0;
var y0fov = 0;
var fov0 = 0;
var fovdown = function(x, y) {
y0fov = y;
fov0 = new Object();
l = testglrgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
fov0[l[i]] = testglrgl.FOV[l[i]];
}
var fovmove = function(x, y) {
l = testglrgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
testglrgl.FOV[l[i]] = max(1, min(179, fov0[l[i]] + 180*(y-y0fov)/height));
testglrgl.drawScene();
}
var fovend = 0;
var mousedown = [trackballdown, zoomdown, fovdown];
var mousemove = [trackballmove, zoommove, fovmove];
var mouseend = [trackballend, zoomend, fovend];
function relMouseCoords(event){
var totalOffsetX = 0;
var totalOffsetY = 0;
var currentElement = canvas;
do{
totalOffsetX += currentElement.offsetLeft;
totalOffsetY += currentElement.offsetTop;
currentElement = currentElement.offsetParent;
}
while(currentElement)
var canvasX = event.pageX - totalOffsetX;
var canvasY = event.pageY - totalOffsetY;
return {x:canvasX, y:canvasY}
}
canvas.onmousedown = function ( ev ){
if (!ev.which) // Use w3c defns in preference to MS
switch (ev.button) {
case 0: ev.which = 1; break;
case 1: 
case 4: ev.which = 2; break;
case 2: ev.which = 3;
}
drag = ev.which;
var f = mousedown[drag-1];
if (f) {
var coords = relMouseCoords(ev);
coords.y = height-coords.y;
activeSubscene = whichSubscene(coords);
coords = translateCoords(activeSubscene, coords);
f(coords.x, coords.y); 
ev.preventDefault();
}
}    
canvas.onmouseup = function ( ev ){	
if ( drag == 0 ) return;
var f = mouseend[drag-1];
if (f) 
f();
drag = 0;
}
canvas.onmouseout = canvas.onmouseup;
canvas.onmousemove = function ( ev ){
if ( drag == 0 ) return;
var f = mousemove[drag-1];
if (f) {
var coords = relMouseCoords(ev);
coords.y = height - coords.y;
coords = translateCoords(activeSubscene, coords);
f(coords.x, coords.y);
}
}
var wheelHandler = function(ev) {
var del = 1.1;
if (ev.shiftKey) del = 1.01;
var ds = ((ev.detail || ev.wheelDelta) > 0) ? del : (1 / del);
l = testglrgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
testglrgl.zoom[l[i]] *= ds;
testglrgl.drawScene();
ev.preventDefault();
};
canvas.addEventListener("DOMMouseScroll", wheelHandler, false);
canvas.addEventListener("mousewheel", wheelHandler, false);
}
</script>
<canvas id="testglcanvas" class="rglWebGL" width="1" height="1"></canvas> 
<p id="testgldebug">
You must enable Javascript to view this page properly.</p>
<script>testglrgl.start();</script>

This one also works.


```r
open3d()
```

```
## glX 
##   2
```

```r
spheres3d(x, y, z, col=rainbow(1000))
```

<canvas id="testgl2textureCanvas" style="display: none;" width="256" height="256">
Your browser does not support the HTML5 canvas element.</canvas>
<!-- ****** spheres object 25 ****** -->
<script id="testgl2vshader25" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="testgl2fshader25" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<script type="text/javascript">
var testgl2rgl = new rglClass();
testgl2rgl.start = function() {
var debug = function(msg) {
document.getElementById("testgl2debug").innerHTML = msg;
}
debug("");
var canvas = document.getElementById("testgl2canvas");
if (!window.WebGLRenderingContext){
debug(" Your browser does not support WebGL. See <a href=\"http://get.webgl.org\">http://get.webgl.org</a>");
return;
}
var gl;
try {
// Try to grab the standard context. If it fails, fallback to experimental.
gl = canvas.getContext("webgl") 
|| canvas.getContext("experimental-webgl");
}
catch(e) {}
if ( !gl ) {
debug(" Your browser appears to support WebGL, but did not create a WebGL context.  See <a href=\"http://get.webgl.org\">http://get.webgl.org</a>");
return;
}
var width = 673;  var height = 481;
canvas.width = width;   canvas.height = height;
var normMatrix = new CanvasMatrix4();
var saveMat = new Object();
var distance;
var posLoc = 0;
var colLoc = 1;
var activeSubscene = 19;
this.flags[19] = 1027;
this.zoom[19] = 1;
this.FOV[19] = 30;
this.viewport[19] = [0, 0, 672, 480];
this.userMatrix[19] = new CanvasMatrix4();
this.userMatrix[19].load([
1, 0, 0, 0,
0, 0.3420201, -0.9396926, 0,
0, 0.9396926, 0.3420201, 0,
0, 0, 0, 1
]);
this.clipplanes[19] = [];
this.opaque[19] = [25];
this.transparent[19] = [];
this.subscenes[19] = [];
function getPowerOfTwo(value) {
var pow = 1;
while(pow<value) {
pow *= 2;
}
return pow;
}
function handleLoadedTexture(texture, textureCanvas) {
gl.pixelStorei(gl.UNPACK_FLIP_Y_WEBGL, true);
gl.bindTexture(gl.TEXTURE_2D, texture);
gl.texImage2D(gl.TEXTURE_2D, 0, gl.RGBA, gl.RGBA, gl.UNSIGNED_BYTE, textureCanvas);
gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MAG_FILTER, gl.LINEAR);
gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MIN_FILTER, gl.LINEAR_MIPMAP_NEAREST);
gl.generateMipmap(gl.TEXTURE_2D);
gl.bindTexture(gl.TEXTURE_2D, null);
}
function loadImageToTexture(filename, texture) {   
var canvas = document.getElementById("testgl2textureCanvas");
var ctx = canvas.getContext("2d");
var image = new Image();
image.onload = function() {
var w = image.width;
var h = image.height;
var canvasX = getPowerOfTwo(w);
var canvasY = getPowerOfTwo(h);
canvas.width = canvasX;
canvas.height = canvasY;
ctx.imageSmoothingEnabled = true;
ctx.drawImage(image, 0, 0, canvasX, canvasY);
handleLoadedTexture(texture, canvas);
testgl2rgl.drawScene();
}
image.src = filename;
}  	   
// ****** sphere object ******
var v=new Float32Array([
-1, 0, 0,
1, 0, 0,
0, -1, 0,
0, 1, 0,
0, 0, -1,
0, 0, 1,
-0.7071068, 0, -0.7071068,
-0.7071068, -0.7071068, 0,
0, -0.7071068, -0.7071068,
-0.7071068, 0, 0.7071068,
0, -0.7071068, 0.7071068,
-0.7071068, 0.7071068, 0,
0, 0.7071068, -0.7071068,
0, 0.7071068, 0.7071068,
0.7071068, -0.7071068, 0,
0.7071068, 0, -0.7071068,
0.7071068, 0, 0.7071068,
0.7071068, 0.7071068, 0,
-0.9349975, 0, -0.3546542,
-0.9349975, -0.3546542, 0,
-0.77044, -0.4507894, -0.4507894,
0, -0.3546542, -0.9349975,
-0.3546542, 0, -0.9349975,
-0.4507894, -0.4507894, -0.77044,
-0.3546542, -0.9349975, 0,
0, -0.9349975, -0.3546542,
-0.4507894, -0.77044, -0.4507894,
-0.9349975, 0, 0.3546542,
-0.77044, -0.4507894, 0.4507894,
0, -0.9349975, 0.3546542,
-0.4507894, -0.77044, 0.4507894,
-0.3546542, 0, 0.9349975,
0, -0.3546542, 0.9349975,
-0.4507894, -0.4507894, 0.77044,
-0.9349975, 0.3546542, 0,
-0.77044, 0.4507894, -0.4507894,
0, 0.9349975, -0.3546542,
-0.3546542, 0.9349975, 0,
-0.4507894, 0.77044, -0.4507894,
0, 0.3546542, -0.9349975,
-0.4507894, 0.4507894, -0.77044,
-0.77044, 0.4507894, 0.4507894,
0, 0.3546542, 0.9349975,
-0.4507894, 0.4507894, 0.77044,
0, 0.9349975, 0.3546542,
-0.4507894, 0.77044, 0.4507894,
0.9349975, -0.3546542, 0,
0.9349975, 0, -0.3546542,
0.77044, -0.4507894, -0.4507894,
0.3546542, -0.9349975, 0,
0.4507894, -0.77044, -0.4507894,
0.3546542, 0, -0.9349975,
0.4507894, -0.4507894, -0.77044,
0.9349975, 0, 0.3546542,
0.77044, -0.4507894, 0.4507894,
0.3546542, 0, 0.9349975,
0.4507894, -0.4507894, 0.77044,
0.4507894, -0.77044, 0.4507894,
0.9349975, 0.3546542, 0,
0.77044, 0.4507894, -0.4507894,
0.4507894, 0.4507894, -0.77044,
0.3546542, 0.9349975, 0,
0.4507894, 0.77044, -0.4507894,
0.77044, 0.4507894, 0.4507894,
0.4507894, 0.77044, 0.4507894,
0.4507894, 0.4507894, 0.77044
]);
var f=new Uint16Array([
0, 18, 19,
6, 20, 18,
7, 19, 20,
19, 18, 20,
4, 21, 22,
8, 23, 21,
6, 22, 23,
22, 21, 23,
2, 24, 25,
7, 26, 24,
8, 25, 26,
25, 24, 26,
7, 20, 26,
6, 23, 20,
8, 26, 23,
26, 20, 23,
0, 19, 27,
7, 28, 19,
9, 27, 28,
27, 19, 28,
2, 29, 24,
10, 30, 29,
7, 24, 30,
24, 29, 30,
5, 31, 32,
9, 33, 31,
10, 32, 33,
32, 31, 33,
9, 28, 33,
7, 30, 28,
10, 33, 30,
33, 28, 30,
0, 34, 18,
11, 35, 34,
6, 18, 35,
18, 34, 35,
3, 36, 37,
12, 38, 36,
11, 37, 38,
37, 36, 38,
4, 22, 39,
6, 40, 22,
12, 39, 40,
39, 22, 40,
6, 35, 40,
11, 38, 35,
12, 40, 38,
40, 35, 38,
0, 27, 34,
9, 41, 27,
11, 34, 41,
34, 27, 41,
5, 42, 31,
13, 43, 42,
9, 31, 43,
31, 42, 43,
3, 37, 44,
11, 45, 37,
13, 44, 45,
44, 37, 45,
11, 41, 45,
9, 43, 41,
13, 45, 43,
45, 41, 43,
1, 46, 47,
14, 48, 46,
15, 47, 48,
47, 46, 48,
2, 25, 49,
8, 50, 25,
14, 49, 50,
49, 25, 50,
4, 51, 21,
15, 52, 51,
8, 21, 52,
21, 51, 52,
15, 48, 52,
14, 50, 48,
8, 52, 50,
52, 48, 50,
1, 53, 46,
16, 54, 53,
14, 46, 54,
46, 53, 54,
5, 32, 55,
10, 56, 32,
16, 55, 56,
55, 32, 56,
2, 49, 29,
14, 57, 49,
10, 29, 57,
29, 49, 57,
14, 54, 57,
16, 56, 54,
10, 57, 56,
57, 54, 56,
1, 47, 58,
15, 59, 47,
17, 58, 59,
58, 47, 59,
4, 39, 51,
12, 60, 39,
15, 51, 60,
51, 39, 60,
3, 61, 36,
17, 62, 61,
12, 36, 62,
36, 61, 62,
17, 59, 62,
15, 60, 59,
12, 62, 60,
62, 59, 60,
1, 58, 53,
17, 63, 58,
16, 53, 63,
53, 58, 63,
3, 44, 61,
13, 64, 44,
17, 61, 64,
61, 44, 64,
5, 55, 42,
16, 65, 55,
13, 42, 65,
42, 55, 65,
16, 63, 65,
17, 64, 63,
13, 65, 64,
65, 63, 64
]);
var sphereBuf = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, sphereBuf);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var sphereIbuf = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, sphereIbuf);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
// ****** spheres object 25 ******
this.flags[25] = 3;
this.prog[25]  = gl.createProgram();
gl.attachShader(this.prog[25], this.getShader( gl, "testgl2vshader25" ));
gl.attachShader(this.prog[25], this.getShader( gl, "testgl2fshader25" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[25], 0, "aPos");
gl.bindAttribLocation(this.prog[25], 1, "aCol");
gl.linkProgram(this.prog[25]);
var v=new Float32Array([
<<<<<<< HEAD
-4.004113, -0.4519024, -2.560224, 1, 0, 0, 1, 1,
-2.963282, -1.238452, -3.918952, 1, 0.007843138, 0, 1, 1,
-2.913826, 0.9497079, -1.0786, 1, 0.01176471, 0, 1, 1,
-2.674692, -0.1064956, -1.900613, 1, 0.01960784, 0, 1, 1,
-2.457499, 1.587991, -0.6189132, 1, 0.02352941, 0, 1, 1,
-2.411187, 0.8079309, -0.7170224, 1, 0.03137255, 0, 1, 1,
-2.322917, -1.296227, -3.431767, 1, 0.03529412, 0, 1, 1,
-2.257308, 0.04687494, -0.1697228, 1, 0.04313726, 0, 1, 1,
-2.245189, -0.4636353, -2.282286, 1, 0.04705882, 0, 1, 1,
-2.224729, -0.2658116, -0.9582263, 1, 0.05490196, 0, 1, 1,
-2.215771, -0.3663732, -0.5424602, 1, 0.05882353, 0, 1, 1,
-2.206897, -1.848617, -0.4523383, 1, 0.06666667, 0, 1, 1,
-2.199162, 0.1706673, -1.327194, 1, 0.07058824, 0, 1, 1,
-2.194554, -0.5681325, -2.36983, 1, 0.07843138, 0, 1, 1,
-2.186949, -0.01827551, -2.757624, 1, 0.08235294, 0, 1, 1,
-2.168548, 0.9642818, -1.265471, 1, 0.09019608, 0, 1, 1,
-2.114048, 0.08023176, -1.515315, 1, 0.09411765, 0, 1, 1,
-2.044847, 1.104356, -0.848801, 1, 0.1019608, 0, 1, 1,
-2.043122, 0.8781194, -0.9985762, 1, 0.1098039, 0, 1, 1,
-2.028192, -1.679692, -1.781797, 1, 0.1137255, 0, 1, 1,
-2.02321, 1.676582, -3.069283, 1, 0.1215686, 0, 1, 1,
-2.016868, 2.130225, -1.56818, 1, 0.1254902, 0, 1, 1,
-1.992249, -0.3363093, -2.535588, 1, 0.1333333, 0, 1, 1,
-1.982829, 1.317629, -0.4272959, 1, 0.1372549, 0, 1, 1,
-1.941344, -0.2682791, -1.2452, 1, 0.145098, 0, 1, 1,
-1.929363, -0.3869388, -1.442369, 1, 0.1490196, 0, 1, 1,
-1.883587, 0.1067889, -1.207716, 1, 0.1568628, 0, 1, 1,
-1.881066, 0.03081323, -0.6505378, 1, 0.1607843, 0, 1, 1,
-1.87797, 0.642441, -1.564535, 1, 0.1686275, 0, 1, 1,
-1.875939, 2.079728, -0.8274196, 1, 0.172549, 0, 1, 1,
-1.840159, -1.4717, -1.871695, 1, 0.1803922, 0, 1, 1,
-1.834037, -0.254814, -0.8309864, 1, 0.1843137, 0, 1, 1,
-1.812581, -0.4540595, -2.792621, 1, 0.1921569, 0, 1, 1,
-1.796017, -0.2821814, -2.034228, 1, 0.1960784, 0, 1, 1,
-1.794788, 0.8577258, -1.831869, 1, 0.2039216, 0, 1, 1,
-1.789085, 0.4873675, -0.9144318, 1, 0.2117647, 0, 1, 1,
-1.782467, 1.089792, -1.259363, 1, 0.2156863, 0, 1, 1,
-1.771425, 1.053842, -1.303029, 1, 0.2235294, 0, 1, 1,
-1.771281, 0.7357277, -0.5914348, 1, 0.227451, 0, 1, 1,
-1.763545, 0.1030135, -1.582798, 1, 0.2352941, 0, 1, 1,
-1.721527, -0.8166181, -3.969439, 1, 0.2392157, 0, 1, 1,
-1.720075, -0.7316666, -1.411726, 1, 0.2470588, 0, 1, 1,
-1.702586, -1.621226, -1.530691, 1, 0.2509804, 0, 1, 1,
-1.683607, 0.7169487, -0.1103567, 1, 0.2588235, 0, 1, 1,
-1.68122, 0.1076411, -1.063349, 1, 0.2627451, 0, 1, 1,
-1.673806, -1.868879, -1.280098, 1, 0.2705882, 0, 1, 1,
-1.669064, -0.2959146, -1.291494, 1, 0.2745098, 0, 1, 1,
-1.666686, -0.3461616, -0.6009688, 1, 0.282353, 0, 1, 1,
-1.661011, 0.4321772, -1.177662, 1, 0.2862745, 0, 1, 1,
-1.635289, -0.2478664, -2.743606, 1, 0.2941177, 0, 1, 1,
-1.621978, 0.7307754, -0.3667972, 1, 0.3019608, 0, 1, 1,
-1.62191, -0.01987723, -2.077588, 1, 0.3058824, 0, 1, 1,
-1.604732, 0.8115342, -1.588065, 1, 0.3137255, 0, 1, 1,
-1.604696, -0.07281393, 1.43279, 1, 0.3176471, 0, 1, 1,
-1.602895, 0.1997042, -2.289292, 1, 0.3254902, 0, 1, 1,
-1.600246, 0.01672434, -1.717728, 1, 0.3294118, 0, 1, 1,
-1.592529, 0.8683903, -0.9351632, 1, 0.3372549, 0, 1, 1,
-1.591475, 1.784213, 0.1392118, 1, 0.3411765, 0, 1, 1,
-1.578858, 1.249161, -1.83514, 1, 0.3490196, 0, 1, 1,
-1.578336, -0.4195282, -0.8772083, 1, 0.3529412, 0, 1, 1,
-1.571696, 1.544829, 0.3680328, 1, 0.3607843, 0, 1, 1,
-1.569819, -1.103994, -1.368267, 1, 0.3647059, 0, 1, 1,
-1.560994, 2.793542, -0.3603908, 1, 0.372549, 0, 1, 1,
-1.538352, 1.269305, -2.434787, 1, 0.3764706, 0, 1, 1,
-1.520886, -1.487116, -4.60543, 1, 0.3843137, 0, 1, 1,
-1.519318, 1.377691, -0.6132969, 1, 0.3882353, 0, 1, 1,
-1.516042, 0.4314333, -2.91613, 1, 0.3960784, 0, 1, 1,
-1.496042, 0.6245227, -0.9573382, 1, 0.4039216, 0, 1, 1,
-1.468661, -0.164241, 0.6166863, 1, 0.4078431, 0, 1, 1,
-1.468566, -1.254363, -2.510956, 1, 0.4156863, 0, 1, 1,
-1.455483, 0.7586623, -0.1611502, 1, 0.4196078, 0, 1, 1,
-1.449494, -0.2164677, -1.918236, 1, 0.427451, 0, 1, 1,
-1.442058, 0.2957664, -1.64127, 1, 0.4313726, 0, 1, 1,
-1.441464, -0.8388707, -1.196654, 1, 0.4392157, 0, 1, 1,
-1.43092, -0.06446647, -1.092493, 1, 0.4431373, 0, 1, 1,
-1.428805, -1.523553, -2.959939, 1, 0.4509804, 0, 1, 1,
-1.428599, 0.7603785, -1.659204, 1, 0.454902, 0, 1, 1,
-1.424514, 0.7763948, -1.643434, 1, 0.4627451, 0, 1, 1,
-1.422045, -1.074091, -2.770445, 1, 0.4666667, 0, 1, 1,
-1.419743, 0.2743589, -1.660076, 1, 0.4745098, 0, 1, 1,
-1.419722, 0.5470588, -2.731156, 1, 0.4784314, 0, 1, 1,
-1.398479, -0.1779203, -2.339952, 1, 0.4862745, 0, 1, 1,
-1.398403, 1.001406, 0.4823247, 1, 0.4901961, 0, 1, 1,
-1.396342, -0.9278196, -0.8194799, 1, 0.4980392, 0, 1, 1,
-1.395125, 1.044404, -1.304842, 1, 0.5058824, 0, 1, 1,
-1.394062, -1.281465, -2.125751, 1, 0.509804, 0, 1, 1,
-1.386677, -0.8529776, -2.36717, 1, 0.5176471, 0, 1, 1,
-1.38345, 1.303767, -0.6572283, 1, 0.5215687, 0, 1, 1,
-1.381997, -0.3155326, -2.560666, 1, 0.5294118, 0, 1, 1,
-1.376927, 1.073848, -1.964145, 1, 0.5333334, 0, 1, 1,
-1.369403, -0.1502356, -2.918295, 1, 0.5411765, 0, 1, 1,
-1.365222, -1.051751, -2.027022, 1, 0.5450981, 0, 1, 1,
-1.349441, 1.201812, -0.6211532, 1, 0.5529412, 0, 1, 1,
-1.349025, 1.089171, -1.134671, 1, 0.5568628, 0, 1, 1,
-1.339843, -0.560832, -1.69434, 1, 0.5647059, 0, 1, 1,
-1.333722, -0.9808387, -2.946456, 1, 0.5686275, 0, 1, 1,
-1.329345, 0.1941559, -2.918801, 1, 0.5764706, 0, 1, 1,
-1.32492, -0.6718727, -2.863221, 1, 0.5803922, 0, 1, 1,
-1.324114, -0.9131275, -0.3976955, 1, 0.5882353, 0, 1, 1,
-1.300421, 0.5553323, -2.034158, 1, 0.5921569, 0, 1, 1,
-1.295498, 0.8862043, -1.104885, 1, 0.6, 0, 1, 1,
-1.292172, -0.6215366, -1.550444, 1, 0.6078432, 0, 1, 1,
-1.282416, 1.6451, -0.8837476, 1, 0.6117647, 0, 1, 1,
-1.282287, 0.674743, -1.19277, 1, 0.6196079, 0, 1, 1,
-1.28124, -0.352266, -2.438862, 1, 0.6235294, 0, 1, 1,
-1.277938, 0.4758895, -2.041883, 1, 0.6313726, 0, 1, 1,
-1.274306, -0.6573736, -1.412687, 1, 0.6352941, 0, 1, 1,
-1.268411, -0.3191679, -2.08261, 1, 0.6431373, 0, 1, 1,
-1.267244, -1.2512, -3.451337, 1, 0.6470588, 0, 1, 1,
-1.266936, -0.6840343, -3.506492, 1, 0.654902, 0, 1, 1,
-1.263379, 1.0038, -0.6293903, 1, 0.6588235, 0, 1, 1,
-1.252022, 1.114944, -1.60248, 1, 0.6666667, 0, 1, 1,
-1.250485, -0.4616291, -1.964377, 1, 0.6705883, 0, 1, 1,
-1.249944, -0.4272889, -3.509915, 1, 0.6784314, 0, 1, 1,
-1.247651, 0.0525305, -0.8190795, 1, 0.682353, 0, 1, 1,
-1.246915, 1.423458, -1.42534, 1, 0.6901961, 0, 1, 1,
-1.24335, -1.070394, -1.84548, 1, 0.6941177, 0, 1, 1,
-1.242996, -0.7013069, -1.356792, 1, 0.7019608, 0, 1, 1,
-1.227794, -0.09191443, -2.001431, 1, 0.7098039, 0, 1, 1,
-1.227481, 0.04564446, 0.06156743, 1, 0.7137255, 0, 1, 1,
-1.227472, 0.8336801, -1.110763, 1, 0.7215686, 0, 1, 1,
-1.225664, -0.4281205, -2.863641, 1, 0.7254902, 0, 1, 1,
-1.217773, 0.6662644, -1.661731, 1, 0.7333333, 0, 1, 1,
-1.215462, 0.8052106, 0.4135129, 1, 0.7372549, 0, 1, 1,
-1.21457, 1.516999, -1.422255, 1, 0.7450981, 0, 1, 1,
-1.213319, 0.4148644, -1.036266, 1, 0.7490196, 0, 1, 1,
-1.209671, 0.2028899, -1.410695, 1, 0.7568628, 0, 1, 1,
-1.209366, -0.906066, -4.000398, 1, 0.7607843, 0, 1, 1,
-1.198286, 1.103669, -2.113048, 1, 0.7686275, 0, 1, 1,
-1.19447, 2.013128, -1.574065, 1, 0.772549, 0, 1, 1,
-1.182994, 0.117162, -2.06102, 1, 0.7803922, 0, 1, 1,
-1.179558, -0.06425056, 0.4673148, 1, 0.7843137, 0, 1, 1,
-1.176279, 0.03268156, -1.432531, 1, 0.7921569, 0, 1, 1,
-1.174887, -1.199136, -2.356441, 1, 0.7960784, 0, 1, 1,
-1.168998, -0.2934701, -2.311612, 1, 0.8039216, 0, 1, 1,
-1.161723, -0.07255542, -0.0196222, 1, 0.8117647, 0, 1, 1,
-1.160004, 0.6511965, -3.267567, 1, 0.8156863, 0, 1, 1,
-1.158778, -1.10107, -1.785223, 1, 0.8235294, 0, 1, 1,
-1.154743, 2.427441, -0.7236224, 1, 0.827451, 0, 1, 1,
-1.142194, 1.412143, -0.5412905, 1, 0.8352941, 0, 1, 1,
-1.142153, -1.530449, -1.709584, 1, 0.8392157, 0, 1, 1,
-1.134688, -0.02861694, -1.728553, 1, 0.8470588, 0, 1, 1,
-1.129414, 1.351463, 0.09524565, 1, 0.8509804, 0, 1, 1,
-1.128679, 0.6582514, -1.762609, 1, 0.8588235, 0, 1, 1,
-1.127575, -0.9335358, -1.132637, 1, 0.8627451, 0, 1, 1,
-1.123718, -1.48261, -1.704058, 1, 0.8705882, 0, 1, 1,
-1.117177, -0.532623, -2.509929, 1, 0.8745098, 0, 1, 1,
-1.114538, -1.431625, -2.648308, 1, 0.8823529, 0, 1, 1,
-1.114147, 0.932382, -0.6768382, 1, 0.8862745, 0, 1, 1,
-1.113167, 0.7236778, -0.7078592, 1, 0.8941177, 0, 1, 1,
-1.11248, -1.194872, -3.592638, 1, 0.8980392, 0, 1, 1,
-1.111004, -0.5541942, -1.976236, 1, 0.9058824, 0, 1, 1,
-1.098607, -0.2185661, -0.8709072, 1, 0.9137255, 0, 1, 1,
-1.094013, 0.4513902, -1.014861, 1, 0.9176471, 0, 1, 1,
-1.092687, -2.426732, -2.623444, 1, 0.9254902, 0, 1, 1,
-1.0898, 2.065027, 0.6451238, 1, 0.9294118, 0, 1, 1,
-1.080451, -1.178766, -2.546149, 1, 0.9372549, 0, 1, 1,
-1.079648, -0.1707624, -1.699924, 1, 0.9411765, 0, 1, 1,
-1.079466, 2.266826, -0.3791242, 1, 0.9490196, 0, 1, 1,
-1.069798, 0.06488594, -2.451157, 1, 0.9529412, 0, 1, 1,
-1.067615, 0.2037003, -2.259707, 1, 0.9607843, 0, 1, 1,
-1.056238, 0.705395, -1.033681, 1, 0.9647059, 0, 1, 1,
-1.054276, -1.398559, -4.258968, 1, 0.972549, 0, 1, 1,
-1.050972, 0.9526753, -0.01936843, 1, 0.9764706, 0, 1, 1,
-1.047167, -0.5900483, -2.903237, 1, 0.9843137, 0, 1, 1,
-1.046694, -0.34167, -2.204865, 1, 0.9882353, 0, 1, 1,
-1.046557, -1.384212, -1.019765, 1, 0.9960784, 0, 1, 1,
-1.038804, 0.7005526, -0.8997924, 0.9960784, 1, 0, 1, 1,
-1.031655, -1.652495, -2.185709, 0.9921569, 1, 0, 1, 1,
-1.030241, -0.8353032, -3.713935, 0.9843137, 1, 0, 1, 1,
-1.026622, 0.2898617, -1.862929, 0.9803922, 1, 0, 1, 1,
-1.025424, 0.9741395, -1.625364, 0.972549, 1, 0, 1, 1,
-1.018751, 0.167472, -0.3644607, 0.9686275, 1, 0, 1, 1,
-1.012392, 2.206695, -0.08096554, 0.9607843, 1, 0, 1, 1,
-1.010225, -0.9773971, -2.853873, 0.9568627, 1, 0, 1, 1,
-1.000027, 1.050295, -3.226097, 0.9490196, 1, 0, 1, 1,
-0.9982399, 1.095707, -1.840291, 0.945098, 1, 0, 1, 1,
-0.987936, -1.552628, -2.870539, 0.9372549, 1, 0, 1, 1,
-0.9833565, 1.583806, -1.140765, 0.9333333, 1, 0, 1, 1,
-0.9830527, -0.1800409, -2.170645, 0.9254902, 1, 0, 1, 1,
-0.9765702, 1.408088, -0.7048233, 0.9215686, 1, 0, 1, 1,
-0.9764874, 0.1508236, -2.917715, 0.9137255, 1, 0, 1, 1,
-0.9749789, -0.5214756, -3.191328, 0.9098039, 1, 0, 1, 1,
-0.9722655, -0.2932639, -1.519801, 0.9019608, 1, 0, 1, 1,
-0.9631153, 2.169913, -0.5240619, 0.8941177, 1, 0, 1, 1,
-0.9569286, 0.8148676, -0.4723414, 0.8901961, 1, 0, 1, 1,
-0.954435, 0.3749085, -1.351456, 0.8823529, 1, 0, 1, 1,
-0.9534127, 1.581715, -0.02809403, 0.8784314, 1, 0, 1, 1,
-0.9359592, -0.2258835, -2.244752, 0.8705882, 1, 0, 1, 1,
-0.9340079, -0.9551062, -2.09606, 0.8666667, 1, 0, 1, 1,
-0.9339029, -0.08447135, 1.19451, 0.8588235, 1, 0, 1, 1,
-0.9215834, 0.8294396, -1.622227, 0.854902, 1, 0, 1, 1,
-0.9215692, -1.249081, -3.699012, 0.8470588, 1, 0, 1, 1,
-0.9173602, 0.2680563, 2.166569, 0.8431373, 1, 0, 1, 1,
-0.9140005, -0.3837205, -2.276869, 0.8352941, 1, 0, 1, 1,
-0.9133426, 0.3424272, -1.152209, 0.8313726, 1, 0, 1, 1,
-0.9130924, 2.615838, -0.3312446, 0.8235294, 1, 0, 1, 1,
-0.9062839, -0.1539123, -2.657685, 0.8196079, 1, 0, 1, 1,
-0.9057956, -0.8573501, -3.519958, 0.8117647, 1, 0, 1, 1,
-0.9054766, 1.484718, -0.5274096, 0.8078431, 1, 0, 1, 1,
-0.8995533, -0.9712459, -1.767341, 0.8, 1, 0, 1, 1,
-0.8940936, -2.396002, -3.677287, 0.7921569, 1, 0, 1, 1,
-0.8932261, -1.058056, -1.611996, 0.7882353, 1, 0, 1, 1,
-0.8890954, -0.7286159, -2.251029, 0.7803922, 1, 0, 1, 1,
-0.886261, 1.206427, 0.5784403, 0.7764706, 1, 0, 1, 1,
-0.8776354, -0.5426756, -0.7444944, 0.7686275, 1, 0, 1, 1,
-0.8666083, -0.6854262, -2.872697, 0.7647059, 1, 0, 1, 1,
-0.8600881, 0.1473789, 0.006569916, 0.7568628, 1, 0, 1, 1,
-0.8600368, 0.1717403, -1.308163, 0.7529412, 1, 0, 1, 1,
-0.8586074, -0.3261549, -1.055865, 0.7450981, 1, 0, 1, 1,
-0.856622, 0.6535408, -1.337674, 0.7411765, 1, 0, 1, 1,
-0.8547024, -0.01894851, -0.8166965, 0.7333333, 1, 0, 1, 1,
-0.8501551, -0.7149867, -3.37641, 0.7294118, 1, 0, 1, 1,
-0.8453519, 0.307716, -1.308105, 0.7215686, 1, 0, 1, 1,
-0.8448614, -0.2647681, -1.90302, 0.7176471, 1, 0, 1, 1,
-0.8340947, 1.095809, -0.8663281, 0.7098039, 1, 0, 1, 1,
-0.8283611, -1.474009, -1.940882, 0.7058824, 1, 0, 1, 1,
-0.8283119, 0.7883534, -0.6078743, 0.6980392, 1, 0, 1, 1,
-0.8235657, -1.106111, -2.136695, 0.6901961, 1, 0, 1, 1,
-0.8218604, 1.108614, -0.2500149, 0.6862745, 1, 0, 1, 1,
-0.8008866, -1.200768, -2.510809, 0.6784314, 1, 0, 1, 1,
-0.7998282, -2.091226, -3.547507, 0.6745098, 1, 0, 1, 1,
-0.7984349, -1.976621, -1.400045, 0.6666667, 1, 0, 1, 1,
-0.7970619, 0.8252524, -1.353776, 0.6627451, 1, 0, 1, 1,
-0.7887442, 1.406795, -1.691987, 0.654902, 1, 0, 1, 1,
-0.7871459, -0.348007, -1.957031, 0.6509804, 1, 0, 1, 1,
-0.7847611, 0.6226116, -1.527025, 0.6431373, 1, 0, 1, 1,
-0.7819682, -0.2113892, -0.7866545, 0.6392157, 1, 0, 1, 1,
-0.7817667, 1.30796, 0.1737098, 0.6313726, 1, 0, 1, 1,
-0.7784286, 1.110766, 0.7698151, 0.627451, 1, 0, 1, 1,
-0.7716073, -1.840485, -4.404753, 0.6196079, 1, 0, 1, 1,
-0.7703301, 0.8489344, -1.550233, 0.6156863, 1, 0, 1, 1,
-0.7638795, -1.270479, -2.864975, 0.6078432, 1, 0, 1, 1,
-0.7636037, -0.2266026, -1.78041, 0.6039216, 1, 0, 1, 1,
-0.761647, -1.897049, -1.885049, 0.5960785, 1, 0, 1, 1,
-0.7581353, 0.8308755, -0.693101, 0.5882353, 1, 0, 1, 1,
-0.7492446, 0.09461556, -0.8592463, 0.5843138, 1, 0, 1, 1,
-0.7437311, -0.6938869, -1.967945, 0.5764706, 1, 0, 1, 1,
-0.7434905, -0.04891275, -1.261809, 0.572549, 1, 0, 1, 1,
-0.7382615, -0.1170346, 0.2726733, 0.5647059, 1, 0, 1, 1,
-0.7366624, -0.5543666, -0.4859434, 0.5607843, 1, 0, 1, 1,
-0.7349621, 0.6715541, -0.7232226, 0.5529412, 1, 0, 1, 1,
-0.7292485, 0.5308879, 0.2687449, 0.5490196, 1, 0, 1, 1,
-0.7292052, -0.1411923, -1.336198, 0.5411765, 1, 0, 1, 1,
-0.7274171, -0.05231503, -3.184571, 0.5372549, 1, 0, 1, 1,
-0.7217753, 0.2563477, -1.778126, 0.5294118, 1, 0, 1, 1,
-0.7091438, 1.275523, -0.9357812, 0.5254902, 1, 0, 1, 1,
-0.7091315, -1.949466, -3.244286, 0.5176471, 1, 0, 1, 1,
-0.7082105, -0.300575, -1.24602, 0.5137255, 1, 0, 1, 1,
-0.704412, -1.28884, -2.358433, 0.5058824, 1, 0, 1, 1,
-0.7015778, 1.527731, -1.558093, 0.5019608, 1, 0, 1, 1,
-0.6994174, 1.41325, 0.4293453, 0.4941176, 1, 0, 1, 1,
-0.6991561, -0.1687052, -1.068913, 0.4862745, 1, 0, 1, 1,
-0.6918806, -0.6587145, 0.2191693, 0.4823529, 1, 0, 1, 1,
-0.6883647, 0.8505906, -0.5122281, 0.4745098, 1, 0, 1, 1,
-0.6876351, -0.2733552, -2.406721, 0.4705882, 1, 0, 1, 1,
-0.6857137, -0.5273147, -2.245262, 0.4627451, 1, 0, 1, 1,
-0.6845647, 0.5669379, 0.6666927, 0.4588235, 1, 0, 1, 1,
-0.6840441, -0.9639169, -3.252702, 0.4509804, 1, 0, 1, 1,
-0.6818028, -1.36379, -2.2514, 0.4470588, 1, 0, 1, 1,
-0.6730448, -0.6620398, -2.808936, 0.4392157, 1, 0, 1, 1,
-0.6684003, -0.7338453, -2.677226, 0.4352941, 1, 0, 1, 1,
-0.6631266, 0.04325077, -1.487681, 0.427451, 1, 0, 1, 1,
-0.659255, 0.05882241, -1.082876, 0.4235294, 1, 0, 1, 1,
-0.6586599, 0.5415008, -2.153094, 0.4156863, 1, 0, 1, 1,
-0.6566778, -0.999676, -3.032927, 0.4117647, 1, 0, 1, 1,
-0.6535348, 1.622001, 0.6077346, 0.4039216, 1, 0, 1, 1,
-0.6513658, 0.364454, 1.072312, 0.3960784, 1, 0, 1, 1,
-0.6505305, 0.045029, -3.336697, 0.3921569, 1, 0, 1, 1,
-0.6501994, 0.0962211, -0.8520549, 0.3843137, 1, 0, 1, 1,
-0.6427698, 0.2911121, -0.6507931, 0.3803922, 1, 0, 1, 1,
-0.6370626, -0.9616757, -2.149074, 0.372549, 1, 0, 1, 1,
-0.6355097, 0.02051328, -1.320664, 0.3686275, 1, 0, 1, 1,
-0.6310735, 0.9682775, -0.8692435, 0.3607843, 1, 0, 1, 1,
-0.6273226, -0.9662276, -2.44629, 0.3568628, 1, 0, 1, 1,
-0.6266209, -0.9958172, -1.440301, 0.3490196, 1, 0, 1, 1,
-0.6251513, 0.3593805, -0.5862669, 0.345098, 1, 0, 1, 1,
-0.6239921, 0.2507189, -1.680971, 0.3372549, 1, 0, 1, 1,
-0.6210147, 0.3241542, -1.121229, 0.3333333, 1, 0, 1, 1,
-0.6206949, 0.02473614, -1.117032, 0.3254902, 1, 0, 1, 1,
-0.6193575, -0.5207941, -2.184742, 0.3215686, 1, 0, 1, 1,
-0.6118327, 0.2311595, -2.460343, 0.3137255, 1, 0, 1, 1,
-0.6114014, -0.8844492, -1.878672, 0.3098039, 1, 0, 1, 1,
-0.6071632, 2.040119, -0.3816862, 0.3019608, 1, 0, 1, 1,
-0.6053372, 0.1465864, -0.5478114, 0.2941177, 1, 0, 1, 1,
-0.6048409, -0.9808204, -2.485523, 0.2901961, 1, 0, 1, 1,
-0.6027766, -0.4047822, -3.00796, 0.282353, 1, 0, 1, 1,
-0.5996851, 0.1106398, -1.387513, 0.2784314, 1, 0, 1, 1,
-0.5976434, 0.01525732, -1.453528, 0.2705882, 1, 0, 1, 1,
-0.5901405, -0.7931185, -3.822554, 0.2666667, 1, 0, 1, 1,
-0.58813, -0.138752, -1.418005, 0.2588235, 1, 0, 1, 1,
-0.5870586, 1.776889, 0.7921721, 0.254902, 1, 0, 1, 1,
-0.5835894, 0.3388988, 0.5865744, 0.2470588, 1, 0, 1, 1,
-0.5833563, -0.1165132, -0.881465, 0.2431373, 1, 0, 1, 1,
-0.5816157, 0.4598074, -1.214247, 0.2352941, 1, 0, 1, 1,
-0.5814949, -1.713559, -2.064272, 0.2313726, 1, 0, 1, 1,
-0.5780601, -0.3618152, -2.493391, 0.2235294, 1, 0, 1, 1,
-0.5775599, -1.561599, -2.769701, 0.2196078, 1, 0, 1, 1,
-0.5748545, 1.320078, -0.2238465, 0.2117647, 1, 0, 1, 1,
-0.571054, 0.3859929, -2.497647, 0.2078431, 1, 0, 1, 1,
-0.569229, 0.6664803, -1.632977, 0.2, 1, 0, 1, 1,
-0.5660633, 0.838851, -1.286957, 0.1921569, 1, 0, 1, 1,
-0.5616559, 1.135816, -1.094603, 0.1882353, 1, 0, 1, 1,
-0.5602658, -1.293293, -3.902899, 0.1803922, 1, 0, 1, 1,
-0.5600014, 0.9678004, -1.031463, 0.1764706, 1, 0, 1, 1,
-0.5558542, 0.05912373, -0.2820821, 0.1686275, 1, 0, 1, 1,
-0.555631, -0.0403011, -2.607098, 0.1647059, 1, 0, 1, 1,
-0.5532866, -0.1579082, -1.264977, 0.1568628, 1, 0, 1, 1,
-0.5530918, -1.302949, -4.112806, 0.1529412, 1, 0, 1, 1,
-0.5529118, 1.890901, 0.5723187, 0.145098, 1, 0, 1, 1,
-0.5525285, -0.009758235, -1.253156, 0.1411765, 1, 0, 1, 1,
-0.5519401, 2.097627, -0.4285558, 0.1333333, 1, 0, 1, 1,
-0.5507786, -1.143346, -4.729837, 0.1294118, 1, 0, 1, 1,
-0.5406374, 0.2033525, -0.5268643, 0.1215686, 1, 0, 1, 1,
-0.5319368, 1.20864, 0.475297, 0.1176471, 1, 0, 1, 1,
-0.5311564, 0.7084095, -0.2742006, 0.1098039, 1, 0, 1, 1,
-0.52878, 0.5863945, -1.786331, 0.1058824, 1, 0, 1, 1,
-0.526898, -0.2788497, -3.360507, 0.09803922, 1, 0, 1, 1,
-0.5266919, 0.04009393, -1.438177, 0.09019608, 1, 0, 1, 1,
-0.52619, -0.8994027, -3.782249, 0.08627451, 1, 0, 1, 1,
-0.5241591, 1.157652, 0.2146372, 0.07843138, 1, 0, 1, 1,
-0.523822, 0.5859156, -1.223557, 0.07450981, 1, 0, 1, 1,
-0.5233546, -0.7266796, -2.376827, 0.06666667, 1, 0, 1, 1,
-0.5230177, 0.2689134, -0.08776315, 0.0627451, 1, 0, 1, 1,
-0.5197858, -0.3002124, -1.860401, 0.05490196, 1, 0, 1, 1,
-0.5164721, -0.1348372, -2.812132, 0.05098039, 1, 0, 1, 1,
-0.4991963, 0.05471845, -1.974523, 0.04313726, 1, 0, 1, 1,
-0.4980252, -0.9893097, -1.486894, 0.03921569, 1, 0, 1, 1,
-0.4963014, -2.440534, -2.631132, 0.03137255, 1, 0, 1, 1,
-0.493648, -0.8090127, -2.401908, 0.02745098, 1, 0, 1, 1,
-0.4910564, 0.5654725, -0.8163709, 0.01960784, 1, 0, 1, 1,
-0.4896803, 0.8026373, -0.2704779, 0.01568628, 1, 0, 1, 1,
-0.4894972, 0.3681282, -0.9284505, 0.007843138, 1, 0, 1, 1,
-0.4873848, -0.6921056, -3.821558, 0.003921569, 1, 0, 1, 1,
-0.4867326, 1.676612, 0.2864113, 0, 1, 0.003921569, 1, 1,
-0.4846791, 0.7326415, -0.4910567, 0, 1, 0.01176471, 1, 1,
-0.4834346, 1.392382, 1.602289, 0, 1, 0.01568628, 1, 1,
-0.4812173, 0.2208127, -2.698169, 0, 1, 0.02352941, 1, 1,
-0.4739718, 1.275695, 0.07868083, 0, 1, 0.02745098, 1, 1,
-0.4704623, -0.5107157, -1.981466, 0, 1, 0.03529412, 1, 1,
-0.4683257, -0.3102581, -3.894703, 0, 1, 0.03921569, 1, 1,
-0.4672942, 0.7156421, -0.9733247, 0, 1, 0.04705882, 1, 1,
-0.4653121, 1.218308, 1.134906, 0, 1, 0.05098039, 1, 1,
-0.4646441, -0.2238999, -0.9993823, 0, 1, 0.05882353, 1, 1,
-0.4623416, -2.444814, -2.838938, 0, 1, 0.0627451, 1, 1,
-0.4577164, -0.06186011, -3.135546, 0, 1, 0.07058824, 1, 1,
-0.4555325, 0.4150888, -1.163032, 0, 1, 0.07450981, 1, 1,
-0.4528654, 0.7068665, -0.6147349, 0, 1, 0.08235294, 1, 1,
-0.4497261, 0.4498335, 0.1810997, 0, 1, 0.08627451, 1, 1,
-0.4454708, -1.052817, -3.43808, 0, 1, 0.09411765, 1, 1,
-0.4406302, -0.1987978, -2.245766, 0, 1, 0.1019608, 1, 1,
-0.4374383, -0.1550801, -1.40376, 0, 1, 0.1058824, 1, 1,
-0.4350766, 0.2894112, -0.2953435, 0, 1, 0.1137255, 1, 1,
-0.429226, -0.7511973, -3.375117, 0, 1, 0.1176471, 1, 1,
-0.4289978, -1.364715, -3.848095, 0, 1, 0.1254902, 1, 1,
-0.424913, -1.006054, -1.940633, 0, 1, 0.1294118, 1, 1,
-0.4233291, 0.6152832, -0.9145494, 0, 1, 0.1372549, 1, 1,
-0.4228465, -0.607613, -4.068016, 0, 1, 0.1411765, 1, 1,
-0.4190251, -1.625561, -3.573979, 0, 1, 0.1490196, 1, 1,
-0.4181779, -1.261461, -2.86697, 0, 1, 0.1529412, 1, 1,
-0.4180006, 0.7510144, -0.8379794, 0, 1, 0.1607843, 1, 1,
-0.4174991, -1.287549, -3.29548, 0, 1, 0.1647059, 1, 1,
-0.4171953, -1.080058, -2.642053, 0, 1, 0.172549, 1, 1,
-0.4167414, -0.5505713, -2.758117, 0, 1, 0.1764706, 1, 1,
-0.4119102, -1.310161, -3.540797, 0, 1, 0.1843137, 1, 1,
-0.4066198, 0.4041939, 0.422945, 0, 1, 0.1882353, 1, 1,
-0.4062789, -0.1855507, 0.56313, 0, 1, 0.1960784, 1, 1,
-0.4049402, 0.7544968, -0.4953083, 0, 1, 0.2039216, 1, 1,
-0.395225, -0.6948709, -1.277306, 0, 1, 0.2078431, 1, 1,
-0.3903397, -0.5880532, -1.952052, 0, 1, 0.2156863, 1, 1,
-0.3887145, -0.3605922, -2.442429, 0, 1, 0.2196078, 1, 1,
-0.3871154, -1.271008, -1.74155, 0, 1, 0.227451, 1, 1,
-0.3849291, 0.1215795, -0.6984959, 0, 1, 0.2313726, 1, 1,
-0.3843186, -1.893635, -2.223017, 0, 1, 0.2392157, 1, 1,
-0.3842522, -1.809797, -1.732219, 0, 1, 0.2431373, 1, 1,
-0.3780878, -1.353627, -3.658543, 0, 1, 0.2509804, 1, 1,
-0.3761583, 0.6775747, -1.451232, 0, 1, 0.254902, 1, 1,
-0.3692349, -0.4517564, -3.215147, 0, 1, 0.2627451, 1, 1,
-0.3685915, -2.175675, -2.974929, 0, 1, 0.2666667, 1, 1,
-0.3653949, 0.4737047, -0.05883053, 0, 1, 0.2745098, 1, 1,
-0.3610714, 0.4384187, -0.6877837, 0, 1, 0.2784314, 1, 1,
-0.3606754, -1.265118, -2.023327, 0, 1, 0.2862745, 1, 1,
-0.3574165, 0.4310351, -0.4789259, 0, 1, 0.2901961, 1, 1,
-0.3518069, -0.3035755, -1.179841, 0, 1, 0.2980392, 1, 1,
-0.3512302, -0.1849737, 0.3367178, 0, 1, 0.3058824, 1, 1,
-0.3507167, -0.4291665, -2.907898, 0, 1, 0.3098039, 1, 1,
-0.3491907, 0.2757774, -0.2508122, 0, 1, 0.3176471, 1, 1,
-0.3482939, 2.106892, -2.469305, 0, 1, 0.3215686, 1, 1,
-0.338477, 1.332544, -0.9122638, 0, 1, 0.3294118, 1, 1,
-0.3286925, -0.2435095, -2.536883, 0, 1, 0.3333333, 1, 1,
-0.3267647, -1.041109, -3.852413, 0, 1, 0.3411765, 1, 1,
-0.3267556, 0.2953129, 0.9464054, 0, 1, 0.345098, 1, 1,
-0.3260049, 0.2190214, -1.799055, 0, 1, 0.3529412, 1, 1,
-0.3250856, 0.7999592, -1.286323, 0, 1, 0.3568628, 1, 1,
-0.3244334, 0.8935775, -0.6498017, 0, 1, 0.3647059, 1, 1,
-0.3207918, 0.4672426, -0.7261214, 0, 1, 0.3686275, 1, 1,
-0.3198435, 1.070171, -0.2770266, 0, 1, 0.3764706, 1, 1,
-0.3186472, -1.474011, -2.528234, 0, 1, 0.3803922, 1, 1,
-0.3077306, -1.626758, -2.346571, 0, 1, 0.3882353, 1, 1,
-0.3066878, -0.6713132, -2.617323, 0, 1, 0.3921569, 1, 1,
-0.3048342, 1.413494, -0.2281228, 0, 1, 0.4, 1, 1,
-0.302503, -0.8340524, -1.577414, 0, 1, 0.4078431, 1, 1,
-0.3007878, 1.311865, -1.444238, 0, 1, 0.4117647, 1, 1,
-0.295697, 0.2024301, -0.6682901, 0, 1, 0.4196078, 1, 1,
-0.294975, -0.1861931, -2.002553, 0, 1, 0.4235294, 1, 1,
-0.2948669, 0.3897344, -1.952475, 0, 1, 0.4313726, 1, 1,
-0.2947015, 1.913087, -0.2209826, 0, 1, 0.4352941, 1, 1,
-0.2915789, -1.798329, -1.807045, 0, 1, 0.4431373, 1, 1,
-0.2905847, -0.1707535, -1.767664, 0, 1, 0.4470588, 1, 1,
-0.2904099, 0.1203365, -3.370028, 0, 1, 0.454902, 1, 1,
-0.2895421, -0.1105729, -2.862222, 0, 1, 0.4588235, 1, 1,
-0.2873231, 1.024897, 0.1391952, 0, 1, 0.4666667, 1, 1,
-0.2807604, 1.30139, -0.5235886, 0, 1, 0.4705882, 1, 1,
-0.2747059, 0.2955041, -0.9903318, 0, 1, 0.4784314, 1, 1,
-0.268719, 0.2208158, -0.5023315, 0, 1, 0.4823529, 1, 1,
-0.252506, 0.5933245, 0.014579, 0, 1, 0.4901961, 1, 1,
-0.248376, 1.523384, 1.720931, 0, 1, 0.4941176, 1, 1,
-0.2479183, -2.474342, -2.037998, 0, 1, 0.5019608, 1, 1,
-0.2446224, -0.1093888, -0.6833528, 0, 1, 0.509804, 1, 1,
-0.2434247, 1.290269, -0.1894328, 0, 1, 0.5137255, 1, 1,
-0.2424865, 0.1157562, -1.33239, 0, 1, 0.5215687, 1, 1,
-0.2417776, -1.399143, -3.025277, 0, 1, 0.5254902, 1, 1,
-0.2411457, 0.07720116, -1.095249, 0, 1, 0.5333334, 1, 1,
-0.2387897, 0.5979556, -1.58887, 0, 1, 0.5372549, 1, 1,
-0.2332518, -0.3528621, -2.934355, 0, 1, 0.5450981, 1, 1,
-0.2313872, -0.7945991, -1.398788, 0, 1, 0.5490196, 1, 1,
-0.226769, 0.1392037, -1.950903, 0, 1, 0.5568628, 1, 1,
-0.2257262, -0.8738861, -3.990703, 0, 1, 0.5607843, 1, 1,
-0.2256915, 0.2411225, 0.09796803, 0, 1, 0.5686275, 1, 1,
-0.2240069, 1.180753, -1.103574, 0, 1, 0.572549, 1, 1,
-0.2197379, -0.522952, -1.985178, 0, 1, 0.5803922, 1, 1,
-0.2158466, 0.3113507, -1.679772, 0, 1, 0.5843138, 1, 1,
-0.2150301, -2.207824, -2.094525, 0, 1, 0.5921569, 1, 1,
-0.2100398, -0.5649439, -3.170222, 0, 1, 0.5960785, 1, 1,
-0.208492, -1.412091, -2.969696, 0, 1, 0.6039216, 1, 1,
-0.2075943, -0.2491855, -3.356029, 0, 1, 0.6117647, 1, 1,
-0.2051436, 0.4402979, -1.963057, 0, 1, 0.6156863, 1, 1,
-0.2016651, 1.019474, 0.8227107, 0, 1, 0.6235294, 1, 1,
-0.1983371, 0.02504468, -1.455292, 0, 1, 0.627451, 1, 1,
-0.1981313, -0.2370186, -1.492065, 0, 1, 0.6352941, 1, 1,
-0.1960216, -0.6965042, -1.746213, 0, 1, 0.6392157, 1, 1,
-0.1958487, -0.6139219, -5.135416, 0, 1, 0.6470588, 1, 1,
-0.1933034, -0.04960266, -2.55577, 0, 1, 0.6509804, 1, 1,
-0.1914245, 0.9989663, 0.318042, 0, 1, 0.6588235, 1, 1,
-0.1883674, -0.2948988, -2.854554, 0, 1, 0.6627451, 1, 1,
-0.1876969, -0.7565913, -2.722625, 0, 1, 0.6705883, 1, 1,
-0.1801205, 0.08011078, 0.01918587, 0, 1, 0.6745098, 1, 1,
-0.1776431, 0.4406804, 0.2613614, 0, 1, 0.682353, 1, 1,
-0.1773189, 1.235912, 0.8584235, 0, 1, 0.6862745, 1, 1,
-0.173914, -0.3254279, -3.30381, 0, 1, 0.6941177, 1, 1,
-0.1711895, 0.9302593, 0.2166961, 0, 1, 0.7019608, 1, 1,
-0.168926, -0.7669209, -2.863713, 0, 1, 0.7058824, 1, 1,
-0.1640609, -0.01811241, -1.442389, 0, 1, 0.7137255, 1, 1,
-0.1636659, -1.205871, -2.727667, 0, 1, 0.7176471, 1, 1,
-0.1605285, -1.307397, -3.051441, 0, 1, 0.7254902, 1, 1,
-0.1602534, 0.4238087, 0.2106923, 0, 1, 0.7294118, 1, 1,
-0.1602163, 0.3442405, 0.8445886, 0, 1, 0.7372549, 1, 1,
-0.1594405, 0.2791213, -1.415047, 0, 1, 0.7411765, 1, 1,
-0.1473271, 0.2449531, -0.5015532, 0, 1, 0.7490196, 1, 1,
-0.1469274, 0.8294988, -0.004308951, 0, 1, 0.7529412, 1, 1,
-0.1446851, -0.3308035, -2.159528, 0, 1, 0.7607843, 1, 1,
-0.1434485, 0.4600805, -0.6644328, 0, 1, 0.7647059, 1, 1,
-0.1427766, 0.8312391, 1.802297, 0, 1, 0.772549, 1, 1,
-0.138974, -0.7136154, -4.48137, 0, 1, 0.7764706, 1, 1,
-0.1322033, -1.031923, -1.997576, 0, 1, 0.7843137, 1, 1,
-0.1317089, 1.793606, 2.692632, 0, 1, 0.7882353, 1, 1,
-0.1219135, -1.321566, -3.842665, 0, 1, 0.7960784, 1, 1,
-0.1218852, 0.6743917, -0.869419, 0, 1, 0.8039216, 1, 1,
-0.1200377, -0.838414, -3.002172, 0, 1, 0.8078431, 1, 1,
-0.1130751, 1.631113, 1.803056, 0, 1, 0.8156863, 1, 1,
-0.110694, 1.16132, -0.09049194, 0, 1, 0.8196079, 1, 1,
-0.1105595, -1.625841, -2.191567, 0, 1, 0.827451, 1, 1,
-0.1086579, 0.9421, 0.5376864, 0, 1, 0.8313726, 1, 1,
-0.1053857, 0.7247942, -0.1803318, 0, 1, 0.8392157, 1, 1,
-0.1039929, -1.949566, -2.796522, 0, 1, 0.8431373, 1, 1,
-0.102294, -1.376814, -4.102357, 0, 1, 0.8509804, 1, 1,
-0.1013706, -0.7214958, -2.45892, 0, 1, 0.854902, 1, 1,
-0.09970312, -0.7691095, -2.699232, 0, 1, 0.8627451, 1, 1,
-0.09842752, 0.8652316, -0.1143982, 0, 1, 0.8666667, 1, 1,
-0.09556779, 0.5460607, -0.3995885, 0, 1, 0.8745098, 1, 1,
-0.0951977, 0.9774364, 0.04083028, 0, 1, 0.8784314, 1, 1,
-0.09510131, -0.252393, -3.124333, 0, 1, 0.8862745, 1, 1,
-0.09380382, 0.5927131, 0.1336839, 0, 1, 0.8901961, 1, 1,
-0.09065907, 0.4862714, 1.168228, 0, 1, 0.8980392, 1, 1,
-0.08903895, -0.9905705, -2.940459, 0, 1, 0.9058824, 1, 1,
-0.08804652, 0.9097475, -1.105672, 0, 1, 0.9098039, 1, 1,
-0.0857323, 0.4662355, 0.5102236, 0, 1, 0.9176471, 1, 1,
-0.07934183, -1.759216, -2.094166, 0, 1, 0.9215686, 1, 1,
-0.07848166, -1.066769, -3.511393, 0, 1, 0.9294118, 1, 1,
-0.07816162, -1.065679, -2.663835, 0, 1, 0.9333333, 1, 1,
-0.07205123, 0.8249732, -0.7834693, 0, 1, 0.9411765, 1, 1,
-0.06960674, 1.070976, 0.6192325, 0, 1, 0.945098, 1, 1,
-0.06204841, -0.6225863, -4.304742, 0, 1, 0.9529412, 1, 1,
-0.0580326, 0.9116611, -1.411089, 0, 1, 0.9568627, 1, 1,
-0.05781133, -1.289693, -0.364139, 0, 1, 0.9647059, 1, 1,
-0.05317095, -1.354649, -2.214249, 0, 1, 0.9686275, 1, 1,
-0.05212639, -0.1135738, -3.847462, 0, 1, 0.9764706, 1, 1,
-0.05190513, -0.3457814, -0.4031323, 0, 1, 0.9803922, 1, 1,
-0.0500885, 2.559354, 0.9212683, 0, 1, 0.9882353, 1, 1,
-0.04954436, 1.129526, -0.01541203, 0, 1, 0.9921569, 1, 1,
-0.04335535, -0.2087142, -2.375468, 0, 1, 1, 1, 1,
-0.04318424, -1.424505, -2.593669, 0, 0.9921569, 1, 1, 1,
-0.03808266, 0.6579612, 0.6208295, 0, 0.9882353, 1, 1, 1,
-0.03768617, 0.05613448, -2.034429, 0, 0.9803922, 1, 1, 1,
-0.0376238, 2.270891, -1.163899, 0, 0.9764706, 1, 1, 1,
-0.02951565, -0.08161783, -3.510033, 0, 0.9686275, 1, 1, 1,
-0.0288324, -3.199738, -1.956578, 0, 0.9647059, 1, 1, 1,
-0.0274132, -0.1382072, -2.950802, 0, 0.9568627, 1, 1, 1,
-0.02312699, -0.6524522, -5.224228, 0, 0.9529412, 1, 1, 1,
-0.02291826, 0.04498344, 0.9746627, 0, 0.945098, 1, 1, 1,
-0.02161023, 0.2706234, 0.6069065, 0, 0.9411765, 1, 1, 1,
-0.02065524, -0.6062881, -2.852162, 0, 0.9333333, 1, 1, 1,
-0.01805569, -0.01274914, -1.442912, 0, 0.9294118, 1, 1, 1,
-0.01489693, 1.135559, -0.2584566, 0, 0.9215686, 1, 1, 1,
-0.01164486, 0.8527775, 1.33825, 0, 0.9176471, 1, 1, 1,
-0.01104678, 1.133773, -0.7433352, 0, 0.9098039, 1, 1, 1,
-0.009842413, 0.1223126, -0.6593876, 0, 0.9058824, 1, 1, 1,
-0.007718151, -0.2982318, -2.469422, 0, 0.8980392, 1, 1, 1,
-0.006694937, 1.848547, -0.08120136, 0, 0.8901961, 1, 1, 1,
-0.004689726, -0.7462787, -3.526387, 0, 0.8862745, 1, 1, 1,
-0.003795967, -0.1822465, -3.273517, 0, 0.8784314, 1, 1, 1,
0.001471371, 0.462998, 0.1766455, 0, 0.8745098, 1, 1, 1,
0.005480482, 0.3937568, -1.695124, 0, 0.8666667, 1, 1, 1,
0.006333965, -0.243502, 4.864837, 0, 0.8627451, 1, 1, 1,
0.01406289, 0.07487251, 2.623684, 0, 0.854902, 1, 1, 1,
0.01622872, 0.6814462, -1.51385, 0, 0.8509804, 1, 1, 1,
0.02398115, -0.6936211, 4.342429, 0, 0.8431373, 1, 1, 1,
0.02821236, 0.7485025, -0.5956042, 0, 0.8392157, 1, 1, 1,
0.02861286, 0.6165725, 0.05788647, 0, 0.8313726, 1, 1, 1,
0.03041563, 1.99834, 0.1382743, 0, 0.827451, 1, 1, 1,
0.03237768, 0.2462606, 1.07507, 0, 0.8196079, 1, 1, 1,
0.03836947, 1.060363, -1.175352, 0, 0.8156863, 1, 1, 1,
0.0386755, -0.956463, 3.799003, 0, 0.8078431, 1, 1, 1,
0.03999561, -0.240649, 2.241236, 0, 0.8039216, 1, 1, 1,
0.04065229, -0.0926506, 2.953301, 0, 0.7960784, 1, 1, 1,
0.04502603, -1.441268, 1.730426, 0, 0.7882353, 1, 1, 1,
0.04980233, -0.5902465, 2.38646, 0, 0.7843137, 1, 1, 1,
0.04993885, 0.4394244, -0.1237455, 0, 0.7764706, 1, 1, 1,
0.05128939, 0.7145371, -0.2310414, 0, 0.772549, 1, 1, 1,
0.05164435, 0.07106168, 1.046331, 0, 0.7647059, 1, 1, 1,
0.05187852, -1.573948, 2.706173, 0, 0.7607843, 1, 1, 1,
0.05792726, -0.3610045, 4.445393, 0, 0.7529412, 1, 1, 1,
0.0629738, 0.4357189, 1.239786, 0, 0.7490196, 1, 1, 1,
0.06391841, 1.11742, -0.08848163, 0, 0.7411765, 1, 1, 1,
0.06482752, -1.771369, 2.976068, 0, 0.7372549, 1, 1, 1,
0.06975798, 1.201944, -1.483768, 0, 0.7294118, 1, 1, 1,
0.07033042, -0.9561632, 2.332543, 0, 0.7254902, 1, 1, 1,
0.07102481, -0.4337821, 2.21534, 0, 0.7176471, 1, 1, 1,
0.07109806, 0.6599354, 0.03945603, 0, 0.7137255, 1, 1, 1,
0.07474644, -0.04942327, 1.208042, 0, 0.7058824, 1, 1, 1,
0.07664635, -0.2343828, 2.545563, 0, 0.6980392, 1, 1, 1,
0.08097057, 1.915741, 0.8959556, 0, 0.6941177, 1, 1, 1,
0.08262798, 0.6762006, 1.508473, 0, 0.6862745, 1, 1, 1,
0.08301141, 0.8822771, 0.2470017, 0, 0.682353, 1, 1, 1,
0.08313017, 0.1199094, -0.4626305, 0, 0.6745098, 1, 1, 1,
0.08446421, -1.153002, 3.786718, 0, 0.6705883, 1, 1, 1,
0.08731297, -1.408866, 2.024175, 0, 0.6627451, 1, 1, 1,
0.08736208, -0.1410767, 4.000007, 0, 0.6588235, 1, 1, 1,
0.09043784, -0.02513996, 3.191934, 0, 0.6509804, 1, 1, 1,
0.09429374, 2.02264, -1.070495, 0, 0.6470588, 1, 1, 1,
0.1023926, -0.7953988, 5.823842, 0, 0.6392157, 1, 1, 1,
0.1027028, 1.005751, -0.759707, 0, 0.6352941, 1, 1, 1,
0.1044721, 0.3316371, -1.069306, 0, 0.627451, 1, 1, 1,
0.1061563, 1.562374, 1.479056, 0, 0.6235294, 1, 1, 1,
0.1068619, 0.7988297, 0.6152607, 0, 0.6156863, 1, 1, 1,
0.1072175, -1.212822, 3.486525, 0, 0.6117647, 1, 1, 1,
0.1074909, -0.518512, 2.481117, 0, 0.6039216, 1, 1, 1,
0.1086352, 0.02660977, 1.139125, 0, 0.5960785, 1, 1, 1,
0.1125916, -0.8008058, 2.690491, 0, 0.5921569, 1, 1, 1,
0.1160693, 0.4587142, 0.9228292, 0, 0.5843138, 1, 1, 1,
0.1166044, -0.1845177, 2.964135, 0, 0.5803922, 1, 1, 1,
0.117566, -1.2546, 5.242412, 0, 0.572549, 1, 1, 1,
0.1202556, -0.8949248, 1.963995, 0, 0.5686275, 1, 1, 1,
0.1246374, -1.411549, 2.733878, 0, 0.5607843, 1, 1, 1,
0.1249628, 0.3010376, 1.625631, 0, 0.5568628, 1, 1, 1,
0.1282306, -0.9774428, 2.372832, 0, 0.5490196, 1, 1, 1,
0.1298303, -0.3686703, 2.848527, 0, 0.5450981, 1, 1, 1,
0.1312149, -1.208092, 2.339584, 0, 0.5372549, 1, 1, 1,
0.1333806, 0.2555947, -0.4670115, 0, 0.5333334, 1, 1, 1,
0.1343167, 0.9027891, -1.891236, 0, 0.5254902, 1, 1, 1,
0.146048, -0.4122252, 1.734588, 0, 0.5215687, 1, 1, 1,
0.1481951, 0.7354232, 0.518185, 0, 0.5137255, 1, 1, 1,
0.1499588, 0.7044064, -0.4475965, 0, 0.509804, 1, 1, 1,
0.1500929, -0.4352878, 4.348728, 0, 0.5019608, 1, 1, 1,
0.1528435, -0.5860299, 4.015899, 0, 0.4941176, 1, 1, 1,
0.1578643, -0.03219828, 2.932357, 0, 0.4901961, 1, 1, 1,
0.1629357, 0.3186121, -1.700711, 0, 0.4823529, 1, 1, 1,
0.1656305, -0.53815, 2.404283, 0, 0.4784314, 1, 1, 1,
0.1673342, -1.093796, 3.134116, 0, 0.4705882, 1, 1, 1,
0.1677112, -0.1546168, 1.513585, 0, 0.4666667, 1, 1, 1,
0.1725323, -0.9400852, 1.933557, 0, 0.4588235, 1, 1, 1,
0.1737251, 1.622222, 1.495894, 0, 0.454902, 1, 1, 1,
0.1742269, -0.2841048, 1.066045, 0, 0.4470588, 1, 1, 1,
0.1770473, 0.7726032, 0.03285206, 0, 0.4431373, 1, 1, 1,
0.1772004, -1.180374, 5.054342, 0, 0.4352941, 1, 1, 1,
0.1789863, 1.180234, 0.438992, 0, 0.4313726, 1, 1, 1,
0.1791549, -0.4744948, 2.014113, 0, 0.4235294, 1, 1, 1,
0.185293, -1.458444, 3.4726, 0, 0.4196078, 1, 1, 1,
0.1878826, 0.4205758, 0.6730061, 0, 0.4117647, 1, 1, 1,
0.1891691, -0.4955311, 1.258851, 0, 0.4078431, 1, 1, 1,
0.1895193, 0.3980565, 1.621686, 0, 0.4, 1, 1, 1,
0.1917949, -0.9128441, 0.9258017, 0, 0.3921569, 1, 1, 1,
0.1926021, -2.409416, 3.878804, 0, 0.3882353, 1, 1, 1,
0.1970811, -0.5683997, 2.890967, 0, 0.3803922, 1, 1, 1,
0.198069, -1.467467, 1.983, 0, 0.3764706, 1, 1, 1,
0.2047524, -1.428985, 1.595321, 0, 0.3686275, 1, 1, 1,
0.208019, 2.129504, -1.090232, 0, 0.3647059, 1, 1, 1,
0.213306, 1.15274, 1.82608, 0, 0.3568628, 1, 1, 1,
0.2143133, 1.442098, 1.77178, 0, 0.3529412, 1, 1, 1,
0.2175216, 1.230536, -1.229119, 0, 0.345098, 1, 1, 1,
0.2179824, 0.7338502, 0.3610501, 0, 0.3411765, 1, 1, 1,
0.2219766, -1.363453, 2.069733, 0, 0.3333333, 1, 1, 1,
0.2234435, -0.2107596, 2.920717, 0, 0.3294118, 1, 1, 1,
0.2325505, 0.9379821, 2.318079, 0, 0.3215686, 1, 1, 1,
0.2333531, 2.642495, 0.5653318, 0, 0.3176471, 1, 1, 1,
0.2371174, -0.1220335, 3.246958, 0, 0.3098039, 1, 1, 1,
0.239871, -0.883173, 3.511122, 0, 0.3058824, 1, 1, 1,
0.2444365, 0.4931234, -0.5810944, 0, 0.2980392, 1, 1, 1,
0.2452309, 0.2511592, 0.2128325, 0, 0.2901961, 1, 1, 1,
0.2458451, 1.18572, -0.1275633, 0, 0.2862745, 1, 1, 1,
0.2468096, 0.1179093, 1.264575, 0, 0.2784314, 1, 1, 1,
0.249415, 0.01998319, 1.8049, 0, 0.2745098, 1, 1, 1,
0.2523152, 0.6466177, 0.027738, 0, 0.2666667, 1, 1, 1,
0.2556566, 0.4975024, 0.2176055, 0, 0.2627451, 1, 1, 1,
0.2565874, -1.308595, 1.71111, 0, 0.254902, 1, 1, 1,
0.2584166, -0.1379625, 2.299048, 0, 0.2509804, 1, 1, 1,
0.2622437, -0.2057796, 2.507186, 0, 0.2431373, 1, 1, 1,
0.2669059, -0.6426236, -0.05395436, 0, 0.2392157, 1, 1, 1,
0.2726293, 0.9009996, 0.1174628, 0, 0.2313726, 1, 1, 1,
0.2754976, 0.9789684, -1.118, 0, 0.227451, 1, 1, 1,
0.2757028, 0.006643314, 2.310741, 0, 0.2196078, 1, 1, 1,
0.2759985, 1.803808, -0.4325765, 0, 0.2156863, 1, 1, 1,
0.2784592, -1.479568, 2.159653, 0, 0.2078431, 1, 1, 1,
0.2793879, 0.3880971, 0.9050652, 0, 0.2039216, 1, 1, 1,
0.2853887, -0.06267004, 1.283951, 0, 0.1960784, 1, 1, 1,
0.2865292, -0.6594985, 2.726476, 0, 0.1882353, 1, 1, 1,
0.2876719, -0.06209753, 3.788217, 0, 0.1843137, 1, 1, 1,
0.2885713, 1.451301, 0.5424954, 0, 0.1764706, 1, 1, 1,
0.2968104, 0.8503845, 1.465602, 0, 0.172549, 1, 1, 1,
0.298747, -0.09425613, 2.01083, 0, 0.1647059, 1, 1, 1,
0.3128915, -0.106655, -0.3726689, 0, 0.1607843, 1, 1, 1,
0.3140654, -0.7243342, 2.706988, 0, 0.1529412, 1, 1, 1,
0.3163629, 0.355512, 0.9269113, 0, 0.1490196, 1, 1, 1,
0.3183992, 0.6920204, 1.580591, 0, 0.1411765, 1, 1, 1,
0.3192154, -0.3601571, -1.791465, 0, 0.1372549, 1, 1, 1,
0.3207683, -0.412944, 2.924722, 0, 0.1294118, 1, 1, 1,
0.3231662, 1.191082, -0.7258828, 0, 0.1254902, 1, 1, 1,
0.3268729, -0.6423696, 3.840878, 0, 0.1176471, 1, 1, 1,
0.3298416, 0.9176958, -0.2184735, 0, 0.1137255, 1, 1, 1,
0.3304418, -0.9847296, 4.63125, 0, 0.1058824, 1, 1, 1,
0.3304555, 2.263565, 0.3793519, 0, 0.09803922, 1, 1, 1,
0.3325901, 1.614223, -0.1723078, 0, 0.09411765, 1, 1, 1,
0.3377346, -0.2130923, 4.153638, 0, 0.08627451, 1, 1, 1,
0.3384988, 0.9067611, -1.888799, 0, 0.08235294, 1, 1, 1,
0.3410703, -0.2538952, 1.707527, 0, 0.07450981, 1, 1, 1,
0.3501182, 1.26641, 0.5803279, 0, 0.07058824, 1, 1, 1,
0.3585073, -0.3332715, 3.418886, 0, 0.0627451, 1, 1, 1,
0.3620382, 0.1755046, 1.340061, 0, 0.05882353, 1, 1, 1,
0.3715147, -1.072297, 1.602974, 0, 0.05098039, 1, 1, 1,
0.3743808, 1.795819, 1.382505, 0, 0.04705882, 1, 1, 1,
0.3768184, 0.7698619, 0.6044713, 0, 0.03921569, 1, 1, 1,
0.3781651, 1.141746, 1.590956, 0, 0.03529412, 1, 1, 1,
0.3809941, -1.045011, 4.192343, 0, 0.02745098, 1, 1, 1,
0.3824196, 0.1676277, 0.6497126, 0, 0.02352941, 1, 1, 1,
0.385484, -0.3916272, 2.635957, 0, 0.01568628, 1, 1, 1,
0.3873064, -0.008836494, 1.210563, 0, 0.01176471, 1, 1, 1,
0.3887583, 0.4251088, 0.5484201, 0, 0.003921569, 1, 1, 1,
0.3918472, 0.3132609, 0.1055191, 0.003921569, 0, 1, 1, 1,
0.3923065, -0.01135581, 1.443283, 0.007843138, 0, 1, 1, 1,
0.3941137, -1.002072, 3.659547, 0.01568628, 0, 1, 1, 1,
0.3998887, 0.4425852, 0.7433019, 0.01960784, 0, 1, 1, 1,
0.4027526, 0.8283974, 0.6148969, 0.02745098, 0, 1, 1, 1,
0.4041362, -0.8369856, 3.842287, 0.03137255, 0, 1, 1, 1,
0.4048579, -0.3024289, 2.781373, 0.03921569, 0, 1, 1, 1,
0.4076787, 1.286295, 1.476337, 0.04313726, 0, 1, 1, 1,
0.4082682, 1.117283, -0.9746462, 0.05098039, 0, 1, 1, 1,
0.4104121, 0.6010722, 1.95916, 0.05490196, 0, 1, 1, 1,
0.4113405, 1.629858, 0.704748, 0.0627451, 0, 1, 1, 1,
0.4149489, 0.3321836, 0.9660087, 0.06666667, 0, 1, 1, 1,
0.4203091, -1.170831, 3.078271, 0.07450981, 0, 1, 1, 1,
0.4208947, 1.177888, 0.8622342, 0.07843138, 0, 1, 1, 1,
0.4212134, 0.4952459, -0.03818776, 0.08627451, 0, 1, 1, 1,
0.4221173, 0.353139, 1.092767, 0.09019608, 0, 1, 1, 1,
0.4289656, 1.393426, -0.9035863, 0.09803922, 0, 1, 1, 1,
0.4302598, -1.521057, 3.814536, 0.1058824, 0, 1, 1, 1,
0.4305356, -1.911461, 3.255379, 0.1098039, 0, 1, 1, 1,
0.4334741, 0.7672192, -1.019763, 0.1176471, 0, 1, 1, 1,
0.437094, 0.6053455, -0.4549827, 0.1215686, 0, 1, 1, 1,
0.4410689, -1.085501, 2.714101, 0.1294118, 0, 1, 1, 1,
0.4414702, 1.419732, -1.114303, 0.1333333, 0, 1, 1, 1,
0.4418051, 0.4280643, 0.2847523, 0.1411765, 0, 1, 1, 1,
0.442965, -0.9949322, 3.155077, 0.145098, 0, 1, 1, 1,
0.4439022, -0.2096846, 1.178698, 0.1529412, 0, 1, 1, 1,
0.4443748, 1.327249, 0.1980135, 0.1568628, 0, 1, 1, 1,
0.4532484, -1.109506, 1.357417, 0.1647059, 0, 1, 1, 1,
0.4536203, -0.596048, 2.555845, 0.1686275, 0, 1, 1, 1,
0.4618888, -0.005409539, 2.090081, 0.1764706, 0, 1, 1, 1,
0.4701949, -0.3158728, 2.636836, 0.1803922, 0, 1, 1, 1,
0.4721246, -0.6536805, 1.616779, 0.1882353, 0, 1, 1, 1,
0.4756604, 1.618377, -0.3685651, 0.1921569, 0, 1, 1, 1,
0.4781597, 0.6256304, 1.424095, 0.2, 0, 1, 1, 1,
0.4785092, -0.1672231, 0.6593756, 0.2078431, 0, 1, 1, 1,
0.482114, -0.7400311, 2.247374, 0.2117647, 0, 1, 1, 1,
0.4843558, 0.8103437, 1.640931, 0.2196078, 0, 1, 1, 1,
0.4876776, 0.1573733, -0.03940486, 0.2235294, 0, 1, 1, 1,
0.4885429, -0.4139843, 2.75403, 0.2313726, 0, 1, 1, 1,
0.4892059, 0.900753, 1.35326, 0.2352941, 0, 1, 1, 1,
0.4913443, 0.2476195, 3.627269, 0.2431373, 0, 1, 1, 1,
0.4927927, 0.410291, 2.361047, 0.2470588, 0, 1, 1, 1,
0.4935395, 0.5849266, 0.004370955, 0.254902, 0, 1, 1, 1,
0.500174, -1.936476, 1.655668, 0.2588235, 0, 1, 1, 1,
0.5012959, -1.308384, 0.5352314, 0.2666667, 0, 1, 1, 1,
0.5014497, 1.750623, 1.38233, 0.2705882, 0, 1, 1, 1,
0.5033383, 0.1756102, 0.09683535, 0.2784314, 0, 1, 1, 1,
0.5034125, 1.416363, -0.9838786, 0.282353, 0, 1, 1, 1,
0.5062336, 0.1090564, 1.81859, 0.2901961, 0, 1, 1, 1,
0.5068316, 0.1309969, 0.9699851, 0.2941177, 0, 1, 1, 1,
0.5079189, 1.12906, 2.125734, 0.3019608, 0, 1, 1, 1,
0.5095841, -0.2266094, 1.433588, 0.3098039, 0, 1, 1, 1,
0.5144095, -0.8637938, 3.414307, 0.3137255, 0, 1, 1, 1,
0.5177264, -0.6484663, 2.011685, 0.3215686, 0, 1, 1, 1,
0.5186257, 0.133891, 2.739536, 0.3254902, 0, 1, 1, 1,
0.5216579, 1.325413, 0.9310895, 0.3333333, 0, 1, 1, 1,
0.5246438, -1.653248, 4.758407, 0.3372549, 0, 1, 1, 1,
0.5294176, 0.8305409, -1.168366, 0.345098, 0, 1, 1, 1,
0.5317382, -1.974623, 2.606054, 0.3490196, 0, 1, 1, 1,
0.531871, 0.1744101, 1.659251, 0.3568628, 0, 1, 1, 1,
0.5323199, -0.4569429, 2.291854, 0.3607843, 0, 1, 1, 1,
0.5372579, -0.04127989, 2.730805, 0.3686275, 0, 1, 1, 1,
0.5432622, 0.7237687, -0.08444463, 0.372549, 0, 1, 1, 1,
0.5432851, 1.154321, 0.4210813, 0.3803922, 0, 1, 1, 1,
0.5478902, -1.631064, 2.2802, 0.3843137, 0, 1, 1, 1,
0.5534283, -0.9621872, 4.348224, 0.3921569, 0, 1, 1, 1,
0.5548762, -1.206924, 1.419012, 0.3960784, 0, 1, 1, 1,
0.5596499, 0.01015952, 0.01103143, 0.4039216, 0, 1, 1, 1,
0.5653203, 0.5280735, 2.169637, 0.4117647, 0, 1, 1, 1,
0.565837, 0.558879, -0.57872, 0.4156863, 0, 1, 1, 1,
0.5666522, -0.2002256, 1.432167, 0.4235294, 0, 1, 1, 1,
0.5677124, 1.878999, 1.102968, 0.427451, 0, 1, 1, 1,
0.5690799, 0.4702033, 1.228199, 0.4352941, 0, 1, 1, 1,
0.5723718, 1.939939, 0.779762, 0.4392157, 0, 1, 1, 1,
0.5818053, 1.690986, 0.9473324, 0.4470588, 0, 1, 1, 1,
0.587155, -1.109918, 1.485331, 0.4509804, 0, 1, 1, 1,
0.5948483, -0.4302511, 1.951196, 0.4588235, 0, 1, 1, 1,
0.5953214, -0.5615348, 3.18156, 0.4627451, 0, 1, 1, 1,
0.5960951, -0.5695999, 2.330503, 0.4705882, 0, 1, 1, 1,
0.5978279, -1.738849, 2.356178, 0.4745098, 0, 1, 1, 1,
0.5982527, 0.8825565, 1.625271, 0.4823529, 0, 1, 1, 1,
0.5988317, -0.4854369, 3.43489, 0.4862745, 0, 1, 1, 1,
0.6003154, 0.1641638, 1.452907, 0.4941176, 0, 1, 1, 1,
0.6020256, -0.8673372, 3.728063, 0.5019608, 0, 1, 1, 1,
0.603162, 1.98555, 0.3198996, 0.5058824, 0, 1, 1, 1,
0.6126813, 0.8402103, 1.582983, 0.5137255, 0, 1, 1, 1,
0.6132417, 0.6710394, 2.893085, 0.5176471, 0, 1, 1, 1,
0.6132559, 0.5156972, 1.534479, 0.5254902, 0, 1, 1, 1,
0.6135867, 0.1835832, -0.3784327, 0.5294118, 0, 1, 1, 1,
0.6149294, -0.2600493, 2.082551, 0.5372549, 0, 1, 1, 1,
0.6174302, 0.215929, 0.03035692, 0.5411765, 0, 1, 1, 1,
0.6188737, 1.011972, -0.98456, 0.5490196, 0, 1, 1, 1,
0.6225966, 0.08108857, 1.434654, 0.5529412, 0, 1, 1, 1,
0.6235324, -0.622179, 2.593165, 0.5607843, 0, 1, 1, 1,
0.6238431, 0.5202757, 2.976613, 0.5647059, 0, 1, 1, 1,
0.6260356, 0.9757441, 0.9956359, 0.572549, 0, 1, 1, 1,
0.6279267, 0.4042869, 0.2593958, 0.5764706, 0, 1, 1, 1,
0.6283318, 0.325979, -0.5331782, 0.5843138, 0, 1, 1, 1,
0.6289632, -0.3877378, 1.986228, 0.5882353, 0, 1, 1, 1,
0.6296409, 2.251729, 2.106505, 0.5960785, 0, 1, 1, 1,
0.6301952, -0.0913364, 1.674835, 0.6039216, 0, 1, 1, 1,
0.6324269, -2.299407, 0.7643542, 0.6078432, 0, 1, 1, 1,
0.6367139, 1.064808, 1.034041, 0.6156863, 0, 1, 1, 1,
0.6409117, -0.02990055, 1.283533, 0.6196079, 0, 1, 1, 1,
0.6468945, 0.1582652, 1.395652, 0.627451, 0, 1, 1, 1,
0.6479055, -0.3656162, 1.171757, 0.6313726, 0, 1, 1, 1,
0.6533662, 0.4908687, 1.29783, 0.6392157, 0, 1, 1, 1,
0.6614183, -1.904594, 2.912352, 0.6431373, 0, 1, 1, 1,
0.6659399, -0.4975773, 1.226405, 0.6509804, 0, 1, 1, 1,
0.6717507, -0.3365103, 3.925042, 0.654902, 0, 1, 1, 1,
0.6751702, 1.056385, 1.872615, 0.6627451, 0, 1, 1, 1,
0.676311, -0.1175232, 0.2793496, 0.6666667, 0, 1, 1, 1,
0.676803, 0.4115142, 1.69049, 0.6745098, 0, 1, 1, 1,
0.6795849, -0.9982861, 2.531286, 0.6784314, 0, 1, 1, 1,
0.68063, -0.9387904, 1.880216, 0.6862745, 0, 1, 1, 1,
0.6830178, 0.4391876, -0.3247885, 0.6901961, 0, 1, 1, 1,
0.6840051, 0.1380988, 0.545954, 0.6980392, 0, 1, 1, 1,
0.6856559, -0.3423923, 2.813687, 0.7058824, 0, 1, 1, 1,
0.6862605, -0.1858157, 2.723271, 0.7098039, 0, 1, 1, 1,
0.6872154, 0.5888745, -0.3574777, 0.7176471, 0, 1, 1, 1,
0.6919904, -0.8072649, 2.625735, 0.7215686, 0, 1, 1, 1,
0.6941682, -0.3337528, 3.385772, 0.7294118, 0, 1, 1, 1,
0.6948311, 1.344272, -0.526175, 0.7333333, 0, 1, 1, 1,
0.6993282, 1.089271, -0.7832678, 0.7411765, 0, 1, 1, 1,
0.7002193, 0.3858624, 1.791848, 0.7450981, 0, 1, 1, 1,
0.7040696, 0.1121634, 1.430863, 0.7529412, 0, 1, 1, 1,
0.705738, -1.466027, 2.091509, 0.7568628, 0, 1, 1, 1,
0.7142953, -0.9752184, 3.410805, 0.7647059, 0, 1, 1, 1,
0.7152777, 0.5679119, 0.3308286, 0.7686275, 0, 1, 1, 1,
0.7161121, -0.1911258, 2.381927, 0.7764706, 0, 1, 1, 1,
0.7209436, -0.3244278, 1.749767, 0.7803922, 0, 1, 1, 1,
0.7366245, 0.6776966, 0.412167, 0.7882353, 0, 1, 1, 1,
0.7376482, -0.3516264, 3.884552, 0.7921569, 0, 1, 1, 1,
0.7383559, -1.185996, 3.382116, 0.8, 0, 1, 1, 1,
0.7424684, 0.350154, 0.5801668, 0.8078431, 0, 1, 1, 1,
0.7464417, 0.8115302, 1.012841, 0.8117647, 0, 1, 1, 1,
0.747924, 0.1573758, 4.12394, 0.8196079, 0, 1, 1, 1,
0.752843, 1.107262, -0.1730782, 0.8235294, 0, 1, 1, 1,
0.7573121, 0.4962731, 0.5820013, 0.8313726, 0, 1, 1, 1,
0.7579816, 1.6635, 2.015231, 0.8352941, 0, 1, 1, 1,
0.7614393, -3.133715, 2.585646, 0.8431373, 0, 1, 1, 1,
0.763071, 1.711881, 0.08091379, 0.8470588, 0, 1, 1, 1,
0.764561, 0.299768, 1.561162, 0.854902, 0, 1, 1, 1,
0.7661796, -0.6187451, 4.285042, 0.8588235, 0, 1, 1, 1,
0.7675322, 1.770618, 0.7557422, 0.8666667, 0, 1, 1, 1,
0.7706085, -0.3954693, 1.058646, 0.8705882, 0, 1, 1, 1,
0.7754595, -0.02800183, 1.815213, 0.8784314, 0, 1, 1, 1,
0.782814, 0.6496675, 0.8064308, 0.8823529, 0, 1, 1, 1,
0.7864211, 2.075725, 1.362056, 0.8901961, 0, 1, 1, 1,
0.786628, 0.04553588, 2.403814, 0.8941177, 0, 1, 1, 1,
0.7868266, -0.08567932, 0.8019384, 0.9019608, 0, 1, 1, 1,
0.7883347, -0.9740761, 2.667859, 0.9098039, 0, 1, 1, 1,
0.7900108, -0.3218491, 1.390899, 0.9137255, 0, 1, 1, 1,
0.7906039, 0.01356726, 2.265255, 0.9215686, 0, 1, 1, 1,
0.7908618, -2.676799, 3.643879, 0.9254902, 0, 1, 1, 1,
0.7938673, -1.515918, 1.370946, 0.9333333, 0, 1, 1, 1,
0.799478, 0.5530878, 0.8528556, 0.9372549, 0, 1, 1, 1,
0.8054968, -1.810145, 3.974398, 0.945098, 0, 1, 1, 1,
0.8061829, 0.8445992, -0.01049628, 0.9490196, 0, 1, 1, 1,
0.807941, 0.364637, 0.6049185, 0.9568627, 0, 1, 1, 1,
0.8129039, 0.01636557, 1.420165, 0.9607843, 0, 1, 1, 1,
0.8169432, -1.243051, 1.801276, 0.9686275, 0, 1, 1, 1,
0.8279107, -0.2703933, 1.984785, 0.972549, 0, 1, 1, 1,
0.8358437, 0.6522399, 1.111201, 0.9803922, 0, 1, 1, 1,
0.8358554, -0.2040193, 2.336062, 0.9843137, 0, 1, 1, 1,
0.8388451, 0.2398368, 2.188936, 0.9921569, 0, 1, 1, 1,
0.8400818, 0.4416485, 2.701901, 0.9960784, 0, 1, 1, 1,
0.8448565, 0.7663054, 0.6845886, 1, 0, 0.9960784, 1, 1,
0.8464251, 0.404765, 0.5054374, 1, 0, 0.9882353, 1, 1,
0.8578797, -0.6287896, 0.8693, 1, 0, 0.9843137, 1, 1,
0.8591028, -0.3331184, 3.39374, 1, 0, 0.9764706, 1, 1,
0.861954, 0.7339915, 2.101288, 1, 0, 0.972549, 1, 1,
0.8786733, 0.3738788, 2.440568, 1, 0, 0.9647059, 1, 1,
0.8821927, 0.5114498, 3.092047, 1, 0, 0.9607843, 1, 1,
0.885307, 1.062589, 0.6485716, 1, 0, 0.9529412, 1, 1,
0.8876104, 1.342585, 1.721562, 1, 0, 0.9490196, 1, 1,
0.8896284, 2.138766, -0.2649575, 1, 0, 0.9411765, 1, 1,
0.8905181, -1.673413, 3.419711, 1, 0, 0.9372549, 1, 1,
0.8938807, 0.4239986, -0.8206812, 1, 0, 0.9294118, 1, 1,
0.8939155, 1.552469, 0.9076924, 1, 0, 0.9254902, 1, 1,
0.8977621, 1.450768, -0.7559015, 1, 0, 0.9176471, 1, 1,
0.901446, 0.7922674, 0.103102, 1, 0, 0.9137255, 1, 1,
0.9092017, -0.0305172, 1.98494, 1, 0, 0.9058824, 1, 1,
0.9125299, -0.3260157, 2.291737, 1, 0, 0.9019608, 1, 1,
0.9160357, 1.473076, 0.9962652, 1, 0, 0.8941177, 1, 1,
0.9211335, 0.5837313, 0.8668486, 1, 0, 0.8862745, 1, 1,
0.9251055, 0.7019888, 1.023411, 1, 0, 0.8823529, 1, 1,
0.9272147, 0.450801, -0.8880683, 1, 0, 0.8745098, 1, 1,
0.9299427, -0.4078546, 1.735123, 1, 0, 0.8705882, 1, 1,
0.9315044, -0.08897562, 1.893137, 1, 0, 0.8627451, 1, 1,
0.9338306, 1.19665, -0.07526841, 1, 0, 0.8588235, 1, 1,
0.9338373, -0.3759921, 1.174571, 1, 0, 0.8509804, 1, 1,
0.9342933, 0.008663132, 2.291863, 1, 0, 0.8470588, 1, 1,
0.9373002, -0.5062755, 1.941586, 1, 0, 0.8392157, 1, 1,
0.9436499, -0.8360635, 2.432451, 1, 0, 0.8352941, 1, 1,
0.9484079, 0.4035118, 0.8098846, 1, 0, 0.827451, 1, 1,
0.9504896, -0.9995585, 1.957397, 1, 0, 0.8235294, 1, 1,
0.9516717, 1.018768, 1.297661, 1, 0, 0.8156863, 1, 1,
0.965745, 0.4703177, 1.300184, 1, 0, 0.8117647, 1, 1,
0.968726, 0.390121, 1.906383, 1, 0, 0.8039216, 1, 1,
0.9842886, -0.330119, 1.930988, 1, 0, 0.7960784, 1, 1,
0.9849304, -1.5302, 2.759946, 1, 0, 0.7921569, 1, 1,
0.993669, -0.2574883, 2.890753, 1, 0, 0.7843137, 1, 1,
0.999531, 0.7963763, -0.8754679, 1, 0, 0.7803922, 1, 1,
1.001461, 1.197953, 1.820885, 1, 0, 0.772549, 1, 1,
1.00304, 0.2168048, 1.891589, 1, 0, 0.7686275, 1, 1,
1.016285, 0.3930479, 1.257022, 1, 0, 0.7607843, 1, 1,
1.017527, -0.1597007, 2.808167, 1, 0, 0.7568628, 1, 1,
1.01879, -0.1361377, 1.930854, 1, 0, 0.7490196, 1, 1,
1.024194, -1.059213, 1.940372, 1, 0, 0.7450981, 1, 1,
1.025044, 0.5293175, 0.1612766, 1, 0, 0.7372549, 1, 1,
1.049893, 0.2011242, 4.018926, 1, 0, 0.7333333, 1, 1,
1.056612, 0.03747264, 1.73218, 1, 0, 0.7254902, 1, 1,
1.059819, 0.01764164, 0.7179459, 1, 0, 0.7215686, 1, 1,
1.063167, -0.6996447, 4.678217, 1, 0, 0.7137255, 1, 1,
1.074872, 0.3273695, 2.802964, 1, 0, 0.7098039, 1, 1,
1.075632, 0.3710223, 2.594982, 1, 0, 0.7019608, 1, 1,
1.077873, 0.9153499, 0.6418998, 1, 0, 0.6941177, 1, 1,
1.07865, 0.9432656, 1.500479, 1, 0, 0.6901961, 1, 1,
1.081234, 0.08138836, 1.39714, 1, 0, 0.682353, 1, 1,
1.082726, -0.4850988, 0.1087273, 1, 0, 0.6784314, 1, 1,
1.084677, -0.5961897, -0.8062449, 1, 0, 0.6705883, 1, 1,
1.090044, -0.8859697, 1.679661, 1, 0, 0.6666667, 1, 1,
1.096061, -0.08461118, 2.899049, 1, 0, 0.6588235, 1, 1,
1.111127, -1.819498, 2.496029, 1, 0, 0.654902, 1, 1,
1.11166, -0.06029555, -0.007641259, 1, 0, 0.6470588, 1, 1,
1.115266, -1.051673, 1.311929, 1, 0, 0.6431373, 1, 1,
1.120818, 0.2229048, 1.34765, 1, 0, 0.6352941, 1, 1,
1.124036, 0.6484606, 1.425413, 1, 0, 0.6313726, 1, 1,
1.126307, 0.7155291, 0.5109839, 1, 0, 0.6235294, 1, 1,
1.138337, -1.121451, 2.757832, 1, 0, 0.6196079, 1, 1,
1.138732, 0.5714312, 1.450465, 1, 0, 0.6117647, 1, 1,
1.148069, 1.258274, -0.4609647, 1, 0, 0.6078432, 1, 1,
1.150774, 2.558617, -0.6173258, 1, 0, 0.6, 1, 1,
1.161073, -1.46967, 3.078057, 1, 0, 0.5921569, 1, 1,
1.177446, 0.9137245, -0.07508083, 1, 0, 0.5882353, 1, 1,
1.192251, -0.3835203, 0.5113786, 1, 0, 0.5803922, 1, 1,
1.210098, 0.7406627, 0.6488539, 1, 0, 0.5764706, 1, 1,
1.213493, -1.650022, 4.478048, 1, 0, 0.5686275, 1, 1,
1.22264, -0.6038153, 0.9064814, 1, 0, 0.5647059, 1, 1,
1.223867, -0.07761958, -0.137119, 1, 0, 0.5568628, 1, 1,
1.233581, 0.6558431, 1.095177, 1, 0, 0.5529412, 1, 1,
1.247538, 0.9366813, 1.414477, 1, 0, 0.5450981, 1, 1,
1.249403, -2.140371, 5.157727, 1, 0, 0.5411765, 1, 1,
1.267364, 1.165364, -0.1247794, 1, 0, 0.5333334, 1, 1,
1.273069, -0.4254724, 1.099518, 1, 0, 0.5294118, 1, 1,
1.281516, -0.1719026, 3.613485, 1, 0, 0.5215687, 1, 1,
1.282312, -0.4769043, 2.413397, 1, 0, 0.5176471, 1, 1,
1.307425, 0.2427194, 1.54863, 1, 0, 0.509804, 1, 1,
1.320042, -0.999458, 2.950976, 1, 0, 0.5058824, 1, 1,
1.327985, 1.21538, 0.769046, 1, 0, 0.4980392, 1, 1,
1.338988, -1.383152, 1.870767, 1, 0, 0.4901961, 1, 1,
1.34129, -0.4734035, 2.245895, 1, 0, 0.4862745, 1, 1,
1.356046, 1.630694, 0.3306259, 1, 0, 0.4784314, 1, 1,
1.35865, -1.68803, 2.916181, 1, 0, 0.4745098, 1, 1,
1.362448, -0.299655, 1.255561, 1, 0, 0.4666667, 1, 1,
1.374138, -1.016446, 3.38284, 1, 0, 0.4627451, 1, 1,
1.413168, -0.2419682, 1.180456, 1, 0, 0.454902, 1, 1,
1.415064, -0.02807917, 1.620649, 1, 0, 0.4509804, 1, 1,
1.418038, -1.470948, 4.280532, 1, 0, 0.4431373, 1, 1,
1.419398, 0.9455135, -0.07819463, 1, 0, 0.4392157, 1, 1,
1.42108, 0.178227, 2.080678, 1, 0, 0.4313726, 1, 1,
1.424159, 0.04905101, -0.318804, 1, 0, 0.427451, 1, 1,
1.429295, -1.256701, 1.529913, 1, 0, 0.4196078, 1, 1,
1.431992, -1.155364, 2.885668, 1, 0, 0.4156863, 1, 1,
1.434442, -0.005560961, 1.701764, 1, 0, 0.4078431, 1, 1,
1.448192, 0.3793757, -0.01735101, 1, 0, 0.4039216, 1, 1,
1.46445, 0.3169583, 2.754476, 1, 0, 0.3960784, 1, 1,
1.465177, 0.7487065, 1.872347, 1, 0, 0.3882353, 1, 1,
1.467206, 1.021275, 1.557625, 1, 0, 0.3843137, 1, 1,
1.471596, -0.6002413, 1.071294, 1, 0, 0.3764706, 1, 1,
1.480805, -0.004713469, 2.38513, 1, 0, 0.372549, 1, 1,
1.485583, -0.9517919, 1.981019, 1, 0, 0.3647059, 1, 1,
1.49261, -0.1115505, 1.719435, 1, 0, 0.3607843, 1, 1,
1.508473, -0.4125843, 2.725377, 1, 0, 0.3529412, 1, 1,
1.510983, -2.405869, 2.751817, 1, 0, 0.3490196, 1, 1,
1.517404, 0.8786578, 0.5202979, 1, 0, 0.3411765, 1, 1,
1.521458, 0.6415266, 1.468317, 1, 0, 0.3372549, 1, 1,
1.527287, 1.723171, -0.01293729, 1, 0, 0.3294118, 1, 1,
1.535213, 1.423171, 1.36581, 1, 0, 0.3254902, 1, 1,
1.538549, -1.669629, 2.36568, 1, 0, 0.3176471, 1, 1,
1.5586, -2.388339, 3.810257, 1, 0, 0.3137255, 1, 1,
1.588729, 2.385372, 0.2440477, 1, 0, 0.3058824, 1, 1,
1.599177, -1.603682, 2.17621, 1, 0, 0.2980392, 1, 1,
1.605097, -0.3916128, 3.64598, 1, 0, 0.2941177, 1, 1,
1.611467, 0.3860256, 0.3497914, 1, 0, 0.2862745, 1, 1,
1.622614, 0.7441496, 2.226041, 1, 0, 0.282353, 1, 1,
1.623845, -0.0234666, 2.054098, 1, 0, 0.2745098, 1, 1,
1.641867, -0.5680889, 1.160669, 1, 0, 0.2705882, 1, 1,
1.64274, -1.362603, 3.475588, 1, 0, 0.2627451, 1, 1,
1.657226, -1.740058, 1.92554, 1, 0, 0.2588235, 1, 1,
1.666138, 0.3942803, 0.4165943, 1, 0, 0.2509804, 1, 1,
1.683457, -1.377469, 2.674885, 1, 0, 0.2470588, 1, 1,
1.684674, 0.288746, -0.771691, 1, 0, 0.2392157, 1, 1,
1.687327, 0.6071745, 1.699008, 1, 0, 0.2352941, 1, 1,
1.699882, -0.9630874, 2.42378, 1, 0, 0.227451, 1, 1,
1.794947, -0.4501628, 1.185352, 1, 0, 0.2235294, 1, 1,
1.824118, -0.6609726, 1.589923, 1, 0, 0.2156863, 1, 1,
1.847826, -0.00997819, 3.601313, 1, 0, 0.2117647, 1, 1,
1.851289, -0.1911473, 2.739198, 1, 0, 0.2039216, 1, 1,
1.855961, -0.2550461, 2.200232, 1, 0, 0.1960784, 1, 1,
1.861208, 0.09511277, 1.603254, 1, 0, 0.1921569, 1, 1,
1.872313, -0.1191042, 2.811632, 1, 0, 0.1843137, 1, 1,
1.904671, 0.6298363, 2.227041, 1, 0, 0.1803922, 1, 1,
1.932477, -0.5507607, 1.332774, 1, 0, 0.172549, 1, 1,
1.934404, -0.6758329, 1.639238, 1, 0, 0.1686275, 1, 1,
1.941007, 0.5779375, 0.4642004, 1, 0, 0.1607843, 1, 1,
1.948157, 1.343763, -0.04940603, 1, 0, 0.1568628, 1, 1,
1.963191, 0.8109549, 0.602516, 1, 0, 0.1490196, 1, 1,
1.968812, -0.6495799, 2.797343, 1, 0, 0.145098, 1, 1,
1.999046, -1.159967, 2.069421, 1, 0, 0.1372549, 1, 1,
2.001641, 0.4226599, 1.551217, 1, 0, 0.1333333, 1, 1,
2.013121, -0.07298797, 1.791207, 1, 0, 0.1254902, 1, 1,
2.07417, 2.101098, 1.291687, 1, 0, 0.1215686, 1, 1,
2.080551, 0.3409926, 1.998559, 1, 0, 0.1137255, 1, 1,
2.110664, 2.176818, 0.3275674, 1, 0, 0.1098039, 1, 1,
2.140264, -0.2119342, 4.337463, 1, 0, 0.1019608, 1, 1,
2.150649, 1.502956, 0.08188416, 1, 0, 0.09411765, 1, 1,
2.155683, -0.4839317, 1.311528, 1, 0, 0.09019608, 1, 1,
2.237347, -1.770448, 3.8008, 1, 0, 0.08235294, 1, 1,
2.258741, 1.81947, -0.2782223, 1, 0, 0.07843138, 1, 1,
2.334707, 0.6540644, 2.412355, 1, 0, 0.07058824, 1, 1,
2.354195, -0.9438071, 3.290361, 1, 0, 0.06666667, 1, 1,
2.443502, 0.3984933, 1.674225, 1, 0, 0.05882353, 1, 1,
2.492082, -0.8127894, 0.6438267, 1, 0, 0.05490196, 1, 1,
2.514194, 1.572108, 1.933594, 1, 0, 0.04705882, 1, 1,
2.514727, 1.327229, 0.6608008, 1, 0, 0.04313726, 1, 1,
2.683093, 0.2593018, 2.711067, 1, 0, 0.03529412, 1, 1,
2.708941, -0.8340068, 1.525655, 1, 0, 0.03137255, 1, 1,
2.930321, 0.1915905, 0.7446341, 1, 0, 0.02352941, 1, 1,
2.972977, -1.20763, 2.868363, 1, 0, 0.01960784, 1, 1,
3.164404, 1.973134, 1.566756, 1, 0, 0.01176471, 1, 1,
3.536445, 0.2814407, 2.80749, 1, 0, 0.007843138, 1, 1
=======
-2.715706, 0.09773953, -0.5014562, 1, 0, 0, 1, 1,
-2.59858, -0.03160495, -1.88341, 1, 0.007843138, 0, 1, 1,
-2.595652, 1.149082, -0.9755363, 1, 0.01176471, 0, 1, 1,
-2.504839, -0.6085352, -1.122403, 1, 0.01960784, 0, 1, 1,
-2.427758, 0.5555805, -0.7976934, 1, 0.02352941, 0, 1, 1,
-2.422987, -2.472687, -2.141932, 1, 0.03137255, 0, 1, 1,
-2.399384, 1.538586, -2.441228, 1, 0.03529412, 0, 1, 1,
-2.167244, -0.9271089, -3.931145, 1, 0.04313726, 0, 1, 1,
-2.127672, 0.8655376, -2.241365, 1, 0.04705882, 0, 1, 1,
-2.127573, 1.321928, -0.4913332, 1, 0.05490196, 0, 1, 1,
-2.096889, -0.1130947, -3.787278, 1, 0.05882353, 0, 1, 1,
-2.096615, 2.497798, -2.341569, 1, 0.06666667, 0, 1, 1,
-2.096272, -0.2957483, -3.340071, 1, 0.07058824, 0, 1, 1,
-2.067258, -1.712853, -3.434294, 1, 0.07843138, 0, 1, 1,
-2.051269, 1.072543, -1.037944, 1, 0.08235294, 0, 1, 1,
-2.031537, 0.7714521, -1.217636, 1, 0.09019608, 0, 1, 1,
-2.014467, 1.591265, -3.074082, 1, 0.09411765, 0, 1, 1,
-1.990606, 0.9621137, 0.02619696, 1, 0.1019608, 0, 1, 1,
-1.974766, -0.06267107, -1.270191, 1, 0.1098039, 0, 1, 1,
-1.974586, -1.19578, -1.907204, 1, 0.1137255, 0, 1, 1,
-1.947075, 0.1512953, -0.8781347, 1, 0.1215686, 0, 1, 1,
-1.940485, 0.3546417, -0.2831526, 1, 0.1254902, 0, 1, 1,
-1.893381, 0.6067155, -2.207156, 1, 0.1333333, 0, 1, 1,
-1.878356, -2.216611, -1.244138, 1, 0.1372549, 0, 1, 1,
-1.869504, -0.1224922, -1.874266, 1, 0.145098, 0, 1, 1,
-1.866537, -0.002014179, -0.1455121, 1, 0.1490196, 0, 1, 1,
-1.863428, 0.4854238, -1.834837, 1, 0.1568628, 0, 1, 1,
-1.855802, 0.9594647, -1.706951, 1, 0.1607843, 0, 1, 1,
-1.845969, -0.34772, 0.09727135, 1, 0.1686275, 0, 1, 1,
-1.802824, -0.7840043, -1.724665, 1, 0.172549, 0, 1, 1,
-1.786416, 1.948823, -1.762662, 1, 0.1803922, 0, 1, 1,
-1.781695, -1.459147, -3.072876, 1, 0.1843137, 0, 1, 1,
-1.768071, 0.4463336, -0.1633467, 1, 0.1921569, 0, 1, 1,
-1.760463, -1.739534, -1.343861, 1, 0.1960784, 0, 1, 1,
-1.75292, -0.3727952, -2.081929, 1, 0.2039216, 0, 1, 1,
-1.748415, -1.275491, -2.989467, 1, 0.2117647, 0, 1, 1,
-1.74712, 0.8579987, -1.236514, 1, 0.2156863, 0, 1, 1,
-1.742847, -1.269826, -1.087569, 1, 0.2235294, 0, 1, 1,
-1.737888, 0.3051043, 0.1209166, 1, 0.227451, 0, 1, 1,
-1.686242, -0.6713045, -1.806526, 1, 0.2352941, 0, 1, 1,
-1.681944, 1.247653, 0.1457929, 1, 0.2392157, 0, 1, 1,
-1.67566, 0.6221087, -2.128044, 1, 0.2470588, 0, 1, 1,
-1.66804, 0.3020096, -1.965543, 1, 0.2509804, 0, 1, 1,
-1.663965, 1.359002, -0.1143577, 1, 0.2588235, 0, 1, 1,
-1.656748, -0.7161603, -1.431204, 1, 0.2627451, 0, 1, 1,
-1.646057, -1.175722, -1.83457, 1, 0.2705882, 0, 1, 1,
-1.63865, -0.3268665, -0.8847638, 1, 0.2745098, 0, 1, 1,
-1.635572, -0.4991215, -0.7061546, 1, 0.282353, 0, 1, 1,
-1.615074, -1.078228, -0.9524606, 1, 0.2862745, 0, 1, 1,
-1.614919, -0.4895675, -0.6939102, 1, 0.2941177, 0, 1, 1,
-1.603989, -0.695852, -2.028433, 1, 0.3019608, 0, 1, 1,
-1.596597, 1.210612, -2.277013, 1, 0.3058824, 0, 1, 1,
-1.5929, 0.2713177, -2.955191, 1, 0.3137255, 0, 1, 1,
-1.591513, -0.9027206, -2.338302, 1, 0.3176471, 0, 1, 1,
-1.590627, -0.554166, -1.976285, 1, 0.3254902, 0, 1, 1,
-1.590401, 0.5500113, -0.7131512, 1, 0.3294118, 0, 1, 1,
-1.589444, -0.5607934, -2.410104, 1, 0.3372549, 0, 1, 1,
-1.587263, -0.6758373, -2.241914, 1, 0.3411765, 0, 1, 1,
-1.578569, 0.6418265, -0.5016376, 1, 0.3490196, 0, 1, 1,
-1.574279, 1.605399, 0.4178688, 1, 0.3529412, 0, 1, 1,
-1.562826, -0.6536143, -2.303784, 1, 0.3607843, 0, 1, 1,
-1.536753, 0.5349848, -1.652837, 1, 0.3647059, 0, 1, 1,
-1.534741, -1.56074, -2.10521, 1, 0.372549, 0, 1, 1,
-1.525103, 0.7857376, -0.8104743, 1, 0.3764706, 0, 1, 1,
-1.515084, -1.02717, -4.193365, 1, 0.3843137, 0, 1, 1,
-1.504613, -1.285487, -2.799407, 1, 0.3882353, 0, 1, 1,
-1.484271, -1.614336, -2.295745, 1, 0.3960784, 0, 1, 1,
-1.474754, -1.990781, -2.974234, 1, 0.4039216, 0, 1, 1,
-1.45885, -0.424309, -1.947267, 1, 0.4078431, 0, 1, 1,
-1.453551, 1.605302, 0.78596, 1, 0.4156863, 0, 1, 1,
-1.450379, -1.621037, -0.5213754, 1, 0.4196078, 0, 1, 1,
-1.448877, 0.4314692, -2.005584, 1, 0.427451, 0, 1, 1,
-1.437821, -0.1882658, -0.9348395, 1, 0.4313726, 0, 1, 1,
-1.433291, -1.109555, -2.175903, 1, 0.4392157, 0, 1, 1,
-1.424607, -0.9681651, -0.9307789, 1, 0.4431373, 0, 1, 1,
-1.424187, -0.9072573, -2.22244, 1, 0.4509804, 0, 1, 1,
-1.421815, 1.117444, 0.3287121, 1, 0.454902, 0, 1, 1,
-1.413693, -0.1399282, -1.72984, 1, 0.4627451, 0, 1, 1,
-1.412311, -0.1107533, -2.160548, 1, 0.4666667, 0, 1, 1,
-1.409634, 0.7673885, -0.3791613, 1, 0.4745098, 0, 1, 1,
-1.384057, -0.5865045, -2.345193, 1, 0.4784314, 0, 1, 1,
-1.383866, -0.4281342, -3.00642, 1, 0.4862745, 0, 1, 1,
-1.380026, 1.923845, 0.1747327, 1, 0.4901961, 0, 1, 1,
-1.379607, 1.134004, -1.016001, 1, 0.4980392, 0, 1, 1,
-1.376973, -1.95262, -4.625336, 1, 0.5058824, 0, 1, 1,
-1.375804, -0.521294, -2.570283, 1, 0.509804, 0, 1, 1,
-1.370769, -1.063479, -1.515507, 1, 0.5176471, 0, 1, 1,
-1.352882, 0.4443614, -1.442917, 1, 0.5215687, 0, 1, 1,
-1.333885, -0.5002137, -1.32853, 1, 0.5294118, 0, 1, 1,
-1.332021, 0.5308252, -3.216402, 1, 0.5333334, 0, 1, 1,
-1.327413, -0.1932855, -2.255248, 1, 0.5411765, 0, 1, 1,
-1.323489, 0.6948117, -0.1133195, 1, 0.5450981, 0, 1, 1,
-1.315812, 0.3941222, -2.586824, 1, 0.5529412, 0, 1, 1,
-1.315682, 0.2110084, -1.392063, 1, 0.5568628, 0, 1, 1,
-1.314275, -0.3335869, -2.454534, 1, 0.5647059, 0, 1, 1,
-1.301563, 0.5233287, -1.265249, 1, 0.5686275, 0, 1, 1,
-1.297135, 2.166151, 0.965434, 1, 0.5764706, 0, 1, 1,
-1.295876, -0.9197605, -0.03870141, 1, 0.5803922, 0, 1, 1,
-1.293345, -1.121425, -2.367318, 1, 0.5882353, 0, 1, 1,
-1.286562, 1.068773, -0.4151425, 1, 0.5921569, 0, 1, 1,
-1.274518, 0.4535272, -2.515082, 1, 0.6, 0, 1, 1,
-1.270659, 0.4671775, -0.7293344, 1, 0.6078432, 0, 1, 1,
-1.263989, 0.3827495, -0.6483575, 1, 0.6117647, 0, 1, 1,
-1.263837, 0.8031766, -1.229959, 1, 0.6196079, 0, 1, 1,
-1.263134, -1.910087, -3.537962, 1, 0.6235294, 0, 1, 1,
-1.260795, 0.6433311, 0.4526138, 1, 0.6313726, 0, 1, 1,
-1.256215, -1.303959, -2.770492, 1, 0.6352941, 0, 1, 1,
-1.248424, 0.007871537, -2.359271, 1, 0.6431373, 0, 1, 1,
-1.244939, -1.098599, -2.831812, 1, 0.6470588, 0, 1, 1,
-1.235054, 0.7838922, 0.3269379, 1, 0.654902, 0, 1, 1,
-1.232357, 0.1701737, -0.1566146, 1, 0.6588235, 0, 1, 1,
-1.204711, 0.4124328, -0.6528923, 1, 0.6666667, 0, 1, 1,
-1.201711, 0.7228184, 0.38015, 1, 0.6705883, 0, 1, 1,
-1.199743, -0.2949971, -2.881621, 1, 0.6784314, 0, 1, 1,
-1.174268, -0.8592299, -1.387342, 1, 0.682353, 0, 1, 1,
-1.171978, -0.4056696, -1.111753, 1, 0.6901961, 0, 1, 1,
-1.164034, 1.280237, -0.7954099, 1, 0.6941177, 0, 1, 1,
-1.161594, 0.2186807, -2.355739, 1, 0.7019608, 0, 1, 1,
-1.142786, 0.7679536, -0.7765083, 1, 0.7098039, 0, 1, 1,
-1.136109, 0.4735759, -2.111093, 1, 0.7137255, 0, 1, 1,
-1.135381, 0.5974415, -1.688983, 1, 0.7215686, 0, 1, 1,
-1.127802, -1.349052, -3.226874, 1, 0.7254902, 0, 1, 1,
-1.124314, -3.195509, -2.382004, 1, 0.7333333, 0, 1, 1,
-1.123324, -0.4389553, -3.675823, 1, 0.7372549, 0, 1, 1,
-1.11112, 1.162821, -1.621699, 1, 0.7450981, 0, 1, 1,
-1.109812, -0.329187, -1.742063, 1, 0.7490196, 0, 1, 1,
-1.10082, 0.03806128, -2.079523, 1, 0.7568628, 0, 1, 1,
-1.098266, -1.15124, -1.69856, 1, 0.7607843, 0, 1, 1,
-1.095799, -0.640222, -2.324672, 1, 0.7686275, 0, 1, 1,
-1.091514, 1.127356, 0.7595886, 1, 0.772549, 0, 1, 1,
-1.089302, -1.56854, -3.907978, 1, 0.7803922, 0, 1, 1,
-1.086459, -0.2836663, -0.7013453, 1, 0.7843137, 0, 1, 1,
-1.061095, -0.8688441, -0.4361868, 1, 0.7921569, 0, 1, 1,
-1.058593, 0.089287, -1.469548, 1, 0.7960784, 0, 1, 1,
-1.056377, -1.88976, -2.60135, 1, 0.8039216, 0, 1, 1,
-1.051055, -1.494915, -2.135914, 1, 0.8117647, 0, 1, 1,
-1.046305, -0.4049926, -2.974528, 1, 0.8156863, 0, 1, 1,
-1.045861, -1.450599, -2.431268, 1, 0.8235294, 0, 1, 1,
-1.04473, -0.5287374, -2.591503, 1, 0.827451, 0, 1, 1,
-1.039435, -1.852101, -3.168998, 1, 0.8352941, 0, 1, 1,
-1.039345, -0.2355995, -1.528106, 1, 0.8392157, 0, 1, 1,
-1.03719, 0.3619452, -2.569889, 1, 0.8470588, 0, 1, 1,
-1.035781, -0.482843, -3.46986, 1, 0.8509804, 0, 1, 1,
-1.028996, 0.2709692, 1.040917, 1, 0.8588235, 0, 1, 1,
-1.028923, -0.9453232, -4.076963, 1, 0.8627451, 0, 1, 1,
-1.028238, -0.6346638, -2.49931, 1, 0.8705882, 0, 1, 1,
-1.026823, -1.427057, -4.591386, 1, 0.8745098, 0, 1, 1,
-1.024083, -1.728134, -2.633357, 1, 0.8823529, 0, 1, 1,
-1.022158, -0.5748197, -1.475542, 1, 0.8862745, 0, 1, 1,
-1.022054, -0.2426787, -3.969241, 1, 0.8941177, 0, 1, 1,
-1.01638, 1.322336, -1.0567, 1, 0.8980392, 0, 1, 1,
-1.004552, 1.765185, -2.438558, 1, 0.9058824, 0, 1, 1,
-1.004478, 0.388775, -1.800385, 1, 0.9137255, 0, 1, 1,
-1.002465, -0.874703, -3.198714, 1, 0.9176471, 0, 1, 1,
-0.9950815, 0.08974318, -1.947803, 1, 0.9254902, 0, 1, 1,
-0.9903029, 0.6324395, 0.4148208, 1, 0.9294118, 0, 1, 1,
-0.9901111, -0.4957317, -1.429233, 1, 0.9372549, 0, 1, 1,
-0.9861799, -0.649802, -2.03175, 1, 0.9411765, 0, 1, 1,
-0.9775941, 0.1359822, -3.360729, 1, 0.9490196, 0, 1, 1,
-0.9773327, 0.08717862, -0.5944605, 1, 0.9529412, 0, 1, 1,
-0.9763133, 0.09915364, -2.775733, 1, 0.9607843, 0, 1, 1,
-0.976086, 0.0220433, -0.7284828, 1, 0.9647059, 0, 1, 1,
-0.9729179, 1.404337, -2.023554, 1, 0.972549, 0, 1, 1,
-0.968258, 0.5283965, 0.6938516, 1, 0.9764706, 0, 1, 1,
-0.9603555, 0.891251, -0.05680395, 1, 0.9843137, 0, 1, 1,
-0.954338, -0.08197236, -0.8000239, 1, 0.9882353, 0, 1, 1,
-0.9522883, 1.276766, -1.523971, 1, 0.9960784, 0, 1, 1,
-0.9519972, 0.9229999, -0.9224836, 0.9960784, 1, 0, 1, 1,
-0.95181, -0.0212742, -2.62974, 0.9921569, 1, 0, 1, 1,
-0.950402, 0.6204188, -2.227742, 0.9843137, 1, 0, 1, 1,
-0.9462588, -1.650587, -2.182895, 0.9803922, 1, 0, 1, 1,
-0.9412833, 0.4871114, -0.3480613, 0.972549, 1, 0, 1, 1,
-0.9403212, -1.432983, -2.708448, 0.9686275, 1, 0, 1, 1,
-0.9381159, 0.9163655, -1.25475, 0.9607843, 1, 0, 1, 1,
-0.9369824, -0.1815562, -1.675031, 0.9568627, 1, 0, 1, 1,
-0.935523, 0.9695055, -0.308054, 0.9490196, 1, 0, 1, 1,
-0.9184189, 0.6304274, -0.2476389, 0.945098, 1, 0, 1, 1,
-0.9157801, 1.071666, -0.2400994, 0.9372549, 1, 0, 1, 1,
-0.9141053, 1.437913, -1.938419, 0.9333333, 1, 0, 1, 1,
-0.9102598, 0.03889718, -2.097648, 0.9254902, 1, 0, 1, 1,
-0.8912609, 0.5247316, -1.126323, 0.9215686, 1, 0, 1, 1,
-0.8804651, 1.477808, 1.171273, 0.9137255, 1, 0, 1, 1,
-0.873245, 0.02393692, -0.8030442, 0.9098039, 1, 0, 1, 1,
-0.8706683, -0.1731642, -2.723512, 0.9019608, 1, 0, 1, 1,
-0.8686358, -0.1305903, -2.287724, 0.8941177, 1, 0, 1, 1,
-0.8677523, -0.6965271, -2.75934, 0.8901961, 1, 0, 1, 1,
-0.8672, -0.568816, -1.975208, 0.8823529, 1, 0, 1, 1,
-0.8620968, 0.4111447, -0.803618, 0.8784314, 1, 0, 1, 1,
-0.8612434, -1.176464, -2.977911, 0.8705882, 1, 0, 1, 1,
-0.8517608, 0.632088, -1.187712, 0.8666667, 1, 0, 1, 1,
-0.8498356, 0.09239727, -0.1282066, 0.8588235, 1, 0, 1, 1,
-0.8496159, 0.1677892, -0.4639033, 0.854902, 1, 0, 1, 1,
-0.8488837, 1.402721, -0.6666018, 0.8470588, 1, 0, 1, 1,
-0.8466491, 1.022279, -1.208649, 0.8431373, 1, 0, 1, 1,
-0.8457311, -1.040174, -2.456498, 0.8352941, 1, 0, 1, 1,
-0.8425339, -0.02640795, -0.9497333, 0.8313726, 1, 0, 1, 1,
-0.8423293, -1.671272, -3.037147, 0.8235294, 1, 0, 1, 1,
-0.8319721, 0.3638001, -2.15578, 0.8196079, 1, 0, 1, 1,
-0.8291337, 1.230862, -0.7356809, 0.8117647, 1, 0, 1, 1,
-0.820564, -0.5814162, -2.155932, 0.8078431, 1, 0, 1, 1,
-0.8205618, 1.205973, -1.90496, 0.8, 1, 0, 1, 1,
-0.820002, 1.102623, -0.1794142, 0.7921569, 1, 0, 1, 1,
-0.818124, 1.480082, -1.078219, 0.7882353, 1, 0, 1, 1,
-0.8178378, 0.6258281, -1.094903, 0.7803922, 1, 0, 1, 1,
-0.816657, -1.163843, -1.523209, 0.7764706, 1, 0, 1, 1,
-0.8061485, -0.196188, -1.587538, 0.7686275, 1, 0, 1, 1,
-0.8056191, 1.83282, -2.225254, 0.7647059, 1, 0, 1, 1,
-0.7770292, 1.647517, 0.4053294, 0.7568628, 1, 0, 1, 1,
-0.7765216, 2.11407, -0.669175, 0.7529412, 1, 0, 1, 1,
-0.7748754, 0.212587, -1.607471, 0.7450981, 1, 0, 1, 1,
-0.7738848, -0.7809499, -1.896788, 0.7411765, 1, 0, 1, 1,
-0.7644742, -0.1510589, -0.8001621, 0.7333333, 1, 0, 1, 1,
-0.7640686, -0.8774915, -2.419068, 0.7294118, 1, 0, 1, 1,
-0.7626778, -1.88831, -3.702931, 0.7215686, 1, 0, 1, 1,
-0.7617722, -0.8577803, -2.975027, 0.7176471, 1, 0, 1, 1,
-0.753906, 0.7697838, -1.068186, 0.7098039, 1, 0, 1, 1,
-0.7529324, 0.4980936, -0.8389857, 0.7058824, 1, 0, 1, 1,
-0.7517374, 0.08290965, -1.664399, 0.6980392, 1, 0, 1, 1,
-0.7477074, -1.458313, -2.284722, 0.6901961, 1, 0, 1, 1,
-0.7456726, -0.9801837, -2.340014, 0.6862745, 1, 0, 1, 1,
-0.7454653, 0.5359606, -1.616645, 0.6784314, 1, 0, 1, 1,
-0.7448105, -1.156876, -1.930632, 0.6745098, 1, 0, 1, 1,
-0.7376468, -1.012415, -1.606378, 0.6666667, 1, 0, 1, 1,
-0.7312903, 0.3399471, -1.360464, 0.6627451, 1, 0, 1, 1,
-0.73103, 0.8849413, -1.640738, 0.654902, 1, 0, 1, 1,
-0.7283812, 1.179049, -0.7743961, 0.6509804, 1, 0, 1, 1,
-0.7237961, 0.688085, 0.1347622, 0.6431373, 1, 0, 1, 1,
-0.7205212, 0.5949144, -0.6258035, 0.6392157, 1, 0, 1, 1,
-0.7193186, 0.2232075, -0.9385162, 0.6313726, 1, 0, 1, 1,
-0.7161733, 1.134243, -1.768915, 0.627451, 1, 0, 1, 1,
-0.7159731, 0.2775652, -0.7584762, 0.6196079, 1, 0, 1, 1,
-0.7140608, 0.8574021, 0.449946, 0.6156863, 1, 0, 1, 1,
-0.7113225, -1.05378, -2.623331, 0.6078432, 1, 0, 1, 1,
-0.7012615, 0.4058288, 1.234047, 0.6039216, 1, 0, 1, 1,
-0.6983486, 1.371161, -0.5406619, 0.5960785, 1, 0, 1, 1,
-0.6948144, 0.02952735, -0.8260061, 0.5882353, 1, 0, 1, 1,
-0.6947465, 0.4316877, -1.157486, 0.5843138, 1, 0, 1, 1,
-0.6925377, 0.03151926, 0.1397196, 0.5764706, 1, 0, 1, 1,
-0.6912789, -0.2513308, -2.260825, 0.572549, 1, 0, 1, 1,
-0.6910214, -0.7435235, -2.806824, 0.5647059, 1, 0, 1, 1,
-0.6902486, 1.792163, 1.011193, 0.5607843, 1, 0, 1, 1,
-0.6895378, -0.8329107, -2.179572, 0.5529412, 1, 0, 1, 1,
-0.6847931, -0.1649672, -1.783651, 0.5490196, 1, 0, 1, 1,
-0.6706985, -0.2755959, -1.627947, 0.5411765, 1, 0, 1, 1,
-0.6705944, 1.197795, 0.5799659, 0.5372549, 1, 0, 1, 1,
-0.6703762, 0.5499429, -2.46011, 0.5294118, 1, 0, 1, 1,
-0.6703431, 0.6622258, 1.208311, 0.5254902, 1, 0, 1, 1,
-0.6702306, 0.409573, -1.662144, 0.5176471, 1, 0, 1, 1,
-0.6681007, -0.2888755, -2.614484, 0.5137255, 1, 0, 1, 1,
-0.6666027, -1.074339, -2.682798, 0.5058824, 1, 0, 1, 1,
-0.656696, 0.5435417, -1.19326, 0.5019608, 1, 0, 1, 1,
-0.6537797, -0.2469192, -1.878279, 0.4941176, 1, 0, 1, 1,
-0.6424316, -0.8040378, -3.450575, 0.4862745, 1, 0, 1, 1,
-0.6410119, -0.2929298, -2.228679, 0.4823529, 1, 0, 1, 1,
-0.6391572, -0.6449452, -3.903912, 0.4745098, 1, 0, 1, 1,
-0.6315409, -0.5620654, -0.7627263, 0.4705882, 1, 0, 1, 1,
-0.6305711, 0.3962623, -0.7649499, 0.4627451, 1, 0, 1, 1,
-0.6294877, 1.632402, 0.9051763, 0.4588235, 1, 0, 1, 1,
-0.628795, 1.049245, -0.01658335, 0.4509804, 1, 0, 1, 1,
-0.6268272, -1.785259, -1.316681, 0.4470588, 1, 0, 1, 1,
-0.6251683, -0.8453385, -1.426343, 0.4392157, 1, 0, 1, 1,
-0.6178424, 0.7493806, -0.6285006, 0.4352941, 1, 0, 1, 1,
-0.6175371, -2.644232, -2.396458, 0.427451, 1, 0, 1, 1,
-0.6155261, -0.485261, -2.152902, 0.4235294, 1, 0, 1, 1,
-0.6115525, 1.645278, 0.1727653, 0.4156863, 1, 0, 1, 1,
-0.6084678, -0.2803819, -2.397297, 0.4117647, 1, 0, 1, 1,
-0.606194, 1.537284, -0.4849496, 0.4039216, 1, 0, 1, 1,
-0.6047121, -0.8917052, -0.6613731, 0.3960784, 1, 0, 1, 1,
-0.6044977, -0.2583902, -0.5085229, 0.3921569, 1, 0, 1, 1,
-0.6011604, -2.133232, -2.140783, 0.3843137, 1, 0, 1, 1,
-0.6000373, 1.383142, 0.2993676, 0.3803922, 1, 0, 1, 1,
-0.5974576, -1.1496, -1.794088, 0.372549, 1, 0, 1, 1,
-0.5966448, 1.118241, -1.223346, 0.3686275, 1, 0, 1, 1,
-0.5959597, -0.2117152, -3.281641, 0.3607843, 1, 0, 1, 1,
-0.5880459, 0.4152732, -0.9818165, 0.3568628, 1, 0, 1, 1,
-0.5821552, 0.2673193, 0.7931513, 0.3490196, 1, 0, 1, 1,
-0.5813959, -2.263127, -2.599242, 0.345098, 1, 0, 1, 1,
-0.5798377, 0.2613735, -1.319496, 0.3372549, 1, 0, 1, 1,
-0.5791707, -0.2671123, -1.728004, 0.3333333, 1, 0, 1, 1,
-0.5766668, -2.171587, -1.508978, 0.3254902, 1, 0, 1, 1,
-0.5754479, -1.753845, -2.493046, 0.3215686, 1, 0, 1, 1,
-0.575177, -0.5098389, -2.865453, 0.3137255, 1, 0, 1, 1,
-0.5734047, -0.04892713, -2.081961, 0.3098039, 1, 0, 1, 1,
-0.5731573, -0.4765889, -1.443436, 0.3019608, 1, 0, 1, 1,
-0.5688986, 0.9573232, -1.935032, 0.2941177, 1, 0, 1, 1,
-0.5684037, 3.243176, -0.5532603, 0.2901961, 1, 0, 1, 1,
-0.5654156, 0.2686227, -1.369347, 0.282353, 1, 0, 1, 1,
-0.5618622, -0.1926039, -1.647242, 0.2784314, 1, 0, 1, 1,
-0.5582246, 0.06956536, 0.5099737, 0.2705882, 1, 0, 1, 1,
-0.5550719, 0.6909149, -0.03625278, 0.2666667, 1, 0, 1, 1,
-0.5542799, -0.8832841, -2.429396, 0.2588235, 1, 0, 1, 1,
-0.5511339, -0.6284181, -2.78361, 0.254902, 1, 0, 1, 1,
-0.5499826, 0.4734215, -0.4930591, 0.2470588, 1, 0, 1, 1,
-0.5469953, 0.1865609, -2.365508, 0.2431373, 1, 0, 1, 1,
-0.5426558, -0.9701449, -3.648147, 0.2352941, 1, 0, 1, 1,
-0.5400071, 2.338608, 1.558946, 0.2313726, 1, 0, 1, 1,
-0.5394116, 0.2440713, -0.9826808, 0.2235294, 1, 0, 1, 1,
-0.5389761, 0.3963124, -1.044909, 0.2196078, 1, 0, 1, 1,
-0.5374561, 1.198896, -0.4285914, 0.2117647, 1, 0, 1, 1,
-0.536981, 0.1338591, -2.549417, 0.2078431, 1, 0, 1, 1,
-0.5337939, 0.5008385, -2.31644, 0.2, 1, 0, 1, 1,
-0.5278296, -0.4913862, -1.365745, 0.1921569, 1, 0, 1, 1,
-0.5244648, -0.0838832, -2.697321, 0.1882353, 1, 0, 1, 1,
-0.5224673, 0.8962002, 0.7753602, 0.1803922, 1, 0, 1, 1,
-0.520942, -0.02467523, -1.101051, 0.1764706, 1, 0, 1, 1,
-0.5185187, 0.5068277, -2.700543, 0.1686275, 1, 0, 1, 1,
-0.5162672, -0.109751, -2.507461, 0.1647059, 1, 0, 1, 1,
-0.5154774, -1.340441, -1.979785, 0.1568628, 1, 0, 1, 1,
-0.5123327, -0.1703475, -1.596099, 0.1529412, 1, 0, 1, 1,
-0.508907, -1.995097, -2.672887, 0.145098, 1, 0, 1, 1,
-0.5073156, -1.523184, -3.100375, 0.1411765, 1, 0, 1, 1,
-0.5031708, -0.3853161, -2.587822, 0.1333333, 1, 0, 1, 1,
-0.5023104, 0.9035218, -1.18916, 0.1294118, 1, 0, 1, 1,
-0.4999578, 0.2283032, -0.8068084, 0.1215686, 1, 0, 1, 1,
-0.497559, -0.4397576, -1.297612, 0.1176471, 1, 0, 1, 1,
-0.495201, -0.2296026, -0.8020592, 0.1098039, 1, 0, 1, 1,
-0.4940511, -0.5825161, -4.24816, 0.1058824, 1, 0, 1, 1,
-0.4913918, -0.2470442, -3.425251, 0.09803922, 1, 0, 1, 1,
-0.4903956, -0.7277582, -2.553838, 0.09019608, 1, 0, 1, 1,
-0.4892198, 1.894177, -0.3949234, 0.08627451, 1, 0, 1, 1,
-0.4866872, 0.73203, -2.575655, 0.07843138, 1, 0, 1, 1,
-0.4831274, 0.8705039, -1.949315, 0.07450981, 1, 0, 1, 1,
-0.4817215, 0.4043749, 0.1770034, 0.06666667, 1, 0, 1, 1,
-0.4782757, -1.007723, -4.016578, 0.0627451, 1, 0, 1, 1,
-0.4775074, 1.940945, -0.214361, 0.05490196, 1, 0, 1, 1,
-0.4723449, 0.0296252, -1.023125, 0.05098039, 1, 0, 1, 1,
-0.4655256, 0.9917517, -0.7710266, 0.04313726, 1, 0, 1, 1,
-0.4654634, -0.6036203, -1.928832, 0.03921569, 1, 0, 1, 1,
-0.4625573, -0.4181504, -1.674468, 0.03137255, 1, 0, 1, 1,
-0.4609586, -0.4112991, -1.554821, 0.02745098, 1, 0, 1, 1,
-0.4592079, 1.052945, -2.121571, 0.01960784, 1, 0, 1, 1,
-0.454191, 0.7491977, -2.696645, 0.01568628, 1, 0, 1, 1,
-0.4540146, 1.163052, -1.476983, 0.007843138, 1, 0, 1, 1,
-0.4531765, 0.9291916, 0.2758653, 0.003921569, 1, 0, 1, 1,
-0.4507626, 0.925859, -1.668614, 0, 1, 0.003921569, 1, 1,
-0.4474497, 0.3404391, -0.282505, 0, 1, 0.01176471, 1, 1,
-0.4430725, 2.439732, 1.363424, 0, 1, 0.01568628, 1, 1,
-0.4404881, -1.879098, -2.364279, 0, 1, 0.02352941, 1, 1,
-0.4331599, -0.5453324, -3.410088, 0, 1, 0.02745098, 1, 1,
-0.4278129, 0.1724019, -1.215462, 0, 1, 0.03529412, 1, 1,
-0.4182282, 0.4153407, -1.471257, 0, 1, 0.03921569, 1, 1,
-0.4161229, 0.3936093, 0.3244731, 0, 1, 0.04705882, 1, 1,
-0.4141407, 0.7594169, 1.611893, 0, 1, 0.05098039, 1, 1,
-0.4065081, -0.02739798, -2.072863, 0, 1, 0.05882353, 1, 1,
-0.4037024, 1.308228, 0.6418226, 0, 1, 0.0627451, 1, 1,
-0.3984018, -0.8873454, -3.261352, 0, 1, 0.07058824, 1, 1,
-0.3901011, -1.148139, -2.956954, 0, 1, 0.07450981, 1, 1,
-0.3886637, -0.4595692, -1.076349, 0, 1, 0.08235294, 1, 1,
-0.3882253, -0.1689667, -1.082956, 0, 1, 0.08627451, 1, 1,
-0.3799823, -1.31192, -2.285009, 0, 1, 0.09411765, 1, 1,
-0.3791197, -1.129597, -3.003899, 0, 1, 0.1019608, 1, 1,
-0.3750156, 1.044915, 1.195657, 0, 1, 0.1058824, 1, 1,
-0.3708557, -0.5339191, -2.118308, 0, 1, 0.1137255, 1, 1,
-0.3667912, 0.222147, -1.397831, 0, 1, 0.1176471, 1, 1,
-0.3640749, 0.1486951, 0.1530825, 0, 1, 0.1254902, 1, 1,
-0.3599325, 1.074368, 0.1779044, 0, 1, 0.1294118, 1, 1,
-0.3595897, 1.757375, -0.619079, 0, 1, 0.1372549, 1, 1,
-0.359547, -0.7974168, -3.160555, 0, 1, 0.1411765, 1, 1,
-0.3548262, 0.5811455, -0.05024391, 0, 1, 0.1490196, 1, 1,
-0.3496238, 0.5715888, 0.5960295, 0, 1, 0.1529412, 1, 1,
-0.3447793, 0.7509378, -0.7731031, 0, 1, 0.1607843, 1, 1,
-0.3436202, -0.4365906, -2.107619, 0, 1, 0.1647059, 1, 1,
-0.3426823, 0.4311038, -1.238188, 0, 1, 0.172549, 1, 1,
-0.3419104, 0.852169, -0.1946416, 0, 1, 0.1764706, 1, 1,
-0.3362072, -0.5651034, -3.043103, 0, 1, 0.1843137, 1, 1,
-0.334005, -0.6199591, -0.4110527, 0, 1, 0.1882353, 1, 1,
-0.3327324, -0.1118621, -1.524343, 0, 1, 0.1960784, 1, 1,
-0.3265613, 0.2120116, 0.4373578, 0, 1, 0.2039216, 1, 1,
-0.3218094, 0.8353391, -0.1616767, 0, 1, 0.2078431, 1, 1,
-0.3195536, 0.355727, 0.02931008, 0, 1, 0.2156863, 1, 1,
-0.3189076, -0.3683821, -3.620728, 0, 1, 0.2196078, 1, 1,
-0.3125209, -0.4639058, -3.175388, 0, 1, 0.227451, 1, 1,
-0.3121048, 0.1969499, 0.2370189, 0, 1, 0.2313726, 1, 1,
-0.3118925, 0.7613772, 0.7893059, 0, 1, 0.2392157, 1, 1,
-0.3090214, 1.811386, -0.3825151, 0, 1, 0.2431373, 1, 1,
-0.3083372, -0.5831288, -0.5773947, 0, 1, 0.2509804, 1, 1,
-0.3065713, -0.7049195, -2.045436, 0, 1, 0.254902, 1, 1,
-0.2974584, -0.1875074, -3.956376, 0, 1, 0.2627451, 1, 1,
-0.2968585, -0.3473277, -2.051305, 0, 1, 0.2666667, 1, 1,
-0.2933461, 1.745664, 0.858285, 0, 1, 0.2745098, 1, 1,
-0.2892338, 1.103852, -1.219677, 0, 1, 0.2784314, 1, 1,
-0.2826711, 1.189158, -0.3524446, 0, 1, 0.2862745, 1, 1,
-0.281488, -0.6764809, -2.555386, 0, 1, 0.2901961, 1, 1,
-0.2813202, 1.520015, -0.2012607, 0, 1, 0.2980392, 1, 1,
-0.2803563, 0.7914293, -0.9530293, 0, 1, 0.3058824, 1, 1,
-0.2800142, -0.5926346, -3.534721, 0, 1, 0.3098039, 1, 1,
-0.2766763, 0.4192047, 0.4922101, 0, 1, 0.3176471, 1, 1,
-0.2715465, -0.9775466, -3.209521, 0, 1, 0.3215686, 1, 1,
-0.2707274, -1.325827, -3.747361, 0, 1, 0.3294118, 1, 1,
-0.2697349, 0.4839835, 0.8392131, 0, 1, 0.3333333, 1, 1,
-0.2687718, -0.2428174, -3.46503, 0, 1, 0.3411765, 1, 1,
-0.2674234, 1.660253, -0.8658601, 0, 1, 0.345098, 1, 1,
-0.2656819, 0.3986633, -1.55042, 0, 1, 0.3529412, 1, 1,
-0.2654009, -1.406362, -3.070922, 0, 1, 0.3568628, 1, 1,
-0.2628676, -0.08973654, -2.826034, 0, 1, 0.3647059, 1, 1,
-0.2607758, -1.140855, -3.328295, 0, 1, 0.3686275, 1, 1,
-0.2603653, -0.8806782, -2.27314, 0, 1, 0.3764706, 1, 1,
-0.2572663, 1.541359, 0.5123491, 0, 1, 0.3803922, 1, 1,
-0.2533984, -0.39843, -1.652645, 0, 1, 0.3882353, 1, 1,
-0.2518783, -1.161104, -4.459548, 0, 1, 0.3921569, 1, 1,
-0.2498104, -0.543035, -3.489842, 0, 1, 0.4, 1, 1,
-0.2494687, -0.5434235, -4.119656, 0, 1, 0.4078431, 1, 1,
-0.249224, -0.2337474, -3.915327, 0, 1, 0.4117647, 1, 1,
-0.2469999, -1.145602, -2.576505, 0, 1, 0.4196078, 1, 1,
-0.246633, -0.6884264, -2.798351, 0, 1, 0.4235294, 1, 1,
-0.246157, -1.890567, -2.101743, 0, 1, 0.4313726, 1, 1,
-0.2419804, -0.2960747, -3.8416, 0, 1, 0.4352941, 1, 1,
-0.2402532, -0.5348345, -2.029377, 0, 1, 0.4431373, 1, 1,
-0.2399034, 0.45726, -0.6797636, 0, 1, 0.4470588, 1, 1,
-0.2385865, -0.5757, -3.896264, 0, 1, 0.454902, 1, 1,
-0.2325997, 1.403913, -0.4414263, 0, 1, 0.4588235, 1, 1,
-0.2311345, -1.526348, -2.451211, 0, 1, 0.4666667, 1, 1,
-0.2302004, -2.829486, -4.396877, 0, 1, 0.4705882, 1, 1,
-0.2296269, 0.9619318, -0.5024155, 0, 1, 0.4784314, 1, 1,
-0.2278272, -2.00971, -2.657677, 0, 1, 0.4823529, 1, 1,
-0.2254217, -1.503778, -2.816249, 0, 1, 0.4901961, 1, 1,
-0.2250166, 0.6052322, -0.3183298, 0, 1, 0.4941176, 1, 1,
-0.2247638, -1.908042, -2.821636, 0, 1, 0.5019608, 1, 1,
-0.2223659, -1.190436, -3.088312, 0, 1, 0.509804, 1, 1,
-0.2195225, -0.5360448, -4.414132, 0, 1, 0.5137255, 1, 1,
-0.2175663, -0.3355681, -3.813412, 0, 1, 0.5215687, 1, 1,
-0.2122074, 0.1607276, -0.5954818, 0, 1, 0.5254902, 1, 1,
-0.2117823, 0.4081378, -0.5223976, 0, 1, 0.5333334, 1, 1,
-0.2114475, -1.320175, -4.324195, 0, 1, 0.5372549, 1, 1,
-0.2097614, -0.1234854, -2.205148, 0, 1, 0.5450981, 1, 1,
-0.2092689, -0.6808497, -0.6846296, 0, 1, 0.5490196, 1, 1,
-0.2055907, -0.1311365, -2.238726, 0, 1, 0.5568628, 1, 1,
-0.2017261, 0.7688311, 0.03096824, 0, 1, 0.5607843, 1, 1,
-0.2006179, -0.07677628, -1.906725, 0, 1, 0.5686275, 1, 1,
-0.1909822, -0.2983675, -0.4706365, 0, 1, 0.572549, 1, 1,
-0.1904758, 1.157213, 0.9884869, 0, 1, 0.5803922, 1, 1,
-0.1859558, 0.6374498, -0.8847234, 0, 1, 0.5843138, 1, 1,
-0.1818037, -1.134264, -0.5816344, 0, 1, 0.5921569, 1, 1,
-0.1810215, -1.368766, -1.648013, 0, 1, 0.5960785, 1, 1,
-0.1796439, -0.3480916, -1.755064, 0, 1, 0.6039216, 1, 1,
-0.178338, -0.01375345, -0.2167611, 0, 1, 0.6117647, 1, 1,
-0.1778247, 1.128894, -0.2283638, 0, 1, 0.6156863, 1, 1,
-0.1709826, -0.7086046, -3.844342, 0, 1, 0.6235294, 1, 1,
-0.1697595, 0.1865372, 1.874439, 0, 1, 0.627451, 1, 1,
-0.1630133, -0.5868453, -1.60484, 0, 1, 0.6352941, 1, 1,
-0.159811, -0.6233601, -3.233706, 0, 1, 0.6392157, 1, 1,
-0.1574237, -1.562453, -3.21633, 0, 1, 0.6470588, 1, 1,
-0.1559776, -0.3089357, -1.594027, 0, 1, 0.6509804, 1, 1,
-0.1558372, -0.5034633, -3.48071, 0, 1, 0.6588235, 1, 1,
-0.1556148, 0.7073777, 0.7291428, 0, 1, 0.6627451, 1, 1,
-0.1518444, 1.300577, -1.549396, 0, 1, 0.6705883, 1, 1,
-0.1495797, 1.878755, 0.8396625, 0, 1, 0.6745098, 1, 1,
-0.1416994, 0.6818238, 0.9718508, 0, 1, 0.682353, 1, 1,
-0.1412847, 0.03806423, -2.662923, 0, 1, 0.6862745, 1, 1,
-0.1400906, 0.1283637, -1.62375, 0, 1, 0.6941177, 1, 1,
-0.1394362, 0.3640634, -0.2483695, 0, 1, 0.7019608, 1, 1,
-0.1299413, -1.133909, -2.419447, 0, 1, 0.7058824, 1, 1,
-0.1223123, 1.982491, 1.660494, 0, 1, 0.7137255, 1, 1,
-0.1183323, -0.9371096, -3.488855, 0, 1, 0.7176471, 1, 1,
-0.1126702, -0.63359, -3.520839, 0, 1, 0.7254902, 1, 1,
-0.1112685, 0.719616, 0.509464, 0, 1, 0.7294118, 1, 1,
-0.1106342, 0.6768573, -0.9199408, 0, 1, 0.7372549, 1, 1,
-0.1105992, -0.07951553, -2.601864, 0, 1, 0.7411765, 1, 1,
-0.1078801, 0.886386, 0.9211816, 0, 1, 0.7490196, 1, 1,
-0.1071886, -2.619411, -3.021491, 0, 1, 0.7529412, 1, 1,
-0.1031422, 1.018631, -0.5786567, 0, 1, 0.7607843, 1, 1,
-0.1015723, -1.014688, -4.486075, 0, 1, 0.7647059, 1, 1,
-0.09732457, 0.4746647, -0.8069713, 0, 1, 0.772549, 1, 1,
-0.09407452, 0.7859367, 0.7986116, 0, 1, 0.7764706, 1, 1,
-0.09003802, -0.2062402, -2.729528, 0, 1, 0.7843137, 1, 1,
-0.08982012, 0.3583285, -0.9578869, 0, 1, 0.7882353, 1, 1,
-0.08978505, -0.7999585, 0.2539626, 0, 1, 0.7960784, 1, 1,
-0.08134151, -0.7466773, -4.186122, 0, 1, 0.8039216, 1, 1,
-0.08061549, 0.6744151, -0.9481004, 0, 1, 0.8078431, 1, 1,
-0.08057071, -1.18476, -2.047306, 0, 1, 0.8156863, 1, 1,
-0.07353055, 1.257387, -0.5889524, 0, 1, 0.8196079, 1, 1,
-0.07075507, 0.3642568, 0.59747, 0, 1, 0.827451, 1, 1,
-0.07013086, 0.0613425, -0.5935449, 0, 1, 0.8313726, 1, 1,
-0.06938371, 0.3579137, -0.2894689, 0, 1, 0.8392157, 1, 1,
-0.06923558, -0.2030554, -0.9856775, 0, 1, 0.8431373, 1, 1,
-0.06712868, 0.1266975, 1.812525, 0, 1, 0.8509804, 1, 1,
-0.06630512, 1.208995, 0.2493007, 0, 1, 0.854902, 1, 1,
-0.06105733, -1.033493, -2.058447, 0, 1, 0.8627451, 1, 1,
-0.05609345, 0.08574632, -0.2234561, 0, 1, 0.8666667, 1, 1,
-0.05115794, 1.154616, 1.667977, 0, 1, 0.8745098, 1, 1,
-0.0432252, 0.1029196, -1.360762, 0, 1, 0.8784314, 1, 1,
-0.04289418, 0.3051439, -0.3698563, 0, 1, 0.8862745, 1, 1,
-0.04004813, -1.579409, -4.443735, 0, 1, 0.8901961, 1, 1,
-0.03732419, 0.7831432, -0.531688, 0, 1, 0.8980392, 1, 1,
-0.03178624, -0.7281401, -2.961257, 0, 1, 0.9058824, 1, 1,
-0.030629, 0.3142802, -1.554969, 0, 1, 0.9098039, 1, 1,
-0.02467374, -0.377068, -2.764973, 0, 1, 0.9176471, 1, 1,
-0.02031828, 0.4315116, -0.2864114, 0, 1, 0.9215686, 1, 1,
-0.01908865, -1.429863, -3.811885, 0, 1, 0.9294118, 1, 1,
-0.01849711, 0.5314363, -1.590138, 0, 1, 0.9333333, 1, 1,
-0.01653746, -0.5417074, -2.083727, 0, 1, 0.9411765, 1, 1,
-0.01408973, 0.08807947, 1.00885, 0, 1, 0.945098, 1, 1,
-0.01041472, -2.25927, -3.257094, 0, 1, 0.9529412, 1, 1,
-0.01024781, 0.05302369, -0.1742243, 0, 1, 0.9568627, 1, 1,
-0.01022114, -0.1537214, -3.189161, 0, 1, 0.9647059, 1, 1,
-0.008626148, -1.037703, -1.942566, 0, 1, 0.9686275, 1, 1,
-0.007770197, -0.4126704, -2.086448, 0, 1, 0.9764706, 1, 1,
-0.002446193, 1.105005, -0.8367767, 0, 1, 0.9803922, 1, 1,
0.002099923, 0.2772127, 0.06900337, 0, 1, 0.9882353, 1, 1,
0.003437522, -1.428217, 2.806494, 0, 1, 0.9921569, 1, 1,
0.006212229, 2.548276, 0.9934841, 0, 1, 1, 1, 1,
0.007197666, 0.5053557, -0.6577212, 0, 0.9921569, 1, 1, 1,
0.008096728, 0.8412492, 0.4629239, 0, 0.9882353, 1, 1, 1,
0.01127154, -1.847094, 4.313265, 0, 0.9803922, 1, 1, 1,
0.01720769, -2.774306, 1.334291, 0, 0.9764706, 1, 1, 1,
0.02059738, 0.3895303, 1.604528, 0, 0.9686275, 1, 1, 1,
0.02070804, -2.872324, 3.54949, 0, 0.9647059, 1, 1, 1,
0.02469744, -0.6120891, 1.911541, 0, 0.9568627, 1, 1, 1,
0.0303539, -0.008551832, 1.104099, 0, 0.9529412, 1, 1, 1,
0.03106031, 1.113855, 1.502399, 0, 0.945098, 1, 1, 1,
0.0351653, 0.00625508, 2.539443, 0, 0.9411765, 1, 1, 1,
0.0351852, -1.112205, 2.664067, 0, 0.9333333, 1, 1, 1,
0.03547689, -0.6439757, 2.799936, 0, 0.9294118, 1, 1, 1,
0.03900173, 0.8043429, 0.6353037, 0, 0.9215686, 1, 1, 1,
0.03977031, -2.245105, 2.452548, 0, 0.9176471, 1, 1, 1,
0.04260325, -0.2844251, 4.358876, 0, 0.9098039, 1, 1, 1,
0.04433203, 1.332638, 0.07764574, 0, 0.9058824, 1, 1, 1,
0.04904322, 0.07248068, 0.4774459, 0, 0.8980392, 1, 1, 1,
0.04946225, 0.2210376, -0.9291394, 0, 0.8901961, 1, 1, 1,
0.05544778, 0.4816844, 1.945174, 0, 0.8862745, 1, 1, 1,
0.05598335, -2.246164, 1.679772, 0, 0.8784314, 1, 1, 1,
0.06228235, -0.2743182, 3.32046, 0, 0.8745098, 1, 1, 1,
0.06616217, 1.080614, 0.3269587, 0, 0.8666667, 1, 1, 1,
0.07136598, -0.3539752, 3.477689, 0, 0.8627451, 1, 1, 1,
0.07196453, 0.5581983, 1.311639, 0, 0.854902, 1, 1, 1,
0.07632948, 0.7929692, -1.464523, 0, 0.8509804, 1, 1, 1,
0.0780329, 1.511204, 0.1954015, 0, 0.8431373, 1, 1, 1,
0.08200289, -0.540276, 4.615002, 0, 0.8392157, 1, 1, 1,
0.08251013, 1.327414, -0.3170066, 0, 0.8313726, 1, 1, 1,
0.08333068, -1.533529, 4.488839, 0, 0.827451, 1, 1, 1,
0.08352922, -0.7726362, 3.287126, 0, 0.8196079, 1, 1, 1,
0.08597712, -0.1054566, 3.42628, 0, 0.8156863, 1, 1, 1,
0.0864845, -0.01221873, 2.357673, 0, 0.8078431, 1, 1, 1,
0.09092014, -0.7955879, 4.361393, 0, 0.8039216, 1, 1, 1,
0.09155297, -0.5070045, 3.879568, 0, 0.7960784, 1, 1, 1,
0.0945956, 0.004188812, 0.3606468, 0, 0.7882353, 1, 1, 1,
0.09984438, -0.8232068, 4.227156, 0, 0.7843137, 1, 1, 1,
0.1020658, -2.133995, 4.287251, 0, 0.7764706, 1, 1, 1,
0.107435, 1.125293, 0.4027663, 0, 0.772549, 1, 1, 1,
0.1148344, -0.8614774, 3.470619, 0, 0.7647059, 1, 1, 1,
0.114998, 0.8201305, 0.7653909, 0, 0.7607843, 1, 1, 1,
0.1153759, 1.26315, -0.9034199, 0, 0.7529412, 1, 1, 1,
0.1164658, -0.9367073, 4.000218, 0, 0.7490196, 1, 1, 1,
0.1164887, -0.2569641, 2.99764, 0, 0.7411765, 1, 1, 1,
0.1222194, -1.470481, 4.459228, 0, 0.7372549, 1, 1, 1,
0.1253681, 1.754295, 0.1613305, 0, 0.7294118, 1, 1, 1,
0.1312488, -1.314662, 3.339583, 0, 0.7254902, 1, 1, 1,
0.1335093, -0.004463264, 1.458943, 0, 0.7176471, 1, 1, 1,
0.1398687, -1.298657, 3.404526, 0, 0.7137255, 1, 1, 1,
0.1411839, -0.2309888, 2.927461, 0, 0.7058824, 1, 1, 1,
0.1472759, 0.5062315, -1.457863, 0, 0.6980392, 1, 1, 1,
0.1500342, -0.7352922, 3.864045, 0, 0.6941177, 1, 1, 1,
0.1554927, 0.7050636, 0.7677287, 0, 0.6862745, 1, 1, 1,
0.1599361, 1.755025, -0.3062507, 0, 0.682353, 1, 1, 1,
0.1643229, -1.268734, 2.987406, 0, 0.6745098, 1, 1, 1,
0.1661331, -1.366041, 2.333965, 0, 0.6705883, 1, 1, 1,
0.1673359, -0.09251225, 1.206444, 0, 0.6627451, 1, 1, 1,
0.1674664, -0.09280332, 2.443814, 0, 0.6588235, 1, 1, 1,
0.1718131, -0.6038575, 4.379255, 0, 0.6509804, 1, 1, 1,
0.17206, -0.357475, 2.595145, 0, 0.6470588, 1, 1, 1,
0.1737564, -2.570248, 1.948328, 0, 0.6392157, 1, 1, 1,
0.1840051, 1.492621, 0.05005783, 0, 0.6352941, 1, 1, 1,
0.1877958, 0.9573592, 2.523905, 0, 0.627451, 1, 1, 1,
0.1889073, -0.8981594, 2.508099, 0, 0.6235294, 1, 1, 1,
0.1890836, 0.6458334, 1.01119, 0, 0.6156863, 1, 1, 1,
0.1942855, 0.8501425, 2.212801, 0, 0.6117647, 1, 1, 1,
0.1989971, -0.5797774, 1.978039, 0, 0.6039216, 1, 1, 1,
0.1990165, 1.524956, 0.5451451, 0, 0.5960785, 1, 1, 1,
0.2048947, -0.8358294, 3.070566, 0, 0.5921569, 1, 1, 1,
0.2063191, -0.4310507, 1.170387, 0, 0.5843138, 1, 1, 1,
0.2064399, 0.7952607, -1.355189, 0, 0.5803922, 1, 1, 1,
0.2065833, -1.375804, 2.777282, 0, 0.572549, 1, 1, 1,
0.209475, -0.8290962, 1.862394, 0, 0.5686275, 1, 1, 1,
0.2096046, -1.30476, 4.114652, 0, 0.5607843, 1, 1, 1,
0.2145912, -0.5890781, 2.632198, 0, 0.5568628, 1, 1, 1,
0.2149626, 0.217529, 0.3310944, 0, 0.5490196, 1, 1, 1,
0.2175181, 0.4721842, -0.05747333, 0, 0.5450981, 1, 1, 1,
0.2188104, -0.991009, 3.834021, 0, 0.5372549, 1, 1, 1,
0.2217555, 0.9168659, 1.367356, 0, 0.5333334, 1, 1, 1,
0.2324816, 0.3069811, 0.7523174, 0, 0.5254902, 1, 1, 1,
0.2344426, 0.5559165, 0.4683735, 0, 0.5215687, 1, 1, 1,
0.2344445, -0.6739126, 1.702377, 0, 0.5137255, 1, 1, 1,
0.2344581, -1.021497, 2.023901, 0, 0.509804, 1, 1, 1,
0.2369355, 1.764897, 0.09791411, 0, 0.5019608, 1, 1, 1,
0.2379216, -1.875284, 3.282998, 0, 0.4941176, 1, 1, 1,
0.2380243, -0.796414, 4.389589, 0, 0.4901961, 1, 1, 1,
0.2459623, -0.8500062, 4.436508, 0, 0.4823529, 1, 1, 1,
0.2486388, -0.6415853, 3.7228, 0, 0.4784314, 1, 1, 1,
0.2496361, -0.6502458, 2.240041, 0, 0.4705882, 1, 1, 1,
0.2499172, -0.1785596, 2.857873, 0, 0.4666667, 1, 1, 1,
0.2509657, -0.9975005, 2.662867, 0, 0.4588235, 1, 1, 1,
0.254095, 2.372694, 0.07877069, 0, 0.454902, 1, 1, 1,
0.2555322, 1.697516, 0.1233934, 0, 0.4470588, 1, 1, 1,
0.2586994, 1.850058, 1.707192, 0, 0.4431373, 1, 1, 1,
0.2625756, -0.1558553, 4.030987, 0, 0.4352941, 1, 1, 1,
0.2632188, -0.870162, 3.408632, 0, 0.4313726, 1, 1, 1,
0.2664725, 0.5855982, -0.3164651, 0, 0.4235294, 1, 1, 1,
0.2673203, -0.458537, 2.035873, 0, 0.4196078, 1, 1, 1,
0.2693329, 0.5497307, 0.8264365, 0, 0.4117647, 1, 1, 1,
0.2709933, -0.9045855, 3.362406, 0, 0.4078431, 1, 1, 1,
0.2713127, -0.8900186, 2.23491, 0, 0.4, 1, 1, 1,
0.2728693, -1.214324, 2.724292, 0, 0.3921569, 1, 1, 1,
0.2780753, -1.012273, 1.994515, 0, 0.3882353, 1, 1, 1,
0.2794476, 0.5341368, -0.8716886, 0, 0.3803922, 1, 1, 1,
0.2805929, -0.1219173, 2.791715, 0, 0.3764706, 1, 1, 1,
0.2809622, -0.2541912, 1.658433, 0, 0.3686275, 1, 1, 1,
0.284817, -0.09753945, 3.725448, 0, 0.3647059, 1, 1, 1,
0.2856593, 0.8930369, 0.06876721, 0, 0.3568628, 1, 1, 1,
0.2960542, -0.2942837, 2.080975, 0, 0.3529412, 1, 1, 1,
0.300843, 0.8411145, 0.8919387, 0, 0.345098, 1, 1, 1,
0.302628, 0.278617, 1.06261, 0, 0.3411765, 1, 1, 1,
0.3034647, 0.07935219, 0.6373336, 0, 0.3333333, 1, 1, 1,
0.3109385, 0.2768918, 0.5139621, 0, 0.3294118, 1, 1, 1,
0.3128294, -1.989731, 2.632886, 0, 0.3215686, 1, 1, 1,
0.3152687, 0.5862286, 1.523622, 0, 0.3176471, 1, 1, 1,
0.3172794, 0.5805123, 1.091602, 0, 0.3098039, 1, 1, 1,
0.3194086, 0.0241741, 1.99681, 0, 0.3058824, 1, 1, 1,
0.3282055, 0.1554299, 1.405015, 0, 0.2980392, 1, 1, 1,
0.3282594, 1.036653, 1.491291, 0, 0.2901961, 1, 1, 1,
0.3289647, 1.221929, 0.7519249, 0, 0.2862745, 1, 1, 1,
0.3292061, -1.5893, 4.057831, 0, 0.2784314, 1, 1, 1,
0.3368578, 1.744823, 0.2533898, 0, 0.2745098, 1, 1, 1,
0.3373323, 0.5191337, 0.07686356, 0, 0.2666667, 1, 1, 1,
0.343717, 0.8486068, -0.4721037, 0, 0.2627451, 1, 1, 1,
0.3441752, 2.137704, 0.378931, 0, 0.254902, 1, 1, 1,
0.3476081, 0.009895888, 2.553956, 0, 0.2509804, 1, 1, 1,
0.3530526, 1.57046, -0.7483688, 0, 0.2431373, 1, 1, 1,
0.353135, -0.01734999, 1.847664, 0, 0.2392157, 1, 1, 1,
0.3607405, 0.4445971, -0.2102337, 0, 0.2313726, 1, 1, 1,
0.3608778, 0.5929062, 1.319735, 0, 0.227451, 1, 1, 1,
0.3611245, 0.03502182, 2.446415, 0, 0.2196078, 1, 1, 1,
0.3632042, 1.241184, -0.3975683, 0, 0.2156863, 1, 1, 1,
0.3664922, -0.8712969, 2.136794, 0, 0.2078431, 1, 1, 1,
0.3668973, -0.6364562, 2.018833, 0, 0.2039216, 1, 1, 1,
0.3677182, 0.5728642, -0.6188264, 0, 0.1960784, 1, 1, 1,
0.3747285, 0.3166618, 0.662267, 0, 0.1882353, 1, 1, 1,
0.3756197, -1.463585, 3.278477, 0, 0.1843137, 1, 1, 1,
0.3764805, 0.474936, 0.2876288, 0, 0.1764706, 1, 1, 1,
0.3766031, 0.3976331, 1.689903, 0, 0.172549, 1, 1, 1,
0.3766411, 1.562538, 2.870921, 0, 0.1647059, 1, 1, 1,
0.3793869, -1.314095, 3.209881, 0, 0.1607843, 1, 1, 1,
0.3799887, 1.895872, 1.616336, 0, 0.1529412, 1, 1, 1,
0.3804898, -2.14202, 3.583962, 0, 0.1490196, 1, 1, 1,
0.3928214, -0.11752, 2.020652, 0, 0.1411765, 1, 1, 1,
0.3958923, -1.409908, 3.338428, 0, 0.1372549, 1, 1, 1,
0.4002832, -0.01619976, 2.623144, 0, 0.1294118, 1, 1, 1,
0.403734, -0.4080411, 2.208781, 0, 0.1254902, 1, 1, 1,
0.404248, -1.06333, 3.691359, 0, 0.1176471, 1, 1, 1,
0.4079104, -0.02007995, -1.353245, 0, 0.1137255, 1, 1, 1,
0.4162297, -0.6150659, 2.949387, 0, 0.1058824, 1, 1, 1,
0.4185461, 2.538592, 0.4066238, 0, 0.09803922, 1, 1, 1,
0.4189669, 0.7108647, -0.4106795, 0, 0.09411765, 1, 1, 1,
0.4267416, -1.250766, 3.084516, 0, 0.08627451, 1, 1, 1,
0.4297795, -0.5080505, 3.331677, 0, 0.08235294, 1, 1, 1,
0.4307558, 1.558518, 0.01306568, 0, 0.07450981, 1, 1, 1,
0.4325659, -0.1971397, 1.311944, 0, 0.07058824, 1, 1, 1,
0.4337265, -0.3888888, 0.006278017, 0, 0.0627451, 1, 1, 1,
0.4368245, -0.5786656, 3.045789, 0, 0.05882353, 1, 1, 1,
0.4407015, 0.1406595, 1.689633, 0, 0.05098039, 1, 1, 1,
0.4414485, -0.06978992, 0.2517271, 0, 0.04705882, 1, 1, 1,
0.4415818, 0.4539436, 1.231585, 0, 0.03921569, 1, 1, 1,
0.4420597, -0.2015478, 0.9745738, 0, 0.03529412, 1, 1, 1,
0.4433324, 1.021625, -0.8505471, 0, 0.02745098, 1, 1, 1,
0.4452905, 1.4597, -0.856471, 0, 0.02352941, 1, 1, 1,
0.4518518, -0.9097518, 3.381075, 0, 0.01568628, 1, 1, 1,
0.4520136, -1.591514, 3.348081, 0, 0.01176471, 1, 1, 1,
0.4534923, 0.2322784, 0.2236616, 0, 0.003921569, 1, 1, 1,
0.4550616, 1.555841, -0.3980834, 0.003921569, 0, 1, 1, 1,
0.4556477, 1.221673, 0.2910859, 0.007843138, 0, 1, 1, 1,
0.461248, 0.4075959, 1.538298, 0.01568628, 0, 1, 1, 1,
0.4657084, -0.06203034, 2.567231, 0.01960784, 0, 1, 1, 1,
0.471587, 0.005849501, 0.9910235, 0.02745098, 0, 1, 1, 1,
0.4747539, 1.308582, 0.7922006, 0.03137255, 0, 1, 1, 1,
0.4848984, 2.614107, 2.502589, 0.03921569, 0, 1, 1, 1,
0.4937999, -0.7424436, 3.142716, 0.04313726, 0, 1, 1, 1,
0.4995165, -1.220549, 3.74875, 0.05098039, 0, 1, 1, 1,
0.5037667, -0.2502116, 1.087115, 0.05490196, 0, 1, 1, 1,
0.5053051, 2.413292, 0.7592348, 0.0627451, 0, 1, 1, 1,
0.5066121, 2.460774, -0.5955045, 0.06666667, 0, 1, 1, 1,
0.508234, 1.997087, -0.9751697, 0.07450981, 0, 1, 1, 1,
0.51085, -0.02262688, 3.022308, 0.07843138, 0, 1, 1, 1,
0.5118427, -0.4893952, 2.700727, 0.08627451, 0, 1, 1, 1,
0.5133151, 0.07105606, 2.017989, 0.09019608, 0, 1, 1, 1,
0.5150921, 2.667914, 0.5209652, 0.09803922, 0, 1, 1, 1,
0.5170386, -0.3780106, 2.342557, 0.1058824, 0, 1, 1, 1,
0.5182393, 1.791983, 0.8466047, 0.1098039, 0, 1, 1, 1,
0.5198483, 1.236113, -0.2484127, 0.1176471, 0, 1, 1, 1,
0.5217115, -0.2186596, 2.164967, 0.1215686, 0, 1, 1, 1,
0.5262521, 0.7387512, 0.7878705, 0.1294118, 0, 1, 1, 1,
0.5263457, 1.051623, 1.235801, 0.1333333, 0, 1, 1, 1,
0.5292007, -0.4284231, 3.921022, 0.1411765, 0, 1, 1, 1,
0.5294631, -1.457535, 3.102878, 0.145098, 0, 1, 1, 1,
0.5298861, -0.05775027, 3.08416, 0.1529412, 0, 1, 1, 1,
0.5312287, 1.998052, 1.883302, 0.1568628, 0, 1, 1, 1,
0.5414876, -1.639452, 4.387954, 0.1647059, 0, 1, 1, 1,
0.5435206, 0.9541123, -1.213372, 0.1686275, 0, 1, 1, 1,
0.5456959, -0.4876169, 1.665409, 0.1764706, 0, 1, 1, 1,
0.5469584, -1.102946, 3.587156, 0.1803922, 0, 1, 1, 1,
0.552738, -0.5009055, 1.598431, 0.1882353, 0, 1, 1, 1,
0.552949, 1.86708, 2.342827, 0.1921569, 0, 1, 1, 1,
0.5537764, 0.7339187, -0.09353982, 0.2, 0, 1, 1, 1,
0.5577919, -0.04299938, 3.005, 0.2078431, 0, 1, 1, 1,
0.560443, 0.3150939, -1.07225, 0.2117647, 0, 1, 1, 1,
0.5610064, 0.2451333, 0.7074226, 0.2196078, 0, 1, 1, 1,
0.5689089, -0.5952995, 2.029429, 0.2235294, 0, 1, 1, 1,
0.5691029, -1.635114, 3.169181, 0.2313726, 0, 1, 1, 1,
0.5715731, -1.459445, 3.97231, 0.2352941, 0, 1, 1, 1,
0.5739932, -1.397629, 4.258545, 0.2431373, 0, 1, 1, 1,
0.5751534, 1.010172, 0.4297236, 0.2470588, 0, 1, 1, 1,
0.5770849, 1.970678, 0.4980172, 0.254902, 0, 1, 1, 1,
0.5833079, 0.9169643, 0.001006975, 0.2588235, 0, 1, 1, 1,
0.5849896, -1.088193, 2.42189, 0.2666667, 0, 1, 1, 1,
0.5880705, 0.2317287, 2.858833, 0.2705882, 0, 1, 1, 1,
0.5919212, 1.087872, -0.1372537, 0.2784314, 0, 1, 1, 1,
0.5932645, -0.4113605, 3.604156, 0.282353, 0, 1, 1, 1,
0.5986556, -0.002401385, 0.6805086, 0.2901961, 0, 1, 1, 1,
0.600225, 0.1541155, 2.916367, 0.2941177, 0, 1, 1, 1,
0.6043003, 0.413206, 1.646408, 0.3019608, 0, 1, 1, 1,
0.6106786, -0.186811, 1.911604, 0.3098039, 0, 1, 1, 1,
0.6108481, 0.5095476, 0.5693511, 0.3137255, 0, 1, 1, 1,
0.6125894, 0.2752449, 2.589077, 0.3215686, 0, 1, 1, 1,
0.6140979, -0.1075406, 1.481222, 0.3254902, 0, 1, 1, 1,
0.6159436, -0.1479051, 0.9078748, 0.3333333, 0, 1, 1, 1,
0.6161854, 0.9698918, 0.5647512, 0.3372549, 0, 1, 1, 1,
0.6206224, 0.07359484, 2.542925, 0.345098, 0, 1, 1, 1,
0.6237816, -1.03964, 1.420213, 0.3490196, 0, 1, 1, 1,
0.6262498, 0.1438869, -0.454021, 0.3568628, 0, 1, 1, 1,
0.6264924, 1.268394, 0.7502378, 0.3607843, 0, 1, 1, 1,
0.6284325, -0.5889919, 4.207361, 0.3686275, 0, 1, 1, 1,
0.6342478, -1.260946, 3.127847, 0.372549, 0, 1, 1, 1,
0.6343421, 0.1783899, 1.68267, 0.3803922, 0, 1, 1, 1,
0.6362531, -0.7752811, 2.245121, 0.3843137, 0, 1, 1, 1,
0.6397961, 0.3606961, -0.03554562, 0.3921569, 0, 1, 1, 1,
0.6451986, -0.7829588, 3.441571, 0.3960784, 0, 1, 1, 1,
0.6477697, 0.9028524, 0.01251636, 0.4039216, 0, 1, 1, 1,
0.6530521, 0.8991421, 0.4486299, 0.4117647, 0, 1, 1, 1,
0.6573331, -0.9963844, 1.553755, 0.4156863, 0, 1, 1, 1,
0.6597308, -3.319705, 3.262255, 0.4235294, 0, 1, 1, 1,
0.6598057, 0.5183534, -0.04592442, 0.427451, 0, 1, 1, 1,
0.6604812, 1.767308, 1.16541, 0.4352941, 0, 1, 1, 1,
0.6665747, 1.419773, 3.016743, 0.4392157, 0, 1, 1, 1,
0.6675798, -1.230771, 2.82218, 0.4470588, 0, 1, 1, 1,
0.6682669, 1.66331, 0.1602526, 0.4509804, 0, 1, 1, 1,
0.6719757, -0.07221892, 1.29264, 0.4588235, 0, 1, 1, 1,
0.6811725, -0.3434183, 2.098786, 0.4627451, 0, 1, 1, 1,
0.6823701, -0.4033686, 3.434837, 0.4705882, 0, 1, 1, 1,
0.6859736, -0.5650339, 2.293249, 0.4745098, 0, 1, 1, 1,
0.6898611, -0.3968651, 1.193565, 0.4823529, 0, 1, 1, 1,
0.6926495, -0.2230024, 1.814146, 0.4862745, 0, 1, 1, 1,
0.6972854, 0.2779641, 1.564816, 0.4941176, 0, 1, 1, 1,
0.697501, -1.105757, 4.888397, 0.5019608, 0, 1, 1, 1,
0.6990604, 2.12762, -0.4769489, 0.5058824, 0, 1, 1, 1,
0.7035818, 0.7165813, 0.9975824, 0.5137255, 0, 1, 1, 1,
0.7046002, -0.4897138, 3.26543, 0.5176471, 0, 1, 1, 1,
0.709549, -0.5780851, 2.342685, 0.5254902, 0, 1, 1, 1,
0.712319, 0.2853115, 1.612149, 0.5294118, 0, 1, 1, 1,
0.7157112, -0.3039107, 2.554891, 0.5372549, 0, 1, 1, 1,
0.7195462, 0.1617644, 2.973706, 0.5411765, 0, 1, 1, 1,
0.7209302, -0.6250284, 2.311553, 0.5490196, 0, 1, 1, 1,
0.7216128, 1.323991, 1.88855, 0.5529412, 0, 1, 1, 1,
0.724833, -2.468278, 3.004671, 0.5607843, 0, 1, 1, 1,
0.7258434, 0.4858386, 1.35611, 0.5647059, 0, 1, 1, 1,
0.7279316, 0.4476924, 0.06291099, 0.572549, 0, 1, 1, 1,
0.7338324, 1.460166, 0.3153851, 0.5764706, 0, 1, 1, 1,
0.7362525, -0.3293057, 2.438296, 0.5843138, 0, 1, 1, 1,
0.7382788, 1.250502, 0.3367028, 0.5882353, 0, 1, 1, 1,
0.7395039, 0.937416, 0.650567, 0.5960785, 0, 1, 1, 1,
0.7398572, -1.777026, 2.895275, 0.6039216, 0, 1, 1, 1,
0.7612432, -0.2402639, 2.010017, 0.6078432, 0, 1, 1, 1,
0.761859, -1.258542, 2.540348, 0.6156863, 0, 1, 1, 1,
0.765648, -0.8795012, 1.96049, 0.6196079, 0, 1, 1, 1,
0.7668836, -0.9738408, 3.997482, 0.627451, 0, 1, 1, 1,
0.7686254, -0.4417742, 2.69092, 0.6313726, 0, 1, 1, 1,
0.7722923, 0.4525504, 0.5226027, 0.6392157, 0, 1, 1, 1,
0.7723019, -1.887907, 3.594561, 0.6431373, 0, 1, 1, 1,
0.7763948, -0.06728874, 1.204812, 0.6509804, 0, 1, 1, 1,
0.7808051, -1.188913, 3.164588, 0.654902, 0, 1, 1, 1,
0.7840495, 0.5684736, 0.5030559, 0.6627451, 0, 1, 1, 1,
0.7940833, 0.2274505, 0.4909634, 0.6666667, 0, 1, 1, 1,
0.7990874, 1.277391, 0.9123292, 0.6745098, 0, 1, 1, 1,
0.7994598, -1.999536, 3.052565, 0.6784314, 0, 1, 1, 1,
0.8002329, 1.123168, 1.41393, 0.6862745, 0, 1, 1, 1,
0.8023774, -0.2315125, 0.6682646, 0.6901961, 0, 1, 1, 1,
0.803458, -0.172008, 0.8689251, 0.6980392, 0, 1, 1, 1,
0.8076373, 0.2622935, -0.2057882, 0.7058824, 0, 1, 1, 1,
0.8114589, 1.749229, -0.8319849, 0.7098039, 0, 1, 1, 1,
0.8126646, -1.136027, 3.724625, 0.7176471, 0, 1, 1, 1,
0.8131562, -0.854862, 3.208839, 0.7215686, 0, 1, 1, 1,
0.8134009, 0.4789833, 3.922735, 0.7294118, 0, 1, 1, 1,
0.8153793, -0.5582964, 1.367601, 0.7333333, 0, 1, 1, 1,
0.8210766, -0.8011837, 3.080769, 0.7411765, 0, 1, 1, 1,
0.8274907, -0.2631908, 1.567633, 0.7450981, 0, 1, 1, 1,
0.8279402, 1.903823, 0.7362532, 0.7529412, 0, 1, 1, 1,
0.8292292, 0.9365532, 0.8678102, 0.7568628, 0, 1, 1, 1,
0.8294286, 0.1504157, 1.565329, 0.7647059, 0, 1, 1, 1,
0.8295143, 0.07425275, 0.1975872, 0.7686275, 0, 1, 1, 1,
0.8309852, 0.6934921, 1.332408, 0.7764706, 0, 1, 1, 1,
0.8314523, 0.4208235, 2.517363, 0.7803922, 0, 1, 1, 1,
0.8438428, -2.894496, 4.535855, 0.7882353, 0, 1, 1, 1,
0.8474227, 1.818413, 0.7850266, 0.7921569, 0, 1, 1, 1,
0.8507156, -0.2236107, 2.065692, 0.8, 0, 1, 1, 1,
0.8520443, -0.441275, 1.255705, 0.8078431, 0, 1, 1, 1,
0.8546796, 0.02466926, 0.3638388, 0.8117647, 0, 1, 1, 1,
0.8549036, 0.6414713, 0.4991809, 0.8196079, 0, 1, 1, 1,
0.8569022, 0.2823038, 0.7785319, 0.8235294, 0, 1, 1, 1,
0.8591874, 0.3837492, 1.871927, 0.8313726, 0, 1, 1, 1,
0.8600313, -0.1646978, 1.485872, 0.8352941, 0, 1, 1, 1,
0.8638022, 0.4668194, 2.219038, 0.8431373, 0, 1, 1, 1,
0.8733183, 0.9621468, 0.1183087, 0.8470588, 0, 1, 1, 1,
0.878861, 0.09060486, 0.389889, 0.854902, 0, 1, 1, 1,
0.8826742, 0.007748396, 2.007329, 0.8588235, 0, 1, 1, 1,
0.883387, -0.9316987, 1.848168, 0.8666667, 0, 1, 1, 1,
0.885314, -1.369832, 3.096345, 0.8705882, 0, 1, 1, 1,
0.8888338, 1.431417, 0.6814021, 0.8784314, 0, 1, 1, 1,
0.8901481, -1.471062, 0.3319196, 0.8823529, 0, 1, 1, 1,
0.8931888, -0.702882, 3.42622, 0.8901961, 0, 1, 1, 1,
0.8972571, -0.1198948, 2.194298, 0.8941177, 0, 1, 1, 1,
0.9028111, 0.6122895, -1.338334, 0.9019608, 0, 1, 1, 1,
0.9041021, 0.1609088, 2.544881, 0.9098039, 0, 1, 1, 1,
0.9045942, 0.715413, 0.2143, 0.9137255, 0, 1, 1, 1,
0.9127135, 0.7817022, 1.803512, 0.9215686, 0, 1, 1, 1,
0.9259217, 0.002321991, -0.6052855, 0.9254902, 0, 1, 1, 1,
0.9330636, 1.21187, 0.2208095, 0.9333333, 0, 1, 1, 1,
0.9361047, 0.3484931, 0.6896674, 0.9372549, 0, 1, 1, 1,
0.9369963, 2.013915, -1.276105, 0.945098, 0, 1, 1, 1,
0.940221, 0.3817574, 1.399804, 0.9490196, 0, 1, 1, 1,
0.9429141, 0.1559627, 2.305625, 0.9568627, 0, 1, 1, 1,
0.9448478, -0.5164124, 2.104073, 0.9607843, 0, 1, 1, 1,
0.9456838, -0.3001253, 1.442795, 0.9686275, 0, 1, 1, 1,
0.9537894, -0.2289981, 2.208604, 0.972549, 0, 1, 1, 1,
0.9602579, -0.2495002, 1.560015, 0.9803922, 0, 1, 1, 1,
0.9653824, 0.3002905, 1.281235, 0.9843137, 0, 1, 1, 1,
0.9776807, 0.814185, 1.557521, 0.9921569, 0, 1, 1, 1,
0.9790516, 0.8751383, 0.8971743, 0.9960784, 0, 1, 1, 1,
0.979277, 0.284586, 1.837028, 1, 0, 0.9960784, 1, 1,
0.9848354, 0.6631638, 0.8523614, 1, 0, 0.9882353, 1, 1,
0.9898669, 0.428958, 0.9404753, 1, 0, 0.9843137, 1, 1,
0.9900798, 0.07088345, 1.464428, 1, 0, 0.9764706, 1, 1,
0.9924538, 0.4261692, -0.5447735, 1, 0, 0.972549, 1, 1,
0.9960731, 0.5649011, 4.113908, 1, 0, 0.9647059, 1, 1,
0.9970499, 0.04284365, 2.538632, 1, 0, 0.9607843, 1, 1,
1.001523, -0.708944, 2.702756, 1, 0, 0.9529412, 1, 1,
1.006068, -0.1707477, 1.281404, 1, 0, 0.9490196, 1, 1,
1.008463, 0.2471515, -0.2460509, 1, 0, 0.9411765, 1, 1,
1.01663, -0.6895953, 0.5084203, 1, 0, 0.9372549, 1, 1,
1.022854, 0.2414643, -0.3961089, 1, 0, 0.9294118, 1, 1,
1.024209, -1.197055, 1.103107, 1, 0, 0.9254902, 1, 1,
1.026853, -0.6710095, 3.647776, 1, 0, 0.9176471, 1, 1,
1.026943, -1.736462, 2.55424, 1, 0, 0.9137255, 1, 1,
1.027091, 0.8919411, 2.555262, 1, 0, 0.9058824, 1, 1,
1.040124, -0.9663332, 0.7495515, 1, 0, 0.9019608, 1, 1,
1.042624, -0.6725597, 2.332451, 1, 0, 0.8941177, 1, 1,
1.053243, -1.458525, 3.017903, 1, 0, 0.8862745, 1, 1,
1.054615, 0.7401797, 1.453319, 1, 0, 0.8823529, 1, 1,
1.064986, -1.116809, 2.77401, 1, 0, 0.8745098, 1, 1,
1.068295, 0.2827945, 0.7184179, 1, 0, 0.8705882, 1, 1,
1.07135, -0.9322883, 1.234187, 1, 0, 0.8627451, 1, 1,
1.07614, -0.6854066, 2.143971, 1, 0, 0.8588235, 1, 1,
1.08812, -1.273964, 2.452152, 1, 0, 0.8509804, 1, 1,
1.093788, 0.3332727, 1.746071, 1, 0, 0.8470588, 1, 1,
1.107808, 1.177569, 0.9033862, 1, 0, 0.8392157, 1, 1,
1.11305, 0.4111487, 2.605022, 1, 0, 0.8352941, 1, 1,
1.124943, -0.9241143, 3.899637, 1, 0, 0.827451, 1, 1,
1.126053, 1.647317, 0.08080774, 1, 0, 0.8235294, 1, 1,
1.139914, -0.6972525, 1.970244, 1, 0, 0.8156863, 1, 1,
1.144615, 0.7773402, 0.7479001, 1, 0, 0.8117647, 1, 1,
1.14779, 0.7762362, 1.287883, 1, 0, 0.8039216, 1, 1,
1.148783, -0.7359658, 3.931696, 1, 0, 0.7960784, 1, 1,
1.155884, -0.8628986, 1.109914, 1, 0, 0.7921569, 1, 1,
1.156404, -0.5989374, 3.002562, 1, 0, 0.7843137, 1, 1,
1.15916, -1.206612, 4.193039, 1, 0, 0.7803922, 1, 1,
1.162185, 0.6719616, -0.3733479, 1, 0, 0.772549, 1, 1,
1.163789, 1.716052, 1.221044, 1, 0, 0.7686275, 1, 1,
1.17305, -2.485537, 2.8319, 1, 0, 0.7607843, 1, 1,
1.173166, 0.295189, 0.4991529, 1, 0, 0.7568628, 1, 1,
1.176923, 1.987871, -1.938085, 1, 0, 0.7490196, 1, 1,
1.186916, 1.208552, 0.5093889, 1, 0, 0.7450981, 1, 1,
1.187582, -0.5509672, 2.474127, 1, 0, 0.7372549, 1, 1,
1.197044, 0.3684432, 2.036713, 1, 0, 0.7333333, 1, 1,
1.198011, 1.427168, 0.1132144, 1, 0, 0.7254902, 1, 1,
1.202735, -0.7980875, 0.7876458, 1, 0, 0.7215686, 1, 1,
1.221535, -0.4074583, 4.550175, 1, 0, 0.7137255, 1, 1,
1.224151, 0.1387241, 1.586382, 1, 0, 0.7098039, 1, 1,
1.228709, 1.323131, 0.930612, 1, 0, 0.7019608, 1, 1,
1.229635, 1.223698, 0.4954582, 1, 0, 0.6941177, 1, 1,
1.235995, -1.158366, 3.874202, 1, 0, 0.6901961, 1, 1,
1.240424, -0.100968, 1.277304, 1, 0, 0.682353, 1, 1,
1.251882, 0.4426808, 1.114167, 1, 0, 0.6784314, 1, 1,
1.276223, -0.1715392, 0.7303212, 1, 0, 0.6705883, 1, 1,
1.277932, -0.6567, 2.11352, 1, 0, 0.6666667, 1, 1,
1.286696, -0.2598885, 0.9705946, 1, 0, 0.6588235, 1, 1,
1.287853, -0.6908507, 4.37999, 1, 0, 0.654902, 1, 1,
1.287912, -0.1005369, -0.6788917, 1, 0, 0.6470588, 1, 1,
1.289755, -0.5173315, 3.115531, 1, 0, 0.6431373, 1, 1,
1.301352, 0.00472995, 3.32917, 1, 0, 0.6352941, 1, 1,
1.304137, 0.9329761, 1.082026, 1, 0, 0.6313726, 1, 1,
1.30522, -1.934095, 3.231203, 1, 0, 0.6235294, 1, 1,
1.318714, -1.072384, 1.45571, 1, 0, 0.6196079, 1, 1,
1.326661, -0.5785944, 2.993336, 1, 0, 0.6117647, 1, 1,
1.32852, 0.03020087, 1.862909, 1, 0, 0.6078432, 1, 1,
1.332536, -0.1555163, 1.228385, 1, 0, 0.6, 1, 1,
1.335856, 0.2102362, 1.662393, 1, 0, 0.5921569, 1, 1,
1.343232, 0.03218193, 1.221619, 1, 0, 0.5882353, 1, 1,
1.349774, 0.5942632, -0.3830042, 1, 0, 0.5803922, 1, 1,
1.354847, 0.2517251, 1.673016, 1, 0, 0.5764706, 1, 1,
1.356316, -1.622525, 2.06338, 1, 0, 0.5686275, 1, 1,
1.380268, 0.0327124, 2.02658, 1, 0, 0.5647059, 1, 1,
1.388724, -0.1889655, 3.056342, 1, 0, 0.5568628, 1, 1,
1.390985, 0.9387901, 0.9558236, 1, 0, 0.5529412, 1, 1,
1.408586, -0.4310254, 0.8152637, 1, 0, 0.5450981, 1, 1,
1.414205, 0.1001731, 0.1333177, 1, 0, 0.5411765, 1, 1,
1.414557, -0.3598012, 1.782541, 1, 0, 0.5333334, 1, 1,
1.421619, 1.457378, 1.428049, 1, 0, 0.5294118, 1, 1,
1.433441, -0.03021618, 2.819829, 1, 0, 0.5215687, 1, 1,
1.450812, -0.4284295, 2.242222, 1, 0, 0.5176471, 1, 1,
1.451826, -0.5044314, 0.7504742, 1, 0, 0.509804, 1, 1,
1.45684, 0.1674649, 0.8564681, 1, 0, 0.5058824, 1, 1,
1.466788, 0.7756671, 2.456262, 1, 0, 0.4980392, 1, 1,
1.467139, 0.5051895, 0.2048857, 1, 0, 0.4901961, 1, 1,
1.470515, 0.3068944, 2.292565, 1, 0, 0.4862745, 1, 1,
1.470894, 1.329054, 0.1474112, 1, 0, 0.4784314, 1, 1,
1.474702, 1.508198, 0.7652511, 1, 0, 0.4745098, 1, 1,
1.480521, -0.2487182, 1.639784, 1, 0, 0.4666667, 1, 1,
1.483823, 0.1262124, 1.394091, 1, 0, 0.4627451, 1, 1,
1.484235, 0.7240024, 0.2161576, 1, 0, 0.454902, 1, 1,
1.484704, -0.6270185, 3.274114, 1, 0, 0.4509804, 1, 1,
1.486272, -1.197897, 2.611009, 1, 0, 0.4431373, 1, 1,
1.496516, -1.002029, 3.098255, 1, 0, 0.4392157, 1, 1,
1.498331, -0.6101294, 1.615912, 1, 0, 0.4313726, 1, 1,
1.501053, 0.603563, 1.229499, 1, 0, 0.427451, 1, 1,
1.50268, -1.878652, 3.745293, 1, 0, 0.4196078, 1, 1,
1.503329, -0.3347767, 1.412774, 1, 0, 0.4156863, 1, 1,
1.505956, -0.1215655, 2.867865, 1, 0, 0.4078431, 1, 1,
1.511569, 0.6322783, 1.127687, 1, 0, 0.4039216, 1, 1,
1.52173, 1.857898, 1.648983, 1, 0, 0.3960784, 1, 1,
1.551885, -0.1918519, 2.469871, 1, 0, 0.3882353, 1, 1,
1.558367, 1.333818, 0.9793903, 1, 0, 0.3843137, 1, 1,
1.581546, 2.937697, 1.080889, 1, 0, 0.3764706, 1, 1,
1.592832, 1.018387, 1.82569, 1, 0, 0.372549, 1, 1,
1.601253, -0.4039111, -0.1654307, 1, 0, 0.3647059, 1, 1,
1.623154, -0.4965809, 0.9593339, 1, 0, 0.3607843, 1, 1,
1.62989, -0.8959217, 1.755568, 1, 0, 0.3529412, 1, 1,
1.631095, -0.08905006, 1.667338, 1, 0, 0.3490196, 1, 1,
1.633855, -0.5542222, 2.331883, 1, 0, 0.3411765, 1, 1,
1.635432, -2.22758, 2.968592, 1, 0, 0.3372549, 1, 1,
1.635886, -0.2038503, 1.664214, 1, 0, 0.3294118, 1, 1,
1.637676, 0.3342935, 0.2623482, 1, 0, 0.3254902, 1, 1,
1.658037, 0.1615613, 2.055107, 1, 0, 0.3176471, 1, 1,
1.681205, 0.4289029, 1.225672, 1, 0, 0.3137255, 1, 1,
1.698612, -0.7501754, 2.511813, 1, 0, 0.3058824, 1, 1,
1.701015, 1.009399, 0.5122509, 1, 0, 0.2980392, 1, 1,
1.704663, 1.30763, 1.973002, 1, 0, 0.2941177, 1, 1,
1.709095, -0.06561625, 1.125305, 1, 0, 0.2862745, 1, 1,
1.714489, 0.5372732, 0.04926232, 1, 0, 0.282353, 1, 1,
1.753945, -1.89593, 1.33497, 1, 0, 0.2745098, 1, 1,
1.801109, 0.9257692, 1.976763, 1, 0, 0.2705882, 1, 1,
1.805043, -0.2996075, 0.2471294, 1, 0, 0.2627451, 1, 1,
1.811091, 0.1646419, 0.7417825, 1, 0, 0.2588235, 1, 1,
1.814582, -0.3198495, 0.6575744, 1, 0, 0.2509804, 1, 1,
1.845185, 1.000958, -0.1521422, 1, 0, 0.2470588, 1, 1,
1.845701, 1.691507, 0.1870244, 1, 0, 0.2392157, 1, 1,
1.87076, 0.6923572, 0.7605422, 1, 0, 0.2352941, 1, 1,
1.880813, 0.5009345, 1.449924, 1, 0, 0.227451, 1, 1,
1.882226, -0.511796, 1.015382, 1, 0, 0.2235294, 1, 1,
1.900018, -0.8791071, 1.661661, 1, 0, 0.2156863, 1, 1,
1.919457, 0.02615926, -0.2381954, 1, 0, 0.2117647, 1, 1,
1.943807, -1.550961, 2.232857, 1, 0, 0.2039216, 1, 1,
1.967893, 0.6685609, 0.633902, 1, 0, 0.1960784, 1, 1,
1.990502, -0.1220625, 2.3061, 1, 0, 0.1921569, 1, 1,
2.000034, -0.1882989, 1.925773, 1, 0, 0.1843137, 1, 1,
2.012368, 0.7678737, 2.663043, 1, 0, 0.1803922, 1, 1,
2.017353, -0.5687086, 2.637477, 1, 0, 0.172549, 1, 1,
2.054814, -1.199621, 3.296029, 1, 0, 0.1686275, 1, 1,
2.055554, -1.854578, 0.901942, 1, 0, 0.1607843, 1, 1,
2.05619, 0.09494741, 0.5287471, 1, 0, 0.1568628, 1, 1,
2.061305, -1.052355, 0.4670321, 1, 0, 0.1490196, 1, 1,
2.07792, 0.01053851, 2.029566, 1, 0, 0.145098, 1, 1,
2.087245, -1.06011, 0.3713903, 1, 0, 0.1372549, 1, 1,
2.118084, 0.704661, 2.127767, 1, 0, 0.1333333, 1, 1,
2.141672, -1.489925, 2.15521, 1, 0, 0.1254902, 1, 1,
2.162233, 0.1544033, 0.8995768, 1, 0, 0.1215686, 1, 1,
2.165533, 0.254144, 1.693945, 1, 0, 0.1137255, 1, 1,
2.171729, -0.2551301, 0.9478939, 1, 0, 0.1098039, 1, 1,
2.176898, 1.359161, -0.8132815, 1, 0, 0.1019608, 1, 1,
2.236207, -0.9351857, 0.7876064, 1, 0, 0.09411765, 1, 1,
2.254123, -0.1652936, 1.933378, 1, 0, 0.09019608, 1, 1,
2.263137, -0.471095, 2.7298, 1, 0, 0.08235294, 1, 1,
2.339476, 0.02049151, 3.455615, 1, 0, 0.07843138, 1, 1,
2.375906, -0.6450385, 1.512572, 1, 0, 0.07058824, 1, 1,
2.378961, 0.535832, 1.743334, 1, 0, 0.06666667, 1, 1,
2.423303, -1.088851, 2.48883, 1, 0, 0.05882353, 1, 1,
2.426155, -0.9625636, 2.345, 1, 0, 0.05490196, 1, 1,
2.456172, -1.506511, 0.9574764, 1, 0, 0.04705882, 1, 1,
2.599, -1.410973, 0.5288612, 1, 0, 0.04313726, 1, 1,
2.60045, -0.3481426, 1.350035, 1, 0, 0.03529412, 1, 1,
2.637988, 0.163347, 2.252169, 1, 0, 0.03137255, 1, 1,
2.767924, 0.1177829, 1.687849, 1, 0, 0.02352941, 1, 1,
2.78596, 0.009181627, 2.630681, 1, 0, 0.01960784, 1, 1,
2.843261, -2.342155, 1.40727, 1, 0, 0.01176471, 1, 1,
3.089409, -1.075442, 1.124157, 1, 0, 0.007843138, 1, 1
>>>>>>> origin/master
]);
this.values[25] = v;
this.normLoc[25] = gl.getAttribLocation(this.prog[25], "aNorm");
this.mvMatLoc[25] = gl.getUniformLocation(this.prog[25],"mvMatrix");
this.prMatLoc[25] = gl.getUniformLocation(this.prog[25],"prMatrix");
this.normMatLoc[25] = gl.getUniformLocation(this.prog[25],"normMatrix");
gl.enable(gl.DEPTH_TEST);
gl.depthFunc(gl.LEQUAL);
gl.clearDepth(1.0);
gl.clearColor(1,1,1,1);
var drag  = 0;
this.drawScene = function() {
gl.depthMask(true);
gl.disable(gl.BLEND);
gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);
<<<<<<< HEAD
// ***** subscene 19 ****
gl.viewport(0, 0, 672, 480);
gl.scissor(0, 0, 672, 480);
gl.clearColor(1, 1, 1, 1);
gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);
var radius = 9.917812;
var distance = 34.83589;
var t = tan(fov[19]*PI/360);
var near = distance - radius;
var far = distance + radius;
var hlen = t*near;
var aspect = 1.4;
prMatrix.makeIdentity();
if (aspect > 1)
prMatrix.frustum(-hlen*aspect*zoom[19], hlen*aspect*zoom[19], 
-hlen*zoom[19], hlen*zoom[19], near, far);
else  
prMatrix.frustum(-hlen*zoom[19], hlen*zoom[19], 
-hlen*zoom[19]/aspect, hlen*zoom[19]/aspect, 
near, far);
mvMatrix.makeIdentity();
mvMatrix.translate( 0.2338338, 0.2030982, -0.2998068 );
mvMatrix.scale( 1, 1, 1 );   
mvMatrix.multRight( userMatrix[19] );
mvMatrix.translate(-0, -0, -34.83589);
normMatrix.makeIdentity();
normMatrix.scale( 1, 1, 1 );   
normMatrix.multRight( userMatrix[19] );
=======
this.drawFns[19].call(this, 19)
gl.flush ();
}
>>>>>>> origin/master
// ****** spheres object 25 *******
this.drawFns[25] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, sphereBuf);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, sphereIbuf);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniformMatrix4fv( this.normMatLoc[id], false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 12,  0);
gl.enableVertexAttribArray(this.normLoc[id] );
gl.vertexAttribPointer(this.normLoc[id],  3, gl.FLOAT, false, 12,  0);
gl.disableVertexAttribArray( colLoc );
var sphereNorm = new CanvasMatrix4();
sphereNorm.scale(1, 1, 1);
sphereNorm.multRight(normMatrix);
gl.uniformMatrix4fv( this.normMatLoc[id], false, new Float32Array(sphereNorm.getAsArray()) );
for (var i = 0; i < 1000; i++) {
var sphereMV = new CanvasMatrix4();
var baseofs = i*8
var ofs = baseofs + 7;	       
var scale = this.values[id][ofs];
sphereMV.scale(1*scale, 1*scale, 1*scale);
sphereMV.translate(this.values[id][baseofs], 
this.values[id][baseofs+1], 
this.values[id][baseofs+2]);
sphereMV.multRight(this.mvMatrix);
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(sphereMV.getAsArray()) );
ofs = baseofs + 3;       
gl.vertexAttrib4f( colLoc, this.values[id][ofs], 
this.values[id][ofs+1], 
this.values[id][ofs+2],
this.values[id][ofs+3] );
gl.drawElements(gl.TRIANGLES, 384, gl.UNSIGNED_SHORT, 0);
}
}
// ***** subscene 19 ****
this.drawFns[19] = function(id) {
this.vp = this.viewport[id];
gl.viewport(this.vp[0], this.vp[1], this.vp[2], this.vp[3]);
gl.scissor(this.vp[0], this.vp[1], this.vp[2], this.vp[3]);
gl.clearColor(1, 1, 1, 1);
gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);
this.prMatrix.makeIdentity();
var radius = 8.983856;
var distance = 31.55541;
var t = tan(this.FOV[19]*PI/360);
var near = distance - radius;
var far = distance + radius;
var hlen = t*near;
var aspect = this.vp[2]/this.vp[3];
var z = this.zoom[19];
if (aspect > 1) 
this.prMatrix.frustum(-hlen*aspect*z, hlen*aspect*z, 
-hlen*z, hlen*z, near, far);
else  
this.prMatrix.frustum(-hlen*z, hlen*z, 
-hlen*z/aspect, hlen*z/aspect, 
near, far);
this.mvMatrix.makeIdentity();
this.mvMatrix.translate( -0.1868515, 0.03826404, -0.1315305 );
this.mvMatrix.scale( 1, 1, 1 );   
this.mvMatrix.multRight( testgl2rgl.userMatrix[19] );
this.mvMatrix.translate(-0, -0, -31.55541);
normMatrix.makeIdentity();
normMatrix.scale( 1, 1, 1 );   
normMatrix.multRight( testgl2rgl.userMatrix[19] );
var clipids = this.clipplanes[id];
if (clipids.length > 0) {
this.invMatrix = new CanvasMatrix4(this.mvMatrix);
this.invMatrix.invert();
for (var i = 0; i < this.clipplanes[id].length; i++) 
this.drawFns[clipids[i]].call(this, clipids[i]);
}
var subids = this.opaque[id];
for (var i = 0; i < subids.length; i++) 
this.drawFns[subids[i]].call(this, subids[i], clipids);
subids = this.transparent[id];
if (subids.length > 0) {
gl.depthMask(false);
gl.blendFuncSeparate(gl.SRC_ALPHA, gl.ONE_MINUS_SRC_ALPHA,
gl.ONE, gl.ONE);
gl.enable(gl.BLEND);
for (var i = 0; i < subids.length; i++) 
this.drawFns[subids[i]].call(this, subids[i], clipids);
}
subids = this.subscenes[id];
for (var i = 0; i < subids.length; i++)
this.drawFns[subids[i]].call(this, subids[i]);
}
this.drawScene();
var vpx0 = {
19: 0
};
var vpy0 = {
19: 0
};
var vpWidths = {
19: 672
};
var vpHeights = {
19: 480
};
var activeModel = {
19: 19
};
var activeProjection = {
19: 19
};
testgl2rgl.listeners = {
19: [ 19 ]
};
var whichSubscene = function(coords){
if (0 <= coords.x && coords.x <= 672 && 0 <= coords.y && coords.y <= 480) return(19);
return(19);
}
var translateCoords = function(subsceneid, coords){
return {x:coords.x - vpx0[subsceneid], y:coords.y - vpy0[subsceneid]};
}
var vlen = function(v) {
return sqrt(v[0]*v[0] + v[1]*v[1] + v[2]*v[2])
}
var xprod = function(a, b) {
return [a[1]*b[2] - a[2]*b[1],
a[2]*b[0] - a[0]*b[2],
a[0]*b[1] - a[1]*b[0]];
}
var screenToVector = function(x, y) {
var width = vpWidths[activeSubscene];
var height = vpHeights[activeSubscene];
var radius = max(width, height)/2.0;
var cx = width/2.0;
var cy = height/2.0;
var px = (x-cx)/radius;
var py = (y-cy)/radius;
var plen = sqrt(px*px+py*py);
if (plen > 1.e-6) { 
px = px/plen;
py = py/plen;
}
var angle = (SQRT2 - plen)/SQRT2*PI/2;
var z = sin(angle);
var zlen = sqrt(1.0 - z*z);
px = px * zlen;
py = py * zlen;
return [px, py, z];
}
var rotBase;
var trackballdown = function(x,y) {
rotBase = screenToVector(x, y);
var l = testgl2rgl.listeners[activeModel[activeSubscene]];
saveMat = new Object();
for (var i = 0; i < l.length; i++) 
saveMat[l[i]] = new CanvasMatrix4(testgl2rgl.userMatrix[l[i]]);
}
var trackballmove = function(x,y) {
var rotCurrent = screenToVector(x,y);
var dot = rotBase[0]*rotCurrent[0] + 
rotBase[1]*rotCurrent[1] + 
rotBase[2]*rotCurrent[2];
var angle = acos( dot/vlen(rotBase)/vlen(rotCurrent) )*180./PI;
var axis = xprod(rotBase, rotCurrent);
var l = testgl2rgl.listeners[activeModel[activeSubscene]];
for (i = 0; i < l.length; i++) {
testgl2rgl.userMatrix[l[i]].load(saveMat[l[i]]);
testgl2rgl.userMatrix[l[i]].rotate(angle, axis[0], axis[1], axis[2]);
}
testgl2rgl.drawScene();
}
var trackballend = 0;
var y0zoom = 0;
var zoom0 = 0;
var zoomdown = function(x, y) {
y0zoom = y;
zoom0 = new Object();
l = testgl2rgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
zoom0[l[i]] = log(testgl2rgl.zoom[l[i]]);
}
var zoommove = function(x, y) {
l = testgl2rgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
testgl2rgl.zoom[l[i]] = exp(zoom0[l[i]] + (y-y0zoom)/height);
testgl2rgl.drawScene();
}
var zoomend = 0;
var y0fov = 0;
var fov0 = 0;
var fovdown = function(x, y) {
y0fov = y;
fov0 = new Object();
l = testgl2rgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
fov0[l[i]] = testgl2rgl.FOV[l[i]];
}
var fovmove = function(x, y) {
l = testgl2rgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
testgl2rgl.FOV[l[i]] = max(1, min(179, fov0[l[i]] + 180*(y-y0fov)/height));
testgl2rgl.drawScene();
}
var fovend = 0;
var mousedown = [trackballdown, zoomdown, fovdown];
var mousemove = [trackballmove, zoommove, fovmove];
var mouseend = [trackballend, zoomend, fovend];
function relMouseCoords(event){
var totalOffsetX = 0;
var totalOffsetY = 0;
var currentElement = canvas;
do{
totalOffsetX += currentElement.offsetLeft;
totalOffsetY += currentElement.offsetTop;
currentElement = currentElement.offsetParent;
}
while(currentElement)
var canvasX = event.pageX - totalOffsetX;
var canvasY = event.pageY - totalOffsetY;
return {x:canvasX, y:canvasY}
}
canvas.onmousedown = function ( ev ){
if (!ev.which) // Use w3c defns in preference to MS
switch (ev.button) {
case 0: ev.which = 1; break;
case 1: 
case 4: ev.which = 2; break;
case 2: ev.which = 3;
}
drag = ev.which;
var f = mousedown[drag-1];
if (f) {
var coords = relMouseCoords(ev);
coords.y = height-coords.y;
activeSubscene = whichSubscene(coords);
coords = translateCoords(activeSubscene, coords);
f(coords.x, coords.y); 
ev.preventDefault();
}
}    
canvas.onmouseup = function ( ev ){	
if ( drag == 0 ) return;
var f = mouseend[drag-1];
if (f) 
f();
drag = 0;
}
canvas.onmouseout = canvas.onmouseup;
canvas.onmousemove = function ( ev ){
if ( drag == 0 ) return;
var f = mousemove[drag-1];
if (f) {
var coords = relMouseCoords(ev);
coords.y = height - coords.y;
coords = translateCoords(activeSubscene, coords);
f(coords.x, coords.y);
}
}
var wheelHandler = function(ev) {
var del = 1.1;
if (ev.shiftKey) del = 1.01;
var ds = ((ev.detail || ev.wheelDelta) > 0) ? del : (1 / del);
l = testgl2rgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
testgl2rgl.zoom[l[i]] *= ds;
testgl2rgl.drawScene();
ev.preventDefault();
};
canvas.addEventListener("DOMMouseScroll", wheelHandler, false);
canvas.addEventListener("mousewheel", wheelHandler, false);
}
</script>
<canvas id="testgl2canvas" class="rglWebGL" width="1" height="1"></canvas> 
<p id="testgl2debug">
You must enable Javascript to view this page properly.</p>
<script>testgl2rgl.start();</script>
