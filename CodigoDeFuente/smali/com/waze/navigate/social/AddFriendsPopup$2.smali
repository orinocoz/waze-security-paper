.class Lcom/waze/navigate/social/AddFriendsPopup$2;
.super Ljava/lang/Object;
.source "AddFriendsPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/AddFriendsPopup;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/AddFriendsPopup;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/AddFriendsPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/AddFriendsPopup$2;->this$0:Lcom/waze/navigate/social/AddFriendsPopup;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/waze/navigate/social/AddFriendsPopup$2;->this$0:Lcom/waze/navigate/social/AddFriendsPopup;

    #calls: Lcom/waze/navigate/social/AddFriendsPopup;->onContinueClicked()V
    invoke-static {v0}, Lcom/waze/navigate/social/AddFriendsPopup;->access$4(Lcom/waze/navigate/social/AddFriendsPopup;)V

    .line 102
    return-void
.end method
