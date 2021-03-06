package map;

import flash.utils.Object;
import flixel.FlxG;
import flixel.group.FlxGroup;
import flixel.tile.FlxTilemap;
import flixel.util.FlxStringUtil;
import haxe.Json;
import openfl.Assets;

class OverworldMap extends FlxGroup
{
    public function new() {
        super();

        var rawMapData:Object = Json.parse(Assets.getText("assets/maps/overworld.json"));

        for (i in 0...rawMapData.layers.length) {
            var layer:Object = rawMapData.layers[i];
            var map:FlxTilemap = new FlxTilemap();
            map.loadMap(FlxStringUtil.arrayToCSV(layer.data, layer.width), "assets/tileset.png", 16, 16, FlxTilemap.OFF, 1, 1, 1);
            map.immovable = true;

            if(layer.name != "collider") {
                map.solid = false;
            }

            this.add(map);
        }
    }
}