.class Lcom/waze/mywaze/social/TwitterActivity$4;
.super Ljava/lang/Object;
.source "TwitterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/social/TwitterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/social/TwitterActivity;

.field private final synthetic val$j:I


# direct methods
.method constructor <init>(Lcom/waze/mywaze/social/TwitterActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/social/TwitterActivity$4;->this$0:Lcom/waze/mywaze/social/TwitterActivity;

    iput p2, p0, Lcom/waze/mywaze/social/TwitterActivity$4;->val$j:I

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/waze/mywaze/social/TwitterActivity$4;->this$0:Lcom/waze/mywaze/social/TwitterActivity;

    iget v1, p0, Lcom/waze/mywaze/social/TwitterActivity$4;->val$j:I

    #calls: Lcom/waze/mywaze/social/TwitterActivity;->onDrivingStyle(I)V
    invoke-static {v0, v1}, Lcom/waze/mywaze/social/TwitterActivity;->access$3(Lcom/waze/mywaze/social/TwitterActivity;I)V

    .line 138
    return-void
.end method
