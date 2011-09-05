package soccer.model
{
	public class TwoWayMatch implements IMatch
	{
		public var firstMatch : SingleMatch;
		public var secondMatch : SingleMatch;

		public function winner() : Team{
			//TODO: lógica de retornar quem de ve ser promovido para próxima faze
			return null;
		}
	}
}