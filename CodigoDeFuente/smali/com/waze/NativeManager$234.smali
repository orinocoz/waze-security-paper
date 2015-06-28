.class Lcom/waze/NativeManager$234;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->showTooltip(Ljava/lang/String;ILcom/waze/user/FriendUserData;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$cb:J

.field private final synthetic val$intParam:I

.field private final synthetic val$numUSers:I

.field private final synthetic val$type:Ljava/lang/String;

.field private final synthetic val$userData:Lcom/waze/user/FriendUserData;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;ILcom/waze/user/FriendUserData;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$234;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$234;->val$type:Ljava/lang/String;

    iput p3, p0, Lcom/waze/NativeManager$234;->val$numUSers:I

    iput-object p4, p0, Lcom/waze/NativeManager$234;->val$userData:Lcom/waze/user/FriendUserData;

    iput-wide p5, p0, Lcom/waze/NativeManager$234;->val$cb:J

    iput p7, p0, Lcom/waze/NativeManager$234;->val$intParam:I

    .line 6278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 6282
    iget-object v1, p0, Lcom/waze/NativeManager$234;->this$0:Lcom/waze/NativeManager;

    #calls: Lcom/waze/NativeManager;->getLayoutManager()Lcom/waze/LayoutManager;
    invoke-static {v1}, Lcom/waze/NativeManager;->access$120(Lcom/waze/NativeManager;)Lcom/waze/LayoutManager;

    move-result-object v0

    .line 6283
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-nez v0, :cond_1

    .line 6309
    :cond_0
    :goto_0
    return-void

    .line 6287
    :cond_1
    iget-object v1, p0, Lcom/waze/NativeManager$234;->val$type:Ljava/lang/String;

    const-string v2, "tooltiproadclosure"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6288
    sget-object v1, Lcom/waze/TooltipType;->ROAD_CLOSURE:Lcom/waze/TooltipType;

    iget v2, p0, Lcom/waze/NativeManager$234;->val$numUSers:I

    iget-object v3, p0, Lcom/waze/NativeManager$234;->val$userData:Lcom/waze/user/FriendUserData;

    iget-wide v4, p0, Lcom/waze/NativeManager$234;->val$cb:J

    iget v6, p0, Lcom/waze/NativeManager$234;->val$intParam:I

    invoke-virtual/range {v0 .. v6}, Lcom/waze/LayoutManager;->showToolTip(Lcom/waze/TooltipType;ILcom/waze/user/FriendUserData;JI)V

    goto :goto_0

    .line 6289
    :cond_2
    iget-object v1, p0, Lcom/waze/NativeManager$234;->val$type:Ljava/lang/String;

    const-string v2, "tooltipshare"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6290
    sget-object v1, Lcom/waze/TooltipType;->SHARE:Lcom/waze/TooltipType;

    iget v2, p0, Lcom/waze/NativeManager$234;->val$numUSers:I

    iget-object v3, p0, Lcom/waze/NativeManager$234;->val$userData:Lcom/waze/user/FriendUserData;

    iget-wide v4, p0, Lcom/waze/NativeManager$234;->val$cb:J

    iget v6, p0, Lcom/waze/NativeManager$234;->val$intParam:I

    invoke-virtual/range {v0 .. v6}, Lcom/waze/LayoutManager;->showToolTip(Lcom/waze/TooltipType;ILcom/waze/user/FriendUserData;JI)V

    goto :goto_0

    .line 6291
    :cond_3
    iget-object v1, p0, Lcom/waze/NativeManager$234;->val$type:Ljava/lang/String;

    const-string v2, "tooltipmainmenu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6292
    sget-object v1, Lcom/waze/TooltipType;->MAIN_MENU:Lcom/waze/TooltipType;

    iget v2, p0, Lcom/waze/NativeManager$234;->val$numUSers:I

    iget-object v3, p0, Lcom/waze/NativeManager$234;->val$userData:Lcom/waze/user/FriendUserData;

    iget-wide v4, p0, Lcom/waze/NativeManager$234;->val$cb:J

    iget v6, p0, Lcom/waze/NativeManager$234;->val$intParam:I

    invoke-virtual/range {v0 .. v6}, Lcom/waze/LayoutManager;->showToolTip(Lcom/waze/TooltipType;ILcom/waze/user/FriendUserData;JI)V

    goto :goto_0

    .line 6293
    :cond_4
    iget-object v1, p0, Lcom/waze/NativeManager$234;->val$type:Ljava/lang/String;

    const-string v2, "tooltipNewViewer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6294
    sget-object v1, Lcom/waze/TooltipType;->NEW_USER_VIEWING:Lcom/waze/TooltipType;

    iget v2, p0, Lcom/waze/NativeManager$234;->val$numUSers:I

    iget-object v3, p0, Lcom/waze/NativeManager$234;->val$userData:Lcom/waze/user/FriendUserData;

    iget-wide v4, p0, Lcom/waze/NativeManager$234;->val$cb:J

    iget v6, p0, Lcom/waze/NativeManager$234;->val$intParam:I

    invoke-virtual/range {v0 .. v6}, Lcom/waze/LayoutManager;->showToolTip(Lcom/waze/TooltipType;ILcom/waze/user/FriendUserData;JI)V

    goto :goto_0

    .line 6295
    :cond_5
    iget-object v1, p0, Lcom/waze/NativeManager$234;->val$type:Ljava/lang/String;

    const-string v2, "tooltipEtaUpdateSent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6296
    sget-object v1, Lcom/waze/TooltipType;->ETA_UPDATE_SENT:Lcom/waze/TooltipType;

    iget v2, p0, Lcom/waze/NativeManager$234;->val$numUSers:I

    iget-object v3, p0, Lcom/waze/NativeManager$234;->val$userData:Lcom/waze/user/FriendUserData;

    iget-wide v4, p0, Lcom/waze/NativeManager$234;->val$cb:J

    iget v6, p0, Lcom/waze/NativeManager$234;->val$intParam:I

    invoke-virtual/range {v0 .. v6}, Lcom/waze/LayoutManager;->showToolTip(Lcom/waze/TooltipType;ILcom/waze/user/FriendUserData;JI)V

    goto :goto_0

    .line 6297
    :cond_6
    iget-object v1, p0, Lcom/waze/NativeManager$234;->val$type:Ljava/lang/String;

    const-string v2, "tooltipArrivalSent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6298
    sget-object v1, Lcom/waze/TooltipType;->ARRIVAL_SENT:Lcom/waze/TooltipType;

    iget v2, p0, Lcom/waze/NativeManager$234;->val$numUSers:I

    iget-object v3, p0, Lcom/waze/NativeManager$234;->val$userData:Lcom/waze/user/FriendUserData;

    iget-wide v4, p0, Lcom/waze/NativeManager$234;->val$cb:J

    iget v6, p0, Lcom/waze/NativeManager$234;->val$intParam:I

    invoke-virtual/range {v0 .. v6}, Lcom/waze/LayoutManager;->showToolTip(Lcom/waze/TooltipType;ILcom/waze/user/FriendUserData;JI)V

    goto/16 :goto_0

    .line 6301
    :cond_7
    iget-object v1, p0, Lcom/waze/NativeManager$234;->val$type:Ljava/lang/String;

    const-string v2, "tooltipfriends"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 6302
    sget-object v1, Lcom/waze/TooltipType;->FRIENDS:Lcom/waze/TooltipType;

    iget v2, p0, Lcom/waze/NativeManager$234;->val$numUSers:I

    iget-object v3, p0, Lcom/waze/NativeManager$234;->val$userData:Lcom/waze/user/FriendUserData;

    iget-wide v4, p0, Lcom/waze/NativeManager$234;->val$cb:J

    iget v6, p0, Lcom/waze/NativeManager$234;->val$intParam:I

    invoke-virtual/range {v0 .. v6}, Lcom/waze/LayoutManager;->showToolTip(Lcom/waze/TooltipType;ILcom/waze/user/FriendUserData;JI)V

    goto/16 :goto_0

    .line 6305
    :cond_8
    iget-object v1, p0, Lcom/waze/NativeManager$234;->val$type:Ljava/lang/String;

    const-string v2, "tooltipeta"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6306
    sget-object v1, Lcom/waze/TooltipType;->ETA:Lcom/waze/TooltipType;

    iget v2, p0, Lcom/waze/NativeManager$234;->val$numUSers:I

    iget-object v3, p0, Lcom/waze/NativeManager$234;->val$userData:Lcom/waze/user/FriendUserData;

    iget-wide v4, p0, Lcom/waze/NativeManager$234;->val$cb:J

    iget v6, p0, Lcom/waze/NativeManager$234;->val$intParam:I

    invoke-virtual/range {v0 .. v6}, Lcom/waze/LayoutManager;->showToolTip(Lcom/waze/TooltipType;ILcom/waze/user/FriendUserData;JI)V

    goto/16 :goto_0
.end method
