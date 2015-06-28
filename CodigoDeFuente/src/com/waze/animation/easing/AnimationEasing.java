// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.animation.easing;


public interface AnimationEasing
{

    public abstract double easeIn(double d, double d1, double d2, double d3);

    public abstract double easeInOut(double d, double d1, double d2, double d3);

    public abstract double easeOut(double d, double d1, double d2, double d3);
}
