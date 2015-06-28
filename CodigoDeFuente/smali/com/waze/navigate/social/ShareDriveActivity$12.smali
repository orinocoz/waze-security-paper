.class Lcom/waze/navigate/social/ShareDriveActivity$12;
.super Ljava/lang/Object;
.source "ShareDriveActivity.java"

# interfaces
.implements Lcom/waze/phone/PhoneRequestAccessDialog$PhoneRequestAccessResultListener;


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
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDriveActivity$12;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 2
    .parameter "okToAccess"

    .prologue
    .line 379
    if-eqz p1, :cond_0

    .line 380
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$12;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #calls: Lcom/waze/navigate/social/ShareDriveActivity;->loadPersonArray()V
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->access$17(Lcom/waze/navigate/social/ShareDriveActivity;)V

    .line 386
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$12;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/navigate/social/ShareDriveActivity;->setResult(I)V

    .line 384
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$12;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    invoke-virtual {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->finish()V

    goto :goto_0
.end method
