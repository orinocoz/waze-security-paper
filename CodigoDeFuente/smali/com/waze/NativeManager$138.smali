.class Lcom/waze/NativeManager$138;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->venueDeleteImage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$imageId:Ljava/lang/String;

.field private final synthetic val$venueId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$138;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$138;->val$venueId:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/NativeManager$138;->val$imageId:Ljava/lang/String;

    .line 2813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2815
    iget-object v0, p0, Lcom/waze/NativeManager$138;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$138;->val$venueId:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/NativeManager$138;->val$imageId:Ljava/lang/String;

    #calls: Lcom/waze/NativeManager;->venueDeleteImageNTV(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/waze/NativeManager;->access$87(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 2816
    return-void
.end method
