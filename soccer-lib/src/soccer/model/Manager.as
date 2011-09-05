package soccer.model {
	public class Manager {
		public var name:String;
		public var favoriteClub:Club;

		public function Manager( name:String, club:Club ) {
			this.name = name;
			this.favoriteClub = club;
		}
	}
}
