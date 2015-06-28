.class Lcom/waze/share/ShareNativeManager$4;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "ShareNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareNativeManager;->getShareFbWithData(Lcom/waze/share/ShareNativeManager$IShareFbWithDataHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mHint:Ljava/lang/String;

.field mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/waze/share/ShareNativeManager;

.field private final synthetic val$dataHandler:Lcom/waze/share/ShareNativeManager$IShareFbWithDataHandler;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareNativeManager;Lcom/waze/share/ShareNativeManager$IShareFbWithDataHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareNativeManager$4;->this$0:Lcom/waze/share/ShareNativeManager;

    iput-object p2, p0, Lcom/waze/share/ShareNativeManager$4;->val$dataHandler:Lcom/waze/share/ShareNativeManager$IShareFbWithDataHandler;

    .line 137
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/waze/share/ShareNativeManager$4;->val$dataHandler:Lcom/waze/share/ShareNativeManager$IShareFbWithDataHandler;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/waze/share/ShareNativeManager$4;->val$dataHandler:Lcom/waze/share/ShareNativeManager$IShareFbWithDataHandler;

    iget-object v1, p0, Lcom/waze/share/ShareNativeManager$4;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/share/ShareNativeManager$4;->mHint:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/waze/share/ShareNativeManager$IShareFbWithDataHandler;->onFbWithData(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 145
    .local v0, mgr:Lcom/waze/NativeManager;
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_WITH:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/share/ShareNativeManager$4;->mTitle:Ljava/lang/String;

    .line 146
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_SEARCH_FRIENDS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/share/ShareNativeManager$4;->mHint:Ljava/lang/String;

    .line 147
    return-void
.end method
