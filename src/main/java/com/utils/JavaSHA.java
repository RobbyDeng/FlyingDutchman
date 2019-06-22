package com.utils;

import org.apache.commons.codec.binary.Hex;
import org.apache.commons.codec.digest.DigestUtils;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.digests.SHA224Digest;
import org.bouncycastle.crypto.digests.SHA256Digest;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * Created by dell on 2019/3/6.
 */
public class JavaSHA {
    static String extraData = "ZMGDX";

    /** JDK实现sha-1 */
    public static String jdkSHA1(String src) throws NoSuchAlgorithmException {
        src = src + extraData;
        MessageDigest md = MessageDigest.getInstance("sha");// sha1算法传入参数为sha
        byte[] sha1Bytes = md.digest(src.getBytes());
//        System.out.println("JDK SHA-1:\t" + Hex.encodeHexString(sha1Bytes));
        return Hex.encodeHexString(sha1Bytes);
    }

    /** JDK实现sha-256 */
    public static String jdkSHA256(String src) throws NoSuchAlgorithmException{
        src = src + extraData;
        MessageDigest md = MessageDigest.getInstance("sha-256");
        md.update(src.getBytes());
        return org.bouncycastle.util.encoders.Hex.toHexString(md.digest());
    }

    /** Bouncy Castle实现sha-1 */
    public static String bouncyCastleSHA1(String src){
        src = src + extraData;
        Digest digest = new SHA1Digest();
        digest.update(src.getBytes(), 0, src.getBytes().length);
        byte[]sha1Bytes = new byte[digest.getDigestSize()];
        digest.doFinal(sha1Bytes, 0);
        return org.bouncycastle.util.encoders.Hex.toHexString(sha1Bytes);
    }

    /** Bouncy Castle实现sha-224 */
    public static String bouncyCastleSHA224(String src){
        src = src + extraData;
        Digest digest = new SHA224Digest();
        digest.update(src.getBytes(), 0, src.getBytes().length);
        byte[]sha224Bytes = new byte[digest.getDigestSize()];
        digest.doFinal(sha224Bytes, 0);
        return org.bouncycastle.util.encoders.Hex.toHexString(sha224Bytes);
    }

    /** Bouncy Castle实现sha-256 */
    public static String bouncyCastleSHA256(String src) {
        src = src + extraData;
        Digest digest = new SHA256Digest();
        digest.update(src.getBytes(), 0, src.getBytes().length);
        byte[] sha256Bytes = new byte[digest.getDigestSize()];
        digest.doFinal(sha256Bytes, 0);
        return org.bouncycastle.util.encoders.Hex.toHexString(sha256Bytes);
    }

    /** Commons Codec实现sha-1 */
    public static String commonsCodecSAH1(String src){
        src = src + extraData;
        return DigestUtils.sha1Hex(src.getBytes());
    }
}
