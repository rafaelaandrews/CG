from OpenGL.GLUT import *
from OpenGL.GLU import *
from OpenGL.GL import *
from math import *
from random import *
from numpy import *

x = 0
y = 0
z = 0
#matriz = []
pontos =[]
r = 10
i = 0
    
   

#print(matriz)
#quit()
#cores = ( (1,0,0),(1,1,0),(0,1,0),(0,1,1),(0,0,1),(1,0,1),(0.5,1,1),(1,0,0.5) )
#corBase = ((1,1,1))
#corTopo = ((0.5,0.5,0.5))

def rev():
    glBegin(GL_TRIANGLES)
    glColor3f(1,1,1)
    for p in matriz:  
        for o in arange(-0.5, 0.5, 0.02):
            for p in arange(0, 2, 0.02):
                x = r*cos(pi*o)*cos(pi*p)
                y = r*sin(pi*o)
                z = r*cos(pi*o)*sin(pi*p)
                pontos.insert(i, (x,y,z))
                i+=i
        
    glEnd()

def abacaxi():
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT)
    glRotatef(1,1,1,1)
    rev()
    glutSwapBuffers()
 
def timer(i):
    glutPostRedisplay()
    glutTimerFunc(50,timer,1)

# PROGRAMA PRINCIPAL
glutInit(sys.argv)
glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGBA | GLUT_DEPTH | GLUT_MULTISAMPLE)
glutInitWindowSize(800,800)
glutCreateWindow("Rev")
glutDisplayFunc(abacaxi)
glEnable(GL_MULTISAMPLE)
glEnable(GL_DEPTH_TEST)
glClearColor(0.,0.,0.,1.)
gluPerspective(100,800.0/800.0,0.1,50.0)
glTranslatef(0.0,0.0,-20)
glRotatef(45,1,1,1)
glutTimerFunc(50,timer,1)
glutMainLoop()