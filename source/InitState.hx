import macohi.funkin.koya.backend.plugins.Cursor;
import macohi.funkin.MegaVars;
import flixel.FlxSprite;
import macohi.debugging.CrashHandler;
import macohi.debugging.CustomTrace;
import haxe.Log;
import macohi.funkin.koya.backend.AssetPaths;
import flixel.FlxG;
import macohi.overrides.MState;

class InitState extends MState
{
	override public function create()
	{
		super.create();

		Log.trace = CustomTrace.newTrace;

		CrashHandler.initalize('', 'MAI_', '', 'MacohiAnimationInteractable');

		AssetPaths.setCurrentLevel('main');
		AssetPaths.soundExt = 'wav';

		FlxSprite.defaultAntialiasing = true;

		FlxG.plugins.addPlugin(new Cursor());

		MegaVars.VCR_LIBRARY = 'main';

		MegaVars.SOUND_MENU_BACK = '';
		MegaVars.SOUND_MENU_CONFIRM = '';
		MegaVars.SOUND_MENU_SCROLL = '';

		MegaVars.KOYA_MENUBG_PINK = function(lib)
		{
			return '';
		}
		MegaVars.KOYA_MENUBG_DESAT = function(lib)
		{
			return '';
		}

		FlxG.switchState(AnimationSelect.new);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
