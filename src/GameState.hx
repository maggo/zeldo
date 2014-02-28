package;

import entity.Link;
import flixel.FlxSprite;
import flixel.FlxState;

class GameState extends FlxState {
    override public function create():Void {
        trace("state created");
        var bg:FlxSprite = new FlxSprite(0,0,"assets/background.png");
        add(bg);
        
        var link:Link = new Link();
        this.add(link);
    }
}