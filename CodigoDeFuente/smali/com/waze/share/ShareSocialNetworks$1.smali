.class Lcom/waze/share/ShareSocialNetworks$1;
.super Ljava/lang/Object;
.source "ShareSocialNetworks.java"

# interfaces
.implements Lcom/waze/settings/SettingsDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareSocialNetworks;->showNetsMenu(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$parentActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareSocialNetworks$1;->val$parentActivity:Landroid/app/Activity;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 42
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-class v3, Lcom/waze/share/ShareSocialNetworks;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Callback on nets menu listener. Selected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/waze/share/ShareSocialNetworks;->access$0()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {}, Lcom/waze/share/ShareSocialNetworks;->access$0()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    const-string v2, "Post to facebook"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/share/ShareSocialNetworks$1;->val$parentActivity:Landroid/app/Activity;

    const-class v2, Lcom/waze/share/ShareFbActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/share/ShareSocialNetworks$1;->val$parentActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 49
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
