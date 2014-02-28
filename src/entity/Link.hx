
package entity;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.util.FlxPoint;

class Link extends FlxSprite
{
	var LINK_SPEED = 48;

	public function new() {
		super();

		this.x = 84;
		this.y = 84;

		this.loadGraphic("assets/link_sprite.png", true, false, 16, 16);
		this.animation.add("walk_left", [0, 1], 4, true);
		this.animation.add("walk_down", [2, 3], 4, true);
		this.animation.add("walk_up", [4, 5], 4, true);
		this.animation.add("walk_right", [6, 7], 4, true);
		this.animation.play("walk_down");
		this.facing = FlxObject.DOWN;

		this.width = 8;
		this.height = 8;
		this.offset.x = 4;
		this.offset.y = 8;
	}

	override public function update() {
		this.velocity = new FlxPoint(0,0);

		if(FlxG.keyboard.pressed("UP")) {
			this.velocity.y = -LINK_SPEED;
			this.facing = FlxObject.UP;
			this.animation.play("walk_up");
		}

		if(FlxG.keyboard.pressed("DOWN")) {
			this.velocity.y = LINK_SPEED;
			this.facing = FlxObject.DOWN;
			this.animation.play("walk_down");
		}

		if(FlxG.keyboard.pressed("LEFT")) {
			this.velocity.x = -LINK_SPEED;
			this.facing = FlxObject.LEFT;
			this.animation.play("walk_left");
		}

		if(FlxG.keyboard.pressed("RIGHT")) {
			this.velocity.x = LINK_SPEED;
			this.facing = FlxObject.RIGHT;
			this.animation.play("walk_right");
		}

		if(!FlxG.keyboard.pressed("UP", "DOWN", "LEFT", "RIGHT")) {
			this.animation.pause();
		}

		super.update();
	}
}