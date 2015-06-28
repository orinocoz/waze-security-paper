.class Lcom/waze/navigate/DriveToNativeManager$17;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "DriveToNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->getAutoCompleteAdsResult(Lcom/waze/navigate/DriveToNativeManager$AutoCompleteAdsResult;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private AdsData:Lcom/waze/autocomplete/PlaceData;

.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$listener:Lcom/waze/navigate/DriveToNativeManager$AutoCompleteAdsResult;

.field private final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$AutoCompleteAdsResult;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$17;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$17;->val$query:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/navigate/DriveToNativeManager$17;->val$listener:Lcom/waze/navigate/DriveToNativeManager$AutoCompleteAdsResult;

    .line 652
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$17;->val$listener:Lcom/waze/navigate/DriveToNativeManager$AutoCompleteAdsResult;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$17;->AdsData:Lcom/waze/autocomplete/PlaceData;

    invoke-interface {v0, v1}, Lcom/waze/navigate/DriveToNativeManager$AutoCompleteAdsResult;->onComplete(Lcom/waze/autocomplete/PlaceData;)V

    .line 663
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$17;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$17;->val$query:Ljava/lang/String;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->GetAutoCompleteAds(Ljava/lang/String;)Lcom/waze/autocomplete/PlaceData;
    invoke-static {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->access$16(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)Lcom/waze/autocomplete/PlaceData;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$17;->AdsData:Lcom/waze/autocomplete/PlaceData;

    .line 658
    return-void
.end method
