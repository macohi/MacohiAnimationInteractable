import macohi.save.Save;

class MAISave extends Save
{
	override public function new()
	{
		super();

		version.set(1);
		init('MacohiAnimationInteractable', null);
	}
}
