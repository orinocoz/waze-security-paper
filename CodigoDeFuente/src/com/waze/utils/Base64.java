// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.utils;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.io.OutputStream;
import java.io.Serializable;
import java.io.StreamCorruptedException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

public class Base64
{
    public static class InputStream extends FilterInputStream
    {

        private boolean breakLines;
        private byte buffer[];
        private int bufferLength;
        private byte decodabet[];
        private boolean encode;
        private int lineLength;
        private int numSigBytes;
        private int options;
        private int position;

        public int read()
            throws IOException
        {
            if (position >= 0) goto _L2; else goto _L1
_L1:
            if (!encode) goto _L4; else goto _L3
_L3:
            byte abyte2[];
            int l;
            int i1;
            abyte2 = new byte[3];
            l = 0;
            i1 = 0;
_L12:
            if (i1 < 3)
            {
                if ((j1 = in.read()) >= 0)
                {
                    abyte2[i1] = (byte)j1;
                    l++;
                    i1++;
                    continue; /* Loop/switch isn't completed */
                }
            }
            if (l <= 0) goto _L6; else goto _L5
_L5:
            Base64.encode3to4(abyte2, 0, l, buffer, 0, options);
            position = 0;
            numSigBytes = 4;
              goto _L2
_L6:
            return -1;
_L4:
            abyte1 = new byte[4];
            j = 0;
_L10:
            if (j < 4) goto _L8; else goto _L7
_L7:
            if (j == 4)
            {
                numSigBytes = Base64.decode4to3(abyte1, 0, buffer, 0, options);
                position = 0;
            } else
            if (j == 0)
            {
                return -1;
            } else
            {
                throw new IOException("Improperly padded Base64 input.");
            }
              goto _L2
_L8:
            do
            {
                k = in.read();
            } while (k >= 0 && decodabet[k & 0x7f] <= -5);
            if (k < 0) goto _L7; else goto _L9
_L9:
            abyte1[j] = (byte)k;
            j++;
              goto _L10
_L2:
            if (position >= 0)
            {
                byte abyte1[];
                int j;
                int k;
                int j1;
                if (position >= numSigBytes)
                {
                    return -1;
                }
                if (encode && breakLines && lineLength >= 76)
                {
                    lineLength = 0;
                    return 10;
                }
                lineLength = 1 + lineLength;
                byte abyte0[] = buffer;
                int i = position;
                position = i + 1;
                byte byte0 = abyte0[i];
                if (position >= bufferLength)
                {
                    position = -1;
                }
                return byte0 & 0xff;
            }
            throw new IOException("Error in Base64 code reading stream.");
            if (true) goto _L12; else goto _L11
_L11:
        }

        public int read(byte abyte0[], int i, int j)
            throws IOException
        {
            int k = 0;
_L5:
            if (k < j) goto _L2; else goto _L1
_L1:
            return k;
_L2:
            int l = read();
            if (l < 0)
            {
                continue; /* Loop/switch isn't completed */
            }
            abyte0[i + k] = (byte)l;
            k++;
            continue; /* Loop/switch isn't completed */
            if (k != 0) goto _L1; else goto _L3
_L3:
            return -1;
            if (true) goto _L5; else goto _L4
_L4:
        }

        public InputStream(java.io.InputStream inputstream)
        {
            this(inputstream, 0);
        }

        public InputStream(java.io.InputStream inputstream, int i)
        {
            boolean flag = true;
            super(inputstream);
            options = i;
            boolean flag1;
            int j;
            if ((i & 8) > 0)
            {
                flag1 = flag;
            } else
            {
                flag1 = false;
            }
            breakLines = flag1;
            if ((i & 1) <= 0)
            {
                flag = false;
            }
            encode = flag;
            if (encode)
            {
                j = 4;
            } else
            {
                j = 3;
            }
            bufferLength = j;
            buffer = new byte[bufferLength];
            position = -1;
            lineLength = 0;
            decodabet = Base64.getDecodabet(i);
        }
    }

    public static class OutputStream extends FilterOutputStream
    {

        private byte b4[];
        private boolean breakLines;
        private byte buffer[];
        private int bufferLength;
        private byte decodabet[];
        private boolean encode;
        private int lineLength;
        private int options;
        private int position;
        private boolean suspendEncoding;

        public void close()
            throws IOException
        {
            flushBase64();
            super.close();
            buffer = null;
            out = null;
        }

        public void flushBase64()
            throws IOException
        {
label0:
            {
                if (position > 0)
                {
                    if (!encode)
                    {
                        break label0;
                    }
                    out.write(Base64.encode3to4(b4, buffer, position, options));
                    position = 0;
                }
                return;
            }
            throw new IOException("Base64 input not properly padded.");
        }

        public void resumeEncoding()
        {
            suspendEncoding = false;
        }

        public void suspendEncoding()
            throws IOException
        {
            flushBase64();
            suspendEncoding = true;
        }

        public void write(int i)
            throws IOException
        {
            if (!suspendEncoding) goto _L2; else goto _L1
_L1:
            out.write(i);
_L4:
            return;
_L2:
            if (!encode)
            {
                break; /* Loop/switch isn't completed */
            }
            byte abyte1[] = buffer;
            int l = position;
            position = l + 1;
            abyte1[l] = (byte)i;
            if (position >= bufferLength)
            {
                out.write(Base64.encode3to4(b4, buffer, bufferLength, options));
                lineLength = 4 + lineLength;
                if (breakLines && lineLength >= 76)
                {
                    out.write(10);
                    lineLength = 0;
                }
                position = 0;
                return;
            }
            if (true) goto _L4; else goto _L3
_L3:
            if (decodabet[i & 0x7f] <= -5)
            {
                continue; /* Loop/switch isn't completed */
            }
            byte abyte0[] = buffer;
            int j = position;
            position = j + 1;
            abyte0[j] = (byte)i;
            if (position < bufferLength) goto _L4; else goto _L5
_L5:
            int k = Base64.decode4to3(buffer, 0, b4, 0, options);
            out.write(b4, 0, k);
            position = 0;
            return;
            if (decodabet[i & 0x7f] == -5) goto _L4; else goto _L6
_L6:
            throw new IOException("Invalid character in Base64 data.");
        }

        public void write(byte abyte0[], int i, int j)
            throws IOException
        {
            if (suspendEncoding)
            {
                out.write(abyte0, i, j);
            } else
            {
                int k = 0;
                while (k < j) 
                {
                    write(abyte0[i + k]);
                    k++;
                }
            }
        }

        public OutputStream(java.io.OutputStream outputstream)
        {
            this(outputstream, 1);
        }

        public OutputStream(java.io.OutputStream outputstream, int i)
        {
            boolean flag = true;
            super(outputstream);
            boolean flag1;
            int j;
            if ((i & 8) != 0)
            {
                flag1 = flag;
            } else
            {
                flag1 = false;
            }
            breakLines = flag1;
            if ((i & 1) == 0)
            {
                flag = false;
            }
            encode = flag;
            if (encode)
            {
                j = 3;
            } else
            {
                j = 4;
            }
            bufferLength = j;
            buffer = new byte[bufferLength];
            position = 0;
            lineLength = 0;
            suspendEncoding = false;
            b4 = new byte[4];
            options = i;
            decodabet = Base64.getDecodabet(i);
        }
    }


    static final boolean $assertionsDisabled = false;
    public static final int DECODE = 0;
    public static final int DONT_GUNZIP = 4;
    public static final int DO_BREAK_LINES = 8;
    public static final int ENCODE = 1;
    private static final byte EQUALS_SIGN = 61;
    private static final byte EQUALS_SIGN_ENC = -1;
    public static final int GZIP = 2;
    private static final int MAX_LINE_LENGTH = 76;
    private static final byte NEW_LINE = 10;
    public static final int NO_OPTIONS = 0;
    public static final int ORDERED = 32;
    private static final String PREFERRED_ENCODING = "US-ASCII";
    public static final int URL_SAFE = 16;
    private static final byte WHITE_SPACE_ENC = -5;
    private static final byte _ORDERED_ALPHABET[] = {
        45, 48, 49, 50, 51, 52, 53, 54, 55, 56, 
        57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 
        74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 
        84, 85, 86, 87, 88, 89, 90, 95, 97, 98, 
        99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 
        109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 
        119, 120, 121, 122
    };
    private static final byte _ORDERED_DECODABET[];
    private static final byte _STANDARD_ALPHABET[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 43, 47
    };
    private static final byte _STANDARD_DECODABET[];
    private static final byte _URL_SAFE_ALPHABET[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 45, 95
    };
    private static final byte _URL_SAFE_DECODABET[];

    private Base64()
    {
    }

    public static byte[] decode(String s)
        throws IOException
    {
        return decode(s, 0);
    }

    public static byte[] decode(String s, int i)
        throws IOException
    {
        if (s == null)
        {
            throw new NullPointerException("Input string was null.");
        }
        byte abyte4[] = s.getBytes("US-ASCII");
        byte abyte0[] = abyte4;
_L5:
        byte abyte1[];
        ByteArrayInputStream bytearrayinputstream;
        GZIPInputStream gzipinputstream;
        ByteArrayOutputStream bytearrayoutputstream;
        ByteArrayOutputStream bytearrayoutputstream1;
        ByteArrayInputStream bytearrayinputstream1;
        abyte1 = decode(abyte0, 0, abyte0.length, i);
        UnsupportedEncodingException unsupportedencodingexception;
        boolean flag;
        byte abyte3[];
        if ((i & 4) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (abyte1 == null || abyte1.length < 4 || flag || 35615 != (0xff & abyte1[0] | 0xff00 & abyte1[1] << 8)) goto _L2; else goto _L1
_L1:
        IOException ioexception;
        bytearrayinputstream = null;
        gzipinputstream = null;
        bytearrayoutputstream = null;
        byte abyte2[] = new byte[2048];
        GZIPInputStream gzipinputstream1;
        Exception exception;
        Exception exception1;
        Exception exception2;
        Exception exception3;
        Exception exception4;
        Exception exception5;
        Exception exception6;
        int j;
        Exception exception7;
        Exception exception8;
        Exception exception9;
        try
        {
            bytearrayoutputstream1 = new ByteArrayOutputStream();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            bytearrayinputstream = null;
            bytearrayoutputstream = null;
            gzipinputstream = null;
            continue; /* Loop/switch isn't completed */
        }
        finally { }
        try
        {
_L7:
            bytearrayinputstream1 = new ByteArrayInputStream(abyte1);
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            bytearrayoutputstream = bytearrayoutputstream1;
            bytearrayinputstream = null;
            gzipinputstream = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            bytearrayoutputstream = bytearrayoutputstream1;
            bytearrayinputstream = null;
            gzipinputstream = null;
            continue; /* Loop/switch isn't completed */
        }
        gzipinputstream1 = new GZIPInputStream(bytearrayinputstream1);
_L6:
        j = gzipinputstream1.read(abyte2);
        if (j >= 0) goto _L4; else goto _L3
_L3:
        abyte3 = bytearrayoutputstream1.toByteArray();
        abyte1 = abyte3;
        try
        {
            bytearrayoutputstream1.close();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception7) { }
        try
        {
            gzipinputstream1.close();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception8) { }
        try
        {
            bytearrayinputstream1.close();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception9)
        {
            return abyte1;
        }
_L2:
        return abyte1;
        unsupportedencodingexception;
        abyte0 = s.getBytes();
          goto _L5
_L4:
        bytearrayoutputstream1.write(abyte2, 0, j);
          goto _L6
        ioexception;
        bytearrayoutputstream = bytearrayoutputstream1;
        gzipinputstream = gzipinputstream1;
        bytearrayinputstream = bytearrayinputstream1;
_L10:
        ioexception.printStackTrace();
        try
        {
            bytearrayoutputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception4) { }
        try
        {
            gzipinputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception5) { }
        try
        {
            bytearrayinputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception6)
        {
            return abyte1;
        }
        return abyte1;
_L8:
        try
        {
            bytearrayoutputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception1) { }
        try
        {
            gzipinputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception2) { }
        try
        {
            bytearrayinputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception3) { }
        throw exception;
        exception;
        bytearrayoutputstream = bytearrayoutputstream1;
        bytearrayinputstream = bytearrayinputstream1;
        gzipinputstream = null;
        continue; /* Loop/switch isn't completed */
        exception;
        bytearrayoutputstream = bytearrayoutputstream1;
        gzipinputstream = gzipinputstream1;
        bytearrayinputstream = bytearrayinputstream1;
        if (true) goto _L8; else goto _L7
        ioexception;
        bytearrayoutputstream = bytearrayoutputstream1;
        bytearrayinputstream = bytearrayinputstream1;
        gzipinputstream = null;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public static byte[] decode(byte abyte0[])
        throws IOException
    {
        return decode(abyte0, 0, abyte0.length, 0);
    }

    public static byte[] decode(byte abyte0[], int i, int j, int k)
        throws IOException
    {
        byte abyte1[];
        byte abyte2[];
        int l;
        byte abyte3[];
        int i1;
        int j1;
        if (abyte0 == null)
        {
            throw new NullPointerException("Cannot decode null source array.");
        }
        if (i < 0 || i + j > abyte0.length)
        {
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(abyte0.length);
            aobj[1] = Integer.valueOf(i);
            aobj[2] = Integer.valueOf(j);
            throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and process %d bytes.", aobj));
        }
        if (j == 0)
        {
            return new byte[0];
        }
        if (j < 4)
        {
            throw new IllegalArgumentException((new StringBuilder("Base64-encoded string must have at least four characters, but length specified was ")).append(j).toString());
        }
        abyte1 = getDecodabet(k);
        abyte2 = new byte[(j * 3) / 4];
        l = 0;
        abyte3 = new byte[4];
        i1 = i;
        j1 = 0;
_L6:
        if (i1 < i + j) goto _L2; else goto _L1
_L1:
        j1;
_L4:
        byte abyte4[] = new byte[l];
        System.arraycopy(abyte2, 0, abyte4, 0, l);
        return abyte4;
_L2:
        int k1;
        byte byte1;
        byte byte0 = abyte1[0xff & abyte0[i1]];
        if (byte0 < -5)
        {
            break; /* Loop/switch isn't completed */
        }
        if (byte0 < -1)
        {
            break MISSING_BLOCK_LABEL_303;
        }
        k1 = j1 + 1;
        abyte3[j1] = abyte0[i1];
        if (k1 <= 3)
        {
            break; /* Loop/switch isn't completed */
        }
        l += decode4to3(abyte3, 0, abyte2, l, k);
        byte1 = abyte0[i1];
        k1 = 0;
        if (byte1 == 61) goto _L4; else goto _L3
_L3:
        i1++;
        j1 = k1;
        if (true) goto _L6; else goto _L5
_L5:
        Object aobj1[] = new Object[2];
        aobj1[0] = Integer.valueOf(0xff & abyte0[i1]);
        aobj1[1] = Integer.valueOf(i1);
        throw new IOException(String.format("Bad Base64 input character decimal %d in array position %d", aobj1));
        k1 = j1;
          goto _L3
    }

    private static int decode4to3(byte abyte0[], int i, byte abyte1[], int j, int k)
    {
        if (abyte0 == null)
        {
            throw new NullPointerException("Source array was null.");
        }
        if (abyte1 == null)
        {
            throw new NullPointerException("Destination array was null.");
        }
        if (i < 0 || i + 3 >= abyte0.length)
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(abyte0.length);
            aobj[1] = Integer.valueOf(i);
            throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and still process four bytes.", aobj));
        }
        if (j < 0 || j + 2 >= abyte1.length)
        {
            Object aobj1[] = new Object[2];
            aobj1[0] = Integer.valueOf(abyte1.length);
            aobj1[1] = Integer.valueOf(j);
            throw new IllegalArgumentException(String.format("Destination array with length %d cannot have offset of %d and still store three bytes.", aobj1));
        }
        byte abyte2[] = getDecodabet(k);
        if (abyte0[i + 2] == 61)
        {
            abyte1[j] = (byte)(((0xff & abyte2[abyte0[i]]) << 18 | (0xff & abyte2[abyte0[i + 1]]) << 12) >>> 16);
            return 1;
        }
        if (abyte0[i + 3] == 61)
        {
            int i1 = (0xff & abyte2[abyte0[i]]) << 18 | (0xff & abyte2[abyte0[i + 1]]) << 12 | (0xff & abyte2[abyte0[i + 2]]) << 6;
            abyte1[j] = (byte)(i1 >>> 16);
            abyte1[j + 1] = (byte)(i1 >>> 8);
            return 2;
        } else
        {
            int l = (0xff & abyte2[abyte0[i]]) << 18 | (0xff & abyte2[abyte0[i + 1]]) << 12 | (0xff & abyte2[abyte0[i + 2]]) << 6 | 0xff & abyte2[abyte0[i + 3]];
            abyte1[j] = (byte)(l >> 16);
            abyte1[j + 1] = (byte)(l >> 8);
            abyte1[j + 2] = (byte)l;
            return 3;
        }
    }

    public static void decodeFileToFile(String s, String s1)
        throws IOException
    {
        byte abyte0[];
        BufferedOutputStream bufferedoutputstream;
        abyte0 = decodeFromFile(s);
        bufferedoutputstream = null;
        BufferedOutputStream bufferedoutputstream1 = new BufferedOutputStream(new FileOutputStream(s1));
        bufferedoutputstream1.write(abyte0);
        IOException ioexception;
        Exception exception;
        try
        {
            bufferedoutputstream1.close();
            return;
        }
        catch (Exception exception2)
        {
            return;
        }
        ioexception;
_L4:
        throw ioexception;
        exception;
_L2:
        try
        {
            bufferedoutputstream.close();
        }
        catch (Exception exception1) { }
        throw exception;
        exception;
        bufferedoutputstream = bufferedoutputstream1;
        if (true) goto _L2; else goto _L1
_L1:
        ioexception;
        bufferedoutputstream = bufferedoutputstream1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static byte[] decodeFromFile(String s)
        throws IOException
    {
        InputStream inputstream = null;
        File file = new File(s);
        int i = 0;
        int j = file.length() != 0x7fffffffL;
        inputstream = null;
        if (j <= 0) goto _L2; else goto _L1
_L1:
        throw new IOException((new StringBuilder("File is too big for this convenience method (")).append(file.length()).append(" bytes).").toString());
        IOException ioexception;
        ioexception;
_L8:
        throw ioexception;
        Exception exception;
        exception;
_L6:
        InputStream inputstream1;
        byte abyte1[];
        byte abyte0[];
        int k;
        try
        {
            inputstream.close();
        }
        catch (Exception exception1) { }
        throw exception;
_L2:
        abyte0 = new byte[(int)file.length()];
        inputstream1 = new InputStream(new BufferedInputStream(new FileInputStream(file)), 0);
_L4:
        k = inputstream1.read(abyte0, i, 4096);
        if (k >= 0)
        {
            break MISSING_BLOCK_LABEL_153;
        }
        abyte1 = new byte[i];
        System.arraycopy(abyte0, 0, abyte1, 0, i);
        try
        {
            inputstream1.close();
        }
        catch (Exception exception2)
        {
            return abyte1;
        }
        return abyte1;
        i += k;
        if (true) goto _L4; else goto _L3
_L3:
        exception;
        inputstream = inputstream1;
        if (true) goto _L6; else goto _L5
_L5:
        ioexception;
        inputstream = inputstream1;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public static void decodeToFile(String s, String s1)
        throws IOException
    {
        OutputStream outputstream = null;
        OutputStream outputstream1 = new OutputStream(new FileOutputStream(s1), 0);
        outputstream1.write(s.getBytes("US-ASCII"));
        IOException ioexception;
        Exception exception;
        try
        {
            outputstream1.close();
            return;
        }
        catch (Exception exception2)
        {
            return;
        }
        ioexception;
_L4:
        throw ioexception;
        exception;
_L2:
        try
        {
            outputstream.close();
        }
        catch (Exception exception1) { }
        throw exception;
        exception;
        outputstream = outputstream1;
        if (true) goto _L2; else goto _L1
_L1:
        ioexception;
        outputstream = outputstream1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static Object decodeToObject(String s)
        throws IOException, ClassNotFoundException
    {
        return decodeToObject(s, 0, null);
    }

    public static Object decodeToObject(String s, int i, ClassLoader classloader)
        throws IOException, ClassNotFoundException
    {
        byte abyte0[];
        ByteArrayInputStream bytearrayinputstream;
        Object obj;
        abyte0 = decode(s, i);
        bytearrayinputstream = null;
        obj = null;
        final ByteArrayInputStream final_inputstream = new ByteArrayInputStream(abyte0);
        if (classloader != null) goto _L2; else goto _L1
_L1:
        obj = new ObjectInputStream(final_inputstream);
_L3:
        Object obj1 = ((ObjectInputStream) (obj)).readObject();
        IOException ioexception;
        Exception exception;
        ClassNotFoundException classnotfoundexception;
        ObjectInputStream objectinputstream;
        Exception exception1;
        Exception exception2;
        try
        {
            final_inputstream.close();
        }
        catch (Exception exception3) { }
        try
        {
            ((ObjectInputStream) (obj)).close();
        }
        catch (Exception exception4)
        {
            return obj1;
        }
        return obj1;
_L2:
        objectinputstream = new ObjectInputStream(classloader) {

            private final ClassLoader val$loader;

            public Class resolveClass(ObjectStreamClass objectstreamclass)
                throws IOException, ClassNotFoundException
            {
                Class class1 = Class.forName(objectstreamclass.getName(), false, loader);
                if (class1 == null)
                {
                    class1 = super.resolveClass(objectstreamclass);
                }
                return class1;
            }

            
                throws StreamCorruptedException, IOException
            {
                loader = classloader;
                super(final_inputstream);
            }
        };
        obj = objectinputstream;
          goto _L3
        ioexception;
_L7:
        throw ioexception;
        exception;
_L4:
        try
        {
            bytearrayinputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception1) { }
        try
        {
            ((ObjectInputStream) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception2) { }
        throw exception;
        classnotfoundexception;
_L5:
        throw classnotfoundexception;
        exception;
        bytearrayinputstream = final_inputstream;
          goto _L4
        classnotfoundexception;
        bytearrayinputstream = final_inputstream;
          goto _L5
        ioexception;
        bytearrayinputstream = final_inputstream;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static void encode(ByteBuffer bytebuffer, ByteBuffer bytebuffer1)
    {
        byte abyte0[] = new byte[3];
        byte abyte1[] = new byte[4];
        do
        {
            if (!bytebuffer.hasRemaining())
            {
                return;
            }
            int i = Math.min(3, bytebuffer.remaining());
            bytebuffer.get(abyte0, 0, i);
            encode3to4(abyte1, abyte0, i, 0);
            bytebuffer1.put(abyte1);
        } while (true);
    }

    public static void encode(ByteBuffer bytebuffer, CharBuffer charbuffer)
    {
        byte abyte0[] = new byte[3];
        byte abyte1[] = new byte[4];
        do
        {
            if (!bytebuffer.hasRemaining())
            {
                return;
            }
            int i = Math.min(3, bytebuffer.remaining());
            bytebuffer.get(abyte0, 0, i);
            encode3to4(abyte1, abyte0, i, 0);
            int j = 0;
            while (j < 4) 
            {
                charbuffer.put((char)(0xff & abyte1[j]));
                j++;
            }
        } while (true);
    }

    private static byte[] encode3to4(byte abyte0[], int i, int j, byte abyte1[], int k, int l)
    {
        byte abyte2[] = getAlphabet(l);
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        if (j > 0)
        {
            i1 = (abyte0[i] << 24) >>> 8;
        } else
        {
            i1 = 0;
        }
        if (j > 1)
        {
            j1 = (abyte0[i + 1] << 24) >>> 16;
        } else
        {
            j1 = 0;
        }
        k1 = j1 | i1;
        l1 = 0;
        if (j > 2)
        {
            l1 = (abyte0[i + 2] << 24) >>> 24;
        }
        i2 = k1 | l1;
        switch (j)
        {
        default:
            return abyte1;

        case 3: // '\003'
            abyte1[k] = abyte2[i2 >>> 18];
            abyte1[k + 1] = abyte2[0x3f & i2 >>> 12];
            abyte1[k + 2] = abyte2[0x3f & i2 >>> 6];
            abyte1[k + 3] = abyte2[i2 & 0x3f];
            return abyte1;

        case 2: // '\002'
            abyte1[k] = abyte2[i2 >>> 18];
            abyte1[k + 1] = abyte2[0x3f & i2 >>> 12];
            abyte1[k + 2] = abyte2[0x3f & i2 >>> 6];
            abyte1[k + 3] = 61;
            return abyte1;

        case 1: // '\001'
            abyte1[k] = abyte2[i2 >>> 18];
            abyte1[k + 1] = abyte2[0x3f & i2 >>> 12];
            abyte1[k + 2] = 61;
            abyte1[k + 3] = 61;
            return abyte1;
        }
    }

    private static byte[] encode3to4(byte abyte0[], byte abyte1[], int i, int j)
    {
        encode3to4(abyte1, 0, i, abyte0, 0, j);
        return abyte0;
    }

    public static String encodeBytes(byte abyte0[])
    {
        String s1 = encodeBytes(abyte0, 0, abyte0.length, 0);
        String s = s1;
_L1:
        IOException ioexception;
        if (!$assertionsDisabled && s == null)
        {
            throw new AssertionError();
        } else
        {
            return s;
        }
        ioexception;
        boolean flag = $assertionsDisabled;
        s = null;
        if (!flag)
        {
            throw new AssertionError(ioexception.getMessage());
        }
          goto _L1
    }

    public static String encodeBytes(byte abyte0[], int i)
        throws IOException
    {
        return encodeBytes(abyte0, 0, abyte0.length, i);
    }

    public static String encodeBytes(byte abyte0[], int i, int j)
    {
        String s1 = encodeBytes(abyte0, i, j, 0);
        String s = s1;
_L1:
        IOException ioexception;
        if (!$assertionsDisabled && s == null)
        {
            throw new AssertionError();
        } else
        {
            return s;
        }
        ioexception;
        boolean flag = $assertionsDisabled;
        s = null;
        if (!flag)
        {
            throw new AssertionError(ioexception.getMessage());
        }
          goto _L1
    }

    public static String encodeBytes(byte abyte0[], int i, int j, int k)
        throws IOException
    {
        byte abyte1[] = encodeBytesToBytes(abyte0, i, j, k);
        String s;
        try
        {
            s = new String(abyte1, "US-ASCII");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            return new String(abyte1);
        }
        return s;
    }

    public static byte[] encodeBytesToBytes(byte abyte0[])
    {
        byte abyte2[] = encodeBytesToBytes(abyte0, 0, abyte0.length, 0);
        byte abyte1[] = abyte2;
_L2:
        return abyte1;
        IOException ioexception;
        ioexception;
        boolean flag = $assertionsDisabled;
        abyte1 = null;
        if (!flag)
        {
            throw new AssertionError((new StringBuilder("IOExceptions only come from GZipping, which is turned off: ")).append(ioexception.getMessage()).toString());
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static byte[] encodeBytesToBytes(byte abyte0[], int i, int j, int k)
        throws IOException
    {
        if (abyte0 == null)
        {
            throw new NullPointerException("Cannot serialize a null array.");
        }
        if (i < 0)
        {
            throw new IllegalArgumentException((new StringBuilder("Cannot have negative offset: ")).append(i).toString());
        }
        if (j < 0)
        {
            throw new IllegalArgumentException((new StringBuilder("Cannot have length offset: ")).append(j).toString());
        }
        if (i + j > abyte0.length)
        {
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(i);
            aobj[1] = Integer.valueOf(j);
            aobj[2] = Integer.valueOf(abyte0.length);
            throw new IllegalArgumentException(String.format("Cannot have offset of %d and length of %d with array of length %d", aobj));
        }
        if ((k & 2) == 0) goto _L2; else goto _L1
_L1:
        ByteArrayOutputStream bytearrayoutputstream;
        GZIPOutputStream gzipoutputstream;
        OutputStream outputstream;
        bytearrayoutputstream = null;
        gzipoutputstream = null;
        outputstream = null;
        ByteArrayOutputStream bytearrayoutputstream1 = new ByteArrayOutputStream();
        OutputStream outputstream1;
        GZIPOutputStream gzipoutputstream1;
        IOException ioexception;
        boolean flag;
        int l;
        byte byte0;
        int i1;
        byte abyte1[];
        int j1;
        int k1;
        int l1;
        int i2;
        byte abyte2[];
        Exception exception;
        Exception exception1;
        Exception exception2;
        Exception exception3;
        Exception exception4;
        Exception exception5;
        Exception exception6;
        try
        {
            outputstream1 = new OutputStream(bytearrayoutputstream1, k | 1);
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            bytearrayoutputstream = bytearrayoutputstream1;
            outputstream = null;
            gzipoutputstream = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            bytearrayoutputstream = bytearrayoutputstream1;
            outputstream = null;
            gzipoutputstream = null;
            continue; /* Loop/switch isn't completed */
        }
        try
        {
_L3:
            gzipoutputstream1 = new GZIPOutputStream(outputstream1);
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            outputstream = outputstream1;
            bytearrayoutputstream = bytearrayoutputstream1;
            gzipoutputstream = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            outputstream = outputstream1;
            bytearrayoutputstream = bytearrayoutputstream1;
            gzipoutputstream = null;
            continue; /* Loop/switch isn't completed */
        }
        gzipoutputstream1.write(abyte0, i, j);
        gzipoutputstream1.close();
        try
        {
            gzipoutputstream1.close();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception4) { }
        try
        {
            outputstream1.close();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception5) { }
        try
        {
            bytearrayoutputstream1.close();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception6) { }
        return bytearrayoutputstream1.toByteArray();
        ioexception;
_L6:
        throw ioexception;
        exception;
_L4:
        try
        {
            gzipoutputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception1) { }
        try
        {
            outputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception2) { }
        try
        {
            bytearrayoutputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception3) { }
        throw exception;
_L2:
        if ((k & 8) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        l = 4 * (j / 3);
        if (j % 3 > 0)
        {
            byte0 = 4;
        } else
        {
            byte0 = 0;
        }
        i1 = l + byte0;
        if (flag)
        {
            i1 += i1 / 76;
        }
        abyte1 = new byte[i1];
        j1 = 0;
        k1 = 0;
        l1 = j - 2;
        i2 = 0;
        do
        {
            if (j1 >= l1)
            {
                if (j1 < j)
                {
                    encode3to4(abyte0, j1 + i, j - j1, abyte1, k1, k);
                    k1 += 4;
                }
                if (k1 <= -1 + abyte1.length)
                {
                    abyte2 = new byte[k1];
                    System.arraycopy(abyte1, 0, abyte2, 0, k1);
                    return abyte2;
                } else
                {
                    return abyte1;
                }
            }
            encode3to4(abyte0, j1 + i, 3, abyte1, k1, k);
            i2 += 4;
            if (flag && i2 >= 76)
            {
                abyte1[k1 + 4] = 10;
                k1++;
                i2 = 0;
            }
            j1 += 3;
            k1 += 4;
        } while (true);
        exception;
        outputstream = outputstream1;
        gzipoutputstream = gzipoutputstream1;
        bytearrayoutputstream = bytearrayoutputstream1;
        if (true) goto _L4; else goto _L3
        ioexception;
        outputstream = outputstream1;
        gzipoutputstream = gzipoutputstream1;
        bytearrayoutputstream = bytearrayoutputstream1;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static void encodeFileToFile(String s, String s1)
        throws IOException
    {
        String s2;
        BufferedOutputStream bufferedoutputstream;
        s2 = encodeFromFile(s);
        bufferedoutputstream = null;
        BufferedOutputStream bufferedoutputstream1 = new BufferedOutputStream(new FileOutputStream(s1));
        bufferedoutputstream1.write(s2.getBytes("US-ASCII"));
        IOException ioexception;
        Exception exception;
        try
        {
            bufferedoutputstream1.close();
            return;
        }
        catch (Exception exception2)
        {
            return;
        }
        ioexception;
_L4:
        throw ioexception;
        exception;
_L2:
        try
        {
            bufferedoutputstream.close();
        }
        catch (Exception exception1) { }
        throw exception;
        exception;
        bufferedoutputstream = bufferedoutputstream1;
        if (true) goto _L2; else goto _L1
_L1:
        ioexception;
        bufferedoutputstream = bufferedoutputstream1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static String encodeFromFile(String s)
        throws IOException
    {
        InputStream inputstream = null;
        File file;
        byte abyte0[];
        file = new File(s);
        abyte0 = new byte[Math.max((int)(1.0D + 1.3999999999999999D * (double)file.length()), 40)];
        int i = 0;
        InputStream inputstream1 = new InputStream(new BufferedInputStream(new FileInputStream(file)), 1);
_L2:
        int j = inputstream1.read(abyte0, i, 4096);
        if (j >= 0)
        {
            break MISSING_BLOCK_LABEL_103;
        }
        String s1 = new String(abyte0, 0, i, "US-ASCII");
        Exception exception;
        IOException ioexception;
        Exception exception1;
        try
        {
            inputstream1.close();
        }
        catch (Exception exception2)
        {
            return s1;
        }
        return s1;
        i += j;
        if (true) goto _L2; else goto _L1
_L1:
        ioexception;
_L6:
        throw ioexception;
        exception;
_L4:
        try
        {
            inputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception1) { }
        throw exception;
        exception;
        inputstream = inputstream1;
        if (true) goto _L4; else goto _L3
_L3:
        ioexception;
        inputstream = inputstream1;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static String encodeObject(Serializable serializable)
        throws IOException
    {
        return encodeObject(serializable, 0);
    }

    public static String encodeObject(Serializable serializable, int i)
        throws IOException
    {
        ByteArrayOutputStream bytearrayoutputstream;
        OutputStream outputstream;
        GZIPOutputStream gzipoutputstream;
        ObjectOutputStream objectoutputstream;
        if (serializable == null)
        {
            throw new NullPointerException("Cannot serialize a null object.");
        }
        bytearrayoutputstream = null;
        outputstream = null;
        gzipoutputstream = null;
        objectoutputstream = null;
        ByteArrayOutputStream bytearrayoutputstream1 = new ByteArrayOutputStream();
        OutputStream outputstream1;
        IOException ioexception;
        Exception exception;
        GZIPOutputStream gzipoutputstream1;
        ObjectOutputStream objectoutputstream2;
        try
        {
            outputstream1 = new OutputStream(bytearrayoutputstream1, i | 1);
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            bytearrayoutputstream = bytearrayoutputstream1;
            outputstream = null;
            gzipoutputstream = null;
            objectoutputstream = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            bytearrayoutputstream = bytearrayoutputstream1;
            outputstream = null;
            gzipoutputstream = null;
            objectoutputstream = null;
            continue; /* Loop/switch isn't completed */
        }
        if ((i & 2) == 0) goto _L2; else goto _L1
_L1:
        try
        {
            gzipoutputstream1 = new GZIPOutputStream(outputstream1);
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            outputstream = outputstream1;
            bytearrayoutputstream = bytearrayoutputstream1;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            outputstream = outputstream1;
            bytearrayoutputstream = bytearrayoutputstream1;
            continue; /* Loop/switch isn't completed */
        }
        objectoutputstream2 = new ObjectOutputStream(gzipoutputstream1);
        objectoutputstream = objectoutputstream2;
        gzipoutputstream = gzipoutputstream1;
_L4:
        objectoutputstream.writeObject(serializable);
        ObjectOutputStream objectoutputstream1;
        Exception exception1;
        Exception exception2;
        Exception exception3;
        Exception exception4;
        String s;
        try
        {
            objectoutputstream.close();
        }
        catch (Exception exception5) { }
        try
        {
            gzipoutputstream.close();
        }
        catch (Exception exception6) { }
        try
        {
            outputstream1.close();
        }
        catch (Exception exception7) { }
        try
        {
            bytearrayoutputstream1.close();
        }
        catch (Exception exception8) { }
        try
        {
            s = new String(bytearrayoutputstream1.toByteArray(), "US-ASCII");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            return new String(bytearrayoutputstream1.toByteArray());
        }
        return s;
_L2:
        objectoutputstream1 = new ObjectOutputStream(outputstream1);
        objectoutputstream = objectoutputstream1;
        gzipoutputstream = null;
        if (true) goto _L4; else goto _L3
_L3:
        ioexception;
_L8:
        throw ioexception;
        exception;
_L6:
        try
        {
            objectoutputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception1) { }
        try
        {
            gzipoutputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception2) { }
        try
        {
            outputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception3) { }
        try
        {
            bytearrayoutputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception4) { }
        throw exception;
        exception;
        gzipoutputstream = gzipoutputstream1;
        outputstream = outputstream1;
        bytearrayoutputstream = bytearrayoutputstream1;
        objectoutputstream = null;
        if (true) goto _L6; else goto _L5
_L5:
        break MISSING_BLOCK_LABEL_48;
        ioexception;
        gzipoutputstream = gzipoutputstream1;
        outputstream = outputstream1;
        bytearrayoutputstream = bytearrayoutputstream1;
        objectoutputstream = null;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public static void encodeToFile(byte abyte0[], String s)
        throws IOException
    {
        OutputStream outputstream;
        if (abyte0 == null)
        {
            throw new NullPointerException("Data to encode was null.");
        }
        outputstream = null;
        OutputStream outputstream1 = new OutputStream(new FileOutputStream(s), 1);
        outputstream1.write(abyte0);
        IOException ioexception;
        Exception exception;
        try
        {
            outputstream1.close();
            return;
        }
        catch (Exception exception2)
        {
            return;
        }
        ioexception;
_L4:
        throw ioexception;
        exception;
_L2:
        try
        {
            outputstream.close();
        }
        catch (Exception exception1) { }
        throw exception;
        exception;
        outputstream = outputstream1;
        if (true) goto _L2; else goto _L1
_L1:
        ioexception;
        outputstream = outputstream1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static final byte[] getAlphabet(int i)
    {
        if ((i & 0x10) == 16)
        {
            return _URL_SAFE_ALPHABET;
        }
        if ((i & 0x20) == 32)
        {
            return _ORDERED_ALPHABET;
        } else
        {
            return _STANDARD_ALPHABET;
        }
    }

    private static final byte[] getDecodabet(int i)
    {
        if ((i & 0x10) == 16)
        {
            return _URL_SAFE_DECODABET;
        }
        if ((i & 0x20) == 32)
        {
            return _ORDERED_DECODABET;
        } else
        {
            return _STANDARD_DECODABET;
        }
    }

    static 
    {
        boolean flag;
        byte abyte0[];
        byte abyte1[];
        byte abyte2[];
        if (!com/waze/utils/Base64.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
        abyte0 = new byte[256];
        abyte0[0] = -9;
        abyte0[1] = -9;
        abyte0[2] = -9;
        abyte0[3] = -9;
        abyte0[4] = -9;
        abyte0[5] = -9;
        abyte0[6] = -9;
        abyte0[7] = -9;
        abyte0[8] = -9;
        abyte0[9] = -5;
        abyte0[10] = -5;
        abyte0[11] = -9;
        abyte0[12] = -9;
        abyte0[13] = -5;
        abyte0[14] = -9;
        abyte0[15] = -9;
        abyte0[16] = -9;
        abyte0[17] = -9;
        abyte0[18] = -9;
        abyte0[19] = -9;
        abyte0[20] = -9;
        abyte0[21] = -9;
        abyte0[22] = -9;
        abyte0[23] = -9;
        abyte0[24] = -9;
        abyte0[25] = -9;
        abyte0[26] = -9;
        abyte0[27] = -9;
        abyte0[28] = -9;
        abyte0[29] = -9;
        abyte0[30] = -9;
        abyte0[31] = -9;
        abyte0[32] = -5;
        abyte0[33] = -9;
        abyte0[34] = -9;
        abyte0[35] = -9;
        abyte0[36] = -9;
        abyte0[37] = -9;
        abyte0[38] = -9;
        abyte0[39] = -9;
        abyte0[40] = -9;
        abyte0[41] = -9;
        abyte0[42] = -9;
        abyte0[43] = 62;
        abyte0[44] = -9;
        abyte0[45] = -9;
        abyte0[46] = -9;
        abyte0[47] = 63;
        abyte0[48] = 52;
        abyte0[49] = 53;
        abyte0[50] = 54;
        abyte0[51] = 55;
        abyte0[52] = 56;
        abyte0[53] = 57;
        abyte0[54] = 58;
        abyte0[55] = 59;
        abyte0[56] = 60;
        abyte0[57] = 61;
        abyte0[58] = -9;
        abyte0[59] = -9;
        abyte0[60] = -9;
        abyte0[61] = -1;
        abyte0[62] = -9;
        abyte0[63] = -9;
        abyte0[64] = -9;
        abyte0[66] = 1;
        abyte0[67] = 2;
        abyte0[68] = 3;
        abyte0[69] = 4;
        abyte0[70] = 5;
        abyte0[71] = 6;
        abyte0[72] = 7;
        abyte0[73] = 8;
        abyte0[74] = 9;
        abyte0[75] = 10;
        abyte0[76] = 11;
        abyte0[77] = 12;
        abyte0[78] = 13;
        abyte0[79] = 14;
        abyte0[80] = 15;
        abyte0[81] = 16;
        abyte0[82] = 17;
        abyte0[83] = 18;
        abyte0[84] = 19;
        abyte0[85] = 20;
        abyte0[86] = 21;
        abyte0[87] = 22;
        abyte0[88] = 23;
        abyte0[89] = 24;
        abyte0[90] = 25;
        abyte0[91] = -9;
        abyte0[92] = -9;
        abyte0[93] = -9;
        abyte0[94] = -9;
        abyte0[95] = -9;
        abyte0[96] = -9;
        abyte0[97] = 26;
        abyte0[98] = 27;
        abyte0[99] = 28;
        abyte0[100] = 29;
        abyte0[101] = 30;
        abyte0[102] = 31;
        abyte0[103] = 32;
        abyte0[104] = 33;
        abyte0[105] = 34;
        abyte0[106] = 35;
        abyte0[107] = 36;
        abyte0[108] = 37;
        abyte0[109] = 38;
        abyte0[110] = 39;
        abyte0[111] = 40;
        abyte0[112] = 41;
        abyte0[113] = 42;
        abyte0[114] = 43;
        abyte0[115] = 44;
        abyte0[116] = 45;
        abyte0[117] = 46;
        abyte0[118] = 47;
        abyte0[119] = 48;
        abyte0[120] = 49;
        abyte0[121] = 50;
        abyte0[122] = 51;
        abyte0[123] = -9;
        abyte0[124] = -9;
        abyte0[125] = -9;
        abyte0[126] = -9;
        abyte0[127] = -9;
        abyte0[128] = -9;
        abyte0[129] = -9;
        abyte0[130] = -9;
        abyte0[131] = -9;
        abyte0[132] = -9;
        abyte0[133] = -9;
        abyte0[134] = -9;
        abyte0[135] = -9;
        abyte0[136] = -9;
        abyte0[137] = -9;
        abyte0[138] = -9;
        abyte0[139] = -9;
        abyte0[140] = -9;
        abyte0[141] = -9;
        abyte0[142] = -9;
        abyte0[143] = -9;
        abyte0[144] = -9;
        abyte0[145] = -9;
        abyte0[146] = -9;
        abyte0[147] = -9;
        abyte0[148] = -9;
        abyte0[149] = -9;
        abyte0[150] = -9;
        abyte0[151] = -9;
        abyte0[152] = -9;
        abyte0[153] = -9;
        abyte0[154] = -9;
        abyte0[155] = -9;
        abyte0[156] = -9;
        abyte0[157] = -9;
        abyte0[158] = -9;
        abyte0[159] = -9;
        abyte0[160] = -9;
        abyte0[161] = -9;
        abyte0[162] = -9;
        abyte0[163] = -9;
        abyte0[164] = -9;
        abyte0[165] = -9;
        abyte0[166] = -9;
        abyte0[167] = -9;
        abyte0[168] = -9;
        abyte0[169] = -9;
        abyte0[170] = -9;
        abyte0[171] = -9;
        abyte0[172] = -9;
        abyte0[173] = -9;
        abyte0[174] = -9;
        abyte0[175] = -9;
        abyte0[176] = -9;
        abyte0[177] = -9;
        abyte0[178] = -9;
        abyte0[179] = -9;
        abyte0[180] = -9;
        abyte0[181] = -9;
        abyte0[182] = -9;
        abyte0[183] = -9;
        abyte0[184] = -9;
        abyte0[185] = -9;
        abyte0[186] = -9;
        abyte0[187] = -9;
        abyte0[188] = -9;
        abyte0[189] = -9;
        abyte0[190] = -9;
        abyte0[191] = -9;
        abyte0[192] = -9;
        abyte0[193] = -9;
        abyte0[194] = -9;
        abyte0[195] = -9;
        abyte0[196] = -9;
        abyte0[197] = -9;
        abyte0[198] = -9;
        abyte0[199] = -9;
        abyte0[200] = -9;
        abyte0[201] = -9;
        abyte0[202] = -9;
        abyte0[203] = -9;
        abyte0[204] = -9;
        abyte0[205] = -9;
        abyte0[206] = -9;
        abyte0[207] = -9;
        abyte0[208] = -9;
        abyte0[209] = -9;
        abyte0[210] = -9;
        abyte0[211] = -9;
        abyte0[212] = -9;
        abyte0[213] = -9;
        abyte0[214] = -9;
        abyte0[215] = -9;
        abyte0[216] = -9;
        abyte0[217] = -9;
        abyte0[218] = -9;
        abyte0[219] = -9;
        abyte0[220] = -9;
        abyte0[221] = -9;
        abyte0[222] = -9;
        abyte0[223] = -9;
        abyte0[224] = -9;
        abyte0[225] = -9;
        abyte0[226] = -9;
        abyte0[227] = -9;
        abyte0[228] = -9;
        abyte0[229] = -9;
        abyte0[230] = -9;
        abyte0[231] = -9;
        abyte0[232] = -9;
        abyte0[233] = -9;
        abyte0[234] = -9;
        abyte0[235] = -9;
        abyte0[236] = -9;
        abyte0[237] = -9;
        abyte0[238] = -9;
        abyte0[239] = -9;
        abyte0[240] = -9;
        abyte0[241] = -9;
        abyte0[242] = -9;
        abyte0[243] = -9;
        abyte0[244] = -9;
        abyte0[245] = -9;
        abyte0[246] = -9;
        abyte0[247] = -9;
        abyte0[248] = -9;
        abyte0[249] = -9;
        abyte0[250] = -9;
        abyte0[251] = -9;
        abyte0[252] = -9;
        abyte0[253] = -9;
        abyte0[254] = -9;
        abyte0[255] = -9;
        _STANDARD_DECODABET = abyte0;
        abyte1 = new byte[256];
        abyte1[0] = -9;
        abyte1[1] = -9;
        abyte1[2] = -9;
        abyte1[3] = -9;
        abyte1[4] = -9;
        abyte1[5] = -9;
        abyte1[6] = -9;
        abyte1[7] = -9;
        abyte1[8] = -9;
        abyte1[9] = -5;
        abyte1[10] = -5;
        abyte1[11] = -9;
        abyte1[12] = -9;
        abyte1[13] = -5;
        abyte1[14] = -9;
        abyte1[15] = -9;
        abyte1[16] = -9;
        abyte1[17] = -9;
        abyte1[18] = -9;
        abyte1[19] = -9;
        abyte1[20] = -9;
        abyte1[21] = -9;
        abyte1[22] = -9;
        abyte1[23] = -9;
        abyte1[24] = -9;
        abyte1[25] = -9;
        abyte1[26] = -9;
        abyte1[27] = -9;
        abyte1[28] = -9;
        abyte1[29] = -9;
        abyte1[30] = -9;
        abyte1[31] = -9;
        abyte1[32] = -5;
        abyte1[33] = -9;
        abyte1[34] = -9;
        abyte1[35] = -9;
        abyte1[36] = -9;
        abyte1[37] = -9;
        abyte1[38] = -9;
        abyte1[39] = -9;
        abyte1[40] = -9;
        abyte1[41] = -9;
        abyte1[42] = -9;
        abyte1[43] = -9;
        abyte1[44] = -9;
        abyte1[45] = 62;
        abyte1[46] = -9;
        abyte1[47] = -9;
        abyte1[48] = 52;
        abyte1[49] = 53;
        abyte1[50] = 54;
        abyte1[51] = 55;
        abyte1[52] = 56;
        abyte1[53] = 57;
        abyte1[54] = 58;
        abyte1[55] = 59;
        abyte1[56] = 60;
        abyte1[57] = 61;
        abyte1[58] = -9;
        abyte1[59] = -9;
        abyte1[60] = -9;
        abyte1[61] = -1;
        abyte1[62] = -9;
        abyte1[63] = -9;
        abyte1[64] = -9;
        abyte1[66] = 1;
        abyte1[67] = 2;
        abyte1[68] = 3;
        abyte1[69] = 4;
        abyte1[70] = 5;
        abyte1[71] = 6;
        abyte1[72] = 7;
        abyte1[73] = 8;
        abyte1[74] = 9;
        abyte1[75] = 10;
        abyte1[76] = 11;
        abyte1[77] = 12;
        abyte1[78] = 13;
        abyte1[79] = 14;
        abyte1[80] = 15;
        abyte1[81] = 16;
        abyte1[82] = 17;
        abyte1[83] = 18;
        abyte1[84] = 19;
        abyte1[85] = 20;
        abyte1[86] = 21;
        abyte1[87] = 22;
        abyte1[88] = 23;
        abyte1[89] = 24;
        abyte1[90] = 25;
        abyte1[91] = -9;
        abyte1[92] = -9;
        abyte1[93] = -9;
        abyte1[94] = -9;
        abyte1[95] = 63;
        abyte1[96] = -9;
        abyte1[97] = 26;
        abyte1[98] = 27;
        abyte1[99] = 28;
        abyte1[100] = 29;
        abyte1[101] = 30;
        abyte1[102] = 31;
        abyte1[103] = 32;
        abyte1[104] = 33;
        abyte1[105] = 34;
        abyte1[106] = 35;
        abyte1[107] = 36;
        abyte1[108] = 37;
        abyte1[109] = 38;
        abyte1[110] = 39;
        abyte1[111] = 40;
        abyte1[112] = 41;
        abyte1[113] = 42;
        abyte1[114] = 43;
        abyte1[115] = 44;
        abyte1[116] = 45;
        abyte1[117] = 46;
        abyte1[118] = 47;
        abyte1[119] = 48;
        abyte1[120] = 49;
        abyte1[121] = 50;
        abyte1[122] = 51;
        abyte1[123] = -9;
        abyte1[124] = -9;
        abyte1[125] = -9;
        abyte1[126] = -9;
        abyte1[127] = -9;
        abyte1[128] = -9;
        abyte1[129] = -9;
        abyte1[130] = -9;
        abyte1[131] = -9;
        abyte1[132] = -9;
        abyte1[133] = -9;
        abyte1[134] = -9;
        abyte1[135] = -9;
        abyte1[136] = -9;
        abyte1[137] = -9;
        abyte1[138] = -9;
        abyte1[139] = -9;
        abyte1[140] = -9;
        abyte1[141] = -9;
        abyte1[142] = -9;
        abyte1[143] = -9;
        abyte1[144] = -9;
        abyte1[145] = -9;
        abyte1[146] = -9;
        abyte1[147] = -9;
        abyte1[148] = -9;
        abyte1[149] = -9;
        abyte1[150] = -9;
        abyte1[151] = -9;
        abyte1[152] = -9;
        abyte1[153] = -9;
        abyte1[154] = -9;
        abyte1[155] = -9;
        abyte1[156] = -9;
        abyte1[157] = -9;
        abyte1[158] = -9;
        abyte1[159] = -9;
        abyte1[160] = -9;
        abyte1[161] = -9;
        abyte1[162] = -9;
        abyte1[163] = -9;
        abyte1[164] = -9;
        abyte1[165] = -9;
        abyte1[166] = -9;
        abyte1[167] = -9;
        abyte1[168] = -9;
        abyte1[169] = -9;
        abyte1[170] = -9;
        abyte1[171] = -9;
        abyte1[172] = -9;
        abyte1[173] = -9;
        abyte1[174] = -9;
        abyte1[175] = -9;
        abyte1[176] = -9;
        abyte1[177] = -9;
        abyte1[178] = -9;
        abyte1[179] = -9;
        abyte1[180] = -9;
        abyte1[181] = -9;
        abyte1[182] = -9;
        abyte1[183] = -9;
        abyte1[184] = -9;
        abyte1[185] = -9;
        abyte1[186] = -9;
        abyte1[187] = -9;
        abyte1[188] = -9;
        abyte1[189] = -9;
        abyte1[190] = -9;
        abyte1[191] = -9;
        abyte1[192] = -9;
        abyte1[193] = -9;
        abyte1[194] = -9;
        abyte1[195] = -9;
        abyte1[196] = -9;
        abyte1[197] = -9;
        abyte1[198] = -9;
        abyte1[199] = -9;
        abyte1[200] = -9;
        abyte1[201] = -9;
        abyte1[202] = -9;
        abyte1[203] = -9;
        abyte1[204] = -9;
        abyte1[205] = -9;
        abyte1[206] = -9;
        abyte1[207] = -9;
        abyte1[208] = -9;
        abyte1[209] = -9;
        abyte1[210] = -9;
        abyte1[211] = -9;
        abyte1[212] = -9;
        abyte1[213] = -9;
        abyte1[214] = -9;
        abyte1[215] = -9;
        abyte1[216] = -9;
        abyte1[217] = -9;
        abyte1[218] = -9;
        abyte1[219] = -9;
        abyte1[220] = -9;
        abyte1[221] = -9;
        abyte1[222] = -9;
        abyte1[223] = -9;
        abyte1[224] = -9;
        abyte1[225] = -9;
        abyte1[226] = -9;
        abyte1[227] = -9;
        abyte1[228] = -9;
        abyte1[229] = -9;
        abyte1[230] = -9;
        abyte1[231] = -9;
        abyte1[232] = -9;
        abyte1[233] = -9;
        abyte1[234] = -9;
        abyte1[235] = -9;
        abyte1[236] = -9;
        abyte1[237] = -9;
        abyte1[238] = -9;
        abyte1[239] = -9;
        abyte1[240] = -9;
        abyte1[241] = -9;
        abyte1[242] = -9;
        abyte1[243] = -9;
        abyte1[244] = -9;
        abyte1[245] = -9;
        abyte1[246] = -9;
        abyte1[247] = -9;
        abyte1[248] = -9;
        abyte1[249] = -9;
        abyte1[250] = -9;
        abyte1[251] = -9;
        abyte1[252] = -9;
        abyte1[253] = -9;
        abyte1[254] = -9;
        abyte1[255] = -9;
        _URL_SAFE_DECODABET = abyte1;
        abyte2 = new byte[257];
        abyte2[0] = -9;
        abyte2[1] = -9;
        abyte2[2] = -9;
        abyte2[3] = -9;
        abyte2[4] = -9;
        abyte2[5] = -9;
        abyte2[6] = -9;
        abyte2[7] = -9;
        abyte2[8] = -9;
        abyte2[9] = -5;
        abyte2[10] = -5;
        abyte2[11] = -9;
        abyte2[12] = -9;
        abyte2[13] = -5;
        abyte2[14] = -9;
        abyte2[15] = -9;
        abyte2[16] = -9;
        abyte2[17] = -9;
        abyte2[18] = -9;
        abyte2[19] = -9;
        abyte2[20] = -9;
        abyte2[21] = -9;
        abyte2[22] = -9;
        abyte2[23] = -9;
        abyte2[24] = -9;
        abyte2[25] = -9;
        abyte2[26] = -9;
        abyte2[27] = -9;
        abyte2[28] = -9;
        abyte2[29] = -9;
        abyte2[30] = -9;
        abyte2[31] = -9;
        abyte2[32] = -5;
        abyte2[33] = -9;
        abyte2[34] = -9;
        abyte2[35] = -9;
        abyte2[36] = -9;
        abyte2[37] = -9;
        abyte2[38] = -9;
        abyte2[39] = -9;
        abyte2[40] = -9;
        abyte2[41] = -9;
        abyte2[42] = -9;
        abyte2[43] = -9;
        abyte2[44] = -9;
        abyte2[46] = -9;
        abyte2[47] = -9;
        abyte2[48] = 1;
        abyte2[49] = 2;
        abyte2[50] = 3;
        abyte2[51] = 4;
        abyte2[52] = 5;
        abyte2[53] = 6;
        abyte2[54] = 7;
        abyte2[55] = 8;
        abyte2[56] = 9;
        abyte2[57] = 10;
        abyte2[58] = -9;
        abyte2[59] = -9;
        abyte2[60] = -9;
        abyte2[61] = -1;
        abyte2[62] = -9;
        abyte2[63] = -9;
        abyte2[64] = -9;
        abyte2[65] = 11;
        abyte2[66] = 12;
        abyte2[67] = 13;
        abyte2[68] = 14;
        abyte2[69] = 15;
        abyte2[70] = 16;
        abyte2[71] = 17;
        abyte2[72] = 18;
        abyte2[73] = 19;
        abyte2[74] = 20;
        abyte2[75] = 21;
        abyte2[76] = 22;
        abyte2[77] = 23;
        abyte2[78] = 24;
        abyte2[79] = 25;
        abyte2[80] = 26;
        abyte2[81] = 27;
        abyte2[82] = 28;
        abyte2[83] = 29;
        abyte2[84] = 30;
        abyte2[85] = 31;
        abyte2[86] = 32;
        abyte2[87] = 33;
        abyte2[88] = 34;
        abyte2[89] = 35;
        abyte2[90] = 36;
        abyte2[91] = -9;
        abyte2[92] = -9;
        abyte2[93] = -9;
        abyte2[94] = -9;
        abyte2[95] = 37;
        abyte2[96] = -9;
        abyte2[97] = 38;
        abyte2[98] = 39;
        abyte2[99] = 40;
        abyte2[100] = 41;
        abyte2[101] = 42;
        abyte2[102] = 43;
        abyte2[103] = 44;
        abyte2[104] = 45;
        abyte2[105] = 46;
        abyte2[106] = 47;
        abyte2[107] = 48;
        abyte2[108] = 49;
        abyte2[109] = 50;
        abyte2[110] = 51;
        abyte2[111] = 52;
        abyte2[112] = 53;
        abyte2[113] = 54;
        abyte2[114] = 55;
        abyte2[115] = 56;
        abyte2[116] = 57;
        abyte2[117] = 58;
        abyte2[118] = 59;
        abyte2[119] = 60;
        abyte2[120] = 61;
        abyte2[121] = 62;
        abyte2[122] = 63;
        abyte2[123] = -9;
        abyte2[124] = -9;
        abyte2[125] = -9;
        abyte2[126] = -9;
        abyte2[127] = -9;
        abyte2[128] = -9;
        abyte2[129] = -9;
        abyte2[130] = -9;
        abyte2[131] = -9;
        abyte2[132] = -9;
        abyte2[133] = -9;
        abyte2[134] = -9;
        abyte2[135] = -9;
        abyte2[136] = -9;
        abyte2[137] = -9;
        abyte2[138] = -9;
        abyte2[139] = -9;
        abyte2[140] = -9;
        abyte2[141] = -9;
        abyte2[142] = -9;
        abyte2[143] = -9;
        abyte2[144] = -9;
        abyte2[145] = -9;
        abyte2[146] = -9;
        abyte2[147] = -9;
        abyte2[148] = -9;
        abyte2[149] = -9;
        abyte2[150] = -9;
        abyte2[151] = -9;
        abyte2[152] = -9;
        abyte2[153] = -9;
        abyte2[154] = -9;
        abyte2[155] = -9;
        abyte2[156] = -9;
        abyte2[157] = -9;
        abyte2[158] = -9;
        abyte2[159] = -9;
        abyte2[160] = -9;
        abyte2[161] = -9;
        abyte2[162] = -9;
        abyte2[163] = -9;
        abyte2[164] = -9;
        abyte2[165] = -9;
        abyte2[166] = -9;
        abyte2[167] = -9;
        abyte2[168] = -9;
        abyte2[169] = -9;
        abyte2[170] = -9;
        abyte2[171] = -9;
        abyte2[172] = -9;
        abyte2[173] = -9;
        abyte2[174] = -9;
        abyte2[175] = -9;
        abyte2[176] = -9;
        abyte2[177] = -9;
        abyte2[178] = -9;
        abyte2[179] = -9;
        abyte2[180] = -9;
        abyte2[181] = -9;
        abyte2[182] = -9;
        abyte2[183] = -9;
        abyte2[184] = -9;
        abyte2[185] = -9;
        abyte2[186] = -9;
        abyte2[187] = -9;
        abyte2[188] = -9;
        abyte2[189] = -9;
        abyte2[190] = -9;
        abyte2[191] = -9;
        abyte2[192] = -9;
        abyte2[193] = -9;
        abyte2[194] = -9;
        abyte2[195] = -9;
        abyte2[196] = -9;
        abyte2[197] = -9;
        abyte2[198] = -9;
        abyte2[199] = -9;
        abyte2[200] = -9;
        abyte2[201] = -9;
        abyte2[202] = -9;
        abyte2[203] = -9;
        abyte2[204] = -9;
        abyte2[205] = -9;
        abyte2[206] = -9;
        abyte2[207] = -9;
        abyte2[208] = -9;
        abyte2[209] = -9;
        abyte2[210] = -9;
        abyte2[211] = -9;
        abyte2[212] = -9;
        abyte2[213] = -9;
        abyte2[214] = -9;
        abyte2[215] = -9;
        abyte2[216] = -9;
        abyte2[217] = -9;
        abyte2[218] = -9;
        abyte2[219] = -9;
        abyte2[220] = -9;
        abyte2[221] = -9;
        abyte2[222] = -9;
        abyte2[223] = -9;
        abyte2[224] = -9;
        abyte2[225] = -9;
        abyte2[226] = -9;
        abyte2[227] = -9;
        abyte2[228] = -9;
        abyte2[229] = -9;
        abyte2[230] = -9;
        abyte2[231] = -9;
        abyte2[232] = -9;
        abyte2[233] = -9;
        abyte2[234] = -9;
        abyte2[235] = -9;
        abyte2[236] = -9;
        abyte2[237] = -9;
        abyte2[238] = -9;
        abyte2[239] = -9;
        abyte2[240] = -9;
        abyte2[241] = -9;
        abyte2[242] = -9;
        abyte2[243] = -9;
        abyte2[244] = -9;
        abyte2[245] = -9;
        abyte2[246] = -9;
        abyte2[247] = -9;
        abyte2[248] = -9;
        abyte2[249] = -9;
        abyte2[250] = -9;
        abyte2[251] = -9;
        abyte2[252] = -9;
        abyte2[253] = -9;
        abyte2[254] = -9;
        abyte2[255] = -9;
        abyte2[256] = -9;
        _ORDERED_DECODABET = abyte2;
    }




}
