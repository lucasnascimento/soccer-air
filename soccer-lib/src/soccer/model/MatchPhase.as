package soccer.model
{
	import mx.collections.ArrayCollection;

	public class MatchPhase implements IPhase
	{
		public var matchs : ArrayCollection; //Match
		
		public function nextPhaseTeams () : ArrayCollection{
			var teams : ArrayCollection = new ArrayCollection();
			for each( var match:IMatch in matchs ){
				teams.addItem(match.winner());
			}
			
			return teams;
		}
	}
}