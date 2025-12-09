.class public Li0/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Li0/n;


# direct methods
.method public constructor <init>(Li0/n;)V
    .locals 0

    iput-object p1, p0, Li0/n$b;->c:Li0/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Li0/n$b;->c:Li0/n;

    invoke-static {p1}, Li0/n;->E1(Li0/n;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Li0/n$b;->c:Li0/n;

    invoke-static {p1}, Li0/n;->E1(Li0/n;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p1, v0}, Li0/n;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
