#!/usr/local/bin/fish

gcc -DHAVE_CONFIG_H -g -O2 -I/usr/local/include -c *.c
ar cru libglm.a glmimg_devil.o glmimg.o glmimg_sdl.o glm.o glmimg_jpg.o glmimg_png.o glmimg_sim.o glm_util.o
gcc -o glmLoad  glutobj.o libglm.a -L/usr/local/lib -framework OpenGL -framework GLUT -ljpeg -lpng -lIL -lm

./glmLoad 