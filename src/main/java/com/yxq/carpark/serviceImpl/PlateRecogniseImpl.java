package com.yxq.carpark.serviceImpl;

import static org.bytedeco.javacpp.opencv_highgui.imread;

import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

/*import org.apache.log4j.Logger;*/

import org.bytedeco.javacpp.opencv_core.Mat;

import com.sun.istack.logging.Logger;
import com.yxq.carpark.core.CharsRecognise;
import com.yxq.carpark.core.PlateDetect;

import com.yxq.carpark.service.PlateRecognise;

public class PlateRecogniseImpl implements PlateRecognise {
	
	private static final Logger logger=Logger.getLogger(PlateRecogniseImpl.class);

	@Override
	public List<String> plateRecognise(String imgPath) {
		List<String> result=new ArrayList<String>();
		// String imgPath = "res/image/test_image/test.jpg";
		// String imgPath = "res/image/general_test/川C28888.jpg";
		Mat src = imread(imgPath);
		PlateDetect plateDetect = new PlateDetect();
		plateDetect.setPDLifemode(true);
		Vector<Mat> matVector = new Vector<Mat>();
		if (0 == plateDetect.plateDetect(src, matVector)) {
			CharsRecognise cr = new CharsRecognise();

			for (int i = 0; i < matVector.size(); ++i) {
				result.add(cr.charsRecognise(matVector.get(i)));
				logger.info("Chars Recognised: " + cr.charsRecognise(matVector.get(i)));
			}
		}
		return result;
	}

}
