// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package bolts;

import android.content.Context;
import android.net.Uri;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package bolts:
//            AppLinkResolver, AppLink, Capture, Task, 
//            Continuation

public class WebViewAppLinkResolver
    implements AppLinkResolver
{

    private static final String KEY_AL_VALUE = "value";
    private static final String KEY_ANDROID = "android";
    private static final String KEY_APP_NAME = "app_name";
    private static final String KEY_CLASS = "class";
    private static final String KEY_PACKAGE = "package";
    private static final String KEY_SHOULD_FALLBACK = "should_fallback";
    private static final String KEY_URL = "url";
    private static final String KEY_WEB = "web";
    private static final String KEY_WEB_URL = "url";
    private static final String META_TAG_PREFIX = "al";
    private static final String PREFER_HEADER = "Prefer-Html-Meta-Tags";
    private static final String TAG_EXTRACTION_JAVASCRIPT = "javascript:boltsWebViewAppLinkResolverResult.setValue((function() {  var metaTags = document.getElementsByTagName('meta');  var results = [];  for (var i = 0; i < metaTags.length; i++) {    var property = metaTags[i].getAttribute('property');    if (property && property.substring(0, 'al:'.length) === 'al:') {      var tag = { \"property\": metaTags[i].getAttribute('property') };      if (metaTags[i].hasAttribute('content')) {        tag['content'] = metaTags[i].getAttribute('content');      }      results.push(tag);    }  }  return JSON.stringify(results);})())";
    private final Context context;

    public WebViewAppLinkResolver(Context context1)
    {
        context = context1;
    }

    private static List getAlList(Map map, String s)
    {
        List list = (List)map.get(s);
        if (list == null)
        {
            list = Collections.emptyList();
        }
        return list;
    }

    private static AppLink makeAppLinkFromAlData(Map map, Uri uri)
    {
        ArrayList arraylist = new ArrayList();
        List list = (List)map.get("android");
        if (list == null)
        {
            list = Collections.emptyList();
        }
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            Map map2 = (Map)iterator.next();
            List list4 = getAlList(map2, "url");
            List list5 = getAlList(map2, "package");
            List list6 = getAlList(map2, "class");
            List list7 = getAlList(map2, "app_name");
            int i = Math.max(list4.size(), Math.max(list5.size(), Math.max(list6.size(), list7.size())));
            int j = 0;
            while (j < i) 
            {
                Object obj;
                Uri uri2;
                Object obj1;
                String s1;
                Object obj2;
                String s2;
                Object obj3;
                String s3;
                AppLink.Target target;
                if (list4.size() > j)
                {
                    obj = ((Map)list4.get(j)).get("value");
                } else
                {
                    obj = null;
                }
                uri2 = tryCreateUrl((String)(String)obj);
                if (list5.size() > j)
                {
                    obj1 = ((Map)list5.get(j)).get("value");
                } else
                {
                    obj1 = null;
                }
                s1 = (String)(String)obj1;
                if (list6.size() > j)
                {
                    obj2 = ((Map)list6.get(j)).get("value");
                } else
                {
                    obj2 = null;
                }
                s2 = (String)(String)obj2;
                if (list7.size() > j)
                {
                    obj3 = ((Map)list7.get(j)).get("value");
                } else
                {
                    obj3 = null;
                }
                s3 = (String)(String)obj3;
                target = new AppLink.Target(s1, s2, uri2, s3);
                arraylist.add(target);
                j++;
            }
        }

        Uri uri1 = uri;
        List list1 = (List)map.get("web");
        if (list1 != null && list1.size() > 0)
        {
            Map map1 = (Map)list1.get(0);
            List list2 = (List)map1.get("url");
            List list3 = (List)map1.get("should_fallback");
            if (list3 != null && list3.size() > 0)
            {
                String s = (String)((Map)list3.get(0)).get("value");
                if (Arrays.asList(new String[] {
    "no", "false", "0"
}).contains(s.toLowerCase()))
                {
                    uri1 = null;
                }
            }
            if (uri1 != null && list2 != null && list2.size() > 0)
            {
                uri1 = tryCreateUrl((String)((Map)list2.get(0)).get("value"));
            }
        }
        AppLink applink = new AppLink(uri, arraylist, uri1);
        return applink;
    }

    private static Map parseAlData(JSONArray jsonarray)
        throws JSONException
    {
        HashMap hashmap = new HashMap();
        int i = 0;
        while (i < jsonarray.length()) 
        {
            JSONObject jsonobject = jsonarray.getJSONObject(i);
            String as[] = jsonobject.getString("property").split(":");
            if (as[0].equals("al"))
            {
                Object obj = hashmap;
                int j = 1;
                while (j < as.length) 
                {
                    Object obj1 = (List)((Map) (obj)).get(as[j]);
                    if (obj1 == null)
                    {
                        obj1 = new ArrayList();
                        ((Map) (obj)).put(as[j], obj1);
                    }
                    Object obj2;
                    if (((List) (obj1)).size() > 0)
                    {
                        obj2 = (Map)((List) (obj1)).get(-1 + ((List) (obj1)).size());
                    } else
                    {
                        obj2 = null;
                    }
                    if (obj2 == null || j == -1 + as.length)
                    {
                        obj2 = new HashMap();
                        ((List) (obj1)).add(obj2);
                    }
                    obj = obj2;
                    j++;
                }
                if (jsonobject.has("content"))
                {
                    if (jsonobject.isNull("content"))
                    {
                        ((Map) (obj)).put("value", null);
                    } else
                    {
                        ((Map) (obj)).put("value", jsonobject.getString("content"));
                    }
                }
            }
            i++;
        }
        return hashmap;
    }

    private static String readFromConnection(URLConnection urlconnection)
        throws IOException
    {
        if (!(urlconnection instanceof HttpURLConnection)) goto _L2; else goto _L1
_L1:
        InputStream inputstream;
        ByteArrayOutputStream bytearrayoutputstream;
        HttpURLConnection httpurlconnection = (HttpURLConnection)urlconnection;
        Exception exception;
        byte abyte0[];
        int i;
        InputStream inputstream1;
        try
        {
            inputstream1 = urlconnection.getInputStream();
        }
        catch (Exception exception1)
        {
            inputstream = httpurlconnection.getErrorStream();
            continue; /* Loop/switch isn't completed */
        }
        inputstream = inputstream1;
_L5:
        bytearrayoutputstream = new ByteArrayOutputStream();
        abyte0 = new byte[1024];
_L3:
        i = inputstream.read(abyte0);
        if (i == -1)
        {
            break; /* Loop/switch isn't completed */
        }
        bytearrayoutputstream.write(abyte0, 0, i);
          goto _L3
        exception;
        inputstream.close();
        throw exception;
_L2:
        inputstream = urlconnection.getInputStream();
        if (true) goto _L5; else goto _L4
_L4:
        String s = urlconnection.getContentEncoding();
        if (s != null) goto _L7; else goto _L6
_L6:
        String as[];
        int j;
        as = urlconnection.getContentType().split(";");
        j = as.length;
        int k = 0;
_L10:
        if (k >= j)
        {
            break MISSING_BLOCK_LABEL_189;
        }
          goto _L8
_L7:
        s2 = new String(bytearrayoutputstream.toByteArray(), s);
        inputstream.close();
        return s2;
_L8:
        String s1 = as[k].trim();
        String s2;
        if (s1.startsWith("charset="))
        {
            s = s1.substring("charset=".length());
            break MISSING_BLOCK_LABEL_189;
        }
        k++;
        if (true) goto _L10; else goto _L9
_L9:
        if (s == null)
        {
            s = "UTF-8";
        }
          goto _L7
    }

    private static Uri tryCreateUrl(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return Uri.parse(s);
        }
    }

    public Task getAppLinkFromUrlInBackground(final Uri url)
    {
        final Capture content = new Capture();
        final Capture contentType = new Capture();
        return Task.callInBackground(new Callable() {

            final WebViewAppLinkResolver this$0;
            final Capture val$content;
            final Capture val$contentType;
            final Uri val$url;

            public volatile Object call()
                throws Exception
            {
                return call();
            }

            public Void call()
                throws Exception
            {
                URLConnection urlconnection;
                URL url1 = new URL(url.toString());
                urlconnection = null;
                while (url1 != null) 
                {
                    urlconnection = url1.openConnection();
                    if (urlconnection instanceof HttpURLConnection)
                    {
                        ((HttpURLConnection)urlconnection).setInstanceFollowRedirects(true);
                    }
                    urlconnection.setRequestProperty("Prefer-Html-Meta-Tags", "al");
                    urlconnection.connect();
                    if (urlconnection instanceof HttpURLConnection)
                    {
                        HttpURLConnection httpurlconnection = (HttpURLConnection)urlconnection;
                        if (httpurlconnection.getResponseCode() >= 300 && httpurlconnection.getResponseCode() < 400)
                        {
                            url1 = new URL(httpurlconnection.getHeaderField("Location"));
                            httpurlconnection.disconnect();
                        } else
                        {
                            url1 = null;
                        }
                    } else
                    {
                        url1 = null;
                    }
                }
                content.set(WebViewAppLinkResolver.readFromConnection(urlconnection));
                contentType.set(urlconnection.getContentType());
                if (urlconnection instanceof HttpURLConnection)
                {
                    ((HttpURLConnection)urlconnection).disconnect();
                }
                return null;
                Exception exception;
                exception;
                if (urlconnection instanceof HttpURLConnection)
                {
                    ((HttpURLConnection)urlconnection).disconnect();
                }
                throw exception;
            }

            
            {
                this$0 = WebViewAppLinkResolver.this;
                url = uri;
                content = capture;
                contentType = capture1;
                super();
            }
        }).onSuccessTask(new Continuation() {

            final WebViewAppLinkResolver this$0;
            final Capture val$content;
            final Capture val$contentType;
            final Uri val$url;

            public Task then(Task task)
                throws Exception
            {
                Task.TaskCompletionSource taskcompletionsource = Task.create();
                WebView webview = new WebView(context);
                webview.getSettings().setJavaScriptEnabled(true);
                webview.setNetworkAvailable(false);
                webview.setWebViewClient(new WebViewClient() {

                    private boolean loaded;
                    final _cls2 this$1;

                    private void runJavaScript(WebView webview)
                    {
                        if (!loaded)
                        {
                            loaded = true;
                            webview.loadUrl("javascript:boltsWebViewAppLinkResolverResult.setValue((function() {  var metaTags = document.getElementsByTagName('meta');  var results = [];  for (var i = 0; i < metaTags.length; i++) {    var property = metaTags[i].getAttribute('property');    if (property && property.substring(0, 'al:'.length) === 'al:') {      var tag = { \"property\": metaTags[i].getAttribute('property') };      if (metaTags[i].hasAttribute('content')) {        tag['content'] = metaTags[i].getAttribute('content');      }      results.push(tag);    }  }  return JSON.stringify(results);})())");
                        }
                    }

                    public void onLoadResource(WebView webview, String s)
                    {
                        super.onLoadResource(webview, s);
                        runJavaScript(webview);
                    }

                    public void onPageFinished(WebView webview, String s)
                    {
                        super.onPageFinished(webview, s);
                        runJavaScript(webview);
                    }

            
            {
                this$1 = _cls2.this;
                super();
                loaded = false;
            }
                });
                webview.addJavascriptInterface(taskcompletionsource. new Object() {

                    final _cls2 this$1;
                    final Task.TaskCompletionSource val$tcs;

                    public void setValue(String s)
                    {
                        try
                        {
                            tcs.trySetResult(new JSONArray(s));
                            return;
                        }
                        catch (JSONException jsonexception)
                        {
                            tcs.trySetError(jsonexception);
                        }
                    }

            
            {
                this$1 = final__pcls2;
                tcs = Task.TaskCompletionSource.this;
                super();
            }
                }, "boltsWebViewAppLinkResolverResult");
                Object obj = contentType.get();
                String s = null;
                if (obj != null)
                {
                    s = ((String)contentType.get()).split(";")[0];
                }
                webview.loadDataWithBaseURL(url.toString(), (String)content.get(), s, null, null);
                return taskcompletionsource.getTask();
            }

            public volatile Object then(Task task)
                throws Exception
            {
                return then(task);
            }

            
            {
                this$0 = WebViewAppLinkResolver.this;
                contentType = capture;
                url = uri;
                content = capture1;
                super();
            }
        }, Task.UI_THREAD_EXECUTOR).onSuccess(new Continuation() {

            final WebViewAppLinkResolver this$0;
            final Uri val$url;

            public AppLink then(Task task)
                throws Exception
            {
                return WebViewAppLinkResolver.makeAppLinkFromAlData(WebViewAppLinkResolver.parseAlData((JSONArray)task.getResult()), url);
            }

            public volatile Object then(Task task)
                throws Exception
            {
                return then(task);
            }

            
            {
                this$0 = WebViewAppLinkResolver.this;
                url = uri;
                super();
            }
        });
    }




}
