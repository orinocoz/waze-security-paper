.class Lcom/waze/NativeManager$225;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->logAnalytics(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$beforeLogin:Z

.field private final synthetic val$event:Ljava/lang/String;

.field private final synthetic val$flush:Z


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$225;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$225;->val$event:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/waze/NativeManager$225;->val$beforeLogin:Z

    iput-boolean p4, p0, Lcom/waze/NativeManager$225;->val$flush:Z

    .line 6125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6128
    iget-object v0, p0, Lcom/waze/NativeManager$225;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$225;->val$event:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/waze/NativeManager$225;->val$beforeLogin:Z

    iget-boolean v3, p0, Lcom/waze/NativeManager$225;->val$flush:Z

    #calls: Lcom/waze/NativeManager;->logAnalyticsNTV(Ljava/lang/String;ZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/waze/NativeManager;->access$111(Lcom/waze/NativeManager;Ljava/lang/String;ZZ)V

    .line 6129
    return-void
.end method
