package;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.util.FlxColor;

/**
 * ...
 * @author 
 */
class Player extends Interactable 
{

	private var speed:Float = 100;
	
	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y);
		
		var tex = FlxAtlasFrames.fromSpriteSheetPacker(AssetPaths.ryanSheet__png, AssetPaths.ryanSheet__txt);
		frames = tex;
		animation.addByPrefix("walk", "Timeline 1_", 12);
		animation.play("walk");
		
		setFacingFlip(FlxObject.LEFT, false, false);
		setFacingFlip(FlxObject.RIGHT, true, false);
		
		drag.x = 500;
	}
	
	override public function update(elapsed:Float):Void 
	{
		controls();
		
		super.update(elapsed);
	}
	
	private function controls():Void
	{
		if (FlxG.keys.pressed.A)
		{
			velocity.x = -speed;
			facing = FlxObject.LEFT;
		}
		if (FlxG.keys.pressed.D)
		{
			velocity.x = speed;
			facing = FlxObject.RIGHT;
		}
		
	}
	
}