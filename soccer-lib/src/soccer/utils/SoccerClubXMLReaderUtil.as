package soccer.utils {
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.utils.Dictionary;
	
	import soccer.model.Club;

	public class SoccerClubXMLReaderUtil {
		protected static var map:Dictionary = new Dictionary();
		
		public static function loadAndParseXML( url:String, callback:Function ):void {
			var loader:URLLoader = new URLLoader();
			loader.addEventListener( Event.COMPLETE, onXMLComplete );
			loader.addEventListener( IOErrorEvent.IO_ERROR, onXMLIOError );
			loader.addEventListener( SecurityErrorEvent.SECURITY_ERROR, onXMLSecurityError );
			loader.load( new URLRequest( url ) );

			map[ loader ] = callback;
		}

		protected static function onXMLComplete( event:Event ):void {
			var clubs:Vector.<Club> = new Vector.<Club>();
			var loader:URLLoader = event.currentTarget as URLLoader;
			var xml:XML = new XML( loader.data );
			var clubVO:Club, associationName:String, associationLocation:String;
			var countryName:String, clubsLength:uint;
			var callback:Function = map[ loader ];

			for each( var association:XML in xml.association ) {
				associationName     = association.@name;
				associationLocation = association.@location;

				for each( var country:XML in association.country ) {
					countryName = country.@name;

					for each( var club:XML in country.club ) {
						clubs[ clubsLength ] = new Club( club.@name, club.@location, club.icon, club.info, countryName, associationName, associationLocation );
						clubsLength++;
					}
				}
			}

			delete map[ loader ];
			callback( clubs );
		}

		protected static function onXMLIOError( event:IOErrorEvent ):void {
			trace( ">>>IOError" );
		}
		
		protected static function onXMLSecurityError( event:SecurityErrorEvent ):void {
			trace( ">>>SecurityError" );
		}
	}
}
