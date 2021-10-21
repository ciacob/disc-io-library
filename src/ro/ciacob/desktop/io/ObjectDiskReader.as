package ro.ciacob.desktop.io {
	import flash.utils.ByteArray;

	public class ObjectDiskReader extends AbstractDiskReader {

		public static function fromByteArray(byteArray:ByteArray):Object {
			byteArray.uncompress();
			byteArray.position = 0;
			return byteArray.readObject();
		}

		public function ObjectDiskReader() {
			super(this);
		}

		override protected function deserializeSource(source:ByteArray):Object {
			return fromByteArray(source);
		}
	}
}
