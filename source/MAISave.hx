import macohi.save.SaveField;
import macohi.save.Save;

class MAISave extends Save
{
	public var medals:SaveField<Array<String>>;

	override public function new()
	{
		super();

		SAVE_VERSION = 1;
		init('MacohiAnimationInteractable', null);
	}

	override function initFields()
	{
		super.initFields();

		medals = new SaveField<Array<String>>('medals', [], 'Medals');
	}
}
