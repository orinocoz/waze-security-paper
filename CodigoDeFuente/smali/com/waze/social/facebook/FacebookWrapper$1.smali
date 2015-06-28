.class Lcom/waze/social/facebook/FacebookWrapper$1;
.super Ljava/lang/Object;
.source "FacebookWrapper.java"

# interfaces
.implements Lcom/waze/ifs/ui/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/social/facebook/FacebookWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/social/facebook/FacebookWrapper;


# direct methods
.method constructor <init>(Lcom/waze/social/facebook/FacebookWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/social/facebook/FacebookWrapper$1;->this$0:Lcom/waze/social/facebook/FacebookWrapper;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivitResult(Lcom/waze/ifs/ui/ActivityBase;IILandroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 93
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->session()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "FBWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult. Request code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Session state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->session()Lcom/facebook/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const v0, 0x123456

    if-ne p2, v0, :cond_0

    .line 98
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->session()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 101
    :cond_0
    return-void
.end method
