.class final Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "PlacesAutoCompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;


# direct methods
.method constructor <init>(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 665
    iput-object p1, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$MyWebChromeClient;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

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
    .line 668
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 669
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 670
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 671
    const v1, 0x104000a

    .line 672
    new-instance v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$MyWebChromeClient$1;

    invoke-direct {v2, p0, p4}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$MyWebChromeClient$1;-><init>(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$MyWebChromeClient;Landroid/webkit/JsResult;)V

    .line 671
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 679
    const/high16 v1, 0x104

    .line 680
    new-instance v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$MyWebChromeClient$2;

    invoke-direct {v2, p0, p4}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$MyWebChromeClient$2;-><init>(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$MyWebChromeClient;Landroid/webkit/JsResult;)V

    .line 679
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 687
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 688
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 690
    const/4 v0, 0x1

    return v0
.end method
