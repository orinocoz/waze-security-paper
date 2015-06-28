.class Lcom/waze/navigate/social/ShareDriveActivity$7;
.super Ljava/lang/Object;
.source "ShareDriveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDriveActivity$7;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$7;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->access$6(Lcom/waze/navigate/social/ShareDriveActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/autocomplete/ContactsCompletionView;->performClick()Z

    .line 299
    return-void
.end method
