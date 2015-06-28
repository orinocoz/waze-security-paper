// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.achartengine;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import org.achartengine.chart.AbstractChart;
import org.achartengine.chart.XYChart;
import org.achartengine.renderer.XYMultipleSeriesRenderer;
import org.achartengine.tools.FitZoom;
import org.achartengine.tools.Pan;
import org.achartengine.tools.Zoom;

public class GraphicalView extends View
{

    private static final int ZOOM_BUTTONS_COLOR = 0;
    private static final int ZOOM_SIZE = 45;
    private FitZoom fitZoom;
    private Bitmap fitZoomImage;
    private AbstractChart mChart;
    private Handler mHandler;
    private Paint mPaint;
    private Rect mRect;
    private XYMultipleSeriesRenderer mRenderer;
    private float oldX;
    private float oldX2;
    private float oldY;
    private float oldY2;
    private Pan pan;
    private Zoom pinchZoom;
    private Zoom zoomIn;
    private Bitmap zoomInImage;
    private Zoom zoomOut;
    private Bitmap zoomOutImage;
    private RectF zoomR;

    public GraphicalView(Context context, AbstractChart abstractchart)
    {
        super(context);
        mRect = new Rect();
        zoomR = new RectF();
        mPaint = new Paint();
        mChart = abstractchart;
        mHandler = new Handler();
        if (mChart instanceof XYChart)
        {
            zoomInImage = BitmapFactory.decodeStream(getClass().getResourceAsStream("image/zoom_in.png"));
            zoomOutImage = BitmapFactory.decodeStream(getClass().getResourceAsStream("image/zoom_out.png"));
            fitZoomImage = BitmapFactory.decodeStream(getClass().getResourceAsStream("image/zoom-1.png"));
            mRenderer = ((XYChart)mChart).getRenderer();
            if (mRenderer.getMarginsColor() == 0)
            {
                mRenderer.setMarginsColor(mPaint.getColor());
            }
            if (mRenderer.isPanXEnabled() || mRenderer.isPanYEnabled())
            {
                pan = new Pan((XYChart)mChart);
            }
            if (mRenderer.isZoomXEnabled() || mRenderer.isZoomYEnabled())
            {
                zoomIn = new Zoom((XYChart)mChart, true, mRenderer.getZoomRate());
                zoomOut = new Zoom((XYChart)mChart, false, mRenderer.getZoomRate());
                fitZoom = new FitZoom((XYChart)mChart);
                pinchZoom = new Zoom((XYChart)mChart, true, 1.0F);
            }
        }
    }

    public void handleTouch(MotionEvent motionevent)
    {
        int i = motionevent.getAction();
        if (mRenderer == null || i != 2) goto _L2; else goto _L1
_L1:
        if (oldX < 0.0F && oldY < 0.0F) goto _L4; else goto _L3
_L3:
        float f;
        float f1;
        f = motionevent.getX(0);
        f1 = motionevent.getY(0);
        if (motionevent.getPointerCount() <= 1 || oldX2 < 0.0F && oldY2 < 0.0F || !mRenderer.isZoomXEnabled() && !mRenderer.isZoomYEnabled()) goto _L6; else goto _L5
_L5:
        float f2 = motionevent.getX(1);
        float f3 = motionevent.getY(1);
        float f4 = Math.abs(f - f2);
        float f5 = Math.abs(f1 - f3);
        float f6 = Math.abs(oldX - oldX2);
        float f7 = Math.abs(oldY - oldY2);
        float f8;
        if (Math.abs(f - oldX) >= Math.abs(f1 - oldY))
        {
            f8 = f4 / f6;
        } else
        {
            f8 = f5 / f7;
        }
        if ((double)f8 > 0.90900000000000003D && (double)f8 < 1.1000000000000001D)
        {
            pinchZoom.setZoomRate(f8);
            pinchZoom.apply();
        }
        oldX2 = f2;
        oldY2 = f3;
_L11:
        oldX = f;
        oldY = f1;
        repaint();
_L4:
        return;
_L6:
        if (mRenderer.isPanXEnabled() || mRenderer.isPanYEnabled())
        {
            pan.apply(oldX, oldY, f, f1);
            oldX2 = 0.0F;
            oldY2 = 0.0F;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (i != 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        oldX = motionevent.getX(0);
        oldY = motionevent.getY(0);
        if (mRenderer == null || !mRenderer.isZoomXEnabled() && !mRenderer.isZoomYEnabled() || !zoomR.contains(oldX, oldY)) goto _L4; else goto _L7
_L7:
        if (oldX < zoomR.left + zoomR.width() / 3F)
        {
            zoomIn.apply();
            return;
        }
        if (oldX < zoomR.left + (2.0F * zoomR.width()) / 3F)
        {
            zoomOut.apply();
            return;
        } else
        {
            fitZoom.apply();
            return;
        }
        if (i != 1 && i != 6) goto _L4; else goto _L8
_L8:
        oldX = 0.0F;
        oldY = 0.0F;
        oldX2 = 0.0F;
        oldY2 = 0.0F;
        if (i != 6) goto _L4; else goto _L9
_L9:
        oldX = -1F;
        oldY = -1F;
        return;
        if (true) goto _L11; else goto _L10
_L10:
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        canvas.getClipBounds(mRect);
        int i = mRect.top;
        int j = mRect.left;
        int k = mRect.width();
        int l = mRect.height();
        mChart.draw(canvas, j, i, k, l, mPaint);
        if (mRenderer != null && (mRenderer.isZoomXEnabled() || mRenderer.isZoomYEnabled()))
        {
            mPaint.setColor(ZOOM_BUTTONS_COLOR);
            zoomR.set(-135 + (j + k), (float)(i + l) - 34.875F, j + k, i + l);
            canvas.drawRoundRect(zoomR, 15F, 15F, mPaint);
            float f = (float)(i + l) - 28.125F;
            canvas.drawBitmap(zoomInImage, (float)(j + k) - 123.75F, f, null);
            canvas.drawBitmap(zoomOutImage, (float)(j + k) - 78.75F, f, null);
            canvas.drawBitmap(fitZoomImage, (float)(j + k) - 33.75F, f, null);
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (mRenderer != null && (mRenderer.isPanXEnabled() || mRenderer.isPanYEnabled() || mRenderer.isZoomXEnabled() || mRenderer.isZoomYEnabled()))
        {
            handleTouch(motionevent);
            return true;
        } else
        {
            return super.onTouchEvent(motionevent);
        }
    }

    public void repaint()
    {
        mHandler.post(new Runnable() {

            final GraphicalView this$0;

            public void run()
            {
                invalidate();
            }

            
            {
                this$0 = GraphicalView.this;
                super();
            }
        });
    }

    public void repaint(final int left, final int top, final int right, final int bottom)
    {
        mHandler.post(new Runnable() {

            final GraphicalView this$0;
            final int val$bottom;
            final int val$left;
            final int val$right;
            final int val$top;

            public void run()
            {
                invalidate(left, top, right, bottom);
            }

            
            {
                this$0 = GraphicalView.this;
                left = i;
                top = j;
                right = k;
                bottom = l;
                super();
            }
        });
    }

    public void setZoomRate(float f)
    {
        if (zoomIn != null && zoomOut != null)
        {
            zoomIn.setZoomRate(f);
            zoomOut.setZoomRate(f);
        }
    }

    public void zoomIn()
    {
        if (zoomIn != null)
        {
            zoomIn.apply();
            repaint();
        }
    }

    public void zoomOut()
    {
        if (zoomOut != null)
        {
            zoomOut.apply();
            repaint();
        }
    }

    public void zoomReset()
    {
        if (fitZoom != null)
        {
            fitZoom.apply();
            repaint();
        }
    }

    static 
    {
        ZOOM_BUTTONS_COLOR = Color.argb(175, 150, 150, 150);
    }
}
