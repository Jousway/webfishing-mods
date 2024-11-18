shader_type spatial;
uniform sampler2D tex : hint_albedo;
uniform float strength = 0.75;

void fragment()
{
	vec4 texColour = texture(tex, UV);

	float luminance = dot(texColour.rgb, vec3(0.2126, 0.7152, 0.0722));
	
	float alpha = strength - luminance; 
	
	//ALBEDO = texColour.rgb;
	ALBEDO = vec3(0,0,0); // lets make it pure black.
	ALPHA =  alpha;
}