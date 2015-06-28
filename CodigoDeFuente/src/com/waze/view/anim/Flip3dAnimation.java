// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.anim;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;

public class Flip3dAnimation extends Animation
{

    private Camera mCamera;
    private final float mCenterX;
    private final float mCenterY;
    private final float mFromDegrees;
    private final float mToDegrees;

    public Flip3dAnimation(float f, float f1, float f2, float f3)
    {
        mFromDegrees = f;
        mToDegrees = f1;
        mCenterX = f2;
        mCenterY = f3;
    }

    protected void applyTransformation(float f, Transformation transformation)
    {
        float f1 = mFromDegrees;
        float f2 = f1 + f * (mToDegrees - f1);
        float f3 = mCenterX;
        float f4 = mCenterY;
        Camera camera = mCamera;
        Matrix matrix = transformation.getMatrix();
        camera.save();
        camera.rotateY(f2);
        camera.getMatrix(matrix);
        camera.restore();
        matrix.preTranslate(-f3, -f4);
        matrix.postTranslate(f3, f4);
    }

    public void initialize(int i, int j, int k, int l)
    {
        super.initialize(i, j, k, l);
        mCamera = new Camera();
    }
}