package ro.ciacob.desktop.io {
	import flash.events.Event;
	import flash.filesystem.File;
	public class DiskReaderEvent extends Event {
		public static const READ_COMPLETED:String = 'READ_COMPLETED';
		public static const READ_STARTED:String = 'READ_STARTED';

		public function DiskReaderEvent(type:String, file:File) {
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
