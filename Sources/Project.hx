package;

import kha.Color;
import kha.Framebuffer;
import kha.Scheduler;
import kha.System;

class Project {
	public function new() {
		System.notifyOnRender(render);
		Scheduler.addTimeTask(update, 0, 1 / 60);
	}

	function update(): Void {
		
	}

	function render(framebuffer: Framebuffer): Void {
		var w = System.windowWidth() / 2;
		var h = System.windowHeight() / 2;
		var g = framebuffer.g2;
		g.begin();
		g.color = Color.Red;
		g.fillRect(0, 0, w, h);
		g.color = Color.Green;
		g.fillRect(w, 0, w, h);
		g.color = Color.Blue;
		g.fillRect(0, h, w, h);
		g.color = Color.Yellow;
		g.fillRect(w, h, w, h);
		g.end();
	}
}
