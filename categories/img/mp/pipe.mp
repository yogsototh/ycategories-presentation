
vardef inmouth(expr pos) =
    fullcircle xscaled 0.6 scaled 2u shifted pos
enddef;
vardef outmouth(expr pos) =
    (subpath (0,4) of fullcircle rotated -90) xscaled 0.6 scaled 2u shifted pos
enddef;
vardef hiddenoutmouth(expr pos) =
    (subpath (4,8) of fullcircle rotated -90) xscaled 0.6 scaled 2u shifted pos
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
    draw (subpath (4,8) of fullcircle rotated -90) scaled 2u shifted pos;
    draw outmouth(pos);
    draw hiddenoutmouth(pos) dashed evenly;
enddef;

def drawbegintubelabel(expr pos,l) =
    drawbegintube(pos);
    label(l,pos);
enddef;

drawbegintubelabel((0,gu),btex $37$ etex);
drawtubelabel(origin,btex $+$ etex);
drawtwotubeslabel((0,-gu),(0,-2gu),(gu,-1.5gu),btex $+$ etex);
