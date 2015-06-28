.class Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$1;
.super Landroid/webkit/WebViewClient;
.source "PlacesAutoCompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;-><init>(Landroid/content/Context;I[Lcom/waze/navigate/AddressItem;Ljava/lang/String;Landroid/view/View;Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$IPrepareForSerchResults;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;


# direct methods
.method constructor <init>(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$1;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    .line 112
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method
