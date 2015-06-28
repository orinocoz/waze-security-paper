.class public Lcom/waze/share/SpreadTheWordActivity$OnOkMsgSmsService;
.super Ljava/lang/Object;
.source "SpreadTheWordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/share/SpreadTheWordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OnOkMsgSmsService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/SpreadTheWordActivity;


# direct methods
.method protected constructor <init>(Lcom/waze/share/SpreadTheWordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/waze/share/SpreadTheWordActivity$OnOkMsgSmsService;->this$0:Lcom/waze/share/SpreadTheWordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 158
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 159
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 161
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/share/SpreadTheWordActivity$OnOkMsgSmsService;->this$0:Lcom/waze/share/SpreadTheWordActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/social/facebook/FacebookWrapper;->authorize(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;Z)V

    .line 163
    :cond_0
    return-void
.end method
