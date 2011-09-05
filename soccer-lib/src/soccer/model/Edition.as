package soccer.model
{
	import mx.collections.ArrayCollection;

	public class Edition
	{
		public var description : String;
		public var teams : ArrayCollection;//Team
		public var rule : Rule;
		public var phases : ArrayCollection;//Phase
	}
}