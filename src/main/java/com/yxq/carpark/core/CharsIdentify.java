package com.yxq.carpark.core;



import static org.bytedeco.javacpp.opencv_core.CV_32FC1;
import static com.yxq.carpark.core.CoreFunc.features;

import java.util.HashMap;
import java.util.Map;

import org.bytedeco.javacpp.opencv_core.Mat;
import org.bytedeco.javacpp.opencv_ml.CvANN_MLP;
import com.yxq.carpark.utils.Convert;


public class CharsIdentify {

    public CharsIdentify() {
        loadModel();

        if (this.map.isEmpty()) {
            map.put("zh_cuan", "´¨");
            map.put("zh_e", "¶õ");
            map.put("zh_gan", "¸Ó");
            map.put("zh_gan1", "¸Ê");
            map.put("zh_gui", "¹ó");
            map.put("zh_gui1", "¹ð");
            map.put("zh_hei", "ºÚ");
            map.put("zh_hu", "»¦");
            map.put("zh_ji", "¼½");
            map.put("zh_jin", "½ò");
            map.put("zh_jing", "¾©");
            map.put("zh_jl", "¼ª");
            map.put("zh_liao", "ÁÉ");
            map.put("zh_lu", "Â³");
            map.put("zh_meng", "ÃÉ");
            map.put("zh_min", "Ãö");
            map.put("zh_ning", "Äþ");
            map.put("zh_qing", "Çà");
            map.put("zh_qiong", "Çí");
            map.put("zh_shan", "ÉÂ");
            map.put("zh_su", "ËÕ");
            map.put("zh_sx", "½ú");
            map.put("zh_wan", "Íî");
            map.put("zh_xiang", "Ïæ");
            map.put("zh_xin", "ÐÂ");
            map.put("zh_yu", "Ô¥");
            map.put("zh_yu1", "Óå");
            map.put("zh_yue", "ÔÁ");
            map.put("zh_yun", "ÔÆ");
            map.put("zh_zang", "²Ø");
            map.put("zh_zhe", "Õã");
        }
    }


    /**
     * 
     * @param input
     * @param isChinese
     * @param isSpeci
     * @return result
     */
    public String charsIdentify(final Mat input, final Boolean isChinese, final Boolean isSpeci) {
        String result = "";

        Mat f = features(input, this.predictSize);

        int index = classify(f, isChinese, isSpeci);

        if (!isChinese) {
            result = String.valueOf(strCharacters[index]);
        } else {
            String s = strChinese[index - numCharacter];
            result = map.get(s);
        }
        return result;
    }

    /**
     * 
     * @param f
     * @param isChinses
     * @param isSpeci
     * @return result
     */
    private int classify(final Mat f, final Boolean isChinses, final Boolean isSpeci) {
        int result = -1;
        Mat output = new Mat(1, numAll, CV_32FC1);

        ann.predict(f, output);

        int ann_min = (!isChinses) ? ((isSpeci) ? 10 : 0) : numCharacter;
        int ann_max = (!isChinses) ? numCharacter : numAll;

        float maxVal = -2;

        for (int j = ann_min; j < ann_max; j++) {
            float val = Convert.toFloat(output.ptr(0, j));

            if (val > maxVal) {
                maxVal = val;
                result = j;
            }
        }

        return result;
    }

    private void loadModel() {
        loadModel(this.path);
    }

    public void loadModel(String s) {
        this.ann.clear();
        this.ann.load(s, "ann");
    }

    static boolean hasPrint = false;

    public final void setModelPath(String path) {
        this.path = path;
    }

    public final String getModelPath() {
        return this.path;
    }

    private CvANN_MLP ann = new CvANN_MLP();

    private String path = "res/model/ann.xml";

    private int predictSize = 10;

    private Map<String, String> map = new HashMap<String, String>();

    private final char strCharacters[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E',
            'F', 'G', 'H', /* Ã»ÓÐI */'J', 'K', 'L', 'M', 'N', /* Ã»ÓÐO */'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y',
            'Z' };
    private final static int numCharacter = 34; // Ã»ÓÐIºÍ0,10¸öÊý×ÖÓë24¸öÓ¢ÎÄ×Ö·ûÖ®ºÍ

    private final String strChinese[] = { "zh_cuan" /* ´¨ */, "zh_e" /* ¶õ */, "zh_gan" /* ¸Ó */, "zh_gan1"/* ¸Ê */,
            "zh_gui"/* ¹ó */, "zh_gui1"/* ¹ð */, "zh_hei" /* ºÚ */, "zh_hu" /* »¦ */, "zh_ji" /* ¼½ */, "zh_jin" /* ½ò */,
            "zh_jing" /* ¾© */, "zh_jl" /* ¼ª */, "zh_liao" /* ÁÉ */, "zh_lu" /* Â³ */, "zh_meng" /* ÃÉ */,
            "zh_min" /* Ãö */, "zh_ning" /* Äþ */, "zh_qing" /* Çà */, "zh_qiong" /* Çí */, "zh_shan" /* ÉÂ */,
            "zh_su" /* ËÕ */, "zh_sx" /* ½ú */, "zh_wan" /* Íî */, "zh_xiang" /* Ïæ */, "zh_xin" /* ÐÂ */, "zh_yu" /* Ô¥ */,
            "zh_yu1" /* Óå */, "zh_yue" /* ÔÁ */, "zh_yun" /* ÔÆ */, "zh_zang" /* ²Ø */, "zh_zhe" /* Õã */};
    @SuppressWarnings("unused")
    private final static int numChinese = 31;

    private final static int numAll = 65; /* 34+31=65 */
}
