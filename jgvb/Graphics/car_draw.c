/*Write a program in "C" to design a car. The car should have window, door, wheels.
Use line, half circle, full circle to design the car.*/

#include<stdlib.h>
#include<math.h>
#include<conio.h>
#include<stdio.h>
#include<graphics.h>
int c=0;
int dda(int x1,int y1,int x2,int y2,int x[],int y[]);
int round1(float x)
{
	int x1=x,s=0;
	float t=x;
	if(x<0)
		s=1;
	t=t-x1;
	if(t<0.5)
		return x1;
	else if(t>=0.5&&s)
		  return x1-1;
	return x1+1;
}
int dda(int x1,int y1,int x2,int y2,int x[],int y[])
{
	float delx,dely,xx,yy;
	int dx,dy,dx1,dy1,length,i;
	dx=x2-x1;
	dy=y2-y1;
	if(dx<0)
		dx1=-dx;
	else dx1=dx;
	if(dy<0)
		dy1=-dy;
	else dy1=dy;
	 if(dx1>dy1)
		length=dx1;
	 else length=dy1;

	delx=(float)dx/length;
	dely=(float)dy/length;
	xx=x1;
	yy=y1;
		for(i=0;i<length;i++)
		{
			x[i]=ceil(xx);
			y[i]=ceil(yy);
			xx=xx+delx;
			yy=yy+dely;
		}
		return length;
}
void line_draw(int x1,int y1,int x2,int y2,int c)
{
	int x[700],y[700],i,n;
	n=dda(x1,y1,x2,y2,x,y);
	for(i=0;i<n;i++)
	{
		putpixel(320+x[i],240-y[i],c);
		delay(0);
	}
}
int draw_circle_bresenham(int r,int x[1000],int y[1000])
{

	int xk=0,yk=r,n=0;
	float d,pk;
	while(yk>=0)
	{
		x[n]=xk;
		y[n]=yk;
		n++;
		d=(xk+1)*(xk+1)+(yk-1)*(yk-1) -r*r;
		if(d<0)
		{
			pk=(xk+1)*(xk+1)+(yk-0.5)*(yk-0.5)-r*r;
			if(pk<=0)
			{
				xk=xk+1;
				yk=yk+0;
			}
			else{
			xk=xk+1;
			yk=yk-1;
			    }
		}
		else if(d>0)
		{
			pk=(xk+0.5)*(xk+0.5)+(yk-1)*(yk-1)-r*r;
			if(pk<=0)
			{
				xk=xk+1;
				yk=yk-1;
			}
			else{
			yk=yk-1;
			xk=xk*1;
			    }
		}
		else
		{
			xk=xk+1;
			yk=yk+1;
		}

	}
	return n;
}
void draw_circle(int r,int xc,int yc)
{
	int i,x[1000],y[1000],n;
	n=draw_circle_bresenham(r,x,y);
	for(i=0;i<n;i++)
	{
		putpixel((320+xc+x[i]),(240-yc-y[i]),2);
		putpixel((320+xc+x[i]),(240-yc+y[i]),1);
		putpixel((320+xc-x[i]),(240-yc+y[i]),10);
		putpixel((320+xc-x[i]),(240-yc-y[i]),12);
		delay(1);
	}
}
void draw_car()
{
	int i,r=40;
	//draw body
	line_draw(-200,-100,-200,100,8);
	line_draw(-200,100,200,100,8);
	line_draw(200,100,200,-100,8);
	line_draw(-200,-100,-180,-100,8);
	for(i=0;i<=15;i++)
		draw_circle(r--,-140,-100);
	line_draw(-100,-100,100,-100,8);
	r=41;
	for(i=0;i<=15;i++)
		draw_circle(r--,140,-100);
	line_draw(180,-100,200,-100,8);
	//Door
	line_draw(-60,-80,-60,80,5);
	line_draw(-60,80,60,80,5);
	line_draw(60,80,60,-80,5);
	line_draw(60,-80,-60,-80,5);
	//window1
	line_draw(-150,20,-150,60,8);
	line_draw(-150,60,-110,60,8);
	line_draw(-110,60,-110,20,8);
	line_draw(-110,20,-150,20,8);
	//window2
	line_draw(150,20,150,60,6);
	line_draw(150,60,110,60,6);
	line_draw(110,60,110,20,6);
	line_draw(110,20,150,20,6);
}
int main()
{
	int r,x1,y1,i;
	int gd=DETECT,gm;
	initgraph(&gd,&gm,"C://TurboC3//BGI");
	clrscr();
	setbkcolor(7);
	draw_car();
	getch();
	closegraph();
	return 0;
}