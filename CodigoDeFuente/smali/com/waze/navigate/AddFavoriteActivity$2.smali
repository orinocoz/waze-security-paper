.class Lcom/waze/navigate/AddFavoriteActivity$2;
.super Ljava/lang/Object;
.source "AddFavoriteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddFavoriteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddFavoriteActivity;

.field private final synthetic val$addessItem:Lcom/waze/navigate/AddressItem;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddFavoriteActivity;Lcom/waze/navigate/AddressItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddFavoriteActivity$2;->this$0:Lcom/waze/navigate/AddFavoriteActivity;

    iput-object p2, p0, Lcom/waze/navigate/AddFavoriteActivity$2;->val$addessItem:Lcom/waze/navigate/AddressItem;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/AddFavoriteActivity$2;)Lcom/waze/navigate/AddFavoriteActivity;
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/waze/navigate/AddFavoriteActivity$2;->this$0:Lcom/waze/navigate/AddFavoriteActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 164
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/navigate/AddFavoriteActivity$2;->val$addessItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->CalendarAddressRemove(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/waze/navigate/AddFavoriteActivity$2;->this$0:Lcom/waze/navigate/AddFavoriteActivity;

    #getter for: Lcom/waze/navigate/AddFavoriteActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/navigate/AddFavoriteActivity;->access$0(Lcom/waze/navigate/AddFavoriteActivity;)Lcom/waze/NativeManager;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lcom/waze/navigate/AddFavoriteActivity$2;->this$0:Lcom/waze/navigate/AddFavoriteActivity;

    #getter for: Lcom/waze/navigate/AddFavoriteActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v2}, Lcom/waze/navigate/AddFavoriteActivity;->access$0(Lcom/waze/navigate/AddFavoriteActivity;)Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_EVENT_REMOVED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sign_up_big_v"

    .line 166
    invoke-virtual {v1, v2, v3}, Lcom/waze/NativeManager;->OpenProgressIconPopup(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 169
    .local v0, hn:Landroid/os/Handler;
    new-instance v1, Lcom/waze/navigate/AddFavoriteActivity$2$1;

    invoke-direct {v1, p0}, Lcom/waze/navigate/AddFavoriteActivity$2$1;-><init>(Lcom/waze/navigate/AddFavoriteActivity$2;)V

    .line 176
    const-wide/16 v2, 0x3e8

    .line 169
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    return-void
.end method
