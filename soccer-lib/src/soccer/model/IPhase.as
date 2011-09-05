package soccer.model
{
	import mx.collections.ArrayCollection;

	public interface IPhase
	{
		function nextPhaseTeams() : ArrayCollection;
	}
}