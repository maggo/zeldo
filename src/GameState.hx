package;

import entity.Link;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import map.OverworldMap;

class GameState extends FlxState {
	var player:Link;
	var map:OverworldMap;

    override public function create():Void {
        trace("state created");

       	map = new OverworldMap();
        this.add(map);
        
        player = new Link();
        this.add(player);
    }

    override public function update() {
    	super.update();
    	
    	FlxG.collide(player, map);
    }
}