.class Lcom/waze/rtalerts/RTAlertsNativeManager$2;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "RTAlertsNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/rtalerts/RTAlertsNativeManager;->getAlertsMenuData(Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsMenuDataHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mData:[Lcom/waze/rtalerts/RTAlertsMenuData;

.field mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

.field private final synthetic val$dataHandler:Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsMenuDataHandler;


# direct methods
.method constructor <init>(Lcom/waze/rtalerts/RTAlertsNativeManager;Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsMenuDataHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$2;->this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

    iput-object p2, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$2;->val$dataHandler:Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsMenuDataHandler;

    .line 88
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$2;->val$dataHandler:Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsMenuDataHandler;

    iget-object v1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$2;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$2;->mData:[Lcom/waze/rtalerts/RTAlertsMenuData;

    invoke-interface {v0, v1, v2}, Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsMenuDataHandler;->handler(Ljava/lang/String;[Lcom/waze/rtalerts/RTAlertsMenuData;)V

    .line 103
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 96
    .local v0, mgr:Lcom/waze/NativeManager;
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_REPORTS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$2;->mTitle:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$2;->this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

    #calls: Lcom/waze/rtalerts/RTAlertsNativeManager;->GetRTAlertsMenuNTV()[Lcom/waze/rtalerts/RTAlertsMenuData;
    invoke-static {v1}, Lcom/waze/rtalerts/RTAlertsNativeManager;->access$1(Lcom/waze/rtalerts/RTAlertsNativeManager;)[Lcom/waze/rtalerts/RTAlertsMenuData;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$2;->mData:[Lcom/waze/rtalerts/RTAlertsMenuData;

    .line 98
    return-void
.end method
