.class Lcom/waze/navigate/DriveToNativeManager$33;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->forceWidgetRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$33;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    .line 1053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1056
    :try_start_0
    const-string v2, "in DriveToNativeManager :: forceWidgetRefresh"

    invoke-static {v2}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 1058
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v2

    .line 1059
    const-string v3, "AppWidget Action Command Force Refresh"

    .line 1058
    invoke-static {v2, v3}, Lcom/waze/widget/WazeAppWidgetProvider;->getControlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1060
    .local v1, intentCmd:Landroid/app/PendingIntent;
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    .end local v1           #intentCmd:Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 1061
    :catch_0
    move-exception v0

    .line 1062
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WAZE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed firing widget refresh. exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " trace:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1063
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1062
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
