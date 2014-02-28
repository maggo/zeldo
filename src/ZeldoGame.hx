package;

import flixel.FlxG;
import flixel.FlxGame;

class ZeldoGame extends FlxGame {
    public function new () {
        super(160, 128, GameState, 3, 60, 60);
        FlxG.mouse.useSystemCursor = true;
    }
}