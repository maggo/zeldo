package;


import flash.events.Event;
import flash.display.Sprite;


class Main extends Sprite {
	
	
	public function new () {
		super ();
		
		this.addEventListener(Event.ADDED_TO_STAGE, this.addedToStage);
	}

    public function addedToStage(e:Event) {
        var game = new ZeldoGame();
        stage.addChild(game);
    }
	
}