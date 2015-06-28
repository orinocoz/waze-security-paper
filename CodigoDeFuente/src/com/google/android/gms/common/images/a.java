// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.images;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.internal.gu;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.gx;
import com.google.android.gms.internal.gy;
import com.google.android.gms.internal.hl;
import java.lang.ref.WeakReference;

public abstract class com.google.android.gms.common.images.a
{
    static final class a
    {

        public final Uri uri;

        public boolean equals(Object obj)
        {
            if (!(obj instanceof a))
            {
                return false;
            }
            if (this == obj)
            {
                return true;
            } else
            {
                return hl.equal(((a)obj).uri, uri);
            }
        }

        public int hashCode()
        {
            Object aobj[] = new Object[1];
            aobj[0] = uri;
            return hl.hashCode(aobj);
        }

        public a(Uri uri1)
        {
            uri = uri1;
        }
    }

    public static final class b extends com.google.android.gms.common.images.a
    {

        private WeakReference Fp;

        private void a(ImageView imageview, Drawable drawable, boolean flag, boolean flag1, boolean flag2)
        {
            boolean flag3;
            int j;
            if (!flag1 && !flag2)
            {
                flag3 = true;
            } else
            {
                flag3 = false;
            }
            if (!flag3 || !(imageview instanceof gw)) goto _L2; else goto _L1
_L1:
            j = ((gw)imageview).fd();
            if (Fl == 0 || j != Fl) goto _L2; else goto _L3
_L3:
            return;
_L2:
            boolean flag4 = b(flag, flag1);
            Object obj;
            if (flag4)
            {
                obj = a(imageview.getDrawable(), drawable);
            } else
            {
                obj = drawable;
            }
            imageview.setImageDrawable(((Drawable) (obj)));
            if (imageview instanceof gw)
            {
                gw gw1 = (gw)imageview;
                Uri uri;
                int i;
                if (flag2)
                {
                    uri = Fj.uri;
                } else
                {
                    uri = null;
                }
                gw1.f(uri);
                if (flag3)
                {
                    i = Fl;
                } else
                {
                    i = 0;
                }
                gw1.al(i);
            }
            if (flag4)
            {
                ((gu)obj).startTransition(250);
                return;
            }
            if (true) goto _L3; else goto _L4
_L4:
        }

        protected void a(Drawable drawable, boolean flag, boolean flag1, boolean flag2)
        {
            ImageView imageview = (ImageView)Fp.get();
            if (imageview != null)
            {
                a(imageview, drawable, flag, flag1, flag2);
            }
        }

        public boolean equals(Object obj)
        {
            if (!(obj instanceof b))
            {
                return false;
            }
            if (this == obj)
            {
                return true;
            }
            b b1 = (b)obj;
            ImageView imageview = (ImageView)Fp.get();
            ImageView imageview1 = (ImageView)b1.Fp.get();
            boolean flag;
            if (imageview1 != null && imageview != null && hl.equal(imageview1, imageview))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            return flag;
        }

        public int hashCode()
        {
            return 0;
        }

        public b(ImageView imageview, int i)
        {
            super(null, i);
            gy.c(imageview);
            Fp = new WeakReference(imageview);
        }

        public b(ImageView imageview, Uri uri)
        {
            super(uri, 0);
            gy.c(imageview);
            Fp = new WeakReference(imageview);
        }
    }

    public static final class c extends com.google.android.gms.common.images.a
    {

        private WeakReference Fq;

        protected void a(Drawable drawable, boolean flag, boolean flag1, boolean flag2)
        {
            if (!flag1)
            {
                ImageManager.OnImageLoadedListener onimageloadedlistener = (ImageManager.OnImageLoadedListener)Fq.get();
                if (onimageloadedlistener != null)
                {
                    onimageloadedlistener.onImageLoaded(Fj.uri, drawable, flag2);
                }
            }
        }

        public boolean equals(Object obj)
        {
            if (!(obj instanceof c))
            {
                return false;
            }
            if (this == obj)
            {
                return true;
            }
            c c1 = (c)obj;
            ImageManager.OnImageLoadedListener onimageloadedlistener = (ImageManager.OnImageLoadedListener)Fq.get();
            ImageManager.OnImageLoadedListener onimageloadedlistener1 = (ImageManager.OnImageLoadedListener)c1.Fq.get();
            boolean flag;
            if (onimageloadedlistener1 != null && onimageloadedlistener != null && hl.equal(onimageloadedlistener1, onimageloadedlistener) && hl.equal(c1.Fj, Fj))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            return flag;
        }

        public int hashCode()
        {
            Object aobj[] = new Object[1];
            aobj[0] = Fj;
            return hl.hashCode(aobj);
        }

        public c(ImageManager.OnImageLoadedListener onimageloadedlistener, Uri uri)
        {
            super(uri, 0);
            gy.c(onimageloadedlistener);
            Fq = new WeakReference(onimageloadedlistener);
        }
    }


    final a Fj;
    protected int Fk;
    protected int Fl;
    private boolean Fm;
    private boolean Fn;
    protected int Fo;

    public com.google.android.gms.common.images.a(Uri uri, int i)
    {
        Fk = 0;
        Fl = 0;
        Fm = true;
        Fn = false;
        Fj = new a(uri);
        Fl = i;
    }

    private Drawable a(Context context, gx gx1, int i)
    {
        Resources resources = context.getResources();
        if (Fo > 0)
        {
            com.google.android.gms.internal.gx.a a1 = new com.google.android.gms.internal.gx.a(i, Fo);
            Drawable drawable = (Drawable)gx1.get(a1);
            if (drawable == null)
            {
                drawable = resources.getDrawable(i);
                if ((1 & Fo) != 0)
                {
                    drawable = a(resources, drawable);
                }
                gx1.put(a1, drawable);
            }
            return drawable;
        } else
        {
            return resources.getDrawable(i);
        }
    }

    protected Drawable a(Resources resources, Drawable drawable)
    {
        return gv.a(resources, drawable);
    }

    protected gu a(Drawable drawable, Drawable drawable1)
    {
        if (drawable != null)
        {
            if (drawable instanceof gu)
            {
                drawable = ((gu)drawable).fb();
            }
        } else
        {
            drawable = null;
        }
        return new gu(drawable, drawable1);
    }

    void a(Context context, Bitmap bitmap, boolean flag)
    {
        gy.c(bitmap);
        if ((1 & Fo) != 0)
        {
            bitmap = gv.a(bitmap);
        }
        a(((Drawable) (new BitmapDrawable(context.getResources(), bitmap))), flag, false, true);
    }

    void a(Context context, gx gx1)
    {
        int i = Fk;
        Drawable drawable = null;
        if (i != 0)
        {
            drawable = a(context, gx1, Fk);
        }
        a(drawable, false, true, false);
    }

    void a(Context context, gx gx1, boolean flag)
    {
        int i = Fl;
        Drawable drawable = null;
        if (i != 0)
        {
            drawable = a(context, gx1, Fl);
        }
        a(drawable, flag, false, false);
    }

    protected abstract void a(Drawable drawable, boolean flag, boolean flag1, boolean flag2);

    public void aj(int i)
    {
        Fl = i;
    }

    protected boolean b(boolean flag, boolean flag1)
    {
        return Fm && !flag1 && (!flag || Fn);
    }
}
