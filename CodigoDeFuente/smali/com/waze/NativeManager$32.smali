.class Lcom/waze/NativeManager$32;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->AddToMeeting([II[Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$bToSave:Z

.field private final synthetic val$nCount:I

.field private final synthetic val$waze_ids:[I

.field private final synthetic val$wazes_phones:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;[II[Ljava/lang/Object;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$32;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$32;->val$waze_ids:[I

    iput p3, p0, Lcom/waze/NativeManager$32;->val$nCount:I

    iput-object p4, p0, Lcom/waze/NativeManager$32;->val$wazes_phones:[Ljava/lang/Object;

    iput-boolean p5, p0, Lcom/waze/NativeManager$32;->val$bToSave:Z

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 633
    iget-object v0, p0, Lcom/waze/NativeManager$32;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$32;->val$waze_ids:[I

    iget v2, p0, Lcom/waze/NativeManager$32;->val$nCount:I

    iget-object v3, p0, Lcom/waze/NativeManager$32;->val$wazes_phones:[Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/waze/NativeManager$32;->val$bToSave:Z

    #calls: Lcom/waze/NativeManager;->AddToMeetingNTV([II[Ljava/lang/Object;Z)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/waze/NativeManager;->access$49(Lcom/waze/NativeManager;[II[Ljava/lang/Object;Z)V

    .line 634
    return-void
.end method
