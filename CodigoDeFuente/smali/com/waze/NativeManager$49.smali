.class Lcom/waze/NativeManager$49;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->sendAlertRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$description:Ljava/lang/String;

.field private final synthetic val$direction:I

.field private final synthetic val$duration:I

.field private final synthetic val$filenameImage:Ljava/lang/String;

.field private final synthetic val$filenameVoice:Ljava/lang/String;

.field private final synthetic val$pathImage:Ljava/lang/String;

.field private final synthetic val$pathVoice:Ljava/lang/String;

.field private final synthetic val$subtype:I

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$49;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$49;->val$pathImage:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/NativeManager$49;->val$filenameImage:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/NativeManager$49;->val$pathVoice:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/NativeManager$49;->val$filenameVoice:Ljava/lang/String;

    iput-object p6, p0, Lcom/waze/NativeManager$49;->val$description:Ljava/lang/String;

    iput p7, p0, Lcom/waze/NativeManager$49;->val$direction:I

    iput p8, p0, Lcom/waze/NativeManager$49;->val$type:I

    iput p9, p0, Lcom/waze/NativeManager$49;->val$subtype:I

    iput p10, p0, Lcom/waze/NativeManager$49;->val$duration:I

    .line 862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 865
    iget-object v0, p0, Lcom/waze/NativeManager$49;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$49;->val$pathImage:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/NativeManager$49;->val$filenameImage:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/NativeManager$49;->val$pathVoice:Ljava/lang/String;

    .line 866
    iget-object v4, p0, Lcom/waze/NativeManager$49;->val$filenameVoice:Ljava/lang/String;

    iget-object v5, p0, Lcom/waze/NativeManager$49;->val$description:Ljava/lang/String;

    iget v6, p0, Lcom/waze/NativeManager$49;->val$direction:I

    iget v7, p0, Lcom/waze/NativeManager$49;->val$type:I

    iget v8, p0, Lcom/waze/NativeManager$49;->val$subtype:I

    iget v9, p0, Lcom/waze/NativeManager$49;->val$duration:I

    .line 865
    #calls: Lcom/waze/NativeManager;->sendAlertRequestNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    invoke-static/range {v0 .. v9}, Lcom/waze/NativeManager;->access$60(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 867
    return-void
.end method
