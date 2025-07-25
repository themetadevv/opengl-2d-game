#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 aTextureCoords;

out vec2 sprite_texture_coords;

uniform mat4 projection_matrix;
uniform mat4 model_matrix;

void main() {
	gl_Position = projection_matrix * model_matrix * vec4(aPos, 1.0f);
	sprite_texture_coords = aTextureCoords;
}
