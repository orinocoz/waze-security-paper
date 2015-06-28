.class Lcom/waze/share/ShareNativeManager$2;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "ShareNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareNativeManager;->getShareFbMainData(Lcom/waze/share/ShareNativeManager$IShareFbMainDataHandler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mData:Lcom/waze/share/ShareFbMainData;

.field final synthetic this$0:Lcom/waze/share/ShareNativeManager;

.field private final synthetic val$dataHandler:Lcom/waze/share/ShareNativeManager$IShareFbMainDataHandler;

.field private final synthetic val$shareDestination:Z


# direct methods
.method constructor <init>(Lcom/waze/share/ShareNativeManager;ZLcom/waze/share/ShareNativeManager$IShareFbMainDataHandler;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareNativeManager$2;->this$0:Lcom/waze/share/ShareNativeManager;

    iput-boolean p2, p0, Lcom/waze/share/ShareNativeManager$2;->val$shareDestination:Z

    iput-object p3, p0, Lcom/waze/share/ShareNativeManager$2;->val$dataHandler:Lcom/waze/share/ShareNativeManager$IShareFbMainDataHandler;

    .line 78
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    .line 80
    new-instance v0, Lcom/waze/share/ShareFbMainData;

    invoke-direct {v0}, Lcom/waze/share/ShareFbMainData;-><init>()V

    iput-object v0, p0, Lcom/waze/share/ShareNativeManager$2;->mData:Lcom/waze/share/ShareFbMainData;

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/waze/share/ShareNativeManager$2;->val$dataHandler:Lcom/waze/share/ShareNativeManager$IShareFbMainDataHandler;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/waze/share/ShareNativeManager$2;->val$dataHandler:Lcom/waze/share/ShareNativeManager$IShareFbMainDataHandler;

    iget-object v1, p0, Lcom/waze/share/ShareNativeManager$2;->mData:Lcom/waze/share/ShareFbMainData;

    invoke-interface {v0, v1}, Lcom/waze/share/ShareNativeManager$IShareFbMainDataHandler;->onFbMainData(Lcom/waze/share/ShareFbMainData;)V

    .line 103
    :cond_0
    return-void
.end method

.method public event()V
    .locals 4

    .prologue
    .line 83
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 85
    .local v0, mgr:Lcom/waze/NativeManager;
    iget-object v1, p0, Lcom/waze/share/ShareNativeManager$2;->mData:Lcom/waze/share/ShareFbMainData;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SHARE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/waze/share/ShareFbMainData;->title:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/waze/share/ShareNativeManager$2;->mData:Lcom/waze/share/ShareFbMainData;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SAY_ANYTHING___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/waze/share/ShareFbMainData;->hint:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcom/waze/share/ShareNativeManager$2;->mData:Lcom/waze/share/ShareFbMainData;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_POST_TO_FACEBOOK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/waze/share/ShareFbMainData;->post_to_fb:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/waze/share/ShareNativeManager$2;->mData:Lcom/waze/share/ShareFbMainData;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_GREAT_X:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/waze/share/ShareFbMainData;->postMsgBoxSuccessTitle:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lcom/waze/share/ShareNativeManager$2;->mData:Lcom/waze/share/ShareFbMainData;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_THE_POST_WAS_PUBLISHED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/waze/share/ShareFbMainData;->postMsgBoxSuccessText:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/waze/share/ShareNativeManager$2;->mData:Lcom/waze/share/ShareFbMainData;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_UHHOHE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/waze/share/ShareFbMainData;->postMsgBoxFailureTitle:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/waze/share/ShareNativeManager$2;->mData:Lcom/waze/share/ShareFbMainData;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_THE_POST_COULD_NOT_BE_PUBLISHED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/waze/share/ShareFbMainData;->postMsgBoxFailureText:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/waze/share/ShareNativeManager$2;->mData:Lcom/waze/share/ShareFbMainData;

    invoke-virtual {v0}, Lcom/waze/NativeManager;->isNavigatingNTV()Z

    move-result v2

    iput-boolean v2, v1, Lcom/waze/share/ShareFbMainData;->isNavigating:Z

    .line 93
    iget-object v1, p0, Lcom/waze/share/ShareNativeManager$2;->mData:Lcom/waze/share/ShareFbMainData;

    iget-object v2, p0, Lcom/waze/share/ShareNativeManager$2;->this$0:Lcom/waze/share/ShareNativeManager;

    iget-boolean v3, p0, Lcom/waze/share/ShareNativeManager$2;->val$shareDestination:Z

    #calls: Lcom/waze/share/ShareNativeManager;->getLocationNTV(Z)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/waze/share/ShareNativeManager;->access$1(Lcom/waze/share/ShareNativeManager;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/waze/share/ShareFbMainData;->location:Ljava/lang/String;

    .line 94
    iget-object v1, p0, Lcom/waze/share/ShareNativeManager$2;->mData:Lcom/waze/share/ShareFbMainData;

    iget-object v2, p0, Lcom/waze/share/ShareNativeManager$2;->this$0:Lcom/waze/share/ShareNativeManager;

    #calls: Lcom/waze/share/ShareNativeManager;->getNickNameNTV()Ljava/lang/String;
    invoke-static {v2}, Lcom/waze/share/ShareNativeManager;->access$2(Lcom/waze/share/ShareNativeManager;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/waze/share/ShareFbMainData;->nickname:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/waze/share/ShareNativeManager$2;->mData:Lcom/waze/share/ShareFbMainData;

    iget-object v2, p0, Lcom/waze/share/ShareNativeManager$2;->this$0:Lcom/waze/share/ShareNativeManager;

    invoke-virtual {v2}, Lcom/waze/share/ShareNativeManager;->getEtaNTV()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/waze/share/ShareFbMainData;->eta:Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lcom/waze/share/ShareNativeManager$2;->this$0:Lcom/waze/share/ShareNativeManager;

    iget-object v2, p0, Lcom/waze/share/ShareNativeManager$2;->this$0:Lcom/waze/share/ShareNativeManager;

    #calls: Lcom/waze/share/ShareNativeManager;->isMetricUnitsNTV()Z
    invoke-static {v2}, Lcom/waze/share/ShareNativeManager;->access$3(Lcom/waze/share/ShareNativeManager;)Z

    move-result v2

    #setter for: Lcom/waze/share/ShareNativeManager;->mMetricUnits:Z
    invoke-static {v1, v2}, Lcom/waze/share/ShareNativeManager;->access$4(Lcom/waze/share/ShareNativeManager;Z)V

    .line 97
    return-void
.end method
