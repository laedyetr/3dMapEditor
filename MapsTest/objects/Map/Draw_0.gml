matrix_set(matrix_world,matrix_build(0,0,0,0,0,0,1,1,-1));
vertex_submit(global.MapModel,pr_trianglelist,sprite_get_texture(global.Texture,0));
matrix_set(matrix_world,matrix_build_identity());
