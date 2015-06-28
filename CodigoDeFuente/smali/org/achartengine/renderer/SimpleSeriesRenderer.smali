.class public Lorg/achartengine/renderer/SimpleSeriesRenderer;
.super Ljava/lang/Object;
.source "SimpleSeriesRenderer.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const v0, -0xffff01

    iput v0, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->mColor:I

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->mColor:I

    return v0
.end method

.method public setColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->mColor:I

    .line 45
    return-void
.end method
