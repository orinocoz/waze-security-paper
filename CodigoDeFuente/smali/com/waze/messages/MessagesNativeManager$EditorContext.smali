.class public Lcom/waze/messages/MessagesNativeManager$EditorContext;
.super Ljava/lang/Object;
.source "MessagesNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/messages/MessagesNativeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditorContext"
.end annotation


# instance fields
.field mContext:Lcom/waze/ifs/ui/ActivityBase;

.field public mRqCode:I

.field mType:I

.field mUser:Lcom/waze/user/UserData;


# direct methods
.method public constructor <init>(Lcom/waze/ifs/ui/ActivityBase;ILcom/waze/user/UserData;)V
    .locals 1
    .parameter "context"
    .parameter "type"
    .parameter "user"

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/messages/MessagesNativeManager$EditorContext;->mRqCode:I

    .line 195
    iput-object p1, p0, Lcom/waze/messages/MessagesNativeManager$EditorContext;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    .line 196
    iput p2, p0, Lcom/waze/messages/MessagesNativeManager$EditorContext;->mType:I

    .line 197
    iput-object p3, p0, Lcom/waze/messages/MessagesNativeManager$EditorContext;->mUser:Lcom/waze/user/UserData;

    .line 198
    return-void
.end method
