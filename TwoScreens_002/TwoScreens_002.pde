// First test using Daniel Shiffman's Most Pixels Ever framework
// see this tutorial for more info:
// github.com/shiffman/Most-Pixels-Ever-Processing/wiki/Processing-Tutorial

// Jonas Margraf
// jmargraf@berklee.edu

// remember to start the server from the command line first!
// 	java -jar mpeServer-2.0.2.jar -verbose -framerate30 -screens2

import mpe.client.*;

TCPClient client;

float x, y;

void setup() {
	client = new TCPClient(this, "mpe_config2.xml");
	size(client.getLWidth(), client.getLHeight());
	resetEvent(client);
	client.start();
	randomSeed(1000);
}

public void resetEvent(TCPClient c) {
	noStroke();
	x = -50;
	y = height/2;
}

void draw() {
}

void frameEvent(TCPClient c) {
	background(255);
	// background(0, 0, random(255));
	fill(255, 0, 0, 150);
	ellipse(x, y, 150, 150);

	

	// x = (x + 10 + sin(x)) % (client.getMWidth() + 50);
 // 	y = (y + 10 + sin(y)) % (client.getMHeight() - 50);
	// x += 5;
}
