package ro.ciacob.desktop.io {
	import flash.events.ErrorEvent;
	import flash.utils.ByteArray;

	public class ObjectDiskWritter extends AbstractDiskWritter {
		public function ObjectDiskWritter() {
			super(this);
		}

		override protected function serializeSource(source:Object):ByteArray {
			return toByteArray(source);
		}

		public static function toByteArray(srcData:Object):ByteArray {
			var byteArray:ByteArray = new ByteArray;
			byteArray.writeObject(srcData);
			byteArray.compress();
			return byteArray;
		}
	}
}
