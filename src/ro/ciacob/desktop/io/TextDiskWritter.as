package ro.ciacob.desktop.io {
	import flash.utils.ByteArray;

    public class TextDiskWritter extends AbstractDiskWritter {
        public function TextDiskWritter () {
            super(this);
        }

        override protected function serializeSource (source : Object) : ByteArray {
			var byteArray : ByteArray = new ByteArray;
			byteArray.writeUTFBytes ('' + source);
            return byteArray;
        }
    }
}