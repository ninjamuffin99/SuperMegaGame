package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	private var p1:Player;
	private var p2:Player;
	
	
	override public function create():Void
	{
		p1 = new Player(240, 240);
		add(p1);
		
		FlxG.camera.bgColor = FlxColor.WHITE;
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
