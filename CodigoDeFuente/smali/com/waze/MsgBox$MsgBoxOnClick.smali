.class Lcom/waze/MsgBox$MsgBoxOnClick;
.super Ljava/lang/Object;
.source "MsgBox.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/MsgBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MsgBoxOnClick"
.end annotation


# instance fields
.field private volatile mCbContext:J

.field private volatile mCbRes:I

.field final synthetic this$0:Lcom/waze/MsgBox;


# direct methods
.method public constructor <init>(Lcom/waze/MsgBox;IJ)V
    .locals 0
    .parameter
    .parameter "aRes"
    .parameter "aCbContext"

    .prologue
    .line 956
    iput-object p1, p0, Lcom/waze/MsgBox$MsgBoxOnClick;->this$0:Lcom/waze/MsgBox;

    .line 955
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 957
    iput p2, p0, Lcom/waze/MsgBox$MsgBoxOnClick;->mCbRes:I

    .line 958
    iput-wide p3, p0, Lcom/waze/MsgBox$MsgBoxOnClick;->mCbContext:J

    .line 959
    return-void
.end method

.method static synthetic access$0(Lcom/waze/MsgBox$MsgBoxOnClick;)I
    .locals 1
    .parameter

    .prologue
    .line 983
    iget v0, p0, Lcom/waze/MsgBox$MsgBoxOnClick;->mCbRes:I

    return v0
.end method

.method static synthetic access$1(Lcom/waze/MsgBox$MsgBoxOnClick;)J
    .locals 2
    .parameter

    .prologue
    .line 982
    iget-wide v0, p0, Lcom/waze/MsgBox$MsgBoxOnClick;->mCbContext:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/waze/MsgBox$MsgBoxOnClick;)Lcom/waze/MsgBox;
    .locals 1
    .parameter

    .prologue
    .line 953
    iget-object v0, p0, Lcom/waze/MsgBox$MsgBoxOnClick;->this$0:Lcom/waze/MsgBox;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 963
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 965
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    .line 966
    .local v1, mgr:Lcom/waze/NativeManager;
    new-instance v0, Lcom/waze/MsgBox$MsgBoxOnClick$1;

    invoke-direct {v0, p0}, Lcom/waze/MsgBox$MsgBoxOnClick$1;-><init>(Lcom/waze/MsgBox$MsgBoxOnClick;)V

    .line 974
    .local v0, clickRun:Ljava/lang/Runnable;
    invoke-virtual {v1, v0}, Lcom/waze/NativeManager;->PostRunnable(Ljava/lang/Runnable;)V

    .line 975
    iget-object v2, p0, Lcom/waze/MsgBox$MsgBoxOnClick;->this$0:Lcom/waze/MsgBox;

    #getter for: Lcom/waze/MsgBox;->mIsBlocking:Z
    invoke-static {v2}, Lcom/waze/MsgBox;->access$1(Lcom/waze/MsgBox;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 977
    invoke-static {}, Lcom/waze/MsgBox;->access$2()Lcom/waze/MsgBox;

    move-result-object v3

    monitor-enter v3

    .line 978
    :try_start_0
    invoke-static {}, Lcom/waze/MsgBox;->access$2()Lcom/waze/MsgBox;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 977
    monitor-exit v3

    .line 981
    :cond_0
    return-void

    .line 977
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
