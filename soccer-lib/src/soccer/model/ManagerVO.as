package soccer.model {
	public class ManagerVO {
		public var name:String;
		public var club:SoccerClubVO;

		public function ManagerVO( name:String, club:SoccerClubVO ) {
			this.name = name;
			this.club = club;
		}
	}
}
