.class Lcom/waze/navigate/social/ShareDriveActivity$4;
.super Ljava/lang/Object;
.source "ShareDriveActivity.java"

# interfaces
.implements Lcom/waze/autocomplete/ContactsCompletionView$IOnBackPressed;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/ShareDriveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/ShareDriveActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/ShareDriveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDriveActivity$4;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$4;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #calls: Lcom/waze/navigate/social/ShareDriveActivity;->closeKeyboard()V
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->access$9(Lcom/waze/navigate/social/ShareDriveActivity;)V

    .line 254
    return-void
.end method
