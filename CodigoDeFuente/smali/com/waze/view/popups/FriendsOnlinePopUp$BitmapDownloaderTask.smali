.class Lcom/waze/view/popups/FriendsOnlinePopUp$BitmapDownloaderTask;
.super Landroid/os/AsyncTask;
.source "FriendsOnlinePopUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/view/popups/FriendsOnlinePopUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapDownloaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final imageViewReference:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/waze/view/popups/FriendsOnlinePopUp;


# direct methods
.method public constructor <init>(Lcom/waze/view/popups/FriendsOnlinePopUp;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter "imageView"

    .prologue
    .line 654
    iput-object p1, p0, Lcom/waze/view/popups/FriendsOnlinePopUp$BitmapDownloaderTask;->this$0:Lcom/waze/view/popups/FriendsOnlinePopUp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 655
    iput-object p2, p0, Lcom/waze/view/popups/FriendsOnlinePopUp$BitmapDownloaderTask;->imageViewReference:Landroid/widget/ImageView;

    .line 656
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "params"

    .prologue
    .line 699
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/FriendsOnlinePopUp$BitmapDownloaderTask;->downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/waze/view/popups/FriendsOnlinePopUp$BitmapDownloaderTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "url"

    .prologue
    const/4 v9, 0x0

    .line 659
    const-string v10, "Android"

    invoke-static {v10}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    .line 660
    .local v1, client:Landroid/net/http/AndroidHttpClient;
    const/4 v4, 0x0

    .line 662
    .local v4, getRequest:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 663
    .end local v4           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .local v5, getRequest:Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    invoke-virtual {v1, v5}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 664
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 665
    .local v8, statusCode:I
    const/16 v10, 0xc8

    if-eq v8, v10, :cond_1

    .line 688
    if-eqz v1, :cond_0

    .line 689
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_0
    move-object v4, v5

    .end local v5           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    move-object v0, v9

    .line 692
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #statusCode:I
    :goto_0
    return-object v0

    .line 669
    .end local v4           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v5       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    .restart local v8       #statusCode:I
    :cond_1
    :try_start_2
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    .line 670
    .local v3, entity:Lorg/apache/http/HttpEntity;
    if-eqz v3, :cond_8

    .line 671
    const/4 v6, 0x0

    .line 673
    .local v6, inputStream:Ljava/io/InputStream;
    :try_start_3
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 674
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 677
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_2

    .line 678
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 680
    :cond_2
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 688
    if-eqz v1, :cond_3

    .line 689
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_3
    move-object v4, v5

    .line 675
    .end local v5           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    goto :goto_0

    .line 676
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v5       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    :catchall_0
    move-exception v10

    .line 677
    if-eqz v6, :cond_4

    .line 678
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 680
    :cond_4
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 681
    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 683
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v6           #inputStream:Ljava/io/InputStream;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #statusCode:I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 685
    .end local v5           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .local v2, e:Ljava/lang/Exception;
    .restart local v4       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    :goto_1
    if-eqz v4, :cond_5

    .line 686
    :try_start_6
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 688
    :cond_5
    if-eqz v1, :cond_6

    .line 689
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    .end local v2           #e:Ljava/lang/Exception;
    :cond_6
    :goto_2
    move-object v0, v9

    .line 692
    goto :goto_0

    .line 687
    :catchall_1
    move-exception v9

    .line 688
    :goto_3
    if-eqz v1, :cond_7

    .line 689
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 691
    :cond_7
    throw v9

    .line 688
    .end local v4           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #entity:Lorg/apache/http/HttpEntity;
    .restart local v5       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    .restart local v8       #statusCode:I
    :cond_8
    if-eqz v1, :cond_9

    .line 689
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_9
    move-object v4, v5

    .end local v5           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    goto :goto_2

    .line 687
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #statusCode:I
    .restart local v5       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    goto :goto_3

    .line 683
    :catch_1
    move-exception v2

    goto :goto_1
.end method
