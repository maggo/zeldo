package;

import entity.Link;
import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import map.OverworldMap;

class GameState extends FlxState {
    var player:Link;
    var map:OverworldMap;

    override public function create():Void {
        map = new OverworldMap();
        this.add(map);
        
        player = new Link();
        this.add(player);

        FlxG.camera.follow(player, FlxCamera.STYLE_SCREEN_BY_SCREEN);
    }

    override public function update() {
        super.update();

        FlxG.collide(player, map);
    }
}