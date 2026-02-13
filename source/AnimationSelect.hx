import flixel.FlxG;
import macohi.funkin.koya.frontend.scenes.menustates.OptionsMenuState;

class AnimationSelect extends OptionsMenuState
{
	override public function new()
	{
		super();
		this.atlasText = false;
	}

	override function controlsMoveVertical()
	{
		super.controlsMoveVertical();

		if (FlxG.keys.anyJustReleased([W, UP]))
			select(-1);
		if (FlxG.keys.anyJustReleased([S, DOWN]))
			select(1);
	}

	override function controlsOther() {
		super.controlsOther();

		if (FlxG.keys.anyJustReleased([ENTER]))
			acceptFunction();
		
		// if (FlxG.keys.anyJustReleased([ESCAPE]))
			// acceptFunction();
	}
}
