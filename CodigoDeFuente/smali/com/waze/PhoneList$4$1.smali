.class Lcom/waze/PhoneList$4$1;
.super Ljava/lang/Object;
.source "PhoneList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/PhoneList$4;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/PhoneList$4;


# direct methods
.method constructor <init>(Lcom/waze/PhoneList$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/PhoneList$4$1;->this$1:Lcom/waze/PhoneList$4;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 140
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 149
    :cond_0
    return-void
.end method
