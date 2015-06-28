.class public Lcom/waze/mywaze/MyWazeData;
.super Ljava/lang/Object;
.source "MyWazeData.java"


# instance fields
.field public mContactsLoggedIn:Z

.field public mEmail:Ljava/lang/String;

.field public mFaceBookLoggedIn:Z

.field public mFaceBookNickName:Ljava/lang/String;

.field public mFirstName:Ljava/lang/String;

.field public mImageUrl:Ljava/lang/String;

.field public mJoinedStr:Ljava/lang/String;

.field public mLastName:Ljava/lang/String;

.field public mLastSeen:Ljava/lang/String;

.field public mMood:Ljava/lang/String;

.field public mNickName:Ljava/lang/String;

.field public mPassword:Ljava/lang/String;

.field public mPhoneNumber:Ljava/lang/String;

.field public mPts:I

.field public mRank:I

.field public mSpeedStr:Ljava/lang/String;

.field public mUserName:Ljava/lang/String;

.field public nFriendsOnline:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/mywaze/MyWazeData;->mMood:Ljava/lang/String;

    .line 4
    return-void
.end method
