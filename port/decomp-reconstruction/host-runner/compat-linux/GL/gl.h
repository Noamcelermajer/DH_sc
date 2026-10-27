/* Linux host runner build only (port addition): libtess's glu.h includes <GL/gl.h>, which this host has no package for.
 * The tessellator needs only the GL scalar types and the primitive-mode enums below (same role as android-compat/GL/gl.h). */
#ifndef DH2_LINUX_COMPAT_GL_GL_H
#define DH2_LINUX_COMPAT_GL_GL_H
typedef unsigned int GLenum;
typedef unsigned char GLboolean;
typedef unsigned int GLbitfield;
typedef void GLvoid;
typedef signed char GLbyte;
typedef short GLshort;
typedef int GLint;
typedef unsigned char GLubyte;
typedef unsigned short GLushort;
typedef unsigned int GLuint;
typedef int GLsizei;
typedef float GLfloat;
typedef float GLclampf;
typedef double GLdouble;
typedef double GLclampd;
#define GL_FALSE 0
#define GL_TRUE 1
#define GL_LINE_LOOP 0x0002
#define GL_TRIANGLES 0x0004
#define GL_TRIANGLE_STRIP 0x0005
#define GL_TRIANGLE_FAN 0x0006
#define GLAPI extern
#define GLAPIENTRY
#define APIENTRY
#endif
