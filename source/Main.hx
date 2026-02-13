package;

import macohi.funkin.koya.backend.AssetPaths;
import flixel.FlxGame;
import openfl.display.Sprite;

class Main extends Sprite
{
	public function new()
	{
		super();
		addChild(new FlxGame(0, 0, PlayState));

		AssetPaths.setCurrentLevel('main');
		AssetPaths.soundExt = 'wav';
	}
}
