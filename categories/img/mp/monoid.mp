pair A,B,C,D,E,F;
A:=(0,0); B:=(0,u); C:=(0,2u);
D:=(0,3u); E:=(0,4u); F:=(0,6u);

drawloop(A,B,btex $\varepsilon$ etex);
drawloop(A,C,btex $a$ etex);
drawloop(A,D,btex $b$ etex);
drawloop(A,E,btex $ab$ etex);
drawloop(A,F,btex $\omega$ etex);
draw (0,4.8u)--(0,5.8u) dashed withdots;
draw A withpen pencircle scaled 4bp;
