.class Lcom/waze/share/ShareFbQueries$3;
.super Ljava/lang/Object;
.source "ShareFbQueries.java"

# interfaces
.implements Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareFbQueries;->postFeed(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/share/ShareFbLocation;[Ljava/lang/String;Ljava/lang/String;Lcom/waze/share/ShareFbQueries$IPostCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cb:Lcom/waze/share/ShareFbQueries$IPostCallback;

.field private final synthetic val$destination:Lcom/waze/share/ShareFbLocation;

.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$progress:Lcom/waze/ifs/ui/ProgressBarDialog;

.field private final synthetic val$tags:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareFbLocation;[Ljava/lang/String;Lcom/waze/ifs/ui/ProgressBarDialog;Ljava/lang/String;Lcom/waze/share/ShareFbQueries$IPostCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareFbQueries$3;->val$destination:Lcom/waze/share/ShareFbLocation;

    iput-object p2, p0, Lcom/waze/share/ShareFbQueries$3;->val$tags:[Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/share/ShareFbQueries$3;->val$progress:Lcom/waze/ifs/ui/ProgressBarDialog;

    iput-object p4, p0, Lcom/waze/share/ShareFbQueries$3;->val$message:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/share/ShareFbQueries$3;->val$cb:Lcom/waze/share/ShareFbQueries$IPostCallback;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showPleaseTagPalceToast()V
    .locals 5

    .prologue
    .line 152
    const-string v2, "Facebook queries"

    .line 153
    const-string v3, "Cannot post to FB wall friends tags without location tag"

    .line 152
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 157
    .local v1, nativeManager:Lcom/waze/NativeManager;
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_PLEASE_SELECT_FACEBOOK_LOCATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, bodyStr:Ljava/lang/String;
    const-string v2, "WAZE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "There was an error posting to FB: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_EDIT_LOCATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 161
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 159
    invoke-static {v2, v0, v3, v4}, Lcom/waze/MsgBox;->openMessageBoxTimeout(Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 162
    return-void
.end method


# virtual methods
.method public onAuthorizeCompleted(ZI)V
    .locals 11
    .parameter "result"
    .parameter "state"

    .prologue
    const/4 v10, 0x0

    .line 127
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v3, params:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/waze/share/ShareFbQueries$3;->val$destination:Lcom/waze/share/ShareFbLocation;

    if-eqz v1, :cond_0

    .line 130
    const-string v1, "place"

    iget-object v2, p0, Lcom/waze/share/ShareFbQueries$3;->val$destination:Lcom/waze/share/ShareFbLocation;

    iget-object v2, v2, Lcom/waze/share/ShareFbLocation;->id:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/waze/share/ShareFbQueries$3;->val$tags:[Ljava/lang/String;

    invoke-static {v1}, Lcom/waze/share/ShareFbQueries;->tagsList([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, tagsList:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 134
    const-string v1, "tags"

    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/waze/share/ShareFbQueries$3;->val$destination:Lcom/waze/share/ShareFbLocation;

    if-nez v1, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/waze/share/ShareFbQueries$3;->showPleaseTagPalceToast()V

    .line 137
    iget-object v1, p0, Lcom/waze/share/ShareFbQueries$3;->val$progress:Lcom/waze/ifs/ui/ProgressBarDialog;

    invoke-virtual {v1}, Lcom/waze/ifs/ui/ProgressBarDialog;->cancel()V

    .line 149
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/waze/share/ShareFbQueries$3;->val$message:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 142
    const-string v1, "message"

    iget-object v2, p0, Lcom/waze/share/ShareFbQueries$3;->val$message:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_2
    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->session()Lcom/facebook/Session;

    move-result-object v1

    .line 145
    const-string v2, "me/feed"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    .line 146
    new-instance v5, Lcom/waze/share/ShareFbQueries$PostRequestListener;

    iget-object v8, p0, Lcom/waze/share/ShareFbQueries$3;->val$progress:Lcom/waze/ifs/ui/ProgressBarDialog;

    iget-object v9, p0, Lcom/waze/share/ShareFbQueries$3;->val$cb:Lcom/waze/share/ShareFbQueries$IPostCallback;

    invoke-direct {v5, v8, v9}, Lcom/waze/share/ShareFbQueries$PostRequestListener;-><init>(Lcom/waze/ifs/ui/ProgressBarDialog;Lcom/waze/share/ShareFbQueries$IPostCallback;)V

    .line 144
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 147
    .local v0, request:Lcom/facebook/Request;
    new-instance v7, Lcom/facebook/RequestAsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/Request;

    aput-object v0, v1, v10

    invoke-direct {v7, v1}, Lcom/facebook/RequestAsyncTask;-><init>([Lcom/facebook/Request;)V

    .line 148
    .local v7, task:Lcom/facebook/RequestAsyncTask;
    new-array v1, v10, [Ljava/lang/Void;

    invoke-virtual {v7, v1}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
