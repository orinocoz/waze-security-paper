.class Lcom/waze/rtalerts/RTAlertsNativeManager$8;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "RTAlertsNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/rtalerts/RTAlertsNativeManager;->loadLangStrings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;


# direct methods
.method constructor <init>(Lcom/waze/rtalerts/RTAlertsNativeManager;Ljava/util/concurrent/Executor;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$8;->this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

    .line 232
    invoke-direct {p0, p2}, Lcom/waze/ifs/async/RunnableExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public event()V
    .locals 4

    .prologue
    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 238
    .local v0, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 241
    .local v2, mgr:Lcom/waze/NativeManager;
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_COMMENTS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, langStr:Ljava/lang/String;
    const v3, 0x7f070187

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_THANKS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 245
    const v3, 0x7f070188

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_AWAY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 248
    const v3, 0x7f070189

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_COMMENTS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 251
    const v3, 0x7f07018a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_ADD_COMMENT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 253
    const v3, 0x7f07018b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v3, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$8;->this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

    iput-object v0, v3, Lcom/waze/rtalerts/RTAlertsNativeManager;->mLangHash:Ljava/util/HashMap;

    .line 256
    return-void
.end method
