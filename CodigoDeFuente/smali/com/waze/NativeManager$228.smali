.class Lcom/waze/NativeManager$228;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$event:Ljava/lang/String;

.field private final synthetic val$infoName:Ljava/lang/String;

.field private final synthetic val$infoVal:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$228;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$228;->val$event:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/NativeManager$228;->val$infoName:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/NativeManager$228;->val$infoVal:Ljava/lang/String;

    .line 6160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6163
    iget-object v0, p0, Lcom/waze/NativeManager$228;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$228;->val$event:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/NativeManager$228;->val$infoName:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/NativeManager$228;->val$infoVal:Ljava/lang/String;

    #calls: Lcom/waze/NativeManager;->logAnalyticsStrNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/waze/NativeManager;->access$114(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6164
    return-void
.end method
