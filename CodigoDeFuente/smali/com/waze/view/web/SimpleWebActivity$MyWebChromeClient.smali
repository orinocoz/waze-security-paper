.class final Lcom/waze/view/web/SimpleWebActivity$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SimpleWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/view/web/SimpleWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/web/SimpleWebActivity;


# direct methods
.method constructor <init>(Lcom/waze/view/web/SimpleWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/waze/view/web/SimpleWebActivity$MyWebChromeClient;->this$0:Lcom/waze/view/web/SimpleWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 164
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/waze/view/web/SimpleWebActivity$MyWebChromeClient;->this$0:Lcom/waze/view/web/SimpleWebActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 165
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 167
    const v1, 0x104000a

    .line 168
    new-instance v2, Lcom/waze/view/web/SimpleWebActivity$MyWebChromeClient$1;

    invoke-direct {v2, p0, p4}, Lcom/waze/view/web/SimpleWebActivity$MyWebChromeClient$1;-><init>(Lcom/waze/view/web/SimpleWebActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V

    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 175
    const/high16 v1, 0x104

    .line 176
    new-instance v2, Lcom/waze/view/web/SimpleWebActivity$MyWebChromeClient$2;

    invoke-direct {v2, p0, p4}, Lcom/waze/view/web/SimpleWebActivity$MyWebChromeClient$2;-><init>(Lcom/waze/view/web/SimpleWebActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 186
    const/4 v0, 0x1

    return v0
.end method
