package soccer.model
{
	import mx.collections.ArrayCollection;

	public class Classification
	{
		public var team : Team;
		public var matchs : ArrayCollection; //Match
		public var wins : uint;
		public var draws : uint;
		public var defeats : uint;
		public var score: uint;
		public var scoreAgainst : uint;
		public var balance : uint;
	}
}