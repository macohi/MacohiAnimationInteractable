import anims.DislocateAShoulder;
import flixel.FlxG;
import macohi.overrides.MState;

class InitState extends MState
{
	override public function create()
	{
		super.create();

		FlxG.switchState(DislocateAShoulder.new);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
