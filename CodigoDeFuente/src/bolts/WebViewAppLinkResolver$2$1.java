// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package bolts;

import android.net.Uri;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import org.json.JSONArray;
import org.json.JSONException;

// Referenced classes of package bolts:
//            Continuation, WebViewAppLinkResolver, Task, Capture

class loaded extends WebViewClient
{

    private boolean loaded;
    final runJavaScript this$1;

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

    l.content()
    {
        this$1 = this._cls1.this;
        super();
        loaded = false;
    }

    // Unreferenced inner class bolts/WebViewAppLinkResolver$2

/* anonymous class */
    class WebViewAppLinkResolver._cls2
        implements Continuation
    {

        final WebViewAppLinkResolver this$0;
        final Capture val$content;
        final Capture val$contentType;
        final Uri val$url;

        public Task then(Task task)
            throws Exception
        {
            final Task.TaskCompletionSource tcs = Task.create();
            WebView webview = new WebView(WebViewAppLinkResolver.access$200(WebViewAppLinkResolver.this));
            webview.getSettings().setJavaScriptEnabled(true);
            webview.setNetworkAvailable(false);
            webview.setWebViewClient(new WebViewAppLinkResolver._cls2._cls1());
            webview.addJavascriptInterface(new WebViewAppLinkResolver._cls2._cls2(), "boltsWebViewAppLinkResolverResult");
            Object obj = contentType.get();
            String s = null;
            if (obj != null)
            {
                s = ((String)contentType.get()).split(";")[0];
            }
            webview.loadDataWithBaseURL(url.toString(), (String)content.get(), s, null, null);
            return tcs.getTask();
        }

        public volatile Object then(Task task)
            throws Exception
        {
            return then(task);
        }

            
            {
                this$0 = final_webviewapplinkresolver;
                contentType = capture;
                url = uri;
                content = Capture.this;
                super();
            }

        // Unreferenced inner class bolts/WebViewAppLinkResolver$2$2

/* anonymous class */
        class WebViewAppLinkResolver._cls2._cls2
        {

            final WebViewAppLinkResolver._cls2 this$1;
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
                        this$1 = WebViewAppLinkResolver._cls2.this;
                        tcs = taskcompletionsource;
                        super();
                    }
        }

    }

}
