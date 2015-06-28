.class Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;
.super Ljava/lang/Object;
.source "InboxMsgListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/inbox/InboxMsgListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemHolder"
.end annotation


# instance fields
.field chkBox:Landroid/widget/CheckBox;

.field chkBoxContainer:Landroid/widget/RelativeLayout;

.field contentContainer:Landroid/widget/RelativeLayout;

.field preview:Landroid/widget/TextView;

.field progress:Landroid/widget/ProgressBar;

.field root:Landroid/view/View;

.field time:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/waze/inbox/InboxMsgListAdapter$ItemHolder;-><init>()V

    return-void
.end method
