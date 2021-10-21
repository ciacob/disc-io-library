package ro.ciacob.desktop.io {
	import flash.events.Event;
	import flash.filesystem.File;
	public class DiskWritterEvent extends Event {

		public static const WRITE_COMPLETED:String = 'WRITE_COMPLETED';
		public static const WRITE_STARTED:String = 'WRITE_STARTED';

		public function DiskWritterEvent(type:String, file:File) {
			super(type);
			_type = type;
			_file = file;
		}

		private var _file:File;
		private var _type:String;

		override public function clone():Event {
			return new DiskWritterEvent(_type, _file);
		}

		public function get file():File {
			return _file;
		}

		override public function get type():String {
			return _type;
		}
	}
}
