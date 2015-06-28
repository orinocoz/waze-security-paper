.class Lcom/waze/social/facebook/FacebookWrapper$3;
.super Ljava/lang/Object;
.source "FacebookWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/social/facebook/FacebookWrapper;->authorize_publish_stream(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/social/facebook/FacebookWrapper;

.field private final synthetic val$activity:Lcom/waze/ifs/ui/ActivityBase;

.field private final synthetic val$listener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;


# direct methods
.method constructor <init>(Lcom/waze/social/facebook/FacebookWrapper;Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/social/facebook/FacebookWrapper$3;->this$0:Lcom/waze/social/facebook/FacebookWrapper;

    iput-object p2, p0, Lcom/waze/social/facebook/FacebookWrapper$3;->val$activity:Lcom/waze/ifs/ui/ActivityBase;

    iput-object p3, p0, Lcom/waze/social/facebook/FacebookWrapper$3;->val$listener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 376
    iget-object v0, p0, Lcom/waze/social/facebook/FacebookWrapper$3;->this$0:Lcom/waze/social/facebook/FacebookWrapper;

    iget-object v1, p0, Lcom/waze/social/facebook/FacebookWrapper$3;->val$activity:Lcom/waze/ifs/ui/ActivityBase;

    iget-object v2, p0, Lcom/waze/social/facebook/FacebookWrapper$3;->val$listener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/waze/social/facebook/AuthStateListner;->create(Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;I)Lcom/waze/social/facebook/AuthStateListner;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    #calls: Lcom/waze/social/facebook/FacebookWrapper;->open(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/AuthStateListner;ZZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/waze/social/facebook/FacebookWrapper;->access$0(Lcom/waze/social/facebook/FacebookWrapper;Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/AuthStateListner;ZZ)V

    .line 377
    return-void
.end method
