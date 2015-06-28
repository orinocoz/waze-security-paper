.class Lcom/waze/MoodManager$2;
.super Ljava/lang/Object;
.source "MoodManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MoodManager;->setWazerMood(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/MoodManager;

.field private final synthetic val$mood:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/MoodManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MoodManager$2;->this$0:Lcom/waze/MoodManager;

    iput-object p2, p0, Lcom/waze/MoodManager$2;->val$mood:Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/waze/MoodManager$2;->this$0:Lcom/waze/MoodManager;

    iget-object v1, p0, Lcom/waze/MoodManager$2;->val$mood:Ljava/lang/String;

    #calls: Lcom/waze/MoodManager;->setMoodNTV(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/waze/MoodManager;->access$6(Lcom/waze/MoodManager;Ljava/lang/String;)V

    .line 61
    return-void
.end method
