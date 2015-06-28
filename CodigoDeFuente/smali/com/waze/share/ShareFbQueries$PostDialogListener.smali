.class public Lcom/waze/share/ShareFbQueries$PostDialogListener;
.super Ljava/lang/Object;
.source "ShareFbQueries.java"

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/share/ShareFbQueries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostDialogListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 4
    .parameter "values"
    .parameter "error"

    .prologue
    .line 551
    if-nez p2, :cond_1

    .line 553
    const-string v1, "post_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, postId:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 555
    const-string v1, "Facebook queries"

    const-string v2, "Post has been performed successfully through the FB post dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .end local v0           #postId:Ljava/lang/String;
    :goto_0
    return-void

    .line 557
    .restart local v0       #postId:Ljava/lang/String;
    :cond_0
    const-string v1, "Facebook queries"

    const-string v2, "FB post dialog was canceled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 562
    .end local v0           #postId:Ljava/lang/String;
    :cond_1
    instance-of v1, p2, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v1, :cond_2

    .line 564
    const-string v1, "Facebook queries"

    const-string v2, "FB post dialog was canceled by X button"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 568
    :cond_2
    const-string v1, "Facebook queries"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FB post dialog: generic error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
