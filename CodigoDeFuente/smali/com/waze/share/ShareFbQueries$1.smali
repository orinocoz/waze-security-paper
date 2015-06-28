.class Lcom/waze/share/ShareFbQueries$1;
.super Ljava/lang/Object;
.source "ShareFbQueries.java"

# interfaces
.implements Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareFbQueries;->getFriendsList(Lcom/waze/ifs/ui/ActivityBase;Ljava/lang/String;ILcom/waze/share/ShareFbQueries$IFriendsListCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cb:Lcom/waze/share/ShareFbQueries$IFriendsListCallback;

.field private final synthetic val$context:Lcom/waze/ifs/ui/ActivityBase;

.field private final synthetic val$fbw:Lcom/waze/social/facebook/FacebookWrapper;

.field private final synthetic val$limit:I

.field private final synthetic val$pattern:Ljava/lang/String;

.field private final synthetic val$showProgress:Z


# direct methods
.method constructor <init>(ZLcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper;Ljava/lang/String;ILcom/waze/share/ShareFbQueries$IFriendsListCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/waze/share/ShareFbQueries$1;->val$showProgress:Z

    iput-object p2, p0, Lcom/waze/share/ShareFbQueries$1;->val$context:Lcom/waze/ifs/ui/ActivityBase;

    iput-object p3, p0, Lcom/waze/share/ShareFbQueries$1;->val$fbw:Lcom/waze/social/facebook/FacebookWrapper;

    iput-object p4, p0, Lcom/waze/share/ShareFbQueries$1;->val$pattern:Ljava/lang/String;

    iput p5, p0, Lcom/waze/share/ShareFbQueries$1;->val$limit:I

    iput-object p6, p0, Lcom/waze/share/ShareFbQueries$1;->val$cb:Lcom/waze/share/ShareFbQueries$IFriendsListCallback;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorizeCompleted(ZI)V
    .locals 5
    .parameter "result"
    .parameter "state"

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, progress:Lcom/waze/ifs/ui/ProgressBarDialog;
    iget-boolean v1, p0, Lcom/waze/share/ShareFbQueries$1;->val$showProgress:Z

    if-eqz v1, :cond_0

    .line 73
    new-instance v0, Lcom/waze/ifs/ui/ProgressBarDialog;

    .end local v0           #progress:Lcom/waze/ifs/ui/ProgressBarDialog;
    iget-object v1, p0, Lcom/waze/share/ShareFbQueries$1;->val$context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-direct {v0, v1}, Lcom/waze/ifs/ui/ProgressBarDialog;-><init>(Landroid/content/Context;)V

    .line 74
    .restart local v0       #progress:Lcom/waze/ifs/ui/ProgressBarDialog;
    invoke-virtual {v0}, Lcom/waze/ifs/ui/ProgressBarDialog;->show()V

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/waze/share/ShareFbQueries$1;->val$fbw:Lcom/waze/social/facebook/FacebookWrapper;

    iget-object v2, p0, Lcom/waze/share/ShareFbQueries$1;->val$pattern:Ljava/lang/String;

    iget v3, p0, Lcom/waze/share/ShareFbQueries$1;->val$limit:I

    #calls: Lcom/waze/share/ShareFbQueries;->getFriendsQuery(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/waze/share/ShareFbQueries;->access$2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/waze/share/ShareFbQueries$FriendsRequestListener;

    iget-object v4, p0, Lcom/waze/share/ShareFbQueries$1;->val$cb:Lcom/waze/share/ShareFbQueries$IFriendsListCallback;

    invoke-direct {v3, v0, v4}, Lcom/waze/share/ShareFbQueries$FriendsRequestListener;-><init>(Lcom/waze/ifs/ui/ProgressBarDialog;Lcom/waze/share/ShareFbQueries$IFriendsListCallback;)V

    invoke-virtual {v1, v2, v3}, Lcom/waze/social/facebook/FacebookWrapper;->runFqlQuery(Ljava/lang/String;Lcom/facebook/Request$Callback;)V

    .line 78
    return-void
.end method
