.class Lcom/waze/view/web/SimpleWebActivity$MyWebChromeClient$1;
.super Ljava/lang/Object;
.source "SimpleWebActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/web/SimpleWebActivity$MyWebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/view/web/SimpleWebActivity$MyWebChromeClient;

.field private final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/waze/view/web/SimpleWebActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/web/SimpleWebActivity$MyWebChromeClient$1;->this$1:Lcom/waze/view/web/SimpleWebActivity$MyWebChromeClient;

    iput-object p2, p0, Lcom/waze/view/web/SimpleWebActivity$MyWebChromeClient$1;->val$result:Landroid/webkit/JsResult;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity$MyWebChromeClient$1;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 173
    return-void
.end method
