% solarized color scheme
color baseZeroThree, baseZeroTwo, baseZeroOne, baseZeroZero
      , baseZero, baseOne, baseTwo, baseThree, yellow, orange
      , red, magenta, violet, blue, cyan, green;
baseZeroThree  :=(0.0               ,0.168627450980392,0.211764705882353);
baseZeroTwo    :=(0.0274509803921569,0.211764705882353,0.258823529411765);
baseZeroOne    :=(0.345098039215686 ,0.431372549019608,0.458823529411765);
baseZeroZero   :=(0.396078431372549 ,0.482352941176471,0.513725490196078);
baseZero       :=(0.513725490196078 ,0.580392156862745,0.588235294117647);
baseOne        :=(0.576470588235294 ,0.631372549019608,0.631372549019608);
baseTwo        :=(0.933333333333333 ,0.909803921568627,0.835294117647059);
baseThree      :=(0.992156862745098 ,0.964705882352941,0.890196078431372);
yellow         :=(0.709803921568627 ,0.537254901960784,0.0);
orange         :=(0.796078431372549 ,0.294117647058824,0.0862745098039216);
red          :=(0.862745098039216 ,0.196078431372549,0.184313725490196);
magenta        :=(0.827450980392157 ,0.211764705882353,0.509803921568627);
violet         :=(0.423529411764706 ,0.443137254901961,0.768627450980392);
blue         :=(0.149019607843137 ,0.545098039215686,0.823529411764706);
cyan           :=(0.164705882352941 ,0.631372549019608,0.596078431372549);
green        :=(0.52156862745098  ,0.6              ,0.0);


%%%%%%%%%%%%%%%%%%%%
% Automata drawing %
%%%%%%%%%%%%%%%%%%%%
u:=.5cm; % unity
gu:=5u;  % distance between states
nodesize := 1.2u; %size of a node

% return the middle of a path
vardef midpoint(expr p)=
    pair r;
    r:=point 1/2length(p) of p;
    r
enddef;

% shorten a path of length d at the beginning and the end
vardef shorten(expr p,d) =
    path q,bcirc,ecirc;
    bcirc := fullcircle scaled d shifted point 0 of p;
    ecirc := fullcircle scaled d shifted point length(p) of p;
    q := p cutbefore bcirc cutafter ecirc;
    q
enddef;

% Return a rounded box around top left and bottom right point.
vardef block(expr tl,br) =
    path p;
    numeric d,shift;
    d := 1/3u;
    shift := 1.2u;
    pair topleft,bottomright;
    topleft := tl shifted (-shift,2shift);
    bottomright := br shifted (shift,-.5shift);
    pair tll,tlt,trt,trr,brr,brb,blb,bll;
    tll := topleft shifted (-d,0);
    tlt := topleft shifted (0,d);
    trt := (xpart bottomright, ypart topleft) shifted (0,d);
    trr := (xpart bottomright, ypart topleft) shifted (d,0);
    brr := bottomright shifted (d,0);
    brb := bottomright shifted (0,-d);
    blb := (xpart topleft, ypart bottomright) shifted (0,-d);
    bll := (xpart topleft, ypart bottomright) shifted (-d,0);
    p:=tlt---trt..trr---brr..brb---blb..bll---tll..cycle;
    p
enddef;

% b being the path of the block
vardef blockLabelPosition(expr b)=
    pos := point 0.5 of b;
    pos
enddef;

% draw a block with the right math-mode tex label on top of it
def drawblock(expr topleftpoint, bottomrightpoint, l)=
    path b;
    b:=block(topleftpoint,bottomrightpoint);
    pair pos;
    pos := blockLabelPosition(b);
    draw b withcolor base01;
    label.top(TEX("$"&l&"$"),pos);
enddef;

% -- Generic private functions

% return the edge between points A and B.
% out angle from A is inan
% in angle to B is outan
% nodesize is the size of the node
vardef edgeFull(expr posA,posB,inan,outan) =
    path sub;
    path s;
    s := posA {dir inan} .. {dir outan} posB ;
    sub := shorten(s,nodesize);
    sub
enddef;

% return a picture of the label l for edge e
vardef edgeLabel(expr e,l) =
    picture ret;
    pair mid;
    mid := midpoint(e);
    numeric an;
    an := angle (direction 1/2length(e) of e);
    picture lab;
    pair height,width;
    lab:=thelabel(TEX("$"&l&"$"),origin);
    height:=(0,ypart (ulcorner lab - llcorner lab));
    width:=(xpart (urcorner lab - ulcorner lab),0);
    if (an>-35) and (an<35):
        ret:=lab shifted height rotated an shifted mid;
    elseif (an>145) or (an<-145):
        ret:=lab shifted height rotated (an+180) shifted mid;
    elseif (an>75) and (an<120):
        ret:=lab shifted mid shifted -width;
    elseif (an>-120) and (an<-75):
        ret:=lab shifted mid shifted width;
    else:
        ret:=lab shifted mid shifted height;
    fi;
    ret
enddef;



% --- LABELED GRAPHS ---
% return the edge between points A and B.
% out angle from A is an + angle from A to B
vardef edgeAngle(expr posA,posB,an) =
    path res;
    d := angle(posB-posA);
    res := edgeFull(posA,posB,d+an,d-an);
    res
enddef;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                              %%
%%           LOOPS              %%
%%                              %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% return a loop
vardef loopFull(expr a,b,an) =
    pair ba,ea;
    path circ,p,s;
    p:=a{1,1}..b..{1,-1}cycle;
    circ:= fullcircle scaled nodesize shifted a;
    ba = circ intersectionpoint (subpath (0,1) of p);
    ea = circ intersectionpoint (subpath (1,2) of p);
    s:= ba{1,1}..b..{1,-1}ea;
    s rotated an
enddef;

vardef loopPoint(expr a,b) =
    loopFull(a,b,0)
enddef;

vardef loopAngle(expr a,an) =
    loopFull(a,a shifted (0,nodesize),an)
enddef;

vardef loop(expr a) =
    loopFull(a,a shifted (0,nodesize),0)
enddef;

% return the direct edge between A and B
vardef edge(expr posA,posB) =
    numeric an;
    path sub;
    if (posA = posB):
        sub := loop(posA);
    else:
        an := angle(posB-posA);
        sub := edgeFull(posA,posB,an,an);
    fi
    sub
enddef;

def drawLoopPoint(expr a,b,l) =
    path s;
    s:=loopPoint(a,b);
    drawarrow s;
    label.top(TEX("$"&l&"$"),midpoint(s));
enddef;
def drawLoop(expr a,l) =
    path s;
    s:=loop(a);
    drawarrow s;
    label.top(TEX("$"&l&"$"),midpoint(s));
enddef;

def drawstate(expr pos) =
    draw pos withpen pencircle scaled 4bp;
enddef;

% draw some state with some label insize
def drawState(expr pos,l) =
    % Draw the circle
    draw fullcircle scaled u shifted pos;

    % Draw the label with the right size
    picture lab,reslab;
    numeric height,width;
    numeric size;
    lab=thelabel(TEX("$"&l&"$"),pos);
    height:=ypart (ulcorner lab - llcorner lab);
    width :=xpart (urcorner lab - ulcorner lab);
    size := sqrt(height*height + width*width);
    if size>u:
        reslab:=lab scaled (u/size);
    else:
        reslab:=lab;
    fi
    draw reslab;
enddef;

% draw an edge
def drawEdgeFull(expr posA,posB,l,inan,outan) =
    path sub;
    sub := edgeFull(posA,posB,inan,outan);
    drawarrow sub;
    draw edgeLabel(sub,l);
enddef;

def drawEdgeAngle(expr posA,posB,l,inan) =
    path sub;
    sub := edgeAngle(posA,posB,inan);
    drawarrow sub;
    draw edgeLabel(sub,l);
enddef;

def drawEdge(expr posA,posB,l) =
    path sub;
    sub := edge(posA,posB);
    drawarrow sub;
    draw edgeLabel(sub,l);
enddef;

prologues:=3;

verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

% TEX macro is short enough to be copied
string preverbatimtex_, postverbatimtex_;

vardef TEXPRE text s =  preverbatimtex_ := s; enddef;

vardef TEXPOST text s =  postverbatimtex_ := s; enddef;

vardef TEX primary s =
  if known preverbatimtex_:
    write "verbatimtex "&preverbatimtex_&" etex" to "mptextmp.mp";
  fi
  write "btex "&s&" etex" to "mptextmp.mp";
  if known postverbatimtex_:
    write "verbatimtex "&postverbatimtex_&" etex" to "mptextmp.mp";
  fi
  write EOF to "mptextmp.mp";
  scantokens "input mptextmp"
enddef;

TEXPRE("\documentclass{minimal}\begin{document}");
TEXPOST("\end{document}");
