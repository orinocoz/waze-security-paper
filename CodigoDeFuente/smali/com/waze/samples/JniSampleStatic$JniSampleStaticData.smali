.class public final Lcom/waze/samples/JniSampleStatic$JniSampleStaticData;
.super Ljava/lang/Object;
.source "JniSampleStatic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/samples/JniSampleStatic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JniSampleStaticData"
.end annotation


# instance fields
.field public _int:I

.field public _string:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/waze/samples/JniSampleStatic$JniSampleStaticData;->_int:I

    .line 37
    return-void
.end method
