.class Lcom/waze/share/ShareNativeManager$5;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "ShareNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareNativeManager;->getShareFbLocationData(Lcom/waze/share/ShareNativeManager$IShareFbLocationDataHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/waze/share/ShareNativeManager;

.field private final synthetic val$dataHandler:Lcom/waze/share/ShareNativeManager$IShareFbLocationDataHandler;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareNativeManager;Lcom/waze/share/ShareNativeManager$IShareFbLocationDataHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareNativeManager$5;->this$0:Lcom/waze/share/ShareNativeManager;

    iput-object p2, p0, Lcom/waze/share/ShareNativeManager$5;->val$dataHandler:Lcom/waze/share/ShareNativeManager$IShareFbLocationDataHandler;

    .line 161
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/waze/share/ShareNativeManager$5;->val$dataHandler:Lcom/waze/share/ShareNativeManager$IShareFbLocationDataHandler;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/waze/share/ShareNativeManager$5;->val$dataHandler:Lcom/waze/share/ShareNativeManager$IShareFbLocationDataHandler;

    iget-object v1, p0, Lcom/waze/share/ShareNativeManager$5;->mTitle:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/waze/share/ShareNativeManager$IShareFbLocationDataHandler;->onFbLocationData(Ljava/lang/String;)V

    .line 174
    :cond_0
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 166
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 167
    .local v0, mgr:Lcom/waze/NativeManager;
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_LOCATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/share/ShareNativeManager$5;->mTitle:Ljava/lang/String;

    .line 168
    return-void
.end method
