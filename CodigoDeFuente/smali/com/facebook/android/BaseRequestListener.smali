.class public abstract Lcom/facebook/android/BaseRequestListener;
.super Ljava/lang/Object;
.source "BaseRequestListener.java"

# interfaces
.implements Lcom/facebook/android/AsyncFacebookRunner$RequestListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFacebookError(Lcom/facebook/android/FacebookError;Ljava/lang/Object;)V
    .locals 2
    .parameter "e"
    .parameter "state"

    .prologue
    .line 19
    const-string v0, "Facebook"

    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->printStackTrace()V

    .line 21
    return-void
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .locals 2
    .parameter "e"
    .parameter "state"

    .prologue
    .line 25
    const-string v0, "Facebook"

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 27
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .locals 2
    .parameter "e"
    .parameter "state"

    .prologue
    .line 31
    const-string v0, "Facebook"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 33
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .locals 2
    .parameter "e"
    .parameter "state"

    .prologue
    .line 37
    const-string v0, "Facebook"

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 39
    return-void
.end method
