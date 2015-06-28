.class public Lcom/waze/autocomplete/Person;
.super Lcom/waze/user/PersonBase;
.source "Person.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/waze/autocomplete/Person;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/waze/user/PersonBase;-><init>(Lcom/waze/user/PersonBase;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "n"
    .parameter "p"
    .parameter "i"

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/waze/user/PersonBase;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/waze/autocomplete/Person;->mNickName:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/waze/autocomplete/Person;->mPhone:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/waze/autocomplete/Person;->mImageUrl:Ljava/lang/String;

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/waze/autocomplete/Person;->mID:I

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "n"
    .parameter "p"
    .parameter "i"
    .parameter "id"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/waze/user/PersonBase;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/waze/autocomplete/Person;->mNickName:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/waze/autocomplete/Person;->mPhone:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/waze/autocomplete/Person;->mImageUrl:Ljava/lang/String;

    .line 20
    iput p4, p0, Lcom/waze/autocomplete/Person;->mID:I

    .line 21
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/waze/autocomplete/Person;->mNickName:Ljava/lang/String;

    return-object v0
.end method
