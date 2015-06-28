.class public Lcom/waze/user/FriendUserData;
.super Lcom/waze/user/UserData;
.source "FriendUserData.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public arrivedShareText:Ljava/lang/String;

.field public arrivedText:Ljava/lang/String;

.field public arrivedTime:Ljava/lang/String;

.field public isOnline:Z

.field public mAllowBeepBeep:Z

.field public mContactID:I

.field public mIsFriend:Z

.field public mIsPendingFriend:Z

.field public mIsPendingMy:Z

.field public mMeetingIdSharedByMe:Ljava/lang/String;

.field public mMeetingIdSharedWithMe:Ljava/lang/String;

.field public mShowETA:Z

.field public name:Ljava/lang/String;

.field public pictureUrl:Ljava/lang/String;

.field public sharestatusLine:Ljava/lang/String;

.field public statusLine:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/waze/user/UserData;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/waze/user/FriendUserData;->pictureUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsOnWaze()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/waze/user/FriendUserData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .parameter "Image"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/waze/user/FriendUserData;->pictureUrl:Ljava/lang/String;

    .line 36
    invoke-super {p0, p1}, Lcom/waze/user/UserData;->setImage(Ljava/lang/String;)V

    .line 37
    return-void
.end method
