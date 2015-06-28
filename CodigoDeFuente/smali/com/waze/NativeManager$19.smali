.class Lcom/waze/NativeManager$19;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->AutoCompletePlaceClicked(Ljava/lang/String;Ljava/lang/String;Lcom/waze/navigate/AddressItem;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$Query:Ljava/lang/String;

.field private final synthetic val$Ref:Ljava/lang/String;

.field private final synthetic val$bHistoryStat:Z

.field private final synthetic val$bToDrive:Z

.field private final synthetic val$calendarAI:Lcom/waze/navigate/AddressItem;

.field private final synthetic val$feature:I

.field private final synthetic val$response:Ljava/lang/String;

.field private final synthetic val$typedQuery:Ljava/lang/String;

.field private final synthetic val$venueID:Ljava/lang/String;

.field private final synthetic val$venue_context:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/navigate/AddressItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V
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
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$19;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$19;->val$calendarAI:Lcom/waze/navigate/AddressItem;

    iput-object p3, p0, Lcom/waze/NativeManager$19;->val$venueID:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/NativeManager$19;->val$Ref:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/NativeManager$19;->val$venue_context:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/waze/NativeManager$19;->val$bToDrive:Z

    iput-object p7, p0, Lcom/waze/NativeManager$19;->val$Query:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/waze/NativeManager$19;->val$bHistoryStat:Z

    iput p9, p0, Lcom/waze/NativeManager$19;->val$feature:I

    iput-object p10, p0, Lcom/waze/NativeManager$19;->val$response:Ljava/lang/String;

    iput-object p11, p0, Lcom/waze/NativeManager$19;->val$typedQuery:Ljava/lang/String;

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 496
    const/4 v3, 0x0

    .line 497
    .local v3, calendarId:Ljava/lang/String;
    iget-object v0, p0, Lcom/waze/NativeManager$19;->val$calendarAI:Lcom/waze/navigate/AddressItem;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/waze/NativeManager$19;->val$calendarAI:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v3

    .line 499
    iget-object v0, p0, Lcom/waze/NativeManager$19;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$19;->val$calendarAI:Lcom/waze/navigate/AddressItem;

    #setter for: Lcom/waze/NativeManager;->mCalendarAI:Lcom/waze/navigate/AddressItem;
    invoke-static {v0, v1}, Lcom/waze/NativeManager;->access$35(Lcom/waze/NativeManager;Lcom/waze/navigate/AddressItem;)V

    .line 500
    iget-object v0, p0, Lcom/waze/NativeManager$19;->this$0:Lcom/waze/NativeManager;

    #getter for: Lcom/waze/NativeManager;->mCalendarAI:Lcom/waze/navigate/AddressItem;
    invoke-static {v0}, Lcom/waze/NativeManager;->access$36(Lcom/waze/NativeManager;)Lcom/waze/navigate/AddressItem;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/NativeManager$19;->val$venueID:Ljava/lang/String;

    iput-object v1, v0, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    .line 505
    :goto_0
    iget-object v0, p0, Lcom/waze/NativeManager$19;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$19;->val$venueID:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/NativeManager$19;->val$Ref:Ljava/lang/String;

    iget-object v4, p0, Lcom/waze/NativeManager$19;->val$venue_context:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/waze/NativeManager$19;->val$bToDrive:Z

    iget-object v6, p0, Lcom/waze/NativeManager$19;->val$Query:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/waze/NativeManager$19;->val$bHistoryStat:Z

    iget v8, p0, Lcom/waze/NativeManager$19;->val$feature:I

    iget-object v9, p0, Lcom/waze/NativeManager$19;->val$response:Ljava/lang/String;

    iget-object v10, p0, Lcom/waze/NativeManager$19;->val$typedQuery:Ljava/lang/String;

    #calls: Lcom/waze/NativeManager;->OpenAutoCompletePlaceNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v10}, Lcom/waze/NativeManager;->access$37(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    .line 506
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/waze/NativeManager$19;->this$0:Lcom/waze/NativeManager;

    const/4 v1, 0x0

    #setter for: Lcom/waze/NativeManager;->mCalendarAI:Lcom/waze/navigate/AddressItem;
    invoke-static {v0, v1}, Lcom/waze/NativeManager;->access$35(Lcom/waze/NativeManager;Lcom/waze/navigate/AddressItem;)V

    goto :goto_0
.end method
