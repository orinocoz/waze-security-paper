.class Lcom/waze/social/facebook/FacebookWrapper$4;
.super Ljava/lang/Object;
.source "FacebookWrapper.java"

# interfaces
.implements Lcom/waze/social/facebook/FacebookWrapper$OnLogoutCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/social/facebook/FacebookWrapper;->reauthorize(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/social/facebook/FacebookWrapper;

.field private final synthetic val$activity:Lcom/waze/ifs/ui/ActivityBase;

.field private final synthetic val$listener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;

.field private final synthetic val$onAuthAction:I


# direct methods
.method constructor <init>(Lcom/waze/social/facebook/FacebookWrapper;Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/social/facebook/FacebookWrapper$4;->this$0:Lcom/waze/social/facebook/FacebookWrapper;

    iput-object p2, p0, Lcom/waze/social/facebook/FacebookWrapper$4;->val$activity:Lcom/waze/ifs/ui/ActivityBase;

    iput-object p3, p0, Lcom/waze/social/facebook/FacebookWrapper$4;->val$listener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;

    iput p4, p0, Lcom/waze/social/facebook/FacebookWrapper$4;->val$onAuthAction:I

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogoutCompleted()V
    .locals 4

    .prologue
    .line 421
    iget-object v0, p0, Lcom/waze/social/facebook/FacebookWrapper$4;->this$0:Lcom/waze/social/facebook/FacebookWrapper;

    iget-object v1, p0, Lcom/waze/social/facebook/FacebookWrapper$4;->val$activity:Lcom/waze/ifs/ui/ActivityBase;

    iget-object v2, p0, Lcom/waze/social/facebook/FacebookWrapper$4;->val$listener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;

    iget v3, p0, Lcom/waze/social/facebook/FacebookWrapper$4;->val$onAuthAction:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/social/facebook/FacebookWrapper;->authorize(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;I)V

    .line 422
    return-void
.end method
