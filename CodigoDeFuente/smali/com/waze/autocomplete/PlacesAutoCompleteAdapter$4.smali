.class Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$4;
.super Ljava/lang/Object;
.source "PlacesAutoCompleteAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

.field private final synthetic val$adsView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$4;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    iput-object p2, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$4;->val$adsView:Landroid/webkit/WebView;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$4;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->_rqLayoutRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->access$11(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;Ljava/lang/Runnable;)V

    .line 372
    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$4;->val$adsView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestLayout()V

    .line 373
    return-void
.end method
