package soccer.model
{
	public class SingleMatch implements IMatch
	{
		public var homeTeam : Team;
		public var homeScore : uint;
		public var homePenaltyScore : uint;
		public var awayTeam : Team;
		public var awayScore : uint;
		public var awayPenaltyScore :uint;
		
		public function winner() : Team{
			//TODO: lógica de retornar quem de ve ser promovido para próxima faze
			return null;
		}
	}
}