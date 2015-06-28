.class Lcom/waze/share/ShareFbQueries$4;
.super Ljava/lang/Object;
.source "ShareFbQueries.java"

# interfaces
.implements Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareFbQueries;->postEventFeed(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/share/ShareFbLocation;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/waze/share/ShareFbQueries$IPostCallback;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cb:Lcom/waze/share/ShareFbQueries$IPostCallback;

.field private final synthetic val$desc:Ljava/lang/String;

.field private final synthetic val$destination:Lcom/waze/share/ShareFbLocation;

.field private final synthetic val$eventId:Ljava/lang/String;

.field private final synthetic val$link:Ljava/lang/String;

.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$picture:Ljava/lang/String;

.field private final synthetic val$progress:Lcom/waze/ifs/ui/ProgressBarDialog;

.field private final synthetic val$tags:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareFbLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/waze/ifs/ui/ProgressBarDialog;Lcom/waze/share/ShareFbQueries$IPostCallback;)V
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

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareFbQueries$4;->val$destination:Lcom/waze/share/ShareFbLocation;

    iput-object p2, p0, Lcom/waze/share/ShareFbQueries$4;->val$link:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/share/ShareFbQueries$4;->val$desc:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/share/ShareFbQueries$4;->val$picture:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/share/ShareFbQueries$4;->val$tags:[Ljava/lang/String;

    iput-object p6, p0, Lcom/waze/share/ShareFbQueries$4;->val$message:Ljava/lang/String;

    iput-object p7, p0, Lcom/waze/share/ShareFbQueries$4;->val$eventId:Ljava/lang/String;

    iput-object p8, p0, Lcom/waze/share/ShareFbQueries$4;->val$progress:Lcom/waze/ifs/ui/ProgressBarDialog;

    iput-object p9, p0, Lcom/waze/share/ShareFbQueries$4;->val$cb:Lcom/waze/share/ShareFbQueries$IPostCallback;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorizeCompleted(ZI)V
    .locals 11
    .parameter "result"
    .parameter "state"

    .prologue
    const/4 v10, 0x0

    .line 179
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 181
    .local v3, params:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/waze/share/ShareFbQueries$4;->val$destination:Lcom/waze/share/ShareFbLocation;

    if-eqz v1, :cond_0

    .line 182
    const-string v1, "place"

    iget-object v2, p0, Lcom/waze/share/ShareFbQueries$4;->val$destination:Lcom/waze/share/ShareFbLocation;

    iget-object v2, v2, Lcom/waze/share/ShareFbLocation;->id:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/waze/share/ShareFbQueries$4;->val$link:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 186
    const-string v1, "link"

    iget-object v2, p0, Lcom/waze/share/ShareFbQueries$4;->val$link:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/waze/share/ShareFbQueries$4;->val$desc:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 191
    const-string v1, "description"

    iget-object v2, p0, Lcom/waze/share/ShareFbQueries$4;->val$desc:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/waze/share/ShareFbQueries$4;->val$picture:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 196
    const-string v1, "picture"

    iget-object v2, p0, Lcom/waze/share/ShareFbQueries$4;->val$picture:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_3
    iget-object v1, p0, Lcom/waze/share/ShareFbQueries$4;->val$tags:[Ljava/lang/String;

    invoke-static {v1}, Lcom/waze/share/ShareFbQueries;->tagsList([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 200
    .local v6, tagsList:Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 201
    const-string v1, "tags"

    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_4
    iget-object v1, p0, Lcom/waze/share/ShareFbQueries$4;->val$message:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 204
    const-string v1, "message"

    iget-object v2, p0, Lcom/waze/share/ShareFbQueries$4;->val$message:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_5
    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->session()Lcom/facebook/Session;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/waze/share/ShareFbQueries$4;->val$eventId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/feed"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/waze/share/ShareFbQueries$PostRequestListener;

    iget-object v8, p0, Lcom/waze/share/ShareFbQueries$4;->val$progress:Lcom/waze/ifs/ui/ProgressBarDialog;

    iget-object v9, p0, Lcom/waze/share/ShareFbQueries$4;->val$cb:Lcom/waze/share/ShareFbQueries$IPostCallback;

    invoke-direct {v5, v8, v9}, Lcom/waze/share/ShareFbQueries$PostRequestListener;-><init>(Lcom/waze/ifs/ui/ProgressBarDialog;Lcom/waze/share/ShareFbQueries$IPostCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 207
    .local v0, request:Lcom/facebook/Request;
    new-instance v7, Lcom/facebook/RequestAsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/Request;

    aput-object v0, v1, v10

    invoke-direct {v7, v1}, Lcom/facebook/RequestAsyncTask;-><init>([Lcom/facebook/Request;)V

    .line 208
    .local v7, task:Lcom/facebook/RequestAsyncTask;
    new-array v1, v10, [Ljava/lang/Void;

    invoke-virtual {v7, v1}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 209
    return-void
.end method
