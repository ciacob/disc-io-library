package ro.ciacob.desktop.io {
	import flash.utils.ByteArray;
	public class TextDiskReader extends AbstractDiskReader {
		public function TextDiskReader() {
			super(this);
		}

		override protected function deserializeSource(source:ByteArray):Object {
			source.position = 0;
			return source.readUTFBytes(source.length);
		}
	}
}
