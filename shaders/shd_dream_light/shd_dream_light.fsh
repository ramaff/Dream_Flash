//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

varying vec2 pos;
uniform vec2 u_pos;

const float zz = 1.0;

void main()
{
    //vec2 dis = 5 * (pos - u_pos);
	
	//float str = 1.0 / (sqrt((dis.x*dis.x) + (dis.y*dis.y) + (zz*zz)) - zz);
	
    //gl_FragColor = vec4(vec3(str),1.0);
}
