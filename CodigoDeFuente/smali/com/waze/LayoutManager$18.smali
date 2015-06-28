.class Lcom/waze/LayoutManager$18;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/LayoutManager;->showFriendsTooltip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/LayoutManager;


# direct methods
.method constructor <init>(Lcom/waze/LayoutManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/LayoutManager$18;->this$0:Lcom/waze/LayoutManager;

    .line 1183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1189
    :try_start_0
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1190
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->areAllSignUpDialogsClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/waze/LayoutManager$18;->this$0:Lcom/waze/LayoutManager;

    .line 1192
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v1

    .line 1193
    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 1192
    invoke-virtual {v1, v2, v3}, Lcom/waze/ConfigManager;->checkConfigDisplayCounter(IZ)I

    move-result v1

    .line 1191
    #setter for: Lcom/waze/LayoutManager;->mShowFriendsTip:I
    invoke-static {v0, v1}, Lcom/waze/LayoutManager;->access$24(Lcom/waze/LayoutManager;I)V

    .line 1194
    iget-object v0, p0, Lcom/waze/LayoutManager$18;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mShowFriendsTip:I
    invoke-static {v0}, Lcom/waze/LayoutManager;->access$25(Lcom/waze/LayoutManager;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-lez v0, :cond_0

    .line 1196
    :try_start_1
    iget-object v0, p0, Lcom/waze/LayoutManager$18;->this$0:Lcom/waze/LayoutManager;

    sget-object v1, Lcom/waze/TooltipType;->FRIENDS:Lcom/waze/TooltipType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/waze/LayoutManager;->showToolTip(Lcom/waze/TooltipType;ILcom/waze/user/FriendUserData;JI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1197
    :catch_0
    move-exception v7

    .line 1199
    .local v7, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "WAZE"

    .line 1200
    const-string v1, "failed showing friendsTooltip. Error: %s    stack: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1201
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v7}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1200
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1198
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1205
    .end local v7           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 1207
    .restart local v7       #ex:Ljava/lang/Exception;
    const-string v0, "WAZE"

    .line 1210
    const-string v1, "Haven\'t queued showFriendsTooltip request. Environment is not fully initialized yet. Error: %s    stack: %s"

    new-array v2, v10, [Ljava/lang/Object;

    .line 1211
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v7}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aput-object v3, v2, v9

    .line 1209
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1206
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
