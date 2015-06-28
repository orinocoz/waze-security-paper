.class Lcom/waze/view/web/SimpleWebActivity$2;
.super Ljava/lang/Object;
.source "SimpleWebActivity.java"

# interfaces
.implements Lcom/waze/WzWebView$WebViewUrlOverride;


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
    iput-object p1, p0, Lcom/waze/view/web/SimpleWebActivity$2;->this$0:Lcom/waze/view/web/SimpleWebActivity;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUrlOverride(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity$2;->this$0:Lcom/waze/view/web/SimpleWebActivity;

    invoke-virtual {v0, p2}, Lcom/waze/view/web/SimpleWebActivity;->onUrlOverride(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
