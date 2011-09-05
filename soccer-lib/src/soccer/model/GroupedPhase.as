package soccer.model
{
	import mx.collections.ArrayCollection;

	public class GroupedPhase implements IPhase
	{
		
		public var groups : ArrayCollection; //Groups
		public var edition : Edition;
		
		public function nextPhaseTeams () : ArrayCollection{
			
			/*	
			var teamsToUp = edition.rule.
			
			var teams : ArrayCollection = new ArrayCollection();
			for each( var match:IMatch in matchs ){
				teams.addItem(match.winner());
			}*/
			
			return null;
		}
	}
	}
