 Bacteria[] ball;
 void setup()   
 {     
 	size(500,500);  
 	ball = new Bacteria[60];
 	for(int i = 0; i < ball.length; i++){
 		ball[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	background(130,130,130);  
 	for(int i = 0; i < ball.length; i++){
 		ball[i].show();
 		ball[i].walk();
 	
 	if(dist(ball[i].myX,ball[i].myY,mouseX,mouseY) < 30){
 		ball[i].myColor = color((int)(Math.random()*255)+1, (int)(Math.random()*255)+1, (int)(Math.random()*255)+1);
 	}
 }
 }  
 class Bacteria    
 {     
 	int myX, myY, myColor;
 	Bacteria(){
 	myX = (int)(Math.random() * 100) + 250;
 	myY = (int)(Math.random() * 100) + 250;
 	myColor = color((int)(Math.random()*255)+1, (int)(Math.random()*255)+1, (int)(Math.random()*255)+1);
 	}
 	void walk(){
 		if(mouseX > myX){
 			myX = myX + (int)(Math.random() * 5)-1;
 		}
 		else{
 			myX = myX + (int)(Math.random() * 5)-4;
 		}
 		if(mouseY > 250){
 			myY = myY + (int)(Math.random() * 5)-1;
 		}
 		else{
 			myY = myY + (int)(Math.random() * 5)-4;
 	}   
 }   
 	void show(){
 		fill(myColor);
 		ellipse(myX,myY,30,30);
 	}
 }
 