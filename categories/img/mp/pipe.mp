
vardef inmouthsize(expr pos,size) =
    fullcircle xscaled 0.6 scaled size shifted pos
enddef;
vardef outmouthsize(expr pos,size) =
    (subpath (0,4) of fullcircle rotated -90) xscaled 0.6 scaled size shifted pos
enddef;
vardef hiddenoutmouthsize(expr pos,size) =
    (subpath (4,8) of fullcircle rotated -90) xscaled 0.6 scaled size shifted pos
enddef;
vardef inmouth(expr pos) =
    inmouthsize(pos,2u)
enddef;
vardef outmouth(expr pos) =
    outmouthsize(pos,2u)
enddef;
vardef hiddenoutmouth(expr pos) =
    hiddenoutmouthsize(pos,2u)
enddef;
def drawoutmouth(expr pos) =
    draw outmouth(pos);
    draw hiddenoutmouth(pos) dashed evely;
enddef;

def drawtube(expr pos) =
    begingroup;
    save midin,midout;
    pair midin,midout;
    midin := pos;
    midout := pos shifted (gu,0);
    drawoutmouth(midin);
    drawoutmouth(midout);

    save topin,topout,botin,botout;
    pair topin,topout,botin,botout;
    topin=pos shifted (0,u);
    topout=topin shifted (gu,0);
    botin=pos shifted (0,-u);
    botout=botin shifted (gu,0);
    draw topin -- topout;
    draw botin -- botout;
    endgroup;
enddef;
def drawtubelabel(expr pos,l) =
    drawtube(pos);
    label(l,pos shifted (.5gu,0));
enddef;
def drawtwotubes(expr posintop,posinbot,posout) =
    begingroup;
    draw outmouth(posintop);
    draw hiddenoutmouth(posintop) dashed evenly;
    draw outmouth(posinbot);
    draw hiddenoutmouth(posinbot) dashed evenly;
    draw outmouth(posout);
    draw hiddenoutmouth(posout) dashed evenly;

    save intopt,intopb,inbott,inbotb,outt,outb;
    pair intopt,intopb,inbott,inbotb,outt,outb;
    intopt=posintop shifted (0,u);
    intopb=posintop shifted (0,-u);
    inbott=posinbot shifted (0,u);
    inbotb=posinbot shifted (0,-u);
    outt=posout shifted (0,u);
    outb=posout shifted (0,-u);

    draw intopt{right} .. {right}outt;
    draw intopb{right} .. {left}inbott;
    draw inbotb{right} .. {right}outb;

    endgroup;
enddef;
def drawtwotubeslabel(expr ptop,pbot,pout,l) =
    begingroup;
    drawtwotubes(ptop,pbot,pout);
    save mid;
    pair mid;
    mid = 1/4ptop+1/4pbot+1/2pout;
    label(l,mid);
    endgroup;
enddef;
def drawbegintube (expr pos) =
    draw (subpath (4,8) of fullcircle rotated -90) scaled 2u shifted pos shifted (-2u,0);
    draw (pos shifted (-2u,u)){right}..{right}(pos shifted (0,u));
    draw (pos shifted (-2u,-u)){right}..{right}(pos shifted (0,-u));
    draw outmouth(pos);
    draw hiddenoutmouth(pos) dashed evenly;
enddef;

def drawbegintubelabel(expr pos,l) =
    drawbegintube(pos);
    label(l,pos shifted (-1.5u,0));
enddef;

def drawtube(expr pos) =
    begingroup;
    save midin,midout;
    pair midin,midout;
    midin := pos;
    midout := pos shifted (gu,0);
    draw outmouth(midin);
    draw hiddenoutmouth(midin) dashed evenly;
    draw outmouth(midout);
    draw hiddenoutmouth(midout) dashed evenly;

    save topin,topout,botin,botout;
    pair topin,topout,botin,botout;
    topin=pos shifted (0,u);
    topout=topin shifted (gu,0);
    botin=pos shifted (0,-u);
    botout=botin shifted (gu,0);
    draw topin -- topout;
    draw botin -- botout;
    endgroup;
enddef;
def drawtubelabel(expr pos,l) =
    drawtube(pos);
    label(l,pos shifted (.5gu,0));
enddef;

pair pos;
pos:=(gu,gu);
drawbegintubelabel(pos shifted (-gu,.5gu),btex $37$ etex);
drawbegintubelabel(pos shifted (-gu,-.5gu),btex $\mathtt{"foo"}$ etex);
drawtwotubeslabel(pos shifted (0,.5gu), pos shifted (0,-.5gu), pos shifted (gu,0),btex $+$ etex);

z0=origin;
drawbegintubelabel(z0,btex $37$ etex);
drawtwotubeslabel(z0, z0 shifted (0,-gu), z0 shifted (gu,-0.5gu),btex $+$ etex);

drawtubelabel(z0 shifted (2gu,-.5gu),btex $37+$ etex);

