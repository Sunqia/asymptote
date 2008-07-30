import three;

settings.outformat="pdf";

string viewpoint="{-23.611555099487305 8.015114784240723 7.206217288970947}{0.8244763016700745 -0.563306450843811 0.0540805384516716}{35.62760630478586}{17.392765783664785}{}";

//viewpoint=getstring("viewpoint",viewpoint);
currentprojection=perspective(viewpoint);

triple[][][] P={{
    {(-1.6,0,1.875),(-1.6,-0.3,1.875),(-1.5,-0.3,2.1),(-1.5,0,2.1)},
    {(-2.3,0,1.875),(-2.3,-0.3,1.875),(-2.5,-0.3,2.1),(-2.5,0,2.1)},
    {(-2.7,0,1.875),(-2.7,-0.3,1.875),(-3,-0.3,2.1),(-3,0,2.1)},
    {(-2.7,0,1.65),(-2.7,-0.3,1.65),(-3,-0.3,1.65),(-3,0,1.65)}
  },{
    {(-2.7,0,1.65),(-2.7,-0.3,1.65),(-3,-0.3,1.65),(-3,0,1.65)},
    {(-2.7,0,1.425),(-2.7,-0.3,1.425),(-3,-0.3,1.2),(-3,0,1.2)},
    {(-2.5,0,0.975),(-2.5,-0.3,0.975),(-2.65,-0.3,0.7275),(-2.65,0,0.7275)},
    {(-2,0,0.75),(-2,-0.3,0.75),(-1.9,-0.3,0.45),(-1.9,0,0.45)}
  },{
    {(-2.7,0,1.65),(-2.7,0.3,1.65),(-3,0.3,1.65),(-3,0,1.65)},
    {(-2.7,0,1.875),(-2.7,0.3,1.875),(-3,0.3,2.1),(-3,0,2.1)},
    {(-2.3,0,1.875),(-2.3,0.3,1.875),(-2.5,0.3,2.1),(-2.5,0,2.1)},
    {(-1.6,0,1.875),(-1.6,0.3,1.875),(-1.5,0.3,2.1),(-1.5,0,2.1)}
  },{
    {(-2,0,0.75),(-2,0.3,0.75),(-1.9,0.3,0.45),(-1.9,0,0.45)},
    {(-2.5,0,0.975),(-2.5,0.3,0.975),(-2.65,0.3,0.7275),(-2.65,0,0.7275)},
    {(-2.7,0,1.425),(-2.7,0.3,1.425),(-3,0.3,1.2),(-3,0,1.2)},
    {(-2.7,0,1.65),(-2.7,0.3,1.65),(-3,0.3,1.65),(-3,0,1.65)}
  }};

picture pic;
size(pic,15cm);
size3(pic,10cm);
draw(pic,surface(P),blue);

add(embed(pic,"label"),(0,0),N);
label(cameralink("label"),(0,0),10S,fontsize(24pt));
