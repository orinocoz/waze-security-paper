.class Lcom/waze/view/web/SimpleWebActivity$1;
.super Ljava/lang/Object;
.source "SimpleWebActivity.java"

# interfaces
.implements Lcom/waze/WzWebView$WebViewBackCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/web/SimpleWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/web/SimpleWebActivity;


# direct methods
.method constructor <init>(Lcom/waze/view/web/SimpleWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/web/SimpleWebActivity$1;->this$0:Lcom/waze/view/web/SimpleWebActivity;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "aEvent"

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method
