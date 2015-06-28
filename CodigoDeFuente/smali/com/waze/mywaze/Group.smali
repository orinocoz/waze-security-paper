.class public Lcom/waze/mywaze/Group;
.super Ljava/lang/Object;
.source "Group.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xba6fa6efb6402aL


# instance fields
.field public icon:Ljava/lang/String;

.field public isSelected:Z

.field public name:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "icon"
    .parameter "name"
    .parameter "url"
    .parameter "isSelected"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/waze/mywaze/Group;->icon:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/waze/mywaze/Group;->name:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/waze/mywaze/Group;->url:Ljava/lang/String;

    .line 15
    iput-boolean p4, p0, Lcom/waze/mywaze/Group;->isSelected:Z

    .line 16
    return-void
.end method
