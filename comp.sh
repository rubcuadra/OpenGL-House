# Línea de compilación recortada de moy del ejemplo de GLM 0.3.2
# Si es Linux:
gcc -DHAVE_CONFIG_H -g -O2 -c *.c
# Si es Mac comentar la anterior línea y descomentar la siguiente:
#gcc -DHAVE_CONFIG_H -g -O2 -I/usr/local/include -c *.c

ar cru libglm.a glmimg_devil.o glmimg.o glmimg_sdl.o glm.o glmimg_jpg.o glmimg_png.o glmimg_sim.o glm_util.o

# Si es Linux:
gcc -o glmLoad  glutobj.o libglm.a  -lGL -lGLU -lglut -ljpeg -lpng -lIL -lm
# Si es Mac comentar la anterior línea y descomentar la siguiente:
#gcc -o glmLoad  glutobj.o libglm.a -L/usr/local/lib -framework OpenGL -framework GLUT -ljpeg -lpng -lIL -lm
