package soccer.model {

	[Bindable]
	public class Club {
		public var name:String;
		public var location:String;
		public var icon:String;
		public var info:String;

		public var country:String;
		public var associationName:String;
		public var associationLocation:String;

		public function Club( name:String = null, location:String = null, icon:String = null, info:String = null, country:String = null, associationName:String = null, associationLocation:String = null ) {
			this.name     = name;
			this.location = location;
			this.icon     = icon;
			this.info     = info;

			this.country             = country;
			this.associationName     = associationName;
			this.associationLocation = associationLocation;
		}

		public function toString():String {
			return name + " (" + location + "/" + country + ")";
		}
	}
}
