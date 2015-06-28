.class Lcom/waze/social/KeepYourFriendsDialog$6;
.super Ljava/lang/Object;
.source "KeepYourFriendsDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/social/KeepYourFriendsDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/social/KeepYourFriendsDialog;


# direct methods
.method constructor <init>(Lcom/waze/social/KeepYourFriendsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/social/KeepYourFriendsDialog$6;->this$0:Lcom/waze/social/KeepYourFriendsDialog;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/waze/social/KeepYourFriendsDialog$6;->this$0:Lcom/waze/social/KeepYourFriendsDialog;

    #calls: Landroid/app/Dialog;->dismiss()V
    invoke-static {v0}, Lcom/waze/social/KeepYourFriendsDialog;->access$4(Lcom/waze/social/KeepYourFriendsDialog;)V

    .line 241
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 236
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 233
    return-void
.end method
