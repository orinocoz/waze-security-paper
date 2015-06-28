.class Lcom/waze/NativeManager$230;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$bIsbeforeLogin:Z

.field private final synthetic val$event:Ljava/lang/String;

.field private final synthetic val$infoName:Ljava/lang/String;

.field private final synthetic val$infoVal:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$230;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$230;->val$event:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/NativeManager$230;->val$infoName:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/NativeManager$230;->val$infoVal:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/waze/NativeManager$230;->val$bIsbeforeLogin:Z

    .line 6218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 6221
    iget-object v0, p0, Lcom/waze/NativeManager$230;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$230;->val$event:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/NativeManager$230;->val$infoName:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/NativeManager$230;->val$infoVal:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/waze/NativeManager$230;->val$bIsbeforeLogin:Z

    #calls: Lcom/waze/NativeManager;->SignUplogAnalyticsStrNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/waze/NativeManager;->access$116(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6222
    return-void
.end method
