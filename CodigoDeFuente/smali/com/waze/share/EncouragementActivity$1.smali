.class Lcom/waze/share/EncouragementActivity$1;
.super Ljava/lang/Object;
.source "EncouragementActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/EncouragementActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/EncouragementActivity;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/waze/share/EncouragementActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/EncouragementActivity$1;->this$0:Lcom/waze/share/EncouragementActivity;

    iput p2, p0, Lcom/waze/share/EncouragementActivity$1;->val$type:I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 72
    iget-object v0, p0, Lcom/waze/share/EncouragementActivity$1;->this$0:Lcom/waze/share/EncouragementActivity;

    #setter for: Lcom/waze/share/EncouragementActivity;->buttonClicked:Z
    invoke-static {v0, v3}, Lcom/waze/share/EncouragementActivity;->access$0(Lcom/waze/share/EncouragementActivity;Z)V

    .line 73
    const-string v0, "ENC_POPUP_BUTTON"

    .line 74
    const-string v1, "TYPE"

    iget-object v2, p0, Lcom/waze/share/EncouragementActivity$1;->this$0:Lcom/waze/share/EncouragementActivity;

    #getter for: Lcom/waze/share/EncouragementActivity;->mAnalyticsTypeString:Ljava/lang/String;
    invoke-static {v2}, Lcom/waze/share/EncouragementActivity;->access$1(Lcom/waze/share/EncouragementActivity;)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget v0, p0, Lcom/waze/share/EncouragementActivity$1;->val$type:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/waze/share/EncouragementActivity$1;->val$type:I

    if-ne v0, v3, :cond_2

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/waze/share/EncouragementActivity$1;->this$0:Lcom/waze/share/EncouragementActivity;

    #calls: Lcom/waze/share/EncouragementActivity;->onRate()V
    invoke-static {v0}, Lcom/waze/share/EncouragementActivity;->access$2(Lcom/waze/share/EncouragementActivity;)V

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 78
    :cond_2
    iget v0, p0, Lcom/waze/share/EncouragementActivity$1;->val$type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 79
    iget-object v0, p0, Lcom/waze/share/EncouragementActivity$1;->this$0:Lcom/waze/share/EncouragementActivity;

    #calls: Lcom/waze/share/EncouragementActivity;->onShare()V
    invoke-static {v0}, Lcom/waze/share/EncouragementActivity;->access$3(Lcom/waze/share/EncouragementActivity;)V

    goto :goto_0

    .line 80
    :cond_3
    iget v0, p0, Lcom/waze/share/EncouragementActivity$1;->val$type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 81
    iget-object v0, p0, Lcom/waze/share/EncouragementActivity$1;->this$0:Lcom/waze/share/EncouragementActivity;

    #calls: Lcom/waze/share/EncouragementActivity;->onLike()V
    invoke-static {v0}, Lcom/waze/share/EncouragementActivity;->access$4(Lcom/waze/share/EncouragementActivity;)V

    goto :goto_0

    .line 82
    :cond_4
    iget v0, p0, Lcom/waze/share/EncouragementActivity$1;->val$type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 83
    iget-object v0, p0, Lcom/waze/share/EncouragementActivity$1;->this$0:Lcom/waze/share/EncouragementActivity;

    #calls: Lcom/waze/share/EncouragementActivity;->onFollow()V
    invoke-static {v0}, Lcom/waze/share/EncouragementActivity;->access$5(Lcom/waze/share/EncouragementActivity;)V

    goto :goto_0

    .line 85
    :cond_5
    iget v0, p0, Lcom/waze/share/EncouragementActivity$1;->val$type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 87
    iget-object v0, p0, Lcom/waze/share/EncouragementActivity$1;->this$0:Lcom/waze/share/EncouragementActivity;

    #calls: Lcom/waze/share/EncouragementActivity;->onMapEditor()V
    invoke-static {v0}, Lcom/waze/share/EncouragementActivity;->access$6(Lcom/waze/share/EncouragementActivity;)V

    goto :goto_0

    .line 89
    :cond_6
    iget v0, p0, Lcom/waze/share/EncouragementActivity$1;->val$type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 91
    iget-object v0, p0, Lcom/waze/share/EncouragementActivity$1;->this$0:Lcom/waze/share/EncouragementActivity;

    #calls: Lcom/waze/share/EncouragementActivity;->onFacebook()V
    invoke-static {v0}, Lcom/waze/share/EncouragementActivity;->access$7(Lcom/waze/share/EncouragementActivity;)V

    goto :goto_0

    .line 93
    :cond_7
    iget v0, p0, Lcom/waze/share/EncouragementActivity$1;->val$type:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    .line 95
    iget-object v0, p0, Lcom/waze/share/EncouragementActivity$1;->this$0:Lcom/waze/share/EncouragementActivity;

    #calls: Lcom/waze/share/EncouragementActivity;->onSendETA()V
    invoke-static {v0}, Lcom/waze/share/EncouragementActivity;->access$8(Lcom/waze/share/EncouragementActivity;)V

    goto :goto_0

    .line 97
    :cond_8
    iget v0, p0, Lcom/waze/share/EncouragementActivity$1;->val$type:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_9

    .line 99
    iget-object v0, p0, Lcom/waze/share/EncouragementActivity$1;->this$0:Lcom/waze/share/EncouragementActivity;

    #calls: Lcom/waze/share/EncouragementActivity;->onAddHome()V
    invoke-static {v0}, Lcom/waze/share/EncouragementActivity;->access$9(Lcom/waze/share/EncouragementActivity;)V

    goto :goto_0

    .line 101
    :cond_9
    iget v0, p0, Lcom/waze/share/EncouragementActivity$1;->val$type:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/waze/share/EncouragementActivity$1;->this$0:Lcom/waze/share/EncouragementActivity;

    #calls: Lcom/waze/share/EncouragementActivity;->onSendLocation()V
    invoke-static {v0}, Lcom/waze/share/EncouragementActivity;->access$10(Lcom/waze/share/EncouragementActivity;)V

    goto :goto_0
.end method
