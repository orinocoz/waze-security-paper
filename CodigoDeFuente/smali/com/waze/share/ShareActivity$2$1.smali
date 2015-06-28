.class Lcom/waze/share/ShareActivity$2$1;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/share/ShareActivity$2;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareActivity$2$1;->this$1:Lcom/waze/share/ShareActivity$2;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddressItemArrayCallback([Lcom/waze/navigate/AddressItem;)V
    .locals 5
    .parameter "ai"

    .prologue
    const/4 v4, 0x0

    .line 120
    const-string v1, "SHARE_LOCATION_OF"

    const-string v2, "VAUE"

    const-string v3, "HOME"

    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    if-eqz p1, :cond_0

    .line 122
    sget-object v1, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareSelection:Lcom/waze/share/ShareUtility$ShareType;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v1, v4, v2, v4}, Lcom/waze/share/ShareUtility;->OpenShareActivity(Lcom/waze/share/ShareUtility$ShareType;Ljava/lang/String;Lcom/waze/navigate/AddressItem;[Lcom/waze/user/PersonBase;)V

    .line 128
    :goto_0
    return-void

    .line 124
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/share/ShareActivity$2$1;->this$1:Lcom/waze/share/ShareActivity$2;

    #getter for: Lcom/waze/share/ShareActivity$2;->this$0:Lcom/waze/share/ShareActivity;
    invoke-static {v1}, Lcom/waze/share/ShareActivity$2;->access$0(Lcom/waze/share/ShareActivity$2;)Lcom/waze/share/ShareActivity;

    move-result-object v1

    const-class v2, Lcom/waze/navigate/AddHomeWorkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "AddressType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    iget-object v1, p0, Lcom/waze/share/ShareActivity$2$1;->this$1:Lcom/waze/share/ShareActivity$2;

    #getter for: Lcom/waze/share/ShareActivity$2;->this$0:Lcom/waze/share/ShareActivity;
    invoke-static {v1}, Lcom/waze/share/ShareActivity$2;->access$0(Lcom/waze/share/ShareActivity$2;)Lcom/waze/share/ShareActivity;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Lcom/waze/share/ShareActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
