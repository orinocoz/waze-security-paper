.class Lcom/waze/profile/ImageTaker$1;
.super Ljava/lang/Object;
.source "ImageTaker.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/ImageTaker;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/ImageTaker;


# direct methods
.method constructor <init>(Lcom/waze/profile/ImageTaker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/ImageTaker$1;->this$0:Lcom/waze/profile/ImageTaker;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .parameter "dir"
    .parameter "filename"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/waze/profile/ImageTaker$1;->this$0:Lcom/waze/profile/ImageTaker;

    #calls: Lcom/waze/profile/ImageTaker;->getCaptureFileNameWC()Ljava/lang/String;
    invoke-static {v0}, Lcom/waze/profile/ImageTaker;->access$0(Lcom/waze/profile/ImageTaker;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
