.class Lcom/waze/LayoutManager$QueuedTooltip;
.super Ljava/lang/Object;
.source "LayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueuedTooltip"
.end annotation


# instance fields
.field final cb:J

.field final intParam:I

.field final numUsers:I

.field final synthetic this$0:Lcom/waze/LayoutManager;

.field final type:Lcom/waze/TooltipType;

.field final userData:Lcom/waze/user/FriendUserData;


# direct methods
.method public constructor <init>(Lcom/waze/LayoutManager;Lcom/waze/TooltipType;ILcom/waze/user/FriendUserData;JI)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "numUsers"
    .parameter "userData"
    .parameter "cb"
    .parameter "intParam"

    .prologue
    .line 2576
    iput-object p1, p0, Lcom/waze/LayoutManager$QueuedTooltip;->this$0:Lcom/waze/LayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2577
    iput-object p2, p0, Lcom/waze/LayoutManager$QueuedTooltip;->type:Lcom/waze/TooltipType;

    .line 2578
    iput p3, p0, Lcom/waze/LayoutManager$QueuedTooltip;->numUsers:I

    .line 2579
    iput-object p4, p0, Lcom/waze/LayoutManager$QueuedTooltip;->userData:Lcom/waze/user/FriendUserData;

    .line 2580
    iput-wide p5, p0, Lcom/waze/LayoutManager$QueuedTooltip;->cb:J

    .line 2581
    iput p7, p0, Lcom/waze/LayoutManager$QueuedTooltip;->intParam:I

    .line 2582
    return-void
.end method
