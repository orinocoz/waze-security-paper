.class Lcom/waze/share/ShareActivity$12;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/ShareActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareActivity$12;->this$0:Lcom/waze/share/ShareActivity;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddressItemArrayCallback([Lcom/waze/navigate/AddressItem;)V
    .locals 3
    .parameter "ai"

    .prologue
    const/4 v2, 0x0

    .line 351
    if-eqz p1, :cond_0

    .line 352
    sget-object v0, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareSelection:Lcom/waze/share/ShareUtility$ShareType;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v2, v1, v2}, Lcom/waze/share/ShareUtility;->OpenShareActivity(Lcom/waze/share/ShareUtility$ShareType;Ljava/lang/String;Lcom/waze/navigate/AddressItem;[Lcom/waze/user/PersonBase;)V

    .line 354
    :cond_0
    return-void
.end method
