.class Lcom/waze/navigate/DriveToNativeManager$30;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->OpenCalendarVerifyScreen(Lcom/waze/navigate/AddressItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$ai:Lcom/waze/navigate/AddressItem;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/AddressItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$30;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$30;->val$ai:Lcom/waze/navigate/AddressItem;

    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 935
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/NativeManager;->getAutoCompleteFeatures()I

    move-result v1

    .line 936
    .local v1, nFeatures:I
    if-eqz v1, :cond_0

    .line 938
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v2

    const-class v3, Lcom/waze/navigate/NavigateActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 939
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "AddressItem"

    iget-object v3, p0, Lcom/waze/navigate/DriveToNativeManager$30;->val$ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 940
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lcom/waze/ifs/ui/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 952
    :goto_0
    return-void

    .line 944
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v2

    const-class v3, Lcom/waze/navigate/AddFavoriteActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 945
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "SearchStr"

    iget-object v3, p0, Lcom/waze/navigate/DriveToNativeManager$30;->val$ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 946
    const-string v2, "AddressType"

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 947
    const-string v2, "AddressItem"

    iget-object v3, p0, Lcom/waze/navigate/DriveToNativeManager$30;->val$ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 948
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lcom/waze/ifs/ui/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
