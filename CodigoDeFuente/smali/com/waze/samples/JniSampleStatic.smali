.class public Lcom/waze/samples/JniSampleStatic;
.super Ljava/lang/Object;
.source "JniSampleStatic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/samples/JniSampleStatic$JniSampleStaticData;
    }
.end annotation


# static fields
.field private static final INTEGER_FIELD:I = 0x7db

.field private static final LOG_TAG:Ljava/lang/String; = "WAZE JniStaticSample"

.field private static final STRING_FIELD:Ljava/lang/String; = "StaticMethod call from native layer"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitNativeLayer()V
    .locals 0

    .prologue
    .line 15
    invoke-static {}, Lcom/waze/samples/JniSampleStatic;->InitNativeLayerNTV()V

    .line 16
    return-void
.end method

.method private static native InitNativeLayerNTV()V
.end method

.method private static native RunSampleNTV(Ljava/lang/String;I)V
.end method

.method public static StaticMethod(Lcom/waze/samples/JniSampleStatic$JniSampleStaticData;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 23
    const-string v0, "WAZE JniStaticSample"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "## ============== Call from Native layer ============== \n## JniSampleStatic.StaticMethod.\n## String: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    iget-object v2, p0, Lcom/waze/samples/JniSampleStatic$JniSampleStaticData;->_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 26
    const-string v2, "## Integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/waze/samples/JniSampleStatic$JniSampleStaticData;->_int:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method public static runSample()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "WAZE JniStaticSample"

    const-string v1, "## ============== Jni Sample for static calls and C=>Java data pass has been executed. ============== \n## Your are supposed to see JniSampleStatic.StaticMethod print with string and integer fields \n## String field: \'StaticMethod call from native layer\'\n## Integer field: 2011"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {}, Lcom/waze/samples/JniSampleStatic;->InitNativeLayer()V

    .line 52
    const-string v0, "StaticMethod call from native layer"

    const/16 v1, 0x7db

    invoke-static {v0, v1}, Lcom/waze/samples/JniSampleStatic;->RunSampleNTV(Ljava/lang/String;I)V

    .line 53
    return-void
.end method
