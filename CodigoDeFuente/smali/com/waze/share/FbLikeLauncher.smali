.class public Lcom/waze/share/FbLikeLauncher;
.super Ljava/lang/Object;
.source "FbLikeLauncher.java"

# interfaces
.implements Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;


# instance fields
.field private mContext:Lcom/waze/ifs/ui/ActivityBase;


# direct methods
.method private constructor <init>(Lcom/waze/ifs/ui/ActivityBase;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/share/FbLikeLauncher;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    .line 19
    iput-object p1, p0, Lcom/waze/share/FbLikeLauncher;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    .line 21
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getFacebookLikeUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V

    .line 22
    return-void
.end method

.method public static start(Lcom/waze/ifs/ui/ActivityBase;)Lcom/waze/share/FbLikeLauncher;
    .locals 1
    .parameter "context"

    .prologue
    .line 14
    new-instance v0, Lcom/waze/share/FbLikeLauncher;

    invoke-direct {v0, p0}, Lcom/waze/share/FbLikeLauncher;-><init>(Lcom/waze/ifs/ui/ActivityBase;)V

    return-object v0
.end method


# virtual methods
.method public onUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 26
    iget-object v1, p0, Lcom/waze/share/FbLikeLauncher;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 28
    const-string v1, "fb://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 31
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/share/FbLikeLauncher;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v1, v0}, Lcom/waze/ifs/ui/ActivityBase;->startActivity(Landroid/content/Intent;)V

    .line 40
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/share/FbLikeLauncher;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    const-class v2, Lcom/waze/share/FacebookLikeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "LikeUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    iget-object v1, p0, Lcom/waze/share/FbLikeLauncher;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/waze/ifs/ui/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
