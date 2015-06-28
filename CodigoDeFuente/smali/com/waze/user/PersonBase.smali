.class public Lcom/waze/user/PersonBase;
.super Ljava/lang/Object;
.source "PersonBase.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mID:I

.field protected mImageUrl:Ljava/lang/String;

.field mIsOnWaze:Z

.field public mNickName:Ljava/lang/String;

.field public mPhone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/user/PersonBase;->mPhone:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/user/PersonBase;->mIsOnWaze:Z

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/waze/user/PersonBase;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/user/PersonBase;->mPhone:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/user/PersonBase;->mIsOnWaze:Z

    .line 54
    iget-object v0, p1, Lcom/waze/user/PersonBase;->mNickName:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/waze/user/PersonBase;->mNickName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/waze/user/PersonBase;->mNickName:Ljava/lang/String;

    .line 55
    :cond_0
    iget-object v0, p1, Lcom/waze/user/PersonBase;->mPhone:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/waze/user/PersonBase;->mPhone:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/waze/user/PersonBase;->mPhone:Ljava/lang/String;

    .line 56
    :cond_1
    iget-object v0, p1, Lcom/waze/user/PersonBase;->mImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/waze/user/PersonBase;->mImageUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/waze/user/PersonBase;->mImageUrl:Ljava/lang/String;

    .line 57
    :cond_2
    iget v0, p1, Lcom/waze/user/PersonBase;->mID:I

    iput v0, p0, Lcom/waze/user/PersonBase;->mID:I

    .line 58
    iget-boolean v0, p1, Lcom/waze/user/PersonBase;->mIsOnWaze:Z

    iput-boolean v0, p0, Lcom/waze/user/PersonBase;->mIsOnWaze:Z

    .line 59
    return-void
.end method


# virtual methods
.method public getID()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/waze/user/PersonBase;->mID:I

    return v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/waze/user/PersonBase;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsOnWaze()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/waze/user/PersonBase;->mIsOnWaze:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/waze/user/PersonBase;->mNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/waze/user/PersonBase;->mPhone:Ljava/lang/String;

    return-object v0
.end method

.method public setID(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 24
    iput p1, p0, Lcom/waze/user/PersonBase;->mID:I

    .line 25
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .parameter "Image"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/waze/user/PersonBase;->mImageUrl:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setIsOnWaze(Z)V
    .locals 0
    .parameter "bIsOnWaze"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/waze/user/PersonBase;->mIsOnWaze:Z

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
