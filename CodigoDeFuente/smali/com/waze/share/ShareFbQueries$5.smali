.class Lcom/waze/share/ShareFbQueries$5;
.super Ljava/lang/Object;
.source "ShareFbQueries.java"

# interfaces
.implements Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareFbQueries;->postAction(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/share/ShareFbLocation;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/waze/share/ShareFbQueries$IPostCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cb:Lcom/waze/share/ShareFbQueries$IPostCallback;

.field private final synthetic val$destination:Lcom/waze/share/ShareFbLocation;

.field private final synthetic val$end_time:Ljava/lang/String;

.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$progress:Lcom/waze/ifs/ui/ProgressBarDialog;

.field private final synthetic val$serverUrl:Ljava/lang/String;

.field private final synthetic val$tags:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareFbLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/waze/ifs/ui/ProgressBarDialog;Lcom/waze/share/ShareFbQueries$IPostCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareFbQueries$5;->val$destination:Lcom/waze/share/ShareFbLocation;

    iput-object p2, p0, Lcom/waze/share/ShareFbQueries$5;->val$serverUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/share/ShareFbQueries$5;->val$end_time:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/share/ShareFbQueries$5;->val$message:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/share/ShareFbQueries$5;->val$tags:[Ljava/lang/String;

    iput-object p6, p0, Lcom/waze/share/ShareFbQueries$5;->val$progress:Lcom/waze/ifs/ui/ProgressBarDialog;

    iput-object p7, p0, Lcom/waze/share/ShareFbQueries$5;->val$cb:Lcom/waze/share/ShareFbQueries$IPostCallback;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorizeCompleted(ZI)V
    .locals 13
    .parameter "result"
    .parameter "state"

    .prologue
    .line 231
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 233
    .local v3, params:Landroid/os/Bundle;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v10, url:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/waze/share/ShareFbQueries$5;->val$destination:Lcom/waze/share/ShareFbLocation;

    iget-wide v1, v1, Lcom/waze/share/ShareFbLocation;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    .line 235
    .local v7, lon:Ljava/lang/String;
    iget-object v1, p0, Lcom/waze/share/ShareFbQueries$5;->val$destination:Lcom/waze/share/ShareFbLocation;

    iget-wide v1, v1, Lcom/waze/share/ShareFbLocation;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    .line 237
    .local v6, lat:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/waze/share/ShareFbQueries$5;->val$serverUrl:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/waze/share/ShareFbQueries$5;->val$destination:Lcom/waze/share/ShareFbLocation;

    iget-object v2, v2, Lcom/waze/share/ShareFbLocation;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "?placeName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/waze/share/ShareFbQueries$5;->val$destination:Lcom/waze/share/ShareFbLocation;

    iget-object v2, v2, Lcom/waze/share/ShareFbLocation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&lon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&lat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v1, "destination"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v1, "end_time"

    iget-object v2, p0, Lcom/waze/share/ShareFbQueries$5;->val$end_time:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/waze/share/ShareFbQueries$5;->val$message:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 243
    const-string v1, "message"

    iget-object v2, p0, Lcom/waze/share/ShareFbQueries$5;->val$message:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/waze/share/ShareFbQueries$5;->val$tags:[Ljava/lang/String;

    invoke-static {v1}, Lcom/waze/share/ShareFbQueries;->tagsList([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, tagsList:Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 247
    const-string v1, "tags"

    invoke-virtual {v3, v1, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_1
    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->session()Lcom/facebook/Session;

    move-result-object v1

    const-string v2, "/me/wazeapplication:drive_to"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/waze/share/ShareFbQueries$PostRequestListener;

    iget-object v11, p0, Lcom/waze/share/ShareFbQueries$5;->val$progress:Lcom/waze/ifs/ui/ProgressBarDialog;

    iget-object v12, p0, Lcom/waze/share/ShareFbQueries$5;->val$cb:Lcom/waze/share/ShareFbQueries$IPostCallback;

    invoke-direct {v5, v11, v12}, Lcom/waze/share/ShareFbQueries$PostRequestListener;-><init>(Lcom/waze/ifs/ui/ProgressBarDialog;Lcom/waze/share/ShareFbQueries$IPostCallback;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 253
    .local v0, request:Lcom/facebook/Request;
    new-instance v9, Lcom/facebook/RequestAsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/Request;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {v9, v1}, Lcom/facebook/RequestAsyncTask;-><init>([Lcom/facebook/Request;)V

    .line 254
    .local v9, task:Lcom/facebook/RequestAsyncTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v9, v1}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 255
    return-void
.end method
