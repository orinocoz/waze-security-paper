// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook:
//            TokenCachingStrategy, LoggingBehavior

public class SharedPreferencesTokenCachingStrategy extends TokenCachingStrategy
{

    private static final String DEFAULT_CACHE_KEY = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY";
    private static final String JSON_VALUE = "value";
    private static final String JSON_VALUE_ENUM_TYPE = "enumType";
    private static final String JSON_VALUE_TYPE = "valueType";
    private static final String TAG = com/facebook/SharedPreferencesTokenCachingStrategy.getSimpleName();
    private static final String TYPE_BOOLEAN = "bool";
    private static final String TYPE_BOOLEAN_ARRAY = "bool[]";
    private static final String TYPE_BYTE = "byte";
    private static final String TYPE_BYTE_ARRAY = "byte[]";
    private static final String TYPE_CHAR = "char";
    private static final String TYPE_CHAR_ARRAY = "char[]";
    private static final String TYPE_DOUBLE = "double";
    private static final String TYPE_DOUBLE_ARRAY = "double[]";
    private static final String TYPE_ENUM = "enum";
    private static final String TYPE_FLOAT = "float";
    private static final String TYPE_FLOAT_ARRAY = "float[]";
    private static final String TYPE_INTEGER = "int";
    private static final String TYPE_INTEGER_ARRAY = "int[]";
    private static final String TYPE_LONG = "long";
    private static final String TYPE_LONG_ARRAY = "long[]";
    private static final String TYPE_SHORT = "short";
    private static final String TYPE_SHORT_ARRAY = "short[]";
    private static final String TYPE_STRING = "string";
    private static final String TYPE_STRING_LIST = "stringList";
    private SharedPreferences cache;
    private String cacheKey;

    public SharedPreferencesTokenCachingStrategy(Context context)
    {
        this(context, null);
    }

    public SharedPreferencesTokenCachingStrategy(Context context, String s)
    {
        Validate.notNull(context, "context");
        if (Utility.isNullOrEmpty(s))
        {
            s = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY";
        }
        cacheKey = s;
        Context context1 = context.getApplicationContext();
        if (context1 != null)
        {
            context = context1;
        }
        cache = context.getSharedPreferences(cacheKey, 0);
    }

    private void deserializeKey(String s, Bundle bundle)
        throws JSONException
    {
        JSONObject jsonobject;
        String s1;
        jsonobject = new JSONObject(cache.getString(s, "{}"));
        s1 = jsonobject.getString("valueType");
        if (!s1.equals("bool")) goto _L2; else goto _L1
_L1:
        bundle.putBoolean(s, jsonobject.getBoolean("value"));
_L4:
        return;
_L2:
        if (s1.equals("bool[]"))
        {
            JSONArray jsonarray8 = jsonobject.getJSONArray("value");
            boolean aflag[] = new boolean[jsonarray8.length()];
            int j2 = 0;
            do
            {
                if (j2 >= aflag.length)
                {
                    bundle.putBooleanArray(s, aflag);
                    return;
                }
                aflag[j2] = jsonarray8.getBoolean(j2);
                j2++;
            } while (true);
        }
        if (s1.equals("byte"))
        {
            bundle.putByte(s, (byte)jsonobject.getInt("value"));
            return;
        }
        if (s1.equals("byte[]"))
        {
            JSONArray jsonarray7 = jsonobject.getJSONArray("value");
            byte abyte0[] = new byte[jsonarray7.length()];
            int i2 = 0;
            do
            {
                if (i2 >= abyte0.length)
                {
                    bundle.putByteArray(s, abyte0);
                    return;
                }
                abyte0[i2] = (byte)jsonarray7.getInt(i2);
                i2++;
            } while (true);
        }
        if (s1.equals("short"))
        {
            bundle.putShort(s, (short)jsonobject.getInt("value"));
            return;
        }
        if (s1.equals("short[]"))
        {
            JSONArray jsonarray6 = jsonobject.getJSONArray("value");
            short aword0[] = new short[jsonarray6.length()];
            int l1 = 0;
            do
            {
                if (l1 >= aword0.length)
                {
                    bundle.putShortArray(s, aword0);
                    return;
                }
                aword0[l1] = (short)jsonarray6.getInt(l1);
                l1++;
            } while (true);
        }
        if (s1.equals("int"))
        {
            bundle.putInt(s, jsonobject.getInt("value"));
            return;
        }
        if (s1.equals("int[]"))
        {
            JSONArray jsonarray5 = jsonobject.getJSONArray("value");
            int ai[] = new int[jsonarray5.length()];
            int k1 = 0;
            do
            {
                if (k1 >= ai.length)
                {
                    bundle.putIntArray(s, ai);
                    return;
                }
                ai[k1] = jsonarray5.getInt(k1);
                k1++;
            } while (true);
        }
        if (s1.equals("long"))
        {
            bundle.putLong(s, jsonobject.getLong("value"));
            return;
        }
        if (s1.equals("long[]"))
        {
            JSONArray jsonarray4 = jsonobject.getJSONArray("value");
            long al[] = new long[jsonarray4.length()];
            int j1 = 0;
            do
            {
                if (j1 >= al.length)
                {
                    bundle.putLongArray(s, al);
                    return;
                }
                al[j1] = jsonarray4.getLong(j1);
                j1++;
            } while (true);
        }
        if (s1.equals("float"))
        {
            bundle.putFloat(s, (float)jsonobject.getDouble("value"));
            return;
        }
        if (s1.equals("float[]"))
        {
            JSONArray jsonarray3 = jsonobject.getJSONArray("value");
            float af[] = new float[jsonarray3.length()];
            int i1 = 0;
            do
            {
                if (i1 >= af.length)
                {
                    bundle.putFloatArray(s, af);
                    return;
                }
                af[i1] = (float)jsonarray3.getDouble(i1);
                i1++;
            } while (true);
        }
        if (s1.equals("double"))
        {
            bundle.putDouble(s, jsonobject.getDouble("value"));
            return;
        }
        if (s1.equals("double[]"))
        {
            JSONArray jsonarray2 = jsonobject.getJSONArray("value");
            double ad[] = new double[jsonarray2.length()];
            int l = 0;
            do
            {
                if (l >= ad.length)
                {
                    bundle.putDoubleArray(s, ad);
                    return;
                }
                ad[l] = jsonarray2.getDouble(l);
                l++;
            } while (true);
        }
        if (!s1.equals("char"))
        {
            break; /* Loop/switch isn't completed */
        }
        String s4 = jsonobject.getString("value");
        if (s4 != null && s4.length() == 1)
        {
            bundle.putChar(s, s4.charAt(0));
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (s1.equals("char[]"))
        {
            JSONArray jsonarray1 = jsonobject.getJSONArray("value");
            char ac[] = new char[jsonarray1.length()];
            int k = 0;
            do
            {
                if (k >= ac.length)
                {
                    bundle.putCharArray(s, ac);
                    return;
                }
                String s3 = jsonarray1.getString(k);
                if (s3 != null && s3.length() == 1)
                {
                    ac[k] = s3.charAt(0);
                }
                k++;
            } while (true);
        }
        if (s1.equals("string"))
        {
            bundle.putString(s, jsonobject.getString("value"));
            return;
        }
        if (s1.equals("stringList"))
        {
            JSONArray jsonarray = jsonobject.getJSONArray("value");
            int i = jsonarray.length();
            ArrayList arraylist = new ArrayList(i);
            int j = 0;
            do
            {
                if (j >= i)
                {
                    bundle.putStringArrayList(s, arraylist);
                    return;
                }
                Object obj = jsonarray.get(j);
                String s2;
                if (obj == JSONObject.NULL)
                {
                    s2 = null;
                } else
                {
                    s2 = (String)obj;
                }
                arraylist.add(j, s2);
                j++;
            } while (true);
        }
        if (s1.equals("enum"))
        {
            try
            {
                bundle.putSerializable(s, Enum.valueOf(Class.forName(jsonobject.getString("enumType")), jsonobject.getString("value")));
                return;
            }
            catch (ClassNotFoundException classnotfoundexception)
            {
                return;
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                return;
            }
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    private void serializeKey(String s, Bundle bundle, android.content.SharedPreferences.Editor editor)
        throws JSONException
    {
        int i = 0;
        Object obj = bundle.get(s);
        if (obj != null)
        {
            JSONArray jsonarray = null;
            JSONObject jsonobject = new JSONObject();
            String s1;
            if (obj instanceof Byte)
            {
                s1 = "byte";
                jsonobject.put("value", ((Byte)obj).intValue());
            } else
            if (obj instanceof Short)
            {
                s1 = "short";
                jsonobject.put("value", ((Short)obj).intValue());
                jsonarray = null;
            } else
            if (obj instanceof Integer)
            {
                s1 = "int";
                jsonobject.put("value", ((Integer)obj).intValue());
                jsonarray = null;
            } else
            if (obj instanceof Long)
            {
                s1 = "long";
                jsonobject.put("value", ((Long)obj).longValue());
                jsonarray = null;
            } else
            if (obj instanceof Float)
            {
                s1 = "float";
                jsonobject.put("value", ((Float)obj).doubleValue());
                jsonarray = null;
            } else
            if (obj instanceof Double)
            {
                s1 = "double";
                jsonobject.put("value", ((Double)obj).doubleValue());
                jsonarray = null;
            } else
            if (obj instanceof Boolean)
            {
                s1 = "bool";
                jsonobject.put("value", ((Boolean)obj).booleanValue());
                jsonarray = null;
            } else
            if (obj instanceof Character)
            {
                s1 = "char";
                jsonobject.put("value", obj.toString());
                jsonarray = null;
            } else
            if (obj instanceof String)
            {
                s1 = "string";
                jsonobject.put("value", (String)obj);
                jsonarray = null;
            } else
            if (obj instanceof Enum)
            {
                s1 = "enum";
                jsonobject.put("value", obj.toString());
                jsonobject.put("enumType", obj.getClass().getName());
                jsonarray = null;
            } else
            {
                jsonarray = new JSONArray();
                if (obj instanceof byte[])
                {
                    s1 = "byte[]";
                    byte abyte0[] = (byte[])obj;
                    int i2 = abyte0.length;
                    while (i < i2) 
                    {
                        jsonarray.put(abyte0[i]);
                        i++;
                    }
                } else
                if (obj instanceof short[])
                {
                    s1 = "short[]";
                    short aword0[] = (short[])obj;
                    int l1 = aword0.length;
                    while (i < l1) 
                    {
                        jsonarray.put(aword0[i]);
                        i++;
                    }
                } else
                if (obj instanceof int[])
                {
                    s1 = "int[]";
                    int ai[] = (int[])obj;
                    int k1 = ai.length;
                    while (i < k1) 
                    {
                        jsonarray.put(ai[i]);
                        i++;
                    }
                } else
                if (obj instanceof long[])
                {
                    s1 = "long[]";
                    long al[] = (long[])obj;
                    int j1 = al.length;
                    while (i < j1) 
                    {
                        jsonarray.put(al[i]);
                        i++;
                    }
                } else
                if (obj instanceof float[])
                {
                    s1 = "float[]";
                    float af[] = (float[])obj;
                    int i1 = af.length;
                    while (i < i1) 
                    {
                        jsonarray.put(af[i]);
                        i++;
                    }
                } else
                if (obj instanceof double[])
                {
                    s1 = "double[]";
                    double ad[] = (double[])obj;
                    int l = ad.length;
                    while (i < l) 
                    {
                        jsonarray.put(ad[i]);
                        i++;
                    }
                } else
                if (obj instanceof boolean[])
                {
                    s1 = "bool[]";
                    boolean aflag[] = (boolean[])obj;
                    int k = aflag.length;
                    while (i < k) 
                    {
                        jsonarray.put(aflag[i]);
                        i++;
                    }
                } else
                if (obj instanceof char[])
                {
                    s1 = "char[]";
                    char ac[] = (char[])obj;
                    int j = ac.length;
                    while (i < j) 
                    {
                        jsonarray.put(String.valueOf(ac[i]));
                        i++;
                    }
                } else
                if (obj instanceof List)
                {
                    s1 = "stringList";
                    Iterator iterator = ((List)obj).iterator();
                    while (iterator.hasNext()) 
                    {
                        Object obj1 = (String)iterator.next();
                        if (obj1 == null)
                        {
                            obj1 = JSONObject.NULL;
                        }
                        jsonarray.put(obj1);
                    }
                } else
                {
                    jsonarray = null;
                    s1 = null;
                }
            }
            if (s1 != null)
            {
                jsonobject.put("valueType", s1);
                if (jsonarray != null)
                {
                    jsonobject.putOpt("value", jsonarray);
                }
                editor.putString(s, jsonobject.toString());
                return;
            }
        }
    }

    public void clear()
    {
        cache.edit().clear().apply();
    }

    public Bundle load()
    {
        Bundle bundle = new Bundle();
        Iterator iterator = cache.getAll().keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return bundle;
            }
            String s = (String)iterator.next();
            try
            {
                deserializeKey(s, bundle);
            }
            catch (JSONException jsonexception)
            {
                Logger.log(LoggingBehavior.CACHE, 5, TAG, (new StringBuilder("Error reading cached value for key: '")).append(s).append("' -- ").append(jsonexception).toString());
                return null;
            }
        } while (true);
    }

    public void save(Bundle bundle)
    {
        Validate.notNull(bundle, "bundle");
        android.content.SharedPreferences.Editor editor = cache.edit();
        Iterator iterator = bundle.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                editor.apply();
                return;
            }
            String s = (String)iterator.next();
            try
            {
                serializeKey(s, bundle, editor);
            }
            catch (JSONException jsonexception)
            {
                Logger.log(LoggingBehavior.CACHE, 5, TAG, (new StringBuilder("Error processing value for key: '")).append(s).append("' -- ").append(jsonexception).toString());
                return;
            }
        } while (true);
    }

}
