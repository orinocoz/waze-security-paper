// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.anim;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;

public class AxisFlipper extends Animation
{

    private Camera camera;
    private float centerX;
    private float centerY;
    private double fromX;
    private double fromY;
    private double fromZ;
    private double pivotX;
    private double pivotY;
    private double toX;
    private double toY;
    private double toZ;

    public AxisFlipper(double d, double d1, double d2, double d3, double d4, double d5, double d6, 
            double d7)
    {
        fromX = d;
        toX = d1;
        fromY = d2;
        toY = d3;
        fromZ = d4;
        toZ = d5;
        pivotX = d6;
        pivotY = d7;
    }

    protected void applyTransformation(float f, Transformation transformation)
    {
        double d = fromX * (double)(1.0F - f) + toX * (double)f;
        double d1 = fromY * (double)(1.0F - f) + toY * (double)f;
        double d2 = fromZ * (double)(1.0F - f) + toZ * (double)f;
        Matrix matrix = transformation.getMatrix();
        camera.save();
        if (d != 0.0D)
        {
            camera.rotateX((float)d);
        }
        if (d1 != 0.0D)
        {
            camera.rotateX((float)d1);
        }
        if (d2 != 0.0D)
        {
            camera.rotateX((float)d2);
        }
        camera.getMatrix(matrix);
        camera.restore();
        matrix.preTranslate(-centerX, -centerY);
        matrix.postTranslate(centerX, centerY);
    }

    public void initialize(int i, int j, int k, int l)
    {
        super.initialize(i, j, k, l);
        centerX = (float)(pivotX * (double)i);
        centerY = (float)(pivotY * (double)j);
        camera = new Camera();
    }
}
