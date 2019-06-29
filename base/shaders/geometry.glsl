layout(triangles) in;

#ifdef WIREFRAME_MODE
layout(line_strip, max_vertices = 4) out;
#else
layout(triangle_strip, max_vertices = 3) out;
#endif

// out values to fragment

#ifndef WIREFRAME_MODE 
in vec3 vNormal[];

#ifdef EXPLICIT_COLOR
in vec4 vColor[];
#endif

flat in int vMaterialIndex[];
flat out int materialIndex;
out vec3 fNormal;

#ifdef EXPLICIT_COLOR
out vec4 Color;
#endif
#endif

#ifndef WIREFRAME_MODE
vec3 barycentric[3] = vec3[](vec3(1,0,0), vec3(0,1,0), vec3(0,0,1));
out vec3 Barycentric;
#endif

void main()
{
    for (int i = 0; i < 3; ++i) {
        gl_Position = gl_in[i].gl_Position;
#ifndef WIREFRAME_MODE
        fNormal = vNormal[i];
        materialIndex = vMaterialIndex[i];
        Barycentric = barycentric[i];
#ifdef EXPLICIT_COLOR
        Color = vColor[i];
#endif
#endif
        EmitVertex();
    }

#ifdef WIREFRAME_MODE
    // final vertex loop. 
    gl_Position = gl_in[0].gl_Position;
    EmitVertex();
#endif
    EndPrimitive();
}