package com.yxq.carpark.core;



import static org.bytedeco.javacpp.opencv_core.merge;
import static org.bytedeco.javacpp.opencv_core.split;
import static org.bytedeco.javacpp.opencv_imgproc.CV_BGR2HSV;
import static org.bytedeco.javacpp.opencv_imgproc.CV_HSV2BGR;
import static org.bytedeco.javacpp.opencv_imgproc.CV_RGB2GRAY;
import static org.bytedeco.javacpp.opencv_imgproc.CV_THRESH_BINARY;
import static org.bytedeco.javacpp.opencv_imgproc.CV_THRESH_OTSU;
import static org.bytedeco.javacpp.opencv_imgproc.cvtColor;
import static org.bytedeco.javacpp.opencv_imgproc.equalizeHist;
import static org.bytedeco.javacpp.opencv_imgproc.threshold;
import static com.yxq.carpark.core.CoreFunc.features;

import org.bytedeco.javacpp.opencv_core.Mat;
import org.bytedeco.javacpp.opencv_core.MatVector;


public class Features implements SVMCallback {

    /*
     * (non-Javadoc)
     * 
     * @see org.easypr.core.SVMCallback#getHisteqFeatures(org.bytedeco.javacpp.
     * opencv_core.Mat)
     */
    public Mat getHisteqFeatures(final Mat image) {
        return histeq(image);
    }

    /*
     * (non-Javadoc)
     * 
     * @see
     * org.easypr.core.SVMCallback#getHistogramFeatures(org.bytedeco.javacpp
     * .opencv_core.Mat)
     */
    public Mat getHistogramFeatures(Mat image) {
        Mat grayImage = new Mat();
        cvtColor(image, grayImage, CV_RGB2GRAY);

        Mat img_threshold = new Mat();
        threshold(grayImage, img_threshold, 0, 255, CV_THRESH_OTSU + CV_THRESH_BINARY);

        return features(img_threshold, 0);
    }

    /*
     * (non-Javadoc)
     * 
     * @see
     * org.easypr.core.SVMCallback#getSIFTFeatures(org.bytedeco.javacpp.opencv_core
     * .Mat)
     */
    public Mat getSIFTFeatures(final Mat image) {
        // TODO: ´ýÍêÉÆ
        return null;
    }

    /*
     * (non-Javadoc)
     * 
     * @see
     * org.easypr.core.SVMCallback#getHOGFeatures(org.bytedeco.javacpp.opencv_core
     * .Mat)
     */
    public Mat getHOGFeatures(final Mat image) {
        // TODO: ´ýÍêÉÆ
        return null;
    }

    private Mat histeq(Mat in) {
        Mat out = new Mat(in.size(), in.type());
        if (in.channels() == 3) {
            Mat hsv = new Mat();
            MatVector hsvSplit = new MatVector();
            cvtColor(in, hsv, CV_BGR2HSV);
            split(hsv, hsvSplit);
            equalizeHist(hsvSplit.get(2), hsvSplit.get(2));
            merge(hsvSplit, hsv);
            cvtColor(hsv, out, CV_HSV2BGR);
            hsv = null;
            hsvSplit = null;
            System.gc();
        } else if (in.channels() == 1) {
            equalizeHist(in, out);
        }
        return out;
    }
}
