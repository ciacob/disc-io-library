package ro.ciacob.desktop.io {
	import flash.utils.ByteArray;

	public class RawDiskReader extends AbstractDiskReader {
		public function RawDiskReader() {
			super(this);
		}

		override protected function deserializeSource(source:ByteArray):Object {
			return source;
		}
	}
}
