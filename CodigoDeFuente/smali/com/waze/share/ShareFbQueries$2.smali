.class Lcom/waze/share/ShareFbQueries$2;
.super Ljava/lang/Object;
.source "ShareFbQueries.java"

# interfaces
.implements Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareFbQueries;->getLocationsList(Lcom/waze/ifs/ui/ActivityBase;Ljava/lang/String;ILcom/waze/location/Position;Lcom/waze/share/ShareFbQueries$ILocationsListCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cb:Lcom/waze/share/ShareFbQueries$ILocationsListCallback;

.field private final synthetic val$context:Lcom/waze/ifs/ui/ActivityBase;

.field private final synthetic val$pattern:Ljava/lang/String;

.field private final synthetic val$pos:Lcom/waze/location/Position;

.field private final synthetic val$showProgress:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/waze/location/Position;ZLcom/waze/ifs/ui/ActivityBase;Lcom/waze/share/ShareFbQueries$ILocationsListCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareFbQueries$2;->val$pattern:Ljava/lang/String;

    iput-object p2, p0, Lcom/waze/share/ShareFbQueries$2;->val$pos:Lcom/waze/location/Position;

    iput-boolean p3, p0, Lcom/waze/share/ShareFbQueries$2;->val$showProgress:Z

    iput-object p4, p0, Lcom/waze/share/ShareFbQueries$2;->val$context:Lcom/waze/ifs/ui/ActivityBase;

    iput-object p5, p0, Lcom/waze/share/ShareFbQueries$2;->val$cb:Lcom/waze/share/ShareFbQueries$ILocationsListCallback;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorizeCompleted(ZI)V
    .locals 12
    .parameter "result"
    .parameter "state"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 95
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v3, params:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/waze/share/ShareFbQueries$2;->val$pattern:Ljava/lang/String;

    if-eqz v1, :cond_2

    move v1, v8

    :goto_0
    iget-object v2, p0, Lcom/waze/share/ShareFbQueries$2;->val$pattern:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    move v2, v8

    :goto_1
    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 97
    const-string v1, "q"

    iget-object v2, p0, Lcom/waze/share/ShareFbQueries$2;->val$pattern:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    const-string v1, "type"

    const-string v2, "place"

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "center"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/waze/share/ShareFbQueries$2;->val$pos:Lcom/waze/location/Position;

    iget-wide v4, v4, Lcom/waze/location/Position;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/waze/share/ShareFbQueries$2;->val$pos:Lcom/waze/location/Position;

    iget-wide v4, v4, Lcom/waze/location/Position;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "distance"

    const/16 v2, 0x1388

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v6, 0x0

    .line 103
    .local v6, progress:Lcom/waze/ifs/ui/ProgressBarDialog;
    iget-boolean v1, p0, Lcom/waze/share/ShareFbQueries$2;->val$showProgress:Z

    if-eqz v1, :cond_1

    .line 105
    new-instance v6, Lcom/waze/ifs/ui/ProgressBarDialog;

    .end local v6           #progress:Lcom/waze/ifs/ui/ProgressBarDialog;
    iget-object v1, p0, Lcom/waze/share/ShareFbQueries$2;->val$context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-direct {v6, v1}, Lcom/waze/ifs/ui/ProgressBarDialog;-><init>(Landroid/content/Context;)V

    .line 106
    .restart local v6       #progress:Lcom/waze/ifs/ui/ProgressBarDialog;
    invoke-virtual {v6}, Lcom/waze/ifs/ui/ProgressBarDialog;->show()V

    .line 109
    :cond_1
    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->session()Lcom/facebook/Session;

    move-result-object v1

    const-string v2, "search"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/waze/share/ShareFbQueries$LocationRequestListener;

    iget-object v10, p0, Lcom/waze/share/ShareFbQueries$2;->val$cb:Lcom/waze/share/ShareFbQueries$ILocationsListCallback;

    iget-object v11, p0, Lcom/waze/share/ShareFbQueries$2;->val$pos:Lcom/waze/location/Position;

    invoke-direct {v5, v6, v10, v11}, Lcom/waze/share/ShareFbQueries$LocationRequestListener;-><init>(Lcom/waze/ifs/ui/ProgressBarDialog;Lcom/waze/share/ShareFbQueries$ILocationsListCallback;Lcom/waze/location/Position;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 110
    .local v0, request:Lcom/facebook/Request;
    new-instance v7, Lcom/facebook/RequestAsyncTask;

    new-array v1, v8, [Lcom/facebook/Request;

    aput-object v0, v1, v9

    invoke-direct {v7, v1}, Lcom/facebook/RequestAsyncTask;-><init>([Lcom/facebook/Request;)V

    .line 111
    .local v7, task:Lcom/facebook/RequestAsyncTask;
    new-array v1, v9, [Ljava/lang/Void;

    invoke-virtual {v7, v1}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 112
    return-void

    .end local v0           #request:Lcom/facebook/Request;
    .end local v6           #progress:Lcom/waze/ifs/ui/ProgressBarDialog;
    .end local v7           #task:Lcom/facebook/RequestAsyncTask;
    :cond_2
    move v1, v9

    .line 96
    goto/16 :goto_0

    :cond_3
    move v2, v9

    goto :goto_1
.end method
